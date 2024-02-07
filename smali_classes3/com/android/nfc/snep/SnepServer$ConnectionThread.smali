.class Lcom/android/nfc/snep/SnepServer$ConnectionThread;
.super Ljava/lang/Thread;
.source "SnepServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/snep/SnepServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private final mMessager:Lcom/android/nfc/snep/SnepMessenger;

.field private final mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final synthetic this$0:Lcom/android/nfc/snep/SnepServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/snep/SnepServer;Lcom/android/nfc/DeviceHost$LlcpSocket;I)V
    .locals 1
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;
    .param p3, "fragmentLength"    # I

    .line 103
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    .line 104
    const-string p1, "SnepServer"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 105
    iput-object p2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 106
    new-instance p1, Lcom/android/nfc/snep/SnepMessenger;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p3}, Lcom/android/nfc/snep/SnepMessenger;-><init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V

    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mMessager:Lcom/android/nfc/snep/SnepMessenger;

    .line 107
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 111
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SnepServer"

    const-string v1, "starting connection thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 115
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-boolean v1, v1, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 116
    .local v1, "running":Z
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 118
    :goto_0
    if-eqz v1, :cond_2

    .line 119
    :try_start_2
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mMessager:Lcom/android/nfc/snep/SnepMessenger;

    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-object v2, v2, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-static {v0, v2}, Lcom/android/nfc/snep/SnepServer;->handleRequest(Lcom/android/nfc/snep/SnepMessenger;Lcom/android/nfc/snep/SnepServer$Callback;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    goto :goto_1

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 124
    :try_start_3
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-boolean v2, v2, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    move v1, v2

    .line 125
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/nfc/snep/SnepServer$ConnectionThread;
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 131
    .end local v1    # "running":Z
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepServer$ConnectionThread;
    :cond_2
    :goto_1
    :try_start_5
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "SnepServer"

    const-string v1, "about to close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_3
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 116
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local p0    # "this":Lcom/android/nfc/snep/SnepServer$ConnectionThread;
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 130
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepServer$ConnectionThread;
    :catchall_2
    move-exception v0

    goto :goto_4

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    :try_start_8
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "SnepServer"

    const-string v2, "Closing from IOException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_9
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "SnepServer"

    const-string v1, "about to close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_5
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 135
    :goto_2
    goto :goto_3

    .line 133
    :catch_1
    move-exception v0

    .line 136
    nop

    .line 138
    :goto_3
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "SnepServer"

    const-string v1, "finished connection thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_6
    return-void

    .line 131
    :goto_4
    :try_start_a
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "SnepServer"

    const-string v2, "about to close"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_7
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    .line 135
    goto :goto_5

    .line 133
    :catch_2
    move-exception v1

    .line 136
    :goto_5
    throw v0
.end method

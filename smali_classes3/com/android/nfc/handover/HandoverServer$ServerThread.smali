.class Lcom/android/nfc/handover/HandoverServer$ServerThread;
.super Ljava/lang/Thread;
.source "HandoverServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerThread"
.end annotation


# instance fields
.field mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field private mThreadRunning:Z

.field final synthetic this$0:Lcom/android/nfc/handover/HandoverServer;


# direct methods
.method private constructor <init>(Lcom/android/nfc/handover/HandoverServer;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 78
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/handover/HandoverServer;Lcom/android/nfc/handover/HandoverServer$ServerThread-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverServer$ServerThread;-><init>(Lcom/android/nfc/handover/HandoverServer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 84
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-boolean v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    .line 86
    .local v1, "threadRunning":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    .line 88
    :goto_0
    if-eqz v1, :cond_17

    .line 90
    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v2
    :try_end_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 91
    :try_start_2
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget v4, v4, Lcom/android/nfc/handover/HandoverServer;->mSap:I

    const-string v5, "urn:nfc:sn:handover"

    const/16 v6, 0x80

    const/4 v7, 0x1

    const/16 v8, 0x400

    invoke-virtual/range {v3 .. v8}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 93
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 94
    if-nez v3, :cond_3

    .line 95
    :try_start_3
    sget-object v2, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HandoverServer"

    const-string v3, "failed to create LLCP service socket"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/android/nfc/LlcpException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v2

    .line 131
    :try_start_4
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v3, :cond_2

    .line 132
    sget-object v3, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "HandoverServer"

    const-string v4, "about to close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 134
    :cond_1
    :try_start_5
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    goto :goto_1

    .line 135
    :catch_0
    move-exception v3

    .line 138
    :goto_1
    :try_start_6
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 140
    :cond_2
    monitor-exit v2

    .line 96
    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 98
    :cond_3
    :try_start_7
    sget-object v2, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "HandoverServer"

    const-string v3, "created LLCP service socket"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_4
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v2
    :try_end_7
    .catch Lcom/android/nfc/LlcpException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 100
    :try_start_8
    iget-boolean v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    move v1, v3

    .line 101
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 103
    :goto_2
    if-eqz v1, :cond_c

    .line 105
    :try_start_9
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v2
    :try_end_9
    .catch Lcom/android/nfc/LlcpException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 106
    :try_start_a
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 107
    .local v3, "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 109
    if-nez v3, :cond_8

    .line 110
    :try_start_b
    sget-object v2, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "HandoverServer"

    const-string v4, "Server socket shut down."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Lcom/android/nfc/LlcpException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 130
    :cond_5
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v2

    .line 131
    :try_start_c
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v4, :cond_7

    .line 132
    sget-object v4, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "HandoverServer"

    const-string v5, "about to close"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 134
    :cond_6
    :try_start_d
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 137
    goto :goto_3

    .line 135
    :catch_1
    move-exception v4

    .line 138
    :goto_3
    :try_start_e
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 140
    :cond_7
    monitor-exit v2

    .line 111
    return-void

    .line 140
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw v0

    .line 113
    :cond_8
    :try_start_f
    sget-object v2, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "HandoverServer"

    const-string v4, "about to accept"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_9
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v2

    .line 115
    .local v2, "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    sget-object v4, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "HandoverServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accept returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_a
    if-eqz v2, :cond_b

    .line 117
    new-instance v4, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;

    iget-object v5, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    invoke-direct {v4, v5, v2}, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;-><init>(Lcom/android/nfc/handover/HandoverServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V

    invoke-virtual {v4}, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->start()V

    .line 120
    :cond_b
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v4
    :try_end_f
    .catch Lcom/android/nfc/LlcpException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 121
    :try_start_10
    iget-boolean v5, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    move v1, v5

    .line 122
    monitor-exit v4

    .line 123
    .end local v2    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v3    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    goto/16 :goto_2

    .line 122
    .restart local v2    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .restart local v3    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_2
    move-exception v5

    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/handover/HandoverServer$ServerThread;
    :try_start_11
    throw v5
    :try_end_11
    .catch Lcom/android/nfc/LlcpException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 107
    .end local v2    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v3    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/handover/HandoverServer$ServerThread;
    :catchall_3
    move-exception v3

    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/handover/HandoverServer$ServerThread;
    :try_start_13
    throw v3

    .line 124
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/handover/HandoverServer$ServerThread;
    :cond_c
    sget-object v2, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "HandoverServer"

    const-string v3, "stop running"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Lcom/android/nfc/LlcpException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 130
    :cond_d
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v2

    .line 131
    :try_start_14
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v3, :cond_f

    .line 132
    sget-object v3, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "HandoverServer"

    const-string v4, "about to close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 134
    :cond_e
    :try_start_15
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 137
    goto :goto_4

    .line 135
    :catch_2
    move-exception v3

    .line 138
    :goto_4
    :try_start_16
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 140
    :cond_f
    monitor-exit v2

    goto/16 :goto_7

    :catchall_4
    move-exception v0

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    throw v0

    .line 101
    :catchall_5
    move-exception v3

    :try_start_17
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/handover/HandoverServer$ServerThread;
    :try_start_18
    throw v3
    :try_end_18
    .catch Lcom/android/nfc/LlcpException; {:try_start_18 .. :try_end_18} :catch_5
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 93
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/handover/HandoverServer$ServerThread;
    :catchall_6
    move-exception v3

    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/handover/HandoverServer$ServerThread;
    :try_start_1a
    throw v3
    :try_end_1a
    .catch Lcom/android/nfc/LlcpException; {:try_start_1a .. :try_end_1a} :catch_5
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 130
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/handover/HandoverServer$ServerThread;
    :catchall_7
    move-exception v2

    move-object v9, v2

    move v2, v1

    move-object v1, v9

    goto :goto_8

    .line 127
    :catch_3
    move-exception v2

    .line 128
    .local v2, "e":Ljava/io/IOException;
    :try_start_1b
    sget-object v3, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "HandoverServer"

    const-string v4, "IO error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 130
    .end local v2    # "e":Ljava/io/IOException;
    :cond_10
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v2

    .line 131
    :try_start_1c
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v3, :cond_12

    .line 132
    sget-object v3, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "HandoverServer"

    const-string v4, "about to close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 134
    :cond_11
    :try_start_1d
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_4
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    .line 137
    goto :goto_5

    .line 135
    :catch_4
    move-exception v3

    .line 138
    :goto_5
    :try_start_1e
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 140
    :cond_12
    monitor-exit v2

    goto :goto_7

    :catchall_8
    move-exception v0

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    throw v0

    .line 125
    :catch_5
    move-exception v2

    .line 126
    .local v2, "e":Lcom/android/nfc/LlcpException;
    :try_start_1f
    const-string v3, "HandoverServer"

    const-string v4, "llcp error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    .line 130
    nop

    .end local v2    # "e":Lcom/android/nfc/LlcpException;
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v2

    .line 131
    :try_start_20
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v3, :cond_14

    .line 132
    sget-object v3, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "HandoverServer"

    const-string v4, "about to close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    .line 134
    :cond_13
    :try_start_21
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_6
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    .line 137
    goto :goto_6

    .line 135
    :catch_6
    move-exception v3

    .line 138
    :goto_6
    :try_start_22
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 140
    :cond_14
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    .line 141
    :goto_7
    nop

    .line 143
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v0

    .line 144
    :try_start_23
    iget-boolean v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    move v1, v2

    .line 145
    monitor-exit v0

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    throw v2

    .line 140
    :catchall_a
    move-exception v0

    :try_start_24
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    throw v0

    .line 130
    .end local v1    # "threadRunning":Z
    .local v2, "threadRunning":Z
    :goto_8
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v3

    .line 131
    :try_start_25
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v4, :cond_16

    .line 132
    sget-object v4, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_15

    const-string v4, "HandoverServer"

    const-string v5, "about to close"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    .line 134
    :cond_15
    :try_start_26
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_7
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    .line 137
    goto :goto_9

    .line 135
    :catch_7
    move-exception v4

    .line 138
    :goto_9
    :try_start_27
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 140
    :cond_16
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_b

    .line 141
    throw v1

    .line 140
    :catchall_b
    move-exception v0

    :try_start_28
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    throw v0

    .line 147
    .end local v2    # "threadRunning":Z
    .restart local v1    # "threadRunning":Z
    :cond_17
    return-void

    .line 86
    .end local v1    # "threadRunning":Z
    :catchall_c
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_c

    throw v1
.end method

.method public shutdown()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v0

    .line 151
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    .line 152
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 154
    :try_start_1
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    goto :goto_0

    .line 155
    :catch_0
    move-exception v1

    .line 158
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 160
    :cond_0
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

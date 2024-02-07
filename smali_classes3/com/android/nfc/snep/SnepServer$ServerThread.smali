.class Lcom/android/nfc/snep/SnepServer$ServerThread;
.super Ljava/lang/Thread;
.source "SnepServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/snep/SnepServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerThread"
.end annotation


# instance fields
.field mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field private mThreadRunning:Z

.field final synthetic this$0:Lcom/android/nfc/snep/SnepServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/snep/SnepServer;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/nfc/snep/SnepServer;

    .line 179
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 186
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v0

    .line 187
    :try_start_0
    iget-boolean v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    .line 188
    .local v1, "threadRunning":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    .line 190
    :goto_0
    if-eqz v1, :cond_19

    .line 191
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->-$$Nest$sfgetDBG()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SnepServer"

    const-string v2, "about create LLCP service socket"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v2
    :try_end_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 194
    :try_start_2
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v4, v4, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    iget-object v5, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-object v5, v5, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v6, v6, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    iget-object v7, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v7, v7, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    const/16 v8, 0x400

    invoke-virtual/range {v3 .. v8}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 196
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 197
    if-nez v3, :cond_4

    .line 198
    :try_start_3
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->-$$Nest$sfgetDBG()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "SnepServer"

    const-string v3, "failed to create LLCP service socket"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/android/nfc/LlcpException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v2

    .line 236
    :try_start_4
    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v3, :cond_3

    .line 237
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->-$$Nest$sfgetDBG()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SnepServer"

    const-string v4, "about to close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 239
    :cond_2
    :try_start_5
    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 242
    goto :goto_1

    .line 240
    :catch_0
    move-exception v3

    .line 243
    :goto_1
    :try_start_6
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 245
    :cond_3
    monitor-exit v2

    .line 199
    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 201
    :cond_4
    :try_start_7
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->-$$Nest$sfgetDBG()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "SnepServer"

    const-string v3, "created LLCP service socket"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_5
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v2
    :try_end_7
    .catch Lcom/android/nfc/LlcpException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 203
    :try_start_8
    iget-boolean v3, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    move v1, v3

    .line 204
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 206
    :goto_2
    if-eqz v1, :cond_e

    .line 208
    :try_start_9
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v2
    :try_end_9
    .catch Lcom/android/nfc/LlcpException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    .line 209
    :try_start_a
    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 210
    .local v3, "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 212
    if-nez v3, :cond_9

    .line 213
    :try_start_b
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->-$$Nest$sfgetDBG()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "SnepServer"

    const-string v4, "Server socket shut down."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Lcom/android/nfc/LlcpException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 235
    :cond_6
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v2

    .line 236
    :try_start_c
    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v4, :cond_8

    .line 237
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->-$$Nest$sfgetDBG()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "SnepServer"

    const-string v5, "about to close"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 239
    :cond_7
    :try_start_d
    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 242
    goto :goto_3

    .line 240
    :catch_1
    move-exception v4

    .line 243
    :goto_3
    :try_start_e
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 245
    :cond_8
    monitor-exit v2

    .line 214
    return-void

    .line 245
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    throw v0

    .line 216
    :cond_9
    :try_start_f
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->-$$Nest$sfgetDBG()Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "SnepServer"

    const-string v4, "about to accept"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_a
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v2

    .line 218
    .local v2, "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->-$$Nest$sfgetDBG()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "SnepServer"

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

    .line 219
    :cond_b
    if-eqz v2, :cond_d

    .line 220
    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v4, v4, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_c

    .line 221
    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v4, v4, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    goto :goto_4

    :cond_c
    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v4, v4, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    iget-object v5, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v5, v5, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 222
    .local v4, "fragmentLength":I
    :goto_4
    new-instance v5, Lcom/android/nfc/snep/SnepServer$ConnectionThread;

    iget-object v6, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    invoke-direct {v5, v6, v2, v4}, Lcom/android/nfc/snep/SnepServer$ConnectionThread;-><init>(Lcom/android/nfc/snep/SnepServer;Lcom/android/nfc/DeviceHost$LlcpSocket;I)V

    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->start()V

    .line 225
    .end local v4    # "fragmentLength":I
    :cond_d
    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v4
    :try_end_f
    .catch Lcom/android/nfc/LlcpException; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 226
    :try_start_10
    iget-boolean v5, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    move v1, v5

    .line 227
    monitor-exit v4

    .line 228
    .end local v2    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v3    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    goto/16 :goto_2

    .line 227
    .restart local v2    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .restart local v3    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_2
    move-exception v5

    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/snep/SnepServer$ServerThread;
    :try_start_11
    throw v5
    :try_end_11
    .catch Lcom/android/nfc/LlcpException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_3
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 210
    .end local v2    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v3    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepServer$ServerThread;
    :catchall_3
    move-exception v3

    :try_start_12
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/snep/SnepServer$ServerThread;
    :try_start_13
    throw v3

    .line 229
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepServer$ServerThread;
    :cond_e
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->-$$Nest$sfgetDBG()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "SnepServer"

    const-string v3, "stop running"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Lcom/android/nfc/LlcpException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 235
    :cond_f
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v2

    .line 236
    :try_start_14
    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v3, :cond_11

    .line 237
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->-$$Nest$sfgetDBG()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "SnepServer"

    const-string v4, "about to close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 239
    :cond_10
    :try_start_15
    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 242
    goto :goto_5

    .line 240
    :catch_2
    move-exception v3

    .line 243
    :goto_5
    :try_start_16
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 245
    :cond_11
    monitor-exit v2

    goto :goto_7

    :catchall_4
    move-exception v0

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    throw v0

    .line 204
    :catchall_5
    move-exception v3

    :try_start_17
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/snep/SnepServer$ServerThread;
    :try_start_18
    throw v3
    :try_end_18
    .catch Lcom/android/nfc/LlcpException; {:try_start_18 .. :try_end_18} :catch_5
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 196
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepServer$ServerThread;
    :catchall_6
    move-exception v3

    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .end local v1    # "threadRunning":Z
    .end local p0    # "this":Lcom/android/nfc/snep/SnepServer$ServerThread;
    :try_start_1a
    throw v3
    :try_end_1a
    .catch Lcom/android/nfc/LlcpException; {:try_start_1a .. :try_end_1a} :catch_5
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 235
    .restart local v1    # "threadRunning":Z
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepServer$ServerThread;
    :catchall_7
    move-exception v2

    move-object v9, v2

    move v2, v1

    move-object v1, v9

    goto :goto_a

    .line 232
    :catch_3
    move-exception v2

    .line 233
    .local v2, "e":Ljava/io/IOException;
    :try_start_1b
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->-$$Nest$sfgetDBG()Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "SnepServer"

    const-string v4, "IO error"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 235
    .end local v2    # "e":Ljava/io/IOException;
    :cond_12
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v2

    .line 236
    :try_start_1c
    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v3, :cond_14

    .line 237
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->-$$Nest$sfgetDBG()Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "SnepServer"

    const-string v4, "about to close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    .line 239
    :cond_13
    :try_start_1d
    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_4
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    .line 242
    goto :goto_6

    .line 240
    :catch_4
    move-exception v3

    .line 243
    :goto_6
    :try_start_1e
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 245
    :cond_14
    monitor-exit v2

    .line 246
    :goto_7
    goto :goto_9

    .line 245
    :catchall_8
    move-exception v0

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    throw v0

    .line 230
    :catch_5
    move-exception v2

    .line 231
    .local v2, "e":Lcom/android/nfc/LlcpException;
    :try_start_1f
    const-string v3, "SnepServer"

    const-string v4, "llcp error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    .line 235
    nop

    .end local v2    # "e":Lcom/android/nfc/LlcpException;
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v2

    .line 236
    :try_start_20
    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v3, :cond_16

    .line 237
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->-$$Nest$sfgetDBG()Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "SnepServer"

    const-string v4, "about to close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    .line 239
    :cond_15
    :try_start_21
    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_6
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    .line 242
    goto :goto_8

    .line 240
    :catch_6
    move-exception v3

    .line 243
    :goto_8
    :try_start_22
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 245
    :cond_16
    monitor-exit v2
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    goto :goto_7

    .line 248
    :goto_9
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v0

    .line 249
    :try_start_23
    iget-boolean v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    move v1, v2

    .line 250
    monitor-exit v0

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    throw v2

    .line 245
    :catchall_a
    move-exception v0

    :try_start_24
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    throw v0

    .line 235
    .end local v1    # "threadRunning":Z
    .local v2, "threadRunning":Z
    :goto_a
    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v3

    .line 236
    :try_start_25
    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v4, :cond_18

    .line 237
    invoke-static {}, Lcom/android/nfc/snep/SnepServer;->-$$Nest$sfgetDBG()Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "SnepServer"

    const-string v5, "about to close"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    .line 239
    :cond_17
    :try_start_26
    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_7
    .catchall {:try_start_26 .. :try_end_26} :catchall_b

    .line 242
    goto :goto_b

    .line 240
    :catch_7
    move-exception v4

    .line 243
    :goto_b
    :try_start_27
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 245
    :cond_18
    monitor-exit v3
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_b

    .line 246
    throw v1

    .line 245
    :catchall_b
    move-exception v0

    :try_start_28
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_b

    throw v0

    .line 252
    .end local v2    # "threadRunning":Z
    .restart local v1    # "threadRunning":Z
    :cond_19
    return-void

    .line 188
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

    .line 255
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v0

    .line 256
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    .line 257
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 259
    :try_start_1
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    .line 263
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 265
    :cond_0
    monitor-exit v0

    .line 266
    return-void

    .line 265
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

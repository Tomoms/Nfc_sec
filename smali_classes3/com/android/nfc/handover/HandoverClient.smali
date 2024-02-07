.class public final Lcom/android/nfc/handover/HandoverClient;
.super Ljava/lang/Object;
.source "HandoverClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z

.field private static final DISCONNECTED:I = 0x0

.field private static final MIU:I = 0x80

.field private static final TAG:Ljava/lang/String; = "HandoverClient"

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    nop

    .line 35
    const-string v0, "persist.nfc.debug_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 88
    sget-object v0, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 91
    :try_start_1
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 95
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 97
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 98
    monitor-exit v0

    .line 99
    return-void

    .line 98
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public connect()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_0
    iget v1, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    if-nez v1, :cond_2

    .line 52
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 54
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    .line 55
    .local v2, "service":Lcom/android/nfc/NfcService;
    const/4 v3, 0x0

    .line 57
    .local v3, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    const/16 v4, 0x80

    const/16 v5, 0x400

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v2, v6, v4, v1, v5}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v1
    :try_end_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_1 .. :try_end_1} :catch_2

    .line 63
    .end local v3    # "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .local v1, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    nop

    .line 65
    :try_start_2
    sget-boolean v3, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "HandoverClient"

    const-string v4, "about to connect to service urn:nfc:sn:handover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_0
    const-string v3, "urn:nfc:sn:handover"

    invoke-interface {v1, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 80
    nop

    .line 81
    monitor-enter v0

    .line 82
    :try_start_3
    iput-object v1, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 83
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 84
    monitor-exit v0

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_1

    .line 71
    :try_start_4
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 74
    goto :goto_0

    .line 72
    :catch_1
    move-exception v3

    .line 76
    :cond_1
    :goto_0
    sget-object v4, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 77
    :try_start_5
    iput v6, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 78
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 79
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Could not connect to handover service"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 78
    :catchall_1
    move-exception v3

    :try_start_6
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 58
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .restart local v3    # "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 59
    .local v1, "e":Lcom/android/nfc/LlcpException;
    sget-object v4, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 60
    :try_start_7
    iput v6, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    .line 61
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 62
    new-instance v0, Ljava/io/IOException;

    const-string v4, "Could not create socket"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    .line 50
    .end local v1    # "e":Lcom/android/nfc/LlcpException;
    .end local v2    # "service":Lcom/android/nfc/NfcService;
    .end local v3    # "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :cond_2
    :try_start_9
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Socket in use."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/nfc/handover/HandoverClient;
    throw v1

    .line 53
    .restart local p0    # "this":Lcom/android/nfc/handover/HandoverClient;
    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v1
.end method

.method public sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .locals 11
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 103
    :cond_0
    const/4 v1, 0x0

    .line 104
    .local v1, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    sget-object v2, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 105
    :try_start_0
    iget v3, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    .line 108
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object v1, v3

    .line 109
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    const/4 v2, 0x0

    .line 111
    .local v2, "offset":I
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v3

    .line 112
    .local v3, "buffer":[B
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 115
    .local v4, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v5

    .line 116
    .local v5, "remoteMiu":I
    sget-boolean v6, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "HandoverClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "about to send a "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " byte message"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_1
    :goto_0
    array-length v6, v3

    if-ge v2, v6, :cond_3

    .line 118
    array-length v6, v3

    sub-int/2addr v6, v2

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 119
    .local v6, "length":I
    add-int v7, v2, v6

    invoke-static {v3, v2, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 120
    .local v7, "tmpBuffer":[B
    sget-boolean v8, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v8, :cond_2

    const-string v8, "HandoverClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "about to send a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " byte packet"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_2
    invoke-interface {v1, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 122
    add-int/2addr v2, v6

    .line 123
    .end local v6    # "length":I
    .end local v7    # "tmpBuffer":[B
    goto :goto_0

    .line 126
    :cond_3
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getLocalMiu()I

    move-result v6

    new-array v6, v6, [B

    .line 127
    .local v6, "partial":[B
    const/4 v7, 0x0

    .line 129
    .local v7, "handoverSelectMsg":Landroid/nfc/NdefMessage;
    :goto_1
    invoke-interface {v1, v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v8

    .line 130
    .local v8, "size":I
    if-gez v8, :cond_4

    .line 131
    goto :goto_2

    .line 133
    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v4, v6, v9, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :try_start_2
    new-instance v9, Landroid/nfc/NdefMessage;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_2
    .catch Landroid/nfc/FormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v7, v9

    .line 137
    nop

    .line 142
    .end local v8    # "size":I
    :goto_2
    nop

    .line 146
    if-eqz v1, :cond_6

    .line 148
    :try_start_3
    sget-boolean v0, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "HandoverClient"

    const-string v8, "about to close"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_5
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 152
    goto :goto_3

    .line 150
    :catch_0
    move-exception v0

    .line 155
    :cond_6
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 158
    goto :goto_4

    .line 156
    :catch_1
    move-exception v0

    .line 142
    :goto_4
    return-object v7

    .line 138
    .restart local v8    # "size":I
    :catch_2
    move-exception v9

    .line 141
    .end local v8    # "size":I
    goto :goto_1

    .line 146
    .end local v5    # "remoteMiu":I
    .end local v6    # "partial":[B
    .end local v7    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    :catchall_0
    move-exception v0

    goto :goto_7

    .line 143
    :catch_3
    move-exception v5

    .line 144
    .local v5, "e":Ljava/io/IOException;
    :try_start_5
    sget-boolean v6, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v6, :cond_7

    const-string v7, "HandoverClient"

    const-string v8, "couldn\'t connect to handover service"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 146
    .end local v5    # "e":Ljava/io/IOException;
    :cond_7
    if-eqz v1, :cond_9

    .line 148
    if-eqz v6, :cond_8

    :try_start_6
    const-string v5, "HandoverClient"

    const-string v6, "about to close"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_8
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 152
    goto :goto_5

    .line 150
    :catch_4
    move-exception v5

    .line 155
    :cond_9
    :goto_5
    :try_start_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 158
    goto :goto_6

    .line 156
    :catch_5
    move-exception v5

    .line 159
    nop

    .line 160
    :goto_6
    return-object v0

    .line 146
    :goto_7
    if-eqz v1, :cond_b

    .line 148
    :try_start_8
    sget-boolean v5, Lcom/android/nfc/handover/HandoverClient;->DBG:Z

    if-eqz v5, :cond_a

    const-string v5, "HandoverClient"

    const-string v6, "about to close"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_a
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 152
    goto :goto_8

    .line 150
    :catch_6
    move-exception v5

    .line 155
    :cond_b
    :goto_8
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 158
    goto :goto_9

    .line 156
    :catch_7
    move-exception v5

    .line 159
    :goto_9
    throw v0

    .line 106
    .end local v2    # "offset":I
    .end local v3    # "buffer":[B
    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :cond_c
    :try_start_a
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Socket not connected"

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local p0    # "this":Lcom/android/nfc/handover/HandoverClient;
    .end local p1    # "msg":Landroid/nfc/NdefMessage;
    throw v0

    .line 109
    .restart local v1    # "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .restart local p0    # "this":Lcom/android/nfc/handover/HandoverClient;
    .restart local p1    # "msg":Landroid/nfc/NdefMessage;
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v0
.end method

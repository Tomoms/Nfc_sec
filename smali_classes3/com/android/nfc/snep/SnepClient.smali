.class public final Lcom/android/nfc/snep/SnepClient;
.super Ljava/lang/Object;
.source "SnepClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z

.field private static final DEFAULT_ACCEPTABLE_LENGTH:I = 0x19000

.field private static final DEFAULT_MIU:I = 0x80

.field private static final DEFAULT_RWSIZE:I = 0x1

.field private static final DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SnepClient"


# instance fields
.field private final mAcceptableLength:I

.field private final mFragmentLength:I

.field mMessenger:Lcom/android/nfc/snep/SnepMessenger;

.field private final mMiu:I

.field private final mPort:I

.field private final mRwSize:I

.field private final mServiceName:Ljava/lang/String;

.field private mState:I

.field private final mTransmissionLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    nop

    .line 32
    const-string v0, "persist.nfc.debug_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/snep/SnepClient;->DBG:Z

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 52
    const-string v0, "urn:nfc:sn:snep"

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 53
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 54
    const v0, 0x19000

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 56
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 58
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "miu"    # I
    .param p2, "rwSize"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 70
    const-string v0, "urn:nfc:sn:snep"

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 71
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 72
    const v0, 0x19000

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 74
    iput p1, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 75
    iput p2, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "serviceName"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 61
    iput-object p1, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 63
    const v1, 0x19000

    iput v1, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 64
    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 65
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 67
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "fragmentLength"    # I

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 79
    iput-object p1, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 81
    const v0, 0x19000

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 82
    iput p2, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 83
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 84
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 85
    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "acceptableLength"    # I
    .param p3, "fragmentLength"    # I

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 88
    iput-object p1, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 90
    iput p2, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 91
    iput p3, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 92
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 93
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 94
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 189
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepMessenger;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :try_start_2
    iput-object v2, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 194
    iput v1, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 195
    nop

    .end local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    throw v0

    .line 190
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    :catch_0
    move-exception v0

    .line 193
    iput-object v2, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 194
    :goto_0
    iput v1, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 197
    :cond_0
    monitor-exit p0

    .line 198
    return-void

    .line 197
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public connect()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    if-nez v0, :cond_7

    .line 139
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 140
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 142
    const/4 v1, 0x0

    .line 145
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    const/4 v2, 0x0

    :try_start_1
    sget-boolean v3, Lcom/android/nfc/snep/SnepClient;->DBG:Z

    if-eqz v3, :cond_0

    const-string v4, "SnepClient"

    const-string v5, "about to create socket"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    iget v5, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    iget v6, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    const/16 v7, 0x400

    invoke-virtual {v4, v2, v5, v6, v7}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v4

    move-object v1, v4

    .line 148
    if-eqz v1, :cond_5

    .line 151
    iget v4, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 152
    if-eqz v3, :cond_1

    const-string v3, "SnepClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "about to connect to service "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1
    iget-object v3, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_2
    if-eqz v3, :cond_3

    const-string v3, "SnepClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "about to connect to port "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_3
    iget v3, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    invoke-interface {v1, v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToSap(I)V

    .line 158
    :goto_0
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v3

    .line 159
    .local v3, "miu":I
    iget v4, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    if-ne v4, v5, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 160
    .local v4, "fragmentLength":I
    :goto_1
    new-instance v5, Lcom/android/nfc/snep/SnepMessenger;

    invoke-direct {v5, v0, v1, v4}, Lcom/android/nfc/snep/SnepMessenger;-><init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V
    :try_end_1
    .catch Lcom/android/nfc/LlcpException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v5

    .line 177
    .end local v3    # "miu":I
    .end local v4    # "fragmentLength":I
    .local v0, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    nop

    .line 179
    monitor-enter p0

    .line 180
    :try_start_2
    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 181
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 182
    monitor-exit p0

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 149
    .end local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    :cond_5
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v3, "Could not connect to socket."

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    throw v0
    :try_end_3
    .catch Lcom/android/nfc/LlcpException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 166
    .restart local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    :catch_0
    move-exception v0

    move-object v3, v1

    .line 167
    .end local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .local v0, "e":Ljava/io/IOException;
    .local v3, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-eqz v3, :cond_6

    .line 169
    :try_start_4
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 171
    goto :goto_2

    .line 170
    :catch_1
    move-exception v1

    .line 173
    :cond_6
    :goto_2
    monitor-enter p0

    .line 174
    :try_start_5
    iput v2, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 175
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 176
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to connect to socket"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 161
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .restart local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :catch_2
    move-exception v0

    .line 162
    .local v0, "e":Lcom/android/nfc/LlcpException;
    monitor-enter p0

    .line 163
    :try_start_7
    iput v2, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 164
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 165
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Could not connect to socket"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 164
    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v2

    .line 137
    .end local v0    # "e":Lcom/android/nfc/LlcpException;
    .end local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :cond_7
    :try_start_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket already in use."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    throw v0

    .line 140
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    :catchall_3
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0
.end method

.method public get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .locals 4
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    monitor-enter p0

    .line 118
    :try_start_0
    iget v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 122
    .local v0, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    iget-object v1, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_1
    iget v2, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    invoke-static {v2, p1}, Lcom/android/nfc/snep/SnepMessage;->getGetRequest(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 127
    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2
    :try_end_1
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1

    return-object v2

    .line 131
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 128
    :catch_0
    move-exception v2

    .line 129
    .local v2, "e":Lcom/android/nfc/snep/SnepException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .end local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    .end local p1    # "msg":Landroid/nfc/NdefMessage;
    throw v3

    .line 131
    .end local v2    # "e":Lcom/android/nfc/snep/SnepException;
    .restart local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    .restart local p1    # "msg":Landroid/nfc/NdefMessage;
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 119
    .end local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    :cond_0
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket not connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    .end local p1    # "msg":Landroid/nfc/NdefMessage;
    throw v0

    .line 122
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    .restart local p1    # "msg":Landroid/nfc/NdefMessage;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public put(Landroid/nfc/NdefMessage;)V
    .locals 4
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 103
    .local v0, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 105
    iget-object v1, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_1
    invoke-static {p1}, Lcom/android/nfc/snep/SnepMessage;->getPutRequest(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 108
    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;
    :try_end_1
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    nop

    .line 112
    :try_start_2
    monitor-exit v1

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 109
    :catch_0
    move-exception v2

    .line 110
    .local v2, "e":Lcom/android/nfc/snep/SnepException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .end local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    .end local p1    # "msg":Landroid/nfc/NdefMessage;
    throw v3

    .line 112
    .end local v2    # "e":Lcom/android/nfc/snep/SnepException;
    .restart local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    .restart local p1    # "msg":Landroid/nfc/NdefMessage;
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 100
    .end local v0    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    :cond_0
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Socket not connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    .end local p1    # "msg":Landroid/nfc/NdefMessage;
    throw v0

    .line 103
    .restart local p0    # "this":Lcom/android/nfc/snep/SnepClient;
    .restart local p1    # "msg":Landroid/nfc/NdefMessage;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

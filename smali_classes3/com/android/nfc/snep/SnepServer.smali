.class public final Lcom/android/nfc/snep/SnepServer;
.super Ljava/lang/Object;
.source "SnepServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/snep/SnepServer$ServerThread;,
        Lcom/android/nfc/snep/SnepServer$ConnectionThread;,
        Lcom/android/nfc/snep/SnepServer$Callback;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final DEFAULT_MIU:I = 0xf8

.field public static final DEFAULT_PORT:I = 0x4

.field private static final DEFAULT_RW_SIZE:I = 0x1

.field public static final DEFAULT_SERVICE_NAME:Ljava/lang/String; = "urn:nfc:sn:snep"

.field private static final TAG:Ljava/lang/String; = "SnepServer"


# instance fields
.field final mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

.field final mFragmentLength:I

.field final mMiu:I

.field final mRwSize:I

.field mServerRunning:Z

.field mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

.field final mServiceName:Ljava/lang/String;

.field final mServiceSap:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    sget-boolean v0, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 37
    nop

    .line 38
    const-string v0, "persist.nfc.debug_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/snep/SnepServer$Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/nfc/snep/SnepServer$Callback;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 63
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 64
    const-string v0, "urn:nfc:sn:snep"

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    .line 65
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    .line 67
    const/16 v0, 0xf8

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/snep/SnepServer$Callback;II)V
    .locals 1
    .param p1, "callback"    # Lcom/android/nfc/snep/SnepServer$Callback;
    .param p2, "miu"    # I
    .param p3, "rwSize"    # I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 81
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 82
    const-string v0, "urn:nfc:sn:snep"

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    .line 83
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    .line 85
    iput p2, p0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    .line 86
    iput p3, p0, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    .line 87
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IILcom/android/nfc/snep/SnepServer$Callback;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSap"    # I
    .param p3, "fragmentLength"    # I
    .param p4, "callback"    # Lcom/android/nfc/snep/SnepServer$Callback;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 90
    iput-object p4, p0, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 91
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    .line 92
    iput p2, p0, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    .line 93
    iput p3, p0, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    .line 94
    const/16 v0, 0xf8

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    .line 95
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/android/nfc/snep/SnepServer$Callback;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSap"    # I
    .param p3, "callback"    # Lcom/android/nfc/snep/SnepServer$Callback;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 72
    iput-object p3, p0, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    .line 73
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    .line 74
    iput p2, p0, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    .line 76
    const/16 v0, 0xf8

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    .line 78
    return-void
.end method

.method static handleRequest(Lcom/android/nfc/snep/SnepMessenger;Lcom/android/nfc/snep/SnepServer$Callback;)Z
    .locals 7
    .param p0, "messenger"    # Lcom/android/nfc/snep/SnepMessenger;
    .param p1, "callback"    # Lcom/android/nfc/snep/SnepServer$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    const-string v0, "SnepServer"

    const/16 v1, -0x3e

    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2
    :try_end_0
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    .local v2, "request":Lcom/android/nfc/snep/SnepMessage;
    nop

    .line 157
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getVersion()B

    move-result v3

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 158
    const/16 v0, -0x1f

    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    goto/16 :goto_0

    .line 160
    :cond_0
    sget-boolean v3, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getLength()I

    move-result v3

    const/16 v5, 0x400

    const/4 v6, -0x1

    if-gt v3, v5, :cond_1

    .line 161
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getLength()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 162
    :cond_1
    sget-boolean v1, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "Bad requested length"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_2
    invoke-static {v6}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v3

    if-ne v3, v4, :cond_4

    .line 165
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getAcceptableLength()I

    move-result v0

    .line 166
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v1

    .line 165
    invoke-interface {p1, v0, v1}, Lcom/android/nfc/snep/SnepServer$Callback;->doGet(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    goto :goto_0

    .line 167
    :cond_4
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v3

    const/4 v5, 0x2

    if-ne v3, v5, :cond_6

    .line 168
    sget-boolean v1, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "putting message "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_5
    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/nfc/snep/SnepServer$Callback;->doPut(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    goto :goto_0

    .line 171
    :cond_6
    sget-boolean v3, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v3, :cond_7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown request ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_7
    invoke-static {v1}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 175
    :goto_0
    return v4

    .line 146
    .end local v2    # "request":Lcom/android/nfc/snep/SnepMessage;
    :catch_0
    move-exception v2

    .line 147
    .local v2, "e":Lcom/android/nfc/snep/SnepException;
    sget-boolean v3, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v3, :cond_8

    const-string v3, "Bad snep message"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    :cond_8
    :try_start_1
    invoke-static {v1}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 153
    goto :goto_1

    .line 151
    :catch_1
    move-exception v0

    .line 154
    :goto_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public start()V
    .locals 4

    .line 270
    monitor-enter p0

    .line 271
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v0, :cond_0

    const-string v1, "SnepServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start, thread = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    if-nez v1, :cond_2

    .line 273
    if-eqz v0, :cond_1

    const-string v0, "SnepServer"

    const-string v1, "starting new server thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_1
    new-instance v0, Lcom/android/nfc/snep/SnepServer$ServerThread;

    invoke-direct {v0, p0}, Lcom/android/nfc/snep/SnepServer$ServerThread;-><init>(Lcom/android/nfc/snep/SnepServer;)V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 275
    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer$ServerThread;->start()V

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 278
    :cond_2
    monitor-exit p0

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 4

    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/snep/SnepServer;->DBG:Z

    if-eqz v0, :cond_0

    const-string v1, "SnepServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop, thread = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    if-eqz v1, :cond_2

    .line 285
    if-eqz v0, :cond_1

    const-string v0, "SnepServer"

    const-string v1, "shuting down server thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer$ServerThread;->shutdown()V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerThread:Lcom/android/nfc/snep/SnepServer$ServerThread;

    .line 288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z

    .line 290
    :cond_2
    monitor-exit p0

    .line 291
    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

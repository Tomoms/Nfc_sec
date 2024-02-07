.class public Lcom/android/nfc/cardemulation/EnabledNfcFServices;
.super Ljava/lang/Object;
.source "EnabledNfcFServices.java"

# interfaces
.implements Lcom/android/nfc/ForegroundUtils$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;
    }
.end annotation


# static fields
.field static final DBG:Z

.field static final TAG:Ljava/lang/String; = "EnabledNfcFCardEmulationServices"


# instance fields
.field mActivated:Z

.field final mCallback:Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;

.field mComputeFgRequested:Z

.field final mContext:Landroid/content/Context;

.field mForegroundComponent:Landroid/content/ComponentName;

.field mForegroundRequested:Landroid/content/ComponentName;

.field mForegroundUid:I

.field final mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field final mHandler:Landroid/os/Handler;

.field final mLock:Ljava/lang/Object;

.field final mNfcFServiceCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

.field final mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const-string v0, "persist.nfc.debug_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "nfcFServiceCache"    # Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;
    .param p3, "t3tIdentifiersCache"    # Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;
    .param p4, "callback"    # Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mHandler:Landroid/os/Handler;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    .line 47
    iput-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 48
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    .line 63
    sget-boolean v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnabledNfcFCardEmulationServices"

    const-string v1, "EnabledNfcFServices"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mNfcFServiceCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 66
    iput-object p3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    .line 67
    iput-object p4, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mCallback:Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;

    .line 68
    return-void
.end method


# virtual methods
.method computeEnabledForegroundService()V
    .locals 5

    .line 71
    sget-boolean v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnabledNfcFCardEmulationServices"

    const-string v1, "computeEnabledForegroundService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_0
    const/4 v0, 0x0

    .line 73
    .local v0, "foregroundRequested":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 74
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 75
    :try_start_0
    iget-boolean v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    if-eqz v3, :cond_1

    .line 76
    const-string v3, "EnabledNfcFCardEmulationServices"

    const-string v4, "configuration will be postponed until deactivation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    .line 78
    monitor-exit v2

    return-void

    .line 80
    :cond_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    .line 81
    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    move-object v0, v3

    .line 82
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_2

    .line 84
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 85
    :cond_2
    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    .line 86
    const/4 v1, 0x1

    goto :goto_0

    .line 87
    :cond_3
    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    if-nez v3, :cond_4

    iget-object v4, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_4

    .line 88
    iput-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    .line 89
    const/4 v1, 0x1

    .line 91
    :cond_4
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    if-eqz v1, :cond_5

    .line 94
    iget v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 95
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mCallback:Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;

    invoke-interface {v3, v2, v0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;->onEnabledForegroundNfcFServiceChanged(ILandroid/content/ComponentName;)V

    .line 97
    .end local v2    # "userId":I
    :cond_5
    return-void

    .line 91
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 226
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 4
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 238
    iget-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 240
    const-wide v2, 0x10b00000001L

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 244
    const-wide v2, 0x10b00000002L

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 247
    :cond_1
    const-wide v1, 0x10800000003L

    iget-boolean v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 248
    const-wide v1, 0x10800000004L

    iget-boolean v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 249
    const-wide v1, 0x10500000005L

    iget v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    invoke-virtual {p1, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 250
    monitor-exit v0

    .line 251
    return-void

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHostEmulationActivated()V
    .locals 2

    .line 184
    sget-boolean v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnabledNfcFCardEmulationServices"

    const-string v1, "onHostEmulationActivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 186
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    .line 187
    monitor-exit v0

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHostEmulationDeactivated()V
    .locals 3

    .line 191
    sget-boolean v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnabledNfcFCardEmulationServices"

    const-string v1, "onHostEmulationDeactivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    const/4 v0, 0x0

    .line 193
    .local v0, "needComputeFg":Z
    iget-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 194
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    .line 195
    iget-boolean v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    if-eqz v2, :cond_1

    .line 196
    const/4 v0, 0x1

    .line 198
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    if-eqz v0, :cond_2

    .line 200
    const-string v1, "EnabledNfcFCardEmulationServices"

    const-string v2, "do postponed configuration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->computeEnabledForegroundService()V

    .line 203
    :cond_2
    return-void

    .line 198
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onNfcDisabled()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    .line 208
    iput-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 209
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    .line 210
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    .line 211
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    .line 212
    monitor-exit v0

    .line 213
    return-void

    .line 212
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServicesUpdated()V
    .locals 4

    .line 100
    sget-boolean v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnabledNfcFCardEmulationServices"

    const-string v1, "onServicesUpdated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    const/4 v0, 0x0

    .line 103
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 104
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_1

    .line 105
    const-string v2, "EnabledNfcFCardEmulationServices"

    const-string v3, "Removing foreground enabled service because of service update."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 107
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    .line 108
    const/4 v0, 0x1

    .line 110
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->computeEnabledForegroundService()V

    .line 114
    :cond_2
    return-void

    .line 110
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onUidToBackground(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 179
    sget-boolean v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnabledNfcFCardEmulationServices"

    const-string v1, "onUidToBackground"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->unregisterForegroundService(I)Z

    .line 181
    return-void
.end method

.method public onUserSwitched(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 216
    iget-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundComponent:Landroid/content/ComponentName;

    .line 218
    iput-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 219
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mActivated:Z

    .line 220
    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mComputeFgRequested:Z

    .line 221
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    .line 222
    monitor-exit v0

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerEnabledForegroundService(Landroid/content/ComponentName;I)Z
    .locals 7
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "callingUid"    # I

    .line 117
    sget-boolean v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnabledNfcFCardEmulationServices"

    const-string v1, "registerEnabledForegroundService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    const/4 v0, 0x0

    .line 119
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 121
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mNfcFServiceCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v3, v2, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v3

    .line 123
    .local v3, "serviceInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 124
    monitor-exit v1

    return v4

    .line 126
    :cond_1
    invoke-virtual {v3}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getSystemCode()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NULL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 127
    invoke-virtual {v3}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getNfcid2()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NULL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 128
    invoke-virtual {v3}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getT3tPmm()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NULL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 132
    :cond_2
    iget-object v4, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    if-ne v4, p2, :cond_3

    .line 133
    const-string v4, "EnabledNfcFCardEmulationServices"

    const-string v5, "The servcie is already requested to the foreground service."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v4, 0x1

    monitor-exit v1

    return v4

    .line 136
    :cond_3
    iget-object v4, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v4, p0, p2}, Lcom/android/nfc/ForegroundUtils;->registerUidToBackgroundCallback(Lcom/android/nfc/ForegroundUtils$Callback;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 137
    iput-object p1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 138
    iput p2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    .line 139
    const/4 v0, 0x1

    goto :goto_0

    .line 141
    :cond_4
    const-string v4, "EnabledNfcFCardEmulationServices"

    const-string v5, "Calling UID is not in the foreground, ignorning!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v2    # "userId":I
    .end local v3    # "serviceInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    if-eqz v0, :cond_5

    .line 145
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->computeEnabledForegroundService()V

    .line 147
    :cond_5
    return v0

    .line 129
    .restart local v2    # "userId":I
    .restart local v3    # "serviceInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :cond_6
    :goto_1
    :try_start_1
    monitor-exit v1

    return v4

    .line 143
    .end local v2    # "userId":I
    .end local v3    # "serviceInfo":Landroid/nfc/cardemulation/NfcFServiceInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method unregisterForegroundService(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 151
    sget-boolean v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "EnabledNfcFCardEmulationServices"

    const-string v1, "unregisterForegroundService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    const/4 v0, 0x0

    .line 153
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_0
    iget v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    if-ne v2, p1, :cond_1

    .line 155
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 156
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUid:I

    .line 157
    const/4 v0, 0x1

    .line 159
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->computeEnabledForegroundService()V

    .line 163
    :cond_2
    return v0

    .line 159
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public unregisteredEnabledForegroundService(I)Z
    .locals 2
    .param p1, "callingUid"    # I

    .line 167
    sget-boolean v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->DBG:Z

    const-string v1, "EnabledNfcFCardEmulationServices"

    if-eqz v0, :cond_0

    const-string v0, "unregisterEnabledForegroundService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v0, p1}, Lcom/android/nfc/ForegroundUtils;->isInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->unregisterForegroundService(I)Z

    move-result v0

    return v0

    .line 172
    :cond_1
    const-string v0, "Calling UID is not in the foreground, ignorning!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const/4 v0, 0x0

    return v0
.end method

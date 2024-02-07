.class public Lcom/android/nfc/beam/BeamManager;
.super Ljava/lang/Object;
.source "BeamManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/beam/BeamManager$Singleton;
    }
.end annotation


# static fields
.field private static final ACTION_ALLOWLIST_DEVICE:Ljava/lang/String; = "android.btopp.intent.action.WHITELIST_DEVICE"

.field private static final DBG:Z

.field public static final MSG_BEAM_COMPLETE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BeamManager"


# instance fields
.field private mBeamInProgress:Z

.field private final mCallback:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mNfcService:Lcom/android/nfc/NfcService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    nop

    .line 41
    const-string v0, "persist.nfc.debug_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/beam/BeamManager;->DBG:Z

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    .line 62
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mNfcService:Lcom/android/nfc/NfcService;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/beam/BeamManager-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/nfc/beam/BeamManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/nfc/beam/BeamManager;
    .locals 1

    .line 66
    sget-object v0, Lcom/android/nfc/beam/BeamManager$Singleton;->INSTANCE:Lcom/android/nfc/beam/BeamManager;

    return-object v0
.end method


# virtual methods
.method allowlistOppDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 139
    sget-boolean v0, Lcom/android/nfc/beam/BeamManager;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Allowlist "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for BT OPP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeamManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.btopp.intent.action.WHITELIST_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x7f100031

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 143
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 145
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 127
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    move v0, v1

    .line 130
    .local v0, "success":Z
    if-eqz v0, :cond_1

    .line 131
    iget-object v1, p0, Lcom/android/nfc/beam/BeamManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 133
    :cond_1
    return v2

    .line 127
    .end local v0    # "success":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 135
    :cond_2
    return v1
.end method

.method public isBeamInProgress()Z
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 71
    :try_start_0
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    monitor-exit v0

    return v1

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startBeamReceive(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    .line 77
    iget-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    if-eqz v1, :cond_0

    .line 79
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 81
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iget-object v0, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    iget-boolean v2, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    const/4 v3, 0x0

    .line 86
    invoke-static {v0, v2, v3}, Lcom/android/nfc/beam/BeamTransferRecord;->forBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v0

    .line 89
    .local v0, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/nfc/beam/BeamReceiveService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .local v2, "receiveIntent":Landroid/content/Intent;
    const-string v3, "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 92
    const-string v3, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    new-instance v4, Landroid/os/Messenger;

    iget-object v5, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 94
    iget-object v3, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1, v3}, Lcom/android/nfc/beam/BeamManager;->allowlistOppDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 95
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 96
    return v1

    .line 83
    .end local v0    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    .end local v2    # "receiveIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startBeamSend(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;[Landroid/net/Uri;Landroid/os/UserHandle;)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "outgoingHandoverData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .param p3, "uris"    # [Landroid/net/Uri;
    .param p4, "userHandle"    # Landroid/os/UserHandle;

    .line 102
    iget-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    if-eqz v1, :cond_0

    .line 104
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 106
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 108
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    iget-object v0, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    iget-boolean v2, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    invoke-static {v0, v2, p3}, Lcom/android/nfc/beam/BeamTransferRecord;->forBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v0

    .line 113
    .local v0, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/android/nfc/beam/BeamSendService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    .local v2, "sendIntent":Landroid/content/Intent;
    sget-object v3, Lcom/android/nfc/beam/BeamSendService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 116
    const-string v3, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    new-instance v4, Landroid/os/Messenger;

    iget-object v5, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p1, v2, p4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 119
    return v1

    .line 108
    .end local v0    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    .end local v2    # "sendIntent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

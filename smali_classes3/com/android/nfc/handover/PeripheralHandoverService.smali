.class public Lcom/android/nfc/handover/PeripheralHandoverService;
.super Landroid/app/Service;
.source "PeripheralHandoverService.java"

# interfaces
.implements Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;
    }
.end annotation


# static fields
.field public static final BUNDLE_TRANSFER:Ljava/lang/String; = "transfer"

.field static final DBG:Z = true

.field public static final EXTRA_BT_ENABLED:Ljava/lang/String; = "bt_enabled"

.field public static final EXTRA_CLIENT:Ljava/lang/String; = "client"

.field public static final EXTRA_PERIPHERAL_CLASS:Ljava/lang/String; = "class"

.field public static final EXTRA_PERIPHERAL_DEVICE:Ljava/lang/String; = "device"

.field public static final EXTRA_PERIPHERAL_NAME:Ljava/lang/String; = "headsetname"

.field public static final EXTRA_PERIPHERAL_OOB_DATA:Ljava/lang/String; = "oobdata"

.field public static final EXTRA_PERIPHERAL_TRANSPORT:Ljava/lang/String; = "transporttype"

.field public static final EXTRA_PERIPHERAL_UUIDS:Ljava/lang/String; = "uuids"

.field public static final MSG_HEADSET_CONNECTED:I = 0x0

.field public static final MSG_HEADSET_NOT_CONNECTED:I = 0x1

.field static final MSG_PAUSE_POLLING:I = 0x0

.field private static final PAUSE_DELAY_MILLIS:I = 0x12c

.field private static final PAUSE_POLLING_TIMEOUT_MS:I = 0x88b8

.field static final TAG:Ljava/lang/String; = "PeripheralHandoverService"

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBluetoothEnabledByNfc:Z

.field mBluetoothHeadsetConnected:Z

.field mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

.field final mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

.field mClient:Landroid/os/Messenger;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field mHandler:Landroid/os/Handler;

.field final mMessenger:Landroid/os/Messenger;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field mStartId:I


# direct methods
.method static bridge synthetic -$$Nest$mhandleBluetoothStateChanged(Lcom/android/nfc/handover/PeripheralHandoverService;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/nfc/handover/PeripheralHandoverService;->handleBluetoothStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/nfc/handover/PeripheralHandoverService;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 101
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 91
    new-instance v0, Lcom/android/nfc/handover/PeripheralHandoverService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/PeripheralHandoverService$1;-><init>(Lcom/android/nfc/handover/PeripheralHandoverService;)V

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 103
    new-instance v0, Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;-><init>(Lcom/android/nfc/handover/PeripheralHandoverService;)V

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mMessenger:Landroid/os/Messenger;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 107
    iput v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 108
    return-void
.end method

.method private handleBluetoothStateChanged(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 205
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/high16 v1, -0x80000000

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 207
    .local v0, "state":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->hasStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->start()Z

    move-result v1

    if-nez v1, :cond_0

    .line 212
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/PeripheralHandoverService;->onBluetoothPeripheralHandoverComplete(Z)V

    .line 216
    :cond_0
    return-void
.end method


# virtual methods
.method disableBluetoothIfNeeded()V
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    if-nez v0, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->hasConnectedBluetoothDevices()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 261
    :cond_1
    iget-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    if-nez v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 265
    :cond_2
    return-void
.end method

.method doPeripheralHandover(Landroid/os/Bundle;)Z
    .locals 20
    .param p1, "msgData"    # Landroid/os/Bundle;

    .line 155
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget-object v0, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    const-string v11, "PeripheralHandoverService"

    const/4 v12, 0x1

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "Ignoring pairing request, existing handover in progress."

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return v12

    .line 160
    :cond_0
    const/4 v13, 0x0

    if-nez v10, :cond_1

    .line 161
    return v13

    .line 164
    :cond_1
    const-string v0, "device"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 165
    const-string v0, "headsetname"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 166
    .local v14, "name":Ljava/lang/String;
    const-string v0, "transporttype"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    .line 167
    .local v15, "transport":I
    const-string v0, "oobdata"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/bluetooth/OobData;

    .line 168
    .local v16, "oobData":Landroid/bluetooth/OobData;
    const-string v0, "uuids"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v8

    .line 169
    .local v8, "parcelables":[Landroid/os/Parcelable;
    const-string v0, "class"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/bluetooth/BluetoothClass;

    .line 171
    .local v17, "btClass":Landroid/bluetooth/BluetoothClass;
    const/4 v0, 0x0

    .line 172
    .local v0, "uuids":[Landroid/os/ParcelUuid;
    if-eqz v8, :cond_3

    .line 173
    array-length v1, v8

    new-array v0, v1, [Landroid/os/ParcelUuid;

    .line 174
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v8

    if-ge v1, v2, :cond_2

    .line 175
    aget-object v2, v8, v1

    check-cast v2, Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v18, v0

    goto :goto_1

    .line 172
    .end local v1    # "i":I
    :cond_3
    move-object/from16 v18, v0

    .line 179
    .end local v0    # "uuids":[Landroid/os/ParcelUuid;
    .local v18, "uuids":[Landroid/os/ParcelUuid;
    :goto_1
    const-string v0, "client"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mClient:Landroid/os/Messenger;

    .line 180
    const-string v0, "bt_enabled"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 182
    new-instance v7, Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget-object v2, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object v3, v14

    move v4, v15

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move-object v12, v7

    move-object/from16 v7, v17

    move-object/from16 v19, v8

    .end local v8    # "parcelables":[Landroid/os/Parcelable;
    .local v19, "parcelables":[Landroid/os/Parcelable;
    move-object/from16 v8, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;ILandroid/bluetooth/OobData;[Landroid/os/ParcelUuid;Landroid/bluetooth/BluetoothClass;Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;)V

    iput-object v12, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .line 185
    const/4 v0, 0x2

    if-ne v15, v0, :cond_4

    .line 186
    iget-object v0, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    .line 187
    invoke-virtual {v0, v13}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    .line 186
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 189
    :cond_4
    iget-object v0, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 190
    iget-object v0, v9, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->start()Z

    move-result v0

    if-nez v0, :cond_6

    .line 191
    return v13

    .line 195
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->enableBluetooth()Z

    move-result v0

    if-nez v0, :cond_6

    .line 196
    const-string v0, "Error enabling Bluetooth."

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return v13

    .line 201
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method enableBluetooth()Z
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 251
    iput-boolean v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 252
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enableNoAutoConnect()Z

    move-result v0

    return v0

    .line 254
    :cond_0
    return v1
.end method

.method hasConnectedBluetoothDevices()Z
    .locals 4

    .line 268
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 270
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_2

    .line 271
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 272
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 278
    goto :goto_0

    .line 280
    :cond_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    return v1

    .line 281
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    goto :goto_0

    .line 283
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 303
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBluetoothPeripheralHandoverComplete(Z)V
    .locals 4
    .param p1, "connected"    # Z

    .line 221
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v0, v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    .line 222
    .local v0, "transport":I
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .line 223
    iput-boolean p1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    .line 230
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_1

    .line 231
    iget-object v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 237
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->resumePolling()V

    .line 239
    :cond_1
    invoke-virtual {p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->disableBluetoothIfNeeded()V

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/PeripheralHandoverService;->replyToClient(Z)V

    .line 242
    sget-object v2, Lcom/android/nfc/handover/PeripheralHandoverService;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 243
    :try_start_0
    iget v3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/PeripheralHandoverService;->stopSelf(I)V

    .line 244
    iput v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 245
    monitor-exit v2

    .line 246
    return-void

    .line 245
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCreate()V
    .locals 2

    .line 141
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 142
    invoke-virtual {p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 144
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/handover/PeripheralHandoverService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 150
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 151
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/PeripheralHandoverService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 152
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .line 113
    sget-object v0, Lcom/android/nfc/handover/PeripheralHandoverService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_0
    iget v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 115
    iput p3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 117
    monitor-exit v0

    return v2

    .line 119
    :cond_0
    iput p3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 120
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 122
    const/4 v1, 0x2

    const/4 v3, 0x0

    if-nez p1, :cond_1

    .line 123
    const-string v2, "PeripheralHandoverService"

    const-string v4, "Intent is null, can\'t do peripheral handover."

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    monitor-enter v0

    .line 125
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/android/nfc/handover/PeripheralHandoverService;->stopSelf(I)V

    .line 126
    iput v3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 127
    monitor-exit v0

    .line 128
    return v1

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 131
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/PeripheralHandoverService;->doPeripheralHandover(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    return v2

    .line 134
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/PeripheralHandoverService;->onBluetoothPeripheralHandoverComplete(Z)V

    .line 135
    return v1

    .line 120
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 309
    const/4 v0, 0x0

    return v0
.end method

.method replyToClient(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .line 287
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mClient:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 288
    return-void

    .line 291
    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 292
    .local v0, "msgId":I
    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 293
    .local v1, "msg":Landroid/os/Message;
    iget-boolean v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 295
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mClient:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    goto :goto_0

    .line 296
    :catch_0
    move-exception v2

    .line 299
    :goto_0
    return-void
.end method

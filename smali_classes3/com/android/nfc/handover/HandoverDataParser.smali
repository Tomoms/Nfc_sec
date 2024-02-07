.class public Lcom/android/nfc/handover/HandoverDataParser;
.super Ljava/lang/Object;
.source "HandoverDataParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;,
        Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    }
.end annotation


# static fields
.field public static final BT_HANDOVER_LE_ROLE_CENTRAL_ONLY:I = 0x1

.field private static final BT_HANDOVER_TYPE_128_BIT_UUIDS_COMPLETE:I = 0x7

.field private static final BT_HANDOVER_TYPE_128_BIT_UUIDS_PARTIAL:I = 0x6

.field private static final BT_HANDOVER_TYPE_16_BIT_UUIDS_COMPLETE:I = 0x3

.field private static final BT_HANDOVER_TYPE_16_BIT_UUIDS_PARTIAL:I = 0x2

.field private static final BT_HANDOVER_TYPE_32_BIT_UUIDS_COMPLETE:I = 0x5

.field private static final BT_HANDOVER_TYPE_32_BIT_UUIDS_PARTIAL:I = 0x4

.field private static final BT_HANDOVER_TYPE_APPEARANCE:I = 0x19

.field private static final BT_HANDOVER_TYPE_CLASS_OF_DEVICE:I = 0xd

.field private static final BT_HANDOVER_TYPE_LE_ROLE:I = 0x1c

.field private static final BT_HANDOVER_TYPE_LE_SC_CONFIRMATION:I = 0x22

.field private static final BT_HANDOVER_TYPE_LE_SC_RANDOM:I = 0x23

.field private static final BT_HANDOVER_TYPE_LONG_LOCAL_NAME:I = 0x9

.field private static final BT_HANDOVER_TYPE_MAC:I = 0x1b

.field private static final BT_HANDOVER_TYPE_SECURITY_MANAGER_TK:I = 0x10

.field private static final BT_HANDOVER_TYPE_SHORT_LOCAL_NAME:I = 0x8

.field private static final CARRIER_POWER_STATE_ACTIVATING:I = 0x2

.field private static final CARRIER_POWER_STATE_ACTIVE:I = 0x1

.field private static final CARRIER_POWER_STATE_INACTIVE:I = 0x0

.field private static final CARRIER_POWER_STATE_UNKNOWN:I = 0x3

.field private static final CLASS_OF_DEVICE_SIZE:I = 0x3

.field private static final DBG:Z

.field private static final RTD_COLLISION_RESOLUTION:[B

.field public static final SECURITY_MANAGER_LE_SC_C_SIZE:I = 0x10

.field public static final SECURITY_MANAGER_LE_SC_R_SIZE:I = 0x10

.field public static final SECURITY_MANAGER_TK_SIZE:I = 0x10

.field private static final TAG:Ljava/lang/String; = "NfcHandover"

.field private static final TYPE_BLE_OOB:[B

.field private static final TYPE_BT_OOB:[B

.field private static final TYPE_NOKIA:[B


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mLocalBluetoothAddress:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    nop

    .line 45
    const-string v0, "persist.nfc.debug_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/handover/HandoverDataParser;->DBG:Z

    .line 47
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 48
    const-string v1, "application/vnd.bluetooth.ep.oob"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    .line 49
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 50
    const-string v1, "application/vnd.bluetooth.le.oob"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BLE_OOB:[B

    .line 52
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    const-string v1, "nokia.com:bt"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_NOKIA:[B

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->RTD_COLLISION_RESOLUTION:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x63t
        0x72t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLock:Ljava/lang/Object;

    .line 114
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 115
    return-void
.end method

.method static addressToReverseBytes(Ljava/lang/String;)[B
    .locals 6
    .param p0, "address"    # Ljava/lang/String;

    .line 566
    const/4 v0, 0x0

    const-string v1, "NfcHandover"

    if-nez p0, :cond_0

    .line 567
    const-string v2, "BT address is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return-object v0

    .line 570
    :cond_0
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, "split":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x6

    if-ge v3, v4, :cond_1

    .line 572
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BT address "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is invalid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    return-object v0

    .line 575
    :cond_1
    array-length v0, v2

    new-array v0, v0, [B

    .line 577
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 579
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    aget-object v4, v2, v1

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 577
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 582
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method static createCollisionRecord()Landroid/nfc/NdefRecord;
    .locals 5

    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 119
    .local v0, "random":[B
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 120
    new-instance v1, Landroid/nfc/NdefRecord;

    sget-object v2, Lcom/android/nfc/handover/HandoverDataParser;->RTD_COLLISION_RESOLUTION:[B

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1
.end method

.method private parseBluetoothClassFromBluetoothRecord(Ljava/nio/ByteBuffer;)Landroid/bluetooth/BluetoothClass;
    .locals 5
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .line 621
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 622
    .local v0, "btClass":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 624
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 625
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 626
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 629
    .local v2, "parcel":Landroid/os/Parcel;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 630
    invoke-virtual {v2, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 631
    sget-object v3, Landroid/bluetooth/BluetoothClass;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothClass;

    .line 632
    .local v3, "bluetoothClass":Landroid/bluetooth/BluetoothClass;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 633
    return-object v3
.end method

.method private parseMacFromBluetoothRecord(Ljava/nio/ByteBuffer;)[B
    .locals 4
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .line 553
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 554
    .local v0, "address":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 557
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    .line 558
    aget-byte v2, v0, v1

    .line 559
    .local v2, "temp":B
    rsub-int/lit8 v3, v1, 0x5

    aget-byte v3, v0, v3

    aput-byte v3, v0, v1

    .line 560
    rsub-int/lit8 v3, v1, 0x5

    aput-byte v2, v0, v3

    .line 557
    .end local v2    # "temp":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 562
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private parseUuidFromBluetoothRecord(Ljava/nio/ByteBuffer;II)[Landroid/os/ParcelUuid;
    .locals 6
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .param p2, "type"    # I
    .param p3, "len"    # I

    .line 587
    const/4 v0, 0x0

    const-string v1, "NfcHandover"

    packed-switch p2, :pswitch_data_0

    .line 601
    const-string v2, "BT OOB: invalid size of UUID"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-object v0

    .line 598
    :pswitch_0
    const/16 v2, 0x10

    .line 599
    .local v2, "uuidSize":I
    goto :goto_0

    .line 594
    .end local v2    # "uuidSize":I
    :pswitch_1
    const/4 v2, 0x4

    .line 595
    .restart local v2    # "uuidSize":I
    goto :goto_0

    .line 590
    .end local v2    # "uuidSize":I
    :pswitch_2
    const/4 v2, 0x2

    .line 591
    .restart local v2    # "uuidSize":I
    nop

    .line 605
    :goto_0
    if-eqz p3, :cond_2

    rem-int v3, p3, v2

    if-eqz v3, :cond_0

    goto :goto_2

    .line 610
    :cond_0
    div-int v0, p3, v2

    .line 611
    .local v0, "num":I
    new-array v1, v0, [Landroid/os/ParcelUuid;

    .line 612
    .local v1, "uuids":[Landroid/os/ParcelUuid;
    new-array v3, v2, [B

    .line 613
    .local v3, "data":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_1

    .line 614
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 615
    invoke-static {v3}, Landroid/bluetooth/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v5

    aput-object v5, v1, v4

    .line 613
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 617
    .end local v4    # "i":I
    :cond_1
    return-object v1

    .line 606
    .end local v0    # "num":I
    .end local v1    # "uuids":[Landroid/os/ParcelUuid;
    .end local v3    # "data":[B
    :cond_2
    :goto_2
    const-string v3, "BT OOB: invalid size of UUIDs, should be multiples of UUID bytes length"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private tryBluetoothHandoverRequest(Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Landroid/nfc/NdefMessage;
    .locals 4
    .param p1, "bluetoothData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    .line 260
    const/4 v0, 0x0

    .line 261
    .local v0, "selectMessage":Landroid/nfc/NdefMessage;
    if-eqz p1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 272
    .local v1, "bluetoothActivating":Z
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothHandoverSelectMessage(Z)Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 273
    sget-boolean v2, Lcom/android/nfc/handover/HandoverDataParser;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting for incoming transfer, ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 274
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]->["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    const-string v3, "NfcHandover"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .end local v1    # "bluetoothActivating":Z
    :cond_0
    return-object v0
.end method


# virtual methods
.method createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;
    .locals 5
    .param p1, "activating"    # Z

    .line 124
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 125
    .local v0, "payload":[B
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    .line 126
    :cond_0
    move v3, v2

    :goto_0
    int-to-byte v3, v3

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    .line 127
    aput-byte v2, v0, v2

    .line 128
    const/16 v3, 0x62

    aput-byte v3, v0, v1

    .line 129
    const/4 v1, 0x3

    aput-byte v4, v0, v1

    .line 130
    new-instance v1, Landroid/nfc/NdefRecord;

    sget-object v3, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1
.end method

.method createBluetoothHandoverSelectMessage(Z)Landroid/nfc/NdefMessage;
    .locals 5
    .param p1, "activating"    # Z

    .line 178
    new-instance v0, Landroid/nfc/NdefMessage;

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 178
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    .line 180
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 178
    return-object v0
.end method

.method createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;
    .locals 7

    .line 135
    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 140
    .local v1, "payload":[B
    array-length v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 141
    array-length v2, v1

    shr-int/lit8 v0, v2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    const/4 v2, 0x1

    aput-byte v0, v1, v2

    .line 143
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 145
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    .line 148
    :cond_0
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/nfc/handover/HandoverDataParser;->addressToReverseBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 149
    .local v4, "addressBytes":[B
    const/4 v5, 0x2

    if-eqz v4, :cond_1

    .line 150
    const/4 v6, 0x6

    invoke-static {v4, v3, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 153
    :cond_1
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    .line 155
    .end local v4    # "addressBytes":[B
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    new-instance v0, Landroid/nfc/NdefRecord;

    sget-object v4, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    new-array v2, v2, [B

    const/16 v6, 0x62

    aput-byte v6, v2, v3

    invoke-direct {v0, v5, v4, v2, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v0

    .line 155
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public createHandoverRequestMessage()Landroid/nfc/NdefMessage;
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 166
    const/4 v0, 0x0

    return-object v0

    .line 169
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/nfc/NdefRecord;

    const/4 v1, 0x0

    .line 170
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v2

    aput-object v2, v0, v1

    .line 172
    .local v0, "dataRecords":[Landroid/nfc/NdefRecord;
    new-instance v1, Landroid/nfc/NdefMessage;

    .line 173
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverRequestRecord()Landroid/nfc/NdefRecord;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 172
    return-object v1
.end method

.method createHandoverRequestRecord()Landroid/nfc/NdefRecord;
    .locals 9

    .line 199
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/nfc/NdefRecord;

    .line 200
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v3

    aput-object v3, v1, v2

    .line 203
    .local v1, "messages":[Landroid/nfc/NdefRecord;
    new-instance v3, Landroid/nfc/NdefMessage;

    invoke-static {}, Lcom/android/nfc/handover/HandoverDataParser;->createCollisionRecord()Landroid/nfc/NdefRecord;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 205
    .local v3, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v3}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v4

    .line 207
    .local v4, "nestedPayload":[B
    array-length v5, v4

    add-int/2addr v5, v0

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 208
    .local v5, "payload":Ljava/nio/ByteBuffer;
    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 209
    invoke-virtual {v3}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 211
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    new-array v6, v6, [B

    .line 212
    .local v6, "payloadBytes":[B
    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 213
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 214
    new-instance v2, Landroid/nfc/NdefRecord;

    sget-object v7, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    const/4 v8, 0x0

    invoke-direct {v2, v0, v7, v8, v6}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v2
.end method

.method createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;
    .locals 8
    .param p1, "alternateCarrier"    # Landroid/nfc/NdefRecord;

    .line 184
    new-instance v0, Landroid/nfc/NdefMessage;

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, p1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 185
    .local v0, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    .line 187
    .local v2, "nestedPayload":[B
    array-length v3, v2

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 188
    .local v3, "payload":Ljava/nio/ByteBuffer;
    const/16 v5, 0x12

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 189
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 191
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    new-array v5, v5, [B

    .line 192
    .local v5, "payloadBytes":[B
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 193
    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 194
    new-instance v1, Landroid/nfc/NdefRecord;

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    const/4 v7, 0x0

    invoke-direct {v1, v4, v6, v7, v5}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1
.end method

.method public getIncomingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    .locals 9
    .param p1, "handoverRequest"    # Landroid/nfc/NdefMessage;

    .line 223
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    return-object v0

    .line 226
    :cond_1
    sget-boolean v1, Lcom/android/nfc/handover/HandoverDataParser;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIncomingHandoverData():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NfcHandover"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_2
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 229
    .local v1, "handoverRequestRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    .line 230
    return-object v0

    .line 233
    :cond_3
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v4, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_4

    .line 234
    return-object v0

    .line 238
    :cond_4
    const/4 v3, 0x0

    .line 239
    .local v3, "bluetoothData":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_6

    aget-object v6, v4, v2

    .line 240
    .local v6, "dataRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    .line 241
    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    sget-object v8, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 242
    invoke-virtual {v6}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/nfc/handover/HandoverDataParser;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    .line 239
    .end local v6    # "dataRecord":Landroid/nfc/NdefRecord;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 247
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/nfc/handover/HandoverDataParser;->tryBluetoothHandoverRequest(Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 248
    .local v2, "hs":Landroid/nfc/NdefMessage;
    if-eqz v2, :cond_7

    .line 249
    new-instance v0, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;

    invoke-direct {v0, v2, v3}, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;-><init>(Landroid/nfc/NdefMessage;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)V

    return-object v0

    .line 252
    :cond_7
    return-object v0
.end method

.method public getOutgoingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 1
    .param p1, "handoverSelect"    # Landroid/nfc/NdefMessage;

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    return-object v0
.end method

.method isCarrierActivating(Landroid/nfc/NdefRecord;[B)Z
    .locals 16
    .param p1, "handoverRec"    # Landroid/nfc/NdefRecord;
    .param p2, "carrierId"    # [B

    .line 283
    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    .line 284
    .local v2, "payload":[B
    const/4 v3, 0x0

    if-eqz v2, :cond_5

    array-length v0, v2

    const/4 v4, 0x1

    if-gt v0, v4, :cond_0

    goto :goto_1

    .line 286
    :cond_0
    array-length v0, v2

    sub-int/2addr v0, v4

    new-array v5, v0, [B

    .line 287
    .local v5, "payloadNdef":[B
    array-length v0, v2

    sub-int/2addr v0, v4

    invoke-static {v2, v4, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    :try_start_0
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-direct {v0, v5}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 293
    .local v0, "msg":Landroid/nfc/NdefMessage;
    nop

    .line 295
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_0
    if-ge v8, v7, :cond_4

    aget-object v9, v6, v8

    .line 296
    .local v9, "alt":Landroid/nfc/NdefRecord;
    invoke-virtual {v9}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v10

    .line 297
    .local v10, "acPayload":[B
    if-eqz v10, :cond_3

    .line 298
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 299
    .local v11, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit8 v12, v12, 0x3

    .line 300
    .local v12, "cps":I
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    .line 301
    .local v13, "carrierRefLength":I
    array-length v14, v1

    if-eq v13, v14, :cond_1

    return v3

    .line 303
    :cond_1
    new-array v14, v13, [B

    .line 304
    .local v14, "carrierRefId":[B
    invoke-virtual {v11, v14}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 305
    invoke-static {v14, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 307
    const/4 v6, 0x2

    if-ne v12, v6, :cond_2

    move v3, v4

    :cond_2
    return v3

    .line 295
    .end local v9    # "alt":Landroid/nfc/NdefRecord;
    .end local v10    # "acPayload":[B
    .end local v11    # "buf":Ljava/nio/ByteBuffer;
    .end local v12    # "cps":I
    .end local v13    # "carrierRefLength":I
    .end local v14    # "carrierRefId":[B
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 312
    :cond_4
    return v4

    .line 291
    .end local v0    # "msg":Landroid/nfc/NdefMessage;
    :catch_0
    move-exception v0

    .line 292
    .local v0, "e":Landroid/nfc/FormatException;
    return v3

    .line 284
    .end local v0    # "e":Landroid/nfc/FormatException;
    .end local v5    # "payloadNdef":[B
    :cond_5
    :goto_1
    return v3
.end method

.method public isHandoverSupported()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method parseBleOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 16
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .line 457
    move-object/from16 v1, p1

    const-string v2, "NfcHandover"

    new-instance v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    invoke-direct {v0}, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;-><init>()V

    move-object v3, v0

    .line 458
    .local v3, "result":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 459
    const/4 v4, 0x2

    iput v4, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->transport:I

    .line 463
    const/4 v4, 0x0

    .line 464
    .local v4, "bdaddr":[B
    const/16 v5, 0xf

    .line 465
    .local v5, "role":B
    const/4 v6, 0x0

    .line 466
    .local v6, "leScC":[B
    const/4 v7, 0x0

    .line 467
    .local v7, "leScR":[B
    const/4 v8, 0x0

    .line 468
    .local v8, "nameBytes":[B
    const/4 v9, 0x0

    .line 469
    .local v9, "securityManagerTK":[B
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    if-lez v10, :cond_4

    .line 470
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    .line 471
    .local v10, "len":I
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v11
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_2

    .line 472
    .local v11, "type":I
    const/16 v12, 0x10

    const/4 v13, 0x1

    sparse-switch v11, :sswitch_data_0

    .line 534
    move-object/from16 v15, p0

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 523
    :sswitch_0
    add-int/lit8 v13, v10, -0x1

    if-eq v13, v12, :cond_0

    .line 524
    :try_start_2
    const-string v12, "BT OOB: invalid size of LE SC Random, should be 16 bytes."

    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    move-object/from16 v15, p0

    goto/16 :goto_2

    .line 529
    :cond_0
    add-int/lit8 v12, v10, -0x1

    new-array v12, v12, [B

    move-object v7, v12

    .line 530
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 531
    move-object/from16 v15, p0

    goto/16 :goto_2

    .line 512
    :sswitch_1
    add-int/lit8 v13, v10, -0x1

    if-eq v13, v12, :cond_1

    .line 513
    const-string v12, "BT OOB: invalid size of LE SC Confirmation, should be 16 bytes."

    invoke-static {v2, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    move-object/from16 v15, p0

    goto/16 :goto_2

    .line 518
    :cond_1
    add-int/lit8 v12, v10, -0x1

    new-array v12, v12, [B

    move-object v6, v12

    .line 519
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 520
    move-object/from16 v15, p0

    goto :goto_2

    .line 486
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    move v5, v12

    .line 487
    if-ne v5, v13, :cond_2

    .line 489
    iput-boolean v0, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 490
    return-object v3

    .line 487
    :cond_2
    move-object/from16 v15, p0

    goto :goto_2

    .line 474
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v12

    .line 475
    .local v12, "startpos":I
    const/4 v14, 0x7

    new-array v14, v14, [B

    move-object v4, v14

    .line 476
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 477
    invoke-virtual {v1, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 479
    invoke-direct/range {p0 .. p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseMacFromBluetoothRecord(Ljava/nio/ByteBuffer;)[B

    move-result-object v14

    .line 480
    .local v14, "address":[B
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v15

    add-int/2addr v15, v13

    invoke-virtual {v1, v15}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_2

    .line 481
    move-object/from16 v15, p0

    :try_start_3
    iget-object v0, v15, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v14}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 482
    iput-boolean v13, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 483
    goto :goto_2

    .line 501
    .end local v12    # "startpos":I
    .end local v14    # "address":[B
    :sswitch_4
    move-object/from16 v15, p0

    add-int/lit8 v0, v10, -0x1

    if-eq v0, v12, :cond_3

    .line 502
    const-string v0, "BT OOB: invalid size of SM TK, should be 16 bytes."

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    goto :goto_2

    .line 507
    :cond_3
    add-int/lit8 v0, v10, -0x1

    new-array v0, v0, [B

    .line 508
    .end local v9    # "securityManagerTK":[B
    .local v0, "securityManagerTK":[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 509
    move-object v9, v0

    goto :goto_2

    .line 495
    .end local v0    # "securityManagerTK":[B
    .restart local v9    # "securityManagerTK":[B
    :sswitch_5
    move-object/from16 v15, p0

    add-int/lit8 v0, v10, -0x1

    new-array v0, v0, [B

    .line 496
    .end local v8    # "nameBytes":[B
    .local v0, "nameBytes":[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 497
    new-instance v8, Ljava/lang/String;

    sget-object v12, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v0, v12}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v8, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 498
    move-object v8, v0

    goto :goto_2

    .line 534
    .end local v0    # "nameBytes":[B
    .restart local v8    # "nameBytes":[B
    :goto_1
    add-int/2addr v0, v10

    sub-int/2addr v0, v13

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 537
    .end local v10    # "len":I
    .end local v11    # "type":I
    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 538
    :cond_4
    move-object/from16 v15, p0

    new-instance v0, Landroid/bluetooth/OobData$LeBuilder;

    and-int/lit16 v10, v5, 0xff

    invoke-direct {v0, v6, v4, v10}, Landroid/bluetooth/OobData$LeBuilder;-><init>([B[BI)V

    .line 539
    invoke-virtual {v0, v7}, Landroid/bluetooth/OobData$LeBuilder;->setRandomizerHash([B)Landroid/bluetooth/OobData$LeBuilder;

    move-result-object v0

    .line 540
    invoke-virtual {v0, v8}, Landroid/bluetooth/OobData$LeBuilder;->setDeviceName([B)Landroid/bluetooth/OobData$LeBuilder;

    move-result-object v0

    .line 541
    invoke-virtual {v0, v9}, Landroid/bluetooth/OobData$LeBuilder;->setLeTemporaryKey([B)Landroid/bluetooth/OobData$LeBuilder;

    move-result-object v0

    .line 542
    invoke-virtual {v0}, Landroid/bluetooth/OobData$LeBuilder;->build()Landroid/bluetooth/OobData;

    move-result-object v0

    iput-object v0, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->oobData:Landroid/bluetooth/OobData;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_0

    .end local v4    # "bdaddr":[B
    .end local v5    # "role":B
    .end local v6    # "leScC":[B
    .end local v7    # "leScR":[B
    .end local v8    # "nameBytes":[B
    .end local v9    # "securityManagerTK":[B
    goto :goto_5

    .line 545
    :catch_0
    move-exception v0

    goto :goto_3

    .line 543
    :catch_1
    move-exception v0

    goto :goto_4

    .line 545
    :catch_2
    move-exception v0

    move-object/from16 v15, p0

    .line 546
    .local v0, "e":Ljava/nio/BufferUnderflowException;
    :goto_3
    const-string v4, "BT OOB: payload shorter than expected"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 543
    .end local v0    # "e":Ljava/nio/BufferUnderflowException;
    :catch_3
    move-exception v0

    move-object/from16 v15, p0

    .line 544
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_4
    const-string v4, "BLE OOB: error parsing OOB data"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 547
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_5
    nop

    .line 548
    :goto_6
    iget-boolean v0, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v0, :cond_5

    iget-object v0, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    iput-object v0, v3, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 549
    :cond_5
    return-object v3

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_5
        0x10 -> :sswitch_4
        0x1b -> :sswitch_3
        0x1c -> :sswitch_2
        0x22 -> :sswitch_1
        0x23 -> :sswitch_0
    .end sparse-switch
.end method

.method public parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 6
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .line 339
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 340
    .local v0, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v1

    .line 341
    .local v1, "tnf":S
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    .line 344
    .local v2, "type":[B
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v5, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 345
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverDataParser;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    return-object v3

    .line 349
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v3

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v4, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BLE_OOB:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 350
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverDataParser;->parseBleOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    return-object v3

    .line 354
    :cond_1
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    sget-object v3, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    .line 355
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetoothHandoverSelect(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    return-object v3

    .line 360
    :cond_2
    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    sget-object v3, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_NOKIA:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 361
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverDataParser;->parseNokia(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    return-object v3

    .line 364
    :cond_3
    const/4 v3, 0x0

    return-object v3
.end method

.method parseBluetoothHandoverSelect(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 8
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .line 319
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 320
    .local v4, "oob":Landroid/nfc/NdefRecord;
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 321
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    sget-object v7, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-static {v5, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 322
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverDataParser;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    .line 323
    .local v0, "data":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getId()[B

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/nfc/handover/HandoverDataParser;->isCarrierActivating(Landroid/nfc/NdefRecord;[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    .line 326
    :cond_0
    return-object v0

    .line 329
    .end local v0    # "data":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    :cond_1
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v5

    if-ne v5, v6, :cond_2

    .line 330
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    sget-object v6, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BLE_OOB:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 331
    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverDataParser;->parseBleOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    return-object v0

    .line 319
    .end local v4    # "oob":Landroid/nfc/NdefRecord;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 335
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 10
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .line 392
    const-string v0, "NfcHandover"

    new-instance v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    invoke-direct {v1}, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;-><init>()V

    .line 393
    .local v1, "result":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 396
    const/4 v2, 0x2

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 397
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseMacFromBluetoothRecord(Ljava/nio/ByteBuffer;)[B

    move-result-object v2

    .line 398
    .local v2, "address":[B
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iput-object v3, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 399
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 401
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-lez v4, :cond_4

    .line 402
    const/4 v4, 0x0

    .line 404
    .local v4, "success":Z
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    .line 405
    .local v5, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 406
    .local v6, "type":I
    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 432
    :pswitch_1
    add-int/lit8 v7, v5, -0x1

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    .line 433
    const-string v7, "BT OOB: invalid size of Class of Device, should be 3 bytes."

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    goto :goto_1

    .line 437
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetoothClassFromBluetoothRecord(Ljava/nio/ByteBuffer;)Landroid/bluetooth/BluetoothClass;

    move-result-object v7

    iput-object v7, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->btClass:Landroid/bluetooth/BluetoothClass;

    .line 438
    const/4 v4, 0x1

    .line 439
    goto :goto_1

    .line 414
    :pswitch_2
    iget-object v7, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-eqz v7, :cond_1

    goto :goto_1

    .line 415
    :cond_1
    add-int/lit8 v7, v5, -0x1

    new-array v7, v7, [B

    .line 416
    .local v7, "nameBytes":[B
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 417
    new-instance v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v8, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 418
    const/4 v4, 0x1

    .line 419
    goto :goto_1

    .line 408
    .end local v7    # "nameBytes":[B
    :pswitch_3
    add-int/lit8 v7, v5, -0x1

    new-array v7, v7, [B

    .line 409
    .restart local v7    # "nameBytes":[B
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 410
    new-instance v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v7, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v8, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 411
    const/4 v4, 0x1

    .line 412
    goto :goto_1

    .line 426
    .end local v7    # "nameBytes":[B
    :pswitch_4
    add-int/lit8 v7, v5, -0x1

    invoke-direct {p0, p1, v6, v7}, Lcom/android/nfc/handover/HandoverDataParser;->parseUuidFromBluetoothRecord(Ljava/nio/ByteBuffer;II)[Landroid/os/ParcelUuid;

    move-result-object v7

    iput-object v7, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->uuids:[Landroid/os/ParcelUuid;

    .line 427
    iget-object v7, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->uuids:[Landroid/os/ParcelUuid;

    if-eqz v7, :cond_2

    .line 428
    const/4 v4, 0x1

    .line 443
    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 444
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v5

    sub-int/2addr v7, v3

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    .end local v4    # "success":Z
    .end local v5    # "len":I
    .end local v6    # "type":I
    :cond_3
    goto :goto_0

    .line 401
    .end local v2    # "address":[B
    :cond_4
    goto :goto_2

    .line 449
    :catch_0
    move-exception v2

    .line 450
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string v3, "BT OOB: payload shorter than expected"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 447
    .end local v2    # "e":Ljava/nio/BufferUnderflowException;
    :catch_1
    move-exception v2

    .line 448
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "BT OOB: invalid BT address"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    nop

    .line 452
    :goto_3
    iget-boolean v0, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, ""

    iput-object v0, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 453
    :cond_5
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method parseNokia(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .locals 7
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .line 368
    const-string v0, "NfcHandover"

    new-instance v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    invoke-direct {v1}, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;-><init>()V

    .line 369
    .local v1, "result":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 372
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 373
    const/4 v3, 0x6

    new-array v3, v3, [B

    .line 374
    .local v3, "address":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 375
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    iput-object v4, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 376
    iput-boolean v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 377
    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 378
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 379
    .local v2, "nameLength":I
    new-array v4, v2, [B

    .line 380
    .local v4, "nameBytes":[B
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 381
    new-instance v5, Ljava/lang/String;

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v5, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "nameLength":I
    .end local v3    # "address":[B
    .end local v4    # "nameBytes":[B
    goto :goto_0

    .line 384
    :catch_0
    move-exception v2

    .line 385
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string v3, "nokia: payload shorter than expected"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 382
    .end local v2    # "e":Ljava/nio/BufferUnderflowException;
    :catch_1
    move-exception v2

    .line 383
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "nokia: invalid BT address"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    nop

    .line 387
    :goto_1
    iget-boolean v0, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 388
    :cond_0
    return-object v1
.end method

.class public Lcom/android/nfc/dhimpl/NativeNfcTag;
.super Ljava/lang/Object;
.source "NativeNfcTag.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$TagEndpoint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field private static final NFC_POLLING_TIMEOUT:I

.field static final STATUS_CODE_TARGET_LOST:I = 0x92


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mClassifyT2T:Z

.field private mConnectedHandle:I

.field private mConnectedTechIndex:I

.field private mIsPresent:Z

.field private mTechActBytes:[[B

.field private mTechExtras:[Landroid/os/Bundle;

.field private mTechHandles:[I

.field private mTechLibNfcTypes:[I

.field private mTechList:[I

.field private mTechPollBytes:[[B

.field private mUid:[B

.field private mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConnectedHandle(Lcom/android/nfc/dhimpl/NativeNfcTag;)I
    .locals 0

    iget p0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIsPresent(Lcom/android/nfc/dhimpl/NativeNfcTag;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetNFC_POLLING_TIMEOUT()I
    .locals 1

    sget v0, Lcom/android/nfc/dhimpl/NativeNfcTag;->NFC_POLLING_TIMEOUT:I

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 48
    nop

    .line 49
    const-string v0, "persist.vendor.nfc.polling_timeout"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/nfc/dhimpl/NativeNfcTag;->NFC_POLLING_TIMEOUT:I

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mClassifyT2T:Z

    .line 76
    const-string v0, "NativeNfcTag"

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->TAG:Ljava/lang/String;

    return-void
.end method

.method private addTechnology(III)V
    .locals 6
    .param p1, "tech"    # I
    .param p2, "handle"    # I
    .param p3, "libnfctype"    # I

    .line 512
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v1, v0

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    .line 513
    .local v1, "mNewTechList":[I
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 514
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v0, v0

    aput p1, v1, v0

    .line 515
    iput-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    .line 517
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [I

    .line 518
    .local v2, "mNewHandleList":[I
    array-length v4, v0

    invoke-static {v0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 519
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v0, v0

    aput p2, v2, v0

    .line 520
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    .line 522
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v4, v0

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [I

    .line 523
    .local v4, "mNewTypeList":[I
    array-length v5, v0

    invoke-static {v0, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v0, v0

    aput p3, v4, v0

    .line 525
    iput-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    .line 526
    return-void
.end method

.method private declared-synchronized checkNdefWithStatus([I)I
    .locals 2
    .param p1, "ndefinfo"    # [I

    monitor-enter p0

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 359
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doCheckNdef([I)I

    move-result v0

    .line 360
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 361
    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    :cond_1
    monitor-exit p0

    return v0

    .line 355
    .end local v0    # "status":I
    .end local p1    # "ndefinfo":[I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private native doCheckNdef([I)I
.end method

.method private native doConnect(I)I
.end method

.method private native doRead()[B
.end method

.method private native doTransceive([BZ[I)[B
.end method

.method private native doWrite([B)Z
.end method

.method private getConnectedHandle()I
    .locals 1

    .line 485
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    return v0
.end method

.method private getConnectedLibNfcType()I
    .locals 3

    .line 489
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 490
    aget v0, v1, v0

    return v0

    .line 492
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getNdefType(II)I
    .locals 1
    .param p1, "libnfctype"    # I
    .param p2, "javatype"    # I

    .line 508
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doGetNdefType(II)I

    move-result v0

    return v0
.end method

.method private getTechIndex(I)I
    .locals 4
    .param p1, "tech"    # I

    .line 626
    const/4 v0, -0x1

    .line 627
    .local v0, "techIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 628
    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 629
    move v0, v1

    .line 630
    goto :goto_1

    .line 627
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 633
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private hasTech(I)Z
    .locals 4
    .param p1, "tech"    # I

    .line 637
    const/4 v0, 0x0

    .line 638
    .local v0, "hasTech":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 639
    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    .line 640
    const/4 v0, 0x1

    .line 641
    goto :goto_1

    .line 638
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private hasTechOnHandle(II)Z
    .locals 4
    .param p1, "tech"    # I
    .param p2, "handle"    # I

    .line 648
    const/4 v0, 0x0

    .line 649
    .local v0, "hasTech":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 650
    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v2, v2, v1

    if-ne v2, p2, :cond_0

    .line 651
    const/4 v0, 0x1

    .line 652
    goto :goto_1

    .line 649
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 655
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

.method private isUltralightC()Z
    .locals 9

    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, "isUltralightC":Z
    const/4 v1, 0x2

    new-array v2, v1, [B

    fill-array-data v2, :array_0

    .line 672
    .local v2, "readCmd":[B
    new-array v3, v1, [I

    .line 673
    .local v3, "retCode":[I
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4, v3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->transceive([BZ[I)[B

    move-result-object v4

    .line 674
    .local v4, "respData":[B
    if-eqz v4, :cond_3

    array-length v5, v4

    const/16 v6, 0x10

    if-ne v5, v6, :cond_3

    .line 677
    aget-byte v5, v4, v1

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x6

    if-nez v5, :cond_1

    const/4 v5, 0x3

    aget-byte v5, v4, v5

    if-nez v5, :cond_1

    aget-byte v5, v4, v7

    if-nez v5, :cond_1

    aget-byte v5, v4, v6

    if-nez v5, :cond_1

    aget-byte v5, v4, v8

    if-nez v5, :cond_1

    const/4 v5, 0x7

    aget-byte v5, v4, v5

    if-nez v5, :cond_1

    .line 685
    const/16 v5, 0x8

    aget-byte v5, v4, v5

    if-ne v5, v1, :cond_0

    const/16 v1, 0x9

    aget-byte v1, v4, v1

    if-nez v1, :cond_0

    .line 687
    const/4 v0, 0x1

    goto :goto_0

    .line 691
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 696
    :cond_1
    aget-byte v1, v4, v7

    const/16 v5, -0x1f

    if-ne v1, v5, :cond_2

    aget-byte v1, v4, v6

    and-int/lit16 v1, v1, 0xff

    const/16 v5, 0x20

    if-ge v1, v5, :cond_2

    .line 703
    aget-byte v1, v4, v8

    and-int/lit16 v1, v1, 0xff

    if-le v1, v8, :cond_3

    .line 704
    const/4 v0, 0x1

    goto :goto_0

    .line 708
    :cond_2
    const/4 v0, 0x0

    .line 712
    :cond_3
    :goto_0
    return v0

    :array_0
    .array-data 1
        0x30t
        0x2t
    .end array-data
.end method


# virtual methods
.method public addNdefFormatableTechnology(II)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "libnfcType"    # I

    .line 583
    monitor-enter p0

    .line 584
    const/4 v0, 0x7

    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addTechnology(III)V

    .line 585
    monitor-exit p0

    .line 586
    return-void

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V
    .locals 5
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "handle"    # I
    .param p3, "libnfcType"    # I
    .param p4, "javaType"    # I
    .param p5, "maxLength"    # I
    .param p6, "cardState"    # I

    .line 600
    monitor-enter p0

    .line 601
    const/4 v0, 0x6

    :try_start_0
    invoke-direct {p0, v0, p2, p3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addTechnology(III)V

    .line 603
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 604
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "ndefmsg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 605
    const-string v1, "ndefmaxlength"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 606
    const-string v1, "ndefcardstate"

    invoke-virtual {v0, v1, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 607
    const-string v1, "ndeftype"

    invoke-direct {p0, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getNdefType(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 609
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v1

    .line 613
    .local v1, "builtTechExtras":[Landroid/os/Bundle;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    .line 614
    .end local v1    # "builtTechExtras":[Landroid/os/Bundle;
    goto :goto_0

    .line 616
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v1

    .line 617
    .local v1, "oldTechExtras":[Landroid/os/Bundle;
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Landroid/os/Bundle;

    .line 618
    .local v2, "newTechExtras":[Landroid/os/Bundle;
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    array-length v3, v1

    aput-object v0, v2, v3

    .line 620
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    .line 622
    .end local v0    # "extras":Landroid/os/Bundle;
    .end local v1    # "oldTechExtras":[Landroid/os/Bundle;
    .end local v2    # "newTechExtras":[Landroid/os/Bundle;
    :goto_0
    monitor-exit p0

    .line 623
    return-void

    .line 622
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized checkNdef([I)Z
    .locals 2
    .param p1, "ndefinfo"    # [I

    monitor-enter p0

    .line 368
    const/4 v0, 0x0

    .line 369
    .local v0, "status":Z
    const/4 v1, 0x6

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->hasTech(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    const/4 v0, 0x1

    goto :goto_1

    .line 372
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->checkNdefWithStatus([I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 374
    :goto_1
    monitor-exit p0

    return v0

    .line 367
    .end local v0    # "status":Z
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    .end local p1    # "ndefinfo":[I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized connect(I)Z
    .locals 1
    .param p1, "technology"    # I

    monitor-enter p0

    .line 240
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->connectWithStatus(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 240
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    .end local p1    # "technology":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized connectWithStatus(I)I
    .locals 4
    .param p1, "technology"    # I

    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 185
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    const/4 v0, -0x1

    .line 186
    .local v0, "status":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v3, v2

    if-ge v1, v3, :cond_6

    .line 187
    aget v2, v2, v1

    if-ne v2, p1, :cond_5

    .line 189
    iget v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v3, v3, v1

    if-eq v2, v3, :cond_2

    .line 196
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 199
    invoke-direct {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doConnect(I)I

    move-result v2

    move v0, v2

    goto :goto_1

    .line 202
    :cond_1
    const-string v2, "NativeNfcTag"

    const-string v3, "Connect to a tech with a different handle"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus(I)I

    move-result v2

    move v0, v2

    .line 206
    :goto_1
    if-nez v0, :cond_6

    .line 207
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v2, v2, v1

    iput v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    .line 208
    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    goto :goto_2

    .line 217
    :cond_2
    const/4 v2, 0x6

    if-eq p1, v2, :cond_3

    const/4 v2, 0x7

    if-ne p1, v2, :cond_4

    .line 220
    :cond_3
    const/4 v1, 0x0

    .line 223
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus(I)I

    move-result v2

    move v0, v2

    .line 224
    if-nez v0, :cond_6

    .line 225
    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    goto :goto_2

    .line 186
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v1    # "i":I
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_7

    .line 233
    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_7
    monitor-exit p0

    return v0

    .line 181
    .end local v0    # "status":I
    .end local p1    # "technology":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public disconnect()Z
    .locals 3

    .line 280
    const/4 v0, 0x0

    .line 282
    .local v0, "result":Z
    monitor-enter p0

    .line 283
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    .line 284
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    .line 285
    .local v2, "watchdog":Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 286
    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {v2, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->end(Z)V

    .line 290
    :try_start_1
    invoke-virtual {v2}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 293
    goto :goto_0

    .line 291
    :catch_0
    move-exception v1

    .line 294
    :goto_0
    monitor-enter p0

    .line 295
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    .line 296
    monitor-exit p0

    .line 297
    const/4 v0, 0x1

    goto :goto_1

    .line 296
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doDisconnect()Z

    move-result v0

    .line 302
    :goto_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    .line 303
    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    .line 304
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mClassifyT2T:Z

    .line 305
    return v0

    .line 285
    .end local v2    # "watchdog":Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method native doDisconnect()Z
.end method

.method native doGetNdefType(II)I
.end method

.method native doHandleReconnect(I)I
.end method

.method native doIsIsoDepNdefFormatable([B[B)Z
.end method

.method native doMakeReadonly([B)Z
.end method

.method native doNdefFormat([B)Z
.end method

.method native doPresenceCheck()Z
.end method

.method native doReconnect()I
.end method

.method public findAndReadNdef()Landroid/nfc/NdefMessage;
    .locals 22

    .line 816
    move-object/from16 v8, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechList()[I

    move-result-object v9

    .line 817
    .local v9, "technologies":[I
    iget-object v10, v8, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    .line 818
    .local v10, "handles":[I
    const/4 v1, 0x0

    .line 819
    .local v1, "ndefMsg":Landroid/nfc/NdefMessage;
    const/4 v0, 0x0

    .line 820
    .local v0, "foundFormattable":Z
    const/4 v2, 0x0

    .line 821
    .local v2, "formattableHandle":I
    const/4 v3, 0x0

    .line 824
    .local v3, "formattableLibNfcType":I
    const/4 v4, 0x0

    move v11, v4

    .local v11, "techIndex":I
    :goto_0
    array-length v4, v9

    if-ge v11, v4, :cond_a

    .line 826
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v11, :cond_0

    .line 827
    aget v5, v10, v4

    aget v5, v10, v11

    .line 826
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 832
    .end local v4    # "i":I
    :cond_0
    aget v4, v9, v11

    invoke-virtual {v8, v4}, Lcom/android/nfc/dhimpl/NativeNfcTag;->connectWithStatus(I)I

    move-result v4

    .line 833
    .local v4, "status":I
    const/16 v5, 0x92

    const-string v6, "NativeNfcTag"

    if-eqz v4, :cond_1

    .line 834
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Connect Failed - status = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    if-ne v4, v5, :cond_5

    .line 836
    goto/16 :goto_5

    .line 841
    :cond_1
    if-nez v0, :cond_3

    .line 842
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->isNdefFormatable()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 843
    const/4 v0, 0x1

    .line 844
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v2

    .line 845
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v3

    .line 850
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnect()Z

    move v12, v0

    move v13, v2

    move v14, v3

    goto :goto_2

    .line 841
    :cond_3
    move v12, v0

    move v13, v2

    move v14, v3

    .line 853
    .end local v0    # "foundFormattable":Z
    .end local v2    # "formattableHandle":I
    .end local v3    # "formattableLibNfcType":I
    .local v12, "foundFormattable":Z
    .local v13, "formattableHandle":I
    .local v14, "formattableLibNfcType":I
    :goto_2
    const/4 v0, 0x2

    new-array v15, v0, [I

    .line 854
    .local v15, "ndefinfo":[I
    invoke-direct {v8, v15}, Lcom/android/nfc/dhimpl/NativeNfcTag;->checkNdefWithStatus([I)I

    move-result v7

    .line 855
    .end local v4    # "status":I
    .local v7, "status":I
    if-eqz v7, :cond_6

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check NDEF Failed - status = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    if-ne v7, v5, :cond_4

    .line 858
    move v0, v12

    move v2, v13

    move v3, v14

    goto/16 :goto_5

    .line 857
    :cond_4
    move v4, v7

    move v0, v12

    move v2, v13

    move v3, v14

    .line 824
    .end local v7    # "status":I
    .end local v12    # "foundFormattable":Z
    .end local v13    # "formattableHandle":I
    .end local v14    # "formattableLibNfcType":I
    .end local v15    # "ndefinfo":[I
    .restart local v0    # "foundFormattable":Z
    .restart local v2    # "formattableHandle":I
    .restart local v3    # "formattableLibNfcType":I
    .restart local v4    # "status":I
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 864
    .end local v0    # "foundFormattable":Z
    .end local v2    # "formattableHandle":I
    .end local v3    # "formattableLibNfcType":I
    .end local v4    # "status":I
    .restart local v7    # "status":I
    .restart local v12    # "foundFormattable":Z
    .restart local v13    # "formattableHandle":I
    .restart local v14    # "formattableLibNfcType":I
    .restart local v15    # "ndefinfo":[I
    :cond_6
    const/16 v16, 0x0

    .line 866
    .local v16, "generateEmptyNdef":Z
    const/4 v0, 0x0

    aget v17, v15, v0

    .line 867
    .local v17, "supportedNdefLength":I
    const/4 v0, 0x1

    aget v18, v15, v0

    .line 868
    .local v18, "cardState":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->readNdef()[B

    move-result-object v6

    .line 869
    .local v6, "buff":[B
    if-eqz v6, :cond_7

    array-length v0, v6

    if-lez v0, :cond_7

    .line 871
    :try_start_0
    new-instance v2, Landroid/nfc/NdefMessage;

    invoke-direct {v2, v6}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_0
    .catch Landroid/nfc/FormatException; {:try_start_0 .. :try_end_0} :catch_2

    .line 872
    .end local v1    # "ndefMsg":Landroid/nfc/NdefMessage;
    .local v2, "ndefMsg":Landroid/nfc/NdefMessage;
    nop

    .line 874
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v3

    .line 875
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v4

    .line 876
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedTechnology()I

    move-result v5
    :try_end_1
    .catch Landroid/nfc/FormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 872
    move-object/from16 v1, p0

    move-object/from16 v19, v6

    .end local v6    # "buff":[B
    .local v19, "buff":[B
    move/from16 v6, v17

    move/from16 v20, v7

    .end local v7    # "status":I
    .local v20, "status":I
    move/from16 v7, v18

    :try_start_2
    invoke-virtual/range {v1 .. v7}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V

    .line 879
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnect()Z
    :try_end_2
    .catch Landroid/nfc/FormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 883
    move-object v1, v2

    goto :goto_4

    .line 880
    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .end local v19    # "buff":[B
    .end local v20    # "status":I
    .restart local v6    # "buff":[B
    .restart local v7    # "status":I
    :catch_1
    move-exception v0

    move-object/from16 v19, v6

    move/from16 v20, v7

    move-object v1, v2

    .end local v6    # "buff":[B
    .end local v7    # "status":I
    .restart local v19    # "buff":[B
    .restart local v20    # "status":I
    goto :goto_3

    .end local v2    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v19    # "buff":[B
    .end local v20    # "status":I
    .restart local v1    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v6    # "buff":[B
    .restart local v7    # "status":I
    :catch_2
    move-exception v0

    move-object/from16 v19, v6

    move/from16 v20, v7

    .line 882
    .end local v6    # "buff":[B
    .end local v7    # "status":I
    .local v0, "e":Landroid/nfc/FormatException;
    .restart local v19    # "buff":[B
    .restart local v20    # "status":I
    :goto_3
    const/16 v16, 0x1

    .line 883
    .end local v0    # "e":Landroid/nfc/FormatException;
    goto :goto_4

    .line 869
    .end local v19    # "buff":[B
    .end local v20    # "status":I
    .restart local v6    # "buff":[B
    .restart local v7    # "status":I
    :cond_7
    move-object/from16 v19, v6

    move/from16 v20, v7

    .line 884
    .end local v6    # "buff":[B
    .end local v7    # "status":I
    .restart local v19    # "buff":[B
    .restart local v20    # "status":I
    if-eqz v19, :cond_8

    .line 886
    const/16 v16, 0x1

    .line 889
    :cond_8
    :goto_4
    if-eqz v16, :cond_9

    .line 890
    const/4 v0, 0x0

    .line 891
    .end local v1    # "ndefMsg":Landroid/nfc/NdefMessage;
    .local v0, "ndefMsg":Landroid/nfc/NdefMessage;
    const/4 v2, 0x0

    .line 893
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v3

    .line 894
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v4

    .line 895
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedTechnology()I

    move-result v5

    .line 891
    move-object/from16 v1, p0

    move/from16 v6, v17

    move/from16 v7, v18

    invoke-virtual/range {v1 .. v7}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V

    .line 898
    const/4 v1, 0x0

    .line 899
    .end local v12    # "foundFormattable":Z
    .local v1, "foundFormattable":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnect()Z

    move v2, v13

    move v3, v14

    move/from16 v21, v1

    move-object v1, v0

    move/from16 v0, v21

    goto :goto_5

    .line 889
    .end local v0    # "ndefMsg":Landroid/nfc/NdefMessage;
    .local v1, "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v12    # "foundFormattable":Z
    :cond_9
    move v0, v12

    move v2, v13

    move v3, v14

    .line 904
    .end local v11    # "techIndex":I
    .end local v12    # "foundFormattable":Z
    .end local v13    # "formattableHandle":I
    .end local v14    # "formattableLibNfcType":I
    .end local v15    # "ndefinfo":[I
    .end local v16    # "generateEmptyNdef":Z
    .end local v17    # "supportedNdefLength":I
    .end local v18    # "cardState":I
    .end local v19    # "buff":[B
    .end local v20    # "status":I
    .local v0, "foundFormattable":Z
    .local v2, "formattableHandle":I
    .restart local v3    # "formattableLibNfcType":I
    :cond_a
    :goto_5
    if-nez v1, :cond_b

    if-eqz v0, :cond_b

    .line 907
    invoke-virtual {v8, v2, v3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefFormatableTechnology(II)V

    .line 910
    :cond_b
    return-object v1
.end method

.method public findNdef()V
    .locals 16

    .line 915
    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechList()[I

    move-result-object v8

    .line 916
    .local v8, "technologies":[I
    iget-object v9, v7, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    .line 917
    .local v9, "handles":[I
    const/4 v0, 0x0

    .line 918
    .local v0, "currHandle":I
    const/16 v1, 0x9

    invoke-direct {v7, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->hasTech(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, v7, Lcom/android/nfc/dhimpl/NativeNfcTag;->mClassifyT2T:Z

    .line 920
    const/4 v1, 0x0

    move v10, v1

    .local v10, "techIndex":I
    :goto_0
    array-length v1, v8

    if-ge v10, v1, :cond_4

    .line 921
    aget v1, v9, v10

    const-string v3, "NativeNfcTag"

    if-eq v0, v1, :cond_3

    .line 922
    aget v11, v9, v10

    .line 923
    .end local v0    # "currHandle":I
    .local v11, "currHandle":I
    aget v0, v8, v10

    invoke-virtual {v7, v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->connectWithStatus(I)I

    move-result v0

    .line 924
    .local v0, "status":I
    const/16 v1, 0x92

    if-eqz v0, :cond_0

    .line 925
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connect Failed - status = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    if-ne v0, v1, :cond_1

    .line 927
    goto :goto_1

    .line 932
    :cond_0
    const/4 v4, 0x2

    new-array v12, v4, [I

    .line 933
    .local v12, "ndefinfo":[I
    invoke-direct {v7, v12}, Lcom/android/nfc/dhimpl/NativeNfcTag;->checkNdefWithStatus([I)I

    move-result v13

    .line 934
    .end local v0    # "status":I
    .local v13, "status":I
    if-eqz v13, :cond_2

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findNdef: Check NDEF Failed - status = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    if-ne v13, v1, :cond_1

    .line 937
    goto :goto_1

    .line 920
    .end local v12    # "ndefinfo":[I
    .end local v13    # "status":I
    :cond_1
    move v0, v11

    goto :goto_2

    .line 941
    .restart local v12    # "ndefinfo":[I
    .restart local v13    # "status":I
    :cond_2
    const/4 v0, 0x0

    aget v14, v12, v0

    .line 942
    .local v14, "supportedNdefLength":I
    aget v15, v12, v2

    .line 943
    .local v15, "cardState":I
    const/4 v1, 0x0

    .line 945
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v2

    .line 946
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v3

    .line 947
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedTechnology()I

    move-result v4

    .line 943
    move-object/from16 v0, p0

    move v5, v14

    move v6, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V

    .line 950
    nop

    .line 956
    .end local v10    # "techIndex":I
    .end local v12    # "ndefinfo":[I
    .end local v13    # "status":I
    .end local v14    # "supportedNdefLength":I
    .end local v15    # "cardState":I
    :goto_1
    move v0, v11

    goto :goto_3

    .line 953
    .end local v11    # "currHandle":I
    .local v0, "currHandle":I
    .restart local v10    # "techIndex":I
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findNdef: Duplicate techIndex = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 956
    .end local v10    # "techIndex":I
    :cond_4
    :goto_3
    return-void
.end method

.method public declared-synchronized formatNdef([B)Z
    .locals 2
    .param p1, "key"    # [B

    monitor-enter p0

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 426
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doNdefFormat([B)Z

    move-result v0

    .line 427
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 428
    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 430
    :cond_1
    monitor-exit p0

    return v0

    .line 422
    .end local v0    # "result":Z
    .end local p1    # "key":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getConnectedTechnology()I
    .locals 3

    .line 498
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 499
    aget v0, v1, v0

    return v0

    .line 501
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getHandle()I
    .locals 3

    .line 467
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 468
    aget v0, v0, v2

    return v0

    .line 470
    :cond_0
    return v2
.end method

.method public getTechExtras()[Landroid/os/Bundle;
    .locals 10

    .line 717
    monitor-enter p0

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    .line 720
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 721
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 722
    .local v1, "extras":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    .line 805
    :pswitch_0
    goto/16 :goto_2

    .line 799
    :pswitch_1
    const-string v2, "barcodetype"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 800
    goto/16 :goto_1

    .line 782
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mClassifyT2T:Z

    if-eqz v2, :cond_5

    .line 783
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->isUltralightC()Z

    move-result v2

    .line 784
    .local v2, "isUlc":Z
    const-string v3, "isulc"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 785
    .end local v2    # "isUlc":Z
    goto/16 :goto_1

    .line 789
    :pswitch_3
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 790
    const-string v3, "sak"

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 793
    :cond_1
    const-string v2, "atqa"

    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 794
    goto/16 :goto_1

    .line 775
    :pswitch_4
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    array-length v6, v2

    if-lt v6, v3, :cond_5

    .line 776
    const-string v3, "respflags"

    aget-byte v2, v2, v5

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 777
    const-string v2, "dsfid"

    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v3, v3, v0

    aget-byte v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_1

    .line 751
    :pswitch_5
    const/16 v2, 0x8

    new-array v4, v2, [B

    .line 752
    .local v4, "pmm":[B
    new-array v6, v3, [B

    .line 753
    .local v6, "sc":[B
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v7, v7, v0

    array-length v8, v7

    if-lt v8, v2, :cond_2

    .line 755
    invoke-static {v7, v5, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 756
    const-string v7, "pmm"

    invoke-virtual {v1, v7, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 758
    :cond_2
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v7, v7, v0

    array-length v8, v7

    const/16 v9, 0xa

    if-ne v8, v9, :cond_5

    .line 759
    invoke-static {v7, v2, v6, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 760
    const-string v2, "systemcode"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_1

    .line 765
    .end local v4    # "pmm":[B
    .end local v6    # "sc":[B
    :pswitch_6
    invoke-direct {p0, v4}, Lcom/android/nfc/dhimpl/NativeNfcTag;->hasTech(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 766
    const-string v2, "histbytes"

    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_1

    .line 768
    :cond_3
    const-string v2, "hiresp"

    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 770
    goto :goto_1

    .line 739
    :pswitch_7
    const/4 v2, 0x4

    new-array v3, v2, [B

    .line 740
    .local v3, "appData":[B
    const/4 v4, 0x3

    new-array v6, v4, [B

    .line 741
    .local v6, "protInfo":[B
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v7, v7, v0

    array-length v8, v7

    const/4 v9, 0x7

    if-lt v8, v9, :cond_5

    .line 742
    invoke-static {v7, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 743
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v7, v7, v0

    invoke-static {v7, v2, v6, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 745
    const-string v2, "appdata"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 746
    const-string v2, "protinfo"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_1

    .line 724
    .end local v3    # "appData":[B
    .end local v6    # "protInfo":[B
    :pswitch_8
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    array-length v3, v2

    if-lez v3, :cond_4

    .line 725
    const-string v3, "sak"

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 731
    :cond_4
    const-string v2, "atqa"

    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 732
    nop

    .line 807
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    aput-object v1, v2, v0

    .line 720
    .end local v1    # "extras":Landroid/os/Bundle;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 809
    .end local v0    # "i":I
    :cond_6
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    monitor-exit p0

    return-object v0

    .line 810
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getTechList()[I
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    return-object v0
.end method

.method public getUid()[B
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mUid:[B

    return-object v0
.end method

.method public declared-synchronized isNdefFormatable()Z
    .locals 3

    monitor-enter p0

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v1, v2, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doIsIsoDepNdefFormatable([B[B)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 460
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPresent()Z
    .locals 1

    monitor-enter p0

    .line 273
    :try_start_0
    iget-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 273
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeReadOnly()Z
    .locals 2

    monitor-enter p0

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 441
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->hasTech(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    sget-object v0, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doMakeReadonly([B)Z

    move-result v0

    .local v0, "result":Z
    goto :goto_0

    .line 445
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doMakeReadonly([B)Z

    move-result v0

    .line 447
    .restart local v0    # "result":Z
    :goto_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_2

    .line 448
    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :cond_2
    monitor-exit p0

    return v0

    .line 436
    .end local v0    # "result":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized presenceCheck()Z
    .locals 2

    monitor-enter p0

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 412
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doPresenceCheck()Z

    move-result v0

    .line 413
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 414
    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    :cond_1
    monitor-exit p0

    return v0

    .line 408
    .end local v0    # "result":Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readNdef()[B
    .locals 2

    monitor-enter p0

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 384
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doRead()[B

    move-result-object v0

    .line 385
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 386
    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :cond_1
    monitor-exit p0

    return-object v0

    .line 380
    .end local v0    # "result":[B
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reconnect()Z
    .locals 1

    monitor-enter p0

    .line 323
    :try_start_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 323
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reconnectWithStatus()I
    .locals 2

    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 312
    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 314
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doReconnect()I

    move-result v0

    .line 315
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 316
    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    :cond_1
    monitor-exit p0

    return v0

    .line 310
    .end local v0    # "status":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reconnectWithStatus(I)I
    .locals 2
    .param p1, "handle"    # I

    monitor-enter p0

    .line 329
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 332
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doHandleReconnect(I)I

    move-result v0

    .line 333
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 334
    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    :cond_1
    monitor-exit p0

    return v0

    .line 328
    .end local v0    # "status":I
    .end local p1    # "handle":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeTechnology(I)V
    .locals 8
    .param p1, "tech"    # I

    .line 530
    monitor-enter p0

    .line 531
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechIndex(I)I

    move-result v0

    .line 532
    .local v0, "techIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 533
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    new-array v2, v2, [I

    .line 534
    .local v2, "mNewTechList":[I
    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 535
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    add-int/lit8 v4, v0, 0x1

    array-length v5, v1

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v1, v4, v2, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    .line 543
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    new-array v4, v4, [I

    .line 544
    .local v4, "mNewHandleList":[I
    invoke-static {v1, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 545
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    add-int/lit8 v5, v0, 0x1

    array-length v6, v1

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v5, v2, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    iput-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    .line 553
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    new-array v5, v5, [I

    .line 554
    .local v5, "mNewTypeList":[I
    invoke-static {v1, v3, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 555
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    add-int/lit8 v6, v0, 0x1

    array-length v7, v1

    sub-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x1

    invoke-static {v1, v6, v5, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    iput-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    .line 567
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 568
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    new-array v6, v6, [Landroid/os/Bundle;

    .line 569
    .local v6, "mNewTechExtras":[Landroid/os/Bundle;
    invoke-static {v1, v3, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 570
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    add-int/lit8 v3, v0, 0x1

    array-length v7, v1

    sub-int/2addr v7, v0

    add-int/lit8 v7, v7, -0x1

    invoke-static {v1, v3, v6, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 576
    iput-object v6, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    .line 579
    .end local v0    # "techIndex":I
    .end local v2    # "mNewTechList":[I
    .end local v4    # "mNewHandleList":[I
    .end local v5    # "mNewTypeList":[I
    .end local v6    # "mNewTechExtras":[Landroid/os/Bundle;
    :cond_0
    monitor-exit p0

    .line 580
    return-void

    .line 579
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;Lcom/android/nfc/DeviceHost$TagLongConnectedCallback;)V
    .locals 1
    .param p1, "presenceCheckDelay"    # I
    .param p2, "callback"    # Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    .param p3, "callbacklong"    # Lcom/android/nfc/DeviceHost$TagLongConnectedCallback;

    monitor-enter p0

    .line 259
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    .line 260
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-nez v0, :cond_0

    .line 261
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;-><init>(Lcom/android/nfc/dhimpl/NativeNfcTag;ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;Lcom/android/nfc/DeviceHost$TagLongConnectedCallback;)V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    .line 265
    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    monitor-exit p0

    return-void

    .line 258
    .end local p1    # "presenceCheckDelay":I
    .end local p2    # "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    .end local p3    # "callbacklong":Lcom/android/nfc/DeviceHost$TagLongConnectedCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopPresenceChecking()V
    .locals 2

    monitor-enter p0

    .line 245
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    .line 246
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 247
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->end(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    monitor-exit p0

    return-void

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized transceive([BZ[I)[B
    .locals 2
    .param p1, "data"    # [B
    .param p2, "raw"    # Z
    .param p3, "returnCode"    # [I

    monitor-enter p0

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 346
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doTransceive([BZ[I)[B

    move-result-object v0

    .line 347
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 348
    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :cond_1
    monitor-exit p0

    return-object v0

    .line 342
    .end local v0    # "result":[B
    .end local p1    # "data":[B
    .end local p2    # "raw":Z
    .end local p3    # "returnCode":[I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeNdef([B)Z
    .locals 2
    .param p1, "buf"    # [B

    monitor-enter p0

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 398
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doWrite([B)Z

    move-result v0

    .line 399
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1

    .line 400
    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 402
    :cond_1
    monitor-exit p0

    return v0

    .line 394
    .end local v0    # "result":Z
    .end local p1    # "buf":[B
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

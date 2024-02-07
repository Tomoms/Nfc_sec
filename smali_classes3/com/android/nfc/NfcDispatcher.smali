.class Lcom/android/nfc/NfcDispatcher;
.super Ljava/lang/Object;
.source "NfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcDispatcher$MessageHandler;,
        Lcom/android/nfc/NfcDispatcher$DispatchInfo;,
        Lcom/android/nfc/NfcDispatcher$ForegroundCallbackImpl;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field static final DISPATCH_FAIL:I = 0x2

.field static final DISPATCH_SUCCESS:I = 0x1

.field static final DISPATCH_UNLOCK:I = 0x3

.field private static final TAG:Ljava/lang/String; = "NfcDispatcher"


# instance fields
.field private mBluetoothEnabledByNfc:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceSupportsBluetooth:Z

.field final mForegroundCallback:Lcom/android/nfc/ForegroundUtils$Callback;

.field private mForegroundUid:I

.field private mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field private final mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field private final mIActivityManager:Landroid/app/IActivityManager;

.field private final mMessageHandler:Landroid/os/Handler;

.field private final mMessenger:Landroid/os/Messenger;

.field private final mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

.field private mOverrideFilters:[Landroid/content/IntentFilter;

.field private mOverrideIntent:Landroid/app/PendingIntent;

.field private mOverrideTechLists:[[Ljava/lang/String;

.field private final mProvisioningMimes:[Ljava/lang/String;

.field private mProvisioningOnly:Z

.field private final mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

.field private final mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBluetoothEnabledByNfc(Lcom/android/nfc/NfcDispatcher;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothEnabledByNfc:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmForegroundUid(Lcom/android/nfc/NfcDispatcher;)I
    .locals 0

    iget p0, p0, Lcom/android/nfc/NfcDispatcher;->mForegroundUid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmForegroundUid(Lcom/android/nfc/NfcDispatcher;I)V
    .locals 0

    iput p1, p0, Lcom/android/nfc/NfcDispatcher;->mForegroundUid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .locals 1

    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 77
    nop

    .line 78
    const-string v0, "persist.nfc.debug_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    .line 77
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverDataParser"    # Lcom/android/nfc/handover/HandoverDataParser;
    .param p3, "provisionOnly"    # Z

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/android/nfc/NfcDispatcher$MessageHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/NfcDispatcher$MessageHandler;-><init>(Lcom/android/nfc/NfcDispatcher;Lcom/android/nfc/NfcDispatcher$MessageHandler-IA;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mMessageHandler:Landroid/os/Handler;

    .line 95
    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mMessenger:Landroid/os/Messenger;

    .line 96
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothEnabledByNfc:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 161
    new-instance v0, Lcom/android/nfc/NfcDispatcher$ForegroundCallbackImpl;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcDispatcher$ForegroundCallbackImpl;-><init>(Lcom/android/nfc/NfcDispatcher;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mForegroundCallback:Lcom/android/nfc/ForegroundUtils$Callback;

    .line 924
    new-instance v0, Lcom/android/nfc/NfcDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcDispatcher$1;-><init>(Lcom/android/nfc/NfcDispatcher;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 109
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    .line 110
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mIActivityManager:Landroid/app/IActivityManager;

    .line 111
    new-instance v0, Lcom/android/nfc/RegisteredComponentCache;

    const-string v1, "android.nfc.action.TECH_DISCOVERED"

    const-string v2, "android.nfc.action.TECH_DISCOVERED"

    invoke-direct {v0, p1, v1, v2}, Lcom/android/nfc/RegisteredComponentCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContentResolver:Landroid/content/ContentResolver;

    .line 114
    iput-object p2, p0, Lcom/android/nfc/NfcDispatcher;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 115
    new-instance v0, Lcom/android/nfc/ScreenStateHelper;

    invoke-direct {v0, p1}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 116
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 117
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/nfc/NfcDispatcher;->mDeviceSupportsBluetooth:Z

    .line 118
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/NfcDispatcher;->mForegroundUid:I

    .line 119
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iput-boolean p3, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z

    .line 122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "provisionMimes":[Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 127
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030001

    .line 128
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 131
    goto :goto_1

    .line 129
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v0, 0x0

    .line 133
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    .line 135
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 136
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    return-void

    .line 122
    .end local v0    # "provisionMimes":[Ljava/lang/String;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method static checkForAar(Landroid/nfc/NdefRecord;)Ljava/lang/String;
    .locals 3
    .param p0, "record"    # Landroid/nfc/NdefRecord;

    .line 812
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 813
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v0

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 816
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private decodeNfcBarcodeUri(Landroid/nfc/tech/NfcBarcode;)Landroid/nfc/NdefMessage;
    .locals 12
    .param p1, "nfcBarcode"    # Landroid/nfc/tech/NfcBarcode;

    .line 494
    const/4 v0, 0x1

    .line 495
    .local v0, "URI_PREFIX_HTTP_WWW":B
    const/4 v1, 0x2

    .line 496
    .local v1, "URI_PREFIX_HTTPS_WWW":B
    const/4 v2, 0x3

    .line 497
    .local v2, "URI_PREFIX_HTTP":B
    const/4 v3, 0x4

    .line 499
    .local v3, "URI_PREFIX_HTTPS":B
    const/4 v4, 0x0

    .line 500
    .local v4, "message":Landroid/nfc/NdefMessage;
    invoke-virtual {p1}, Landroid/nfc/tech/NfcBarcode;->getTag()Landroid/nfc/Tag;

    move-result-object v5

    invoke-virtual {v5}, Landroid/nfc/Tag;->getId()[B

    move-result-object v5

    .line 502
    .local v5, "tagId":[B
    array-length v6, v5

    const/4 v7, 0x4

    if-lt v6, v7, :cond_3

    const/4 v6, 0x1

    aget-byte v8, v5, v6

    const/4 v9, 0x2

    if-eq v8, v6, :cond_0

    aget-byte v8, v5, v6

    if-eq v8, v9, :cond_0

    aget-byte v8, v5, v6

    const/4 v10, 0x3

    if-eq v8, v10, :cond_0

    aget-byte v8, v5, v6

    if-ne v8, v7, :cond_3

    .line 509
    :cond_0
    const/4 v7, 0x2

    .line 510
    .local v7, "end":I
    :goto_0
    array-length v8, v5

    sub-int/2addr v8, v9

    if-ge v7, v8, :cond_2

    .line 511
    aget-byte v8, v5, v7

    const/4 v10, -0x2

    if-ne v8, v10, :cond_1

    .line 512
    goto :goto_1

    .line 510
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 515
    :cond_2
    :goto_1
    add-int/lit8 v8, v7, -0x1

    new-array v8, v8, [B

    .line 516
    .local v8, "payload":[B
    array-length v9, v8

    const/4 v10, 0x0

    invoke-static {v5, v6, v8, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 517
    new-instance v9, Landroid/nfc/NdefRecord;

    sget-object v11, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-direct {v9, v6, v11, v5, v8}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    move-object v6, v9

    .line 519
    .local v6, "uriRecord":Landroid/nfc/NdefRecord;
    new-instance v9, Landroid/nfc/NdefMessage;

    new-array v10, v10, [Landroid/nfc/NdefRecord;

    invoke-direct {v9, v6, v10}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    move-object v4, v9

    .line 521
    .end local v6    # "uriRecord":Landroid/nfc/NdefRecord;
    .end local v7    # "end":I
    .end local v8    # "payload":[B
    :cond_3
    return-object v4
.end method

.method static extractAarPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;
    .locals 6
    .param p0, "message"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/nfc/NdefMessage;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 680
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 681
    .local v0, "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 682
    .local v4, "record":Landroid/nfc/NdefRecord;
    invoke-static {v4}, Lcom/android/nfc/NfcDispatcher;->checkForAar(Landroid/nfc/NdefRecord;)Ljava/lang/String;

    move-result-object v5

    .line 683
    .local v5, "pkg":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 684
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    .end local v4    # "record":Landroid/nfc/NdefRecord;
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 687
    :cond_1
    return-object v0
.end method

.method static getAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;

    .line 824
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 825
    .local v0, "market":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 826
    return-object v0
.end method

.method private handleNfcUnlock(Landroid/nfc/Tag;)Z
    .locals 1
    .param p1, "tag"    # Landroid/nfc/Tag;

    .line 458
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcUnlockManager;->tryUnlock(Landroid/nfc/Tag;)Z

    move-result v0

    return v0
.end method

.method static isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z
    .locals 4
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .line 830
    const/4 v0, 0x0

    .line 831
    .local v0, "enabled":Z
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    .local v1, "compname":Landroid/content/ComponentName;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 838
    const/4 v0, 0x1

    .line 842
    :cond_0
    goto :goto_0

    .line 840
    :catch_0
    move-exception v2

    .line 841
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    .line 843
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-nez v0, :cond_1

    .line 844
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Component not enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NfcDispatcher"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_1
    return v0
.end method

.method static synthetic lambda$showWebLinkConfirmation$0(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dialog"    # Landroid/content/DialogInterface;
    .param p1, "which"    # I

    .line 867
    return-void
.end method

.method static synthetic lambda$showWebLinkConfirmation$1(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 869
    invoke-virtual {p0}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    .line 870
    return-void
.end method


# virtual methods
.method public declared-synchronized disableProvisioningMode()V
    .locals 1

    monitor-enter p0

    .line 177
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 176
    .end local p0    # "this":Lcom/android/nfc/NfcDispatcher;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchTag(Landroid/nfc/Tag;)I
    .locals 19
    .param p1, "tag"    # Landroid/nfc/Tag;

    .line 353
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const/4 v1, 0x0

    .line 354
    .local v1, "message":Landroid/nfc/NdefMessage;
    invoke-static/range {p1 .. p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v10

    .line 356
    .local v10, "ndef":Landroid/nfc/tech/Ndef;
    monitor-enter p0

    .line 357
    :try_start_0
    iget-object v6, v8, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    .line 358
    .local v6, "overrideFilters":[Landroid/content/IntentFilter;
    iget-object v5, v8, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    .line 359
    .local v5, "overrideIntent":Landroid/app/PendingIntent;
    iget-object v7, v8, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    .line 360
    .local v7, "overrideTechLists":[[Ljava/lang/String;
    iget-boolean v0, v8, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z

    .line 361
    .local v0, "provisioningOnly":Z
    iget-object v2, v8, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    move-object v11, v2

    .line 362
    .local v11, "provisioningMimes":[Ljava/lang/String;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 364
    const/4 v2, 0x0

    .line 365
    .local v2, "screenUnlocked":Z
    const/4 v12, 0x4

    const/4 v13, 0x2

    if-nez v0, :cond_1

    iget-object v3, v8, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 366
    invoke-virtual {v3}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v3

    if-ne v3, v12, :cond_1

    .line 367
    invoke-direct/range {p0 .. p1}, Lcom/android/nfc/NfcDispatcher;->handleNfcUnlock(Landroid/nfc/Tag;)Z

    move-result v2

    .line 368
    if-nez v2, :cond_0

    .line 369
    return v13

    .line 368
    :cond_0
    move v14, v2

    goto :goto_0

    .line 373
    :cond_1
    move v14, v2

    .end local v2    # "screenUnlocked":Z
    .local v14, "screenUnlocked":Z
    :goto_0
    const/4 v15, 0x1

    if-nez v0, :cond_3

    iget-object v2, v8, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 374
    invoke-virtual {v2}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v2

    if-eq v2, v15, :cond_2

    iget-object v2, v8, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 375
    invoke-virtual {v2}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v2

    if-ne v2, v13, :cond_3

    .line 376
    :cond_2
    return v13

    .line 380
    :cond_3
    if-eqz v10, :cond_4

    .line 381
    invoke-virtual {v10}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    .line 383
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/nfc/tech/NfcBarcode;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcBarcode;

    move-result-object v2

    .line 384
    .local v2, "nfcBarcode":Landroid/nfc/tech/NfcBarcode;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/nfc/tech/NfcBarcode;->getType()I

    move-result v3

    if-ne v3, v15, :cond_5

    .line 385
    invoke-direct {v8, v2}, Lcom/android/nfc/NfcDispatcher;->decodeNfcBarcodeUri(Landroid/nfc/tech/NfcBarcode;)Landroid/nfc/NdefMessage;

    move-result-object v1

    move-object v4, v1

    goto :goto_1

    .line 389
    .end local v2    # "nfcBarcode":Landroid/nfc/tech/NfcBarcode;
    :cond_5
    move-object v4, v1

    .end local v1    # "message":Landroid/nfc/NdefMessage;
    .local v4, "message":Landroid/nfc/NdefMessage;
    :goto_1
    sget-boolean v16, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v16, :cond_6

    const-string v1, "NfcDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatch tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_6
    new-instance v1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;

    iget-object v2, v8, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v9, v4}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;-><init>(Landroid/content/Context;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;)V

    move-object v3, v1

    .line 393
    .local v3, "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    .line 395
    move-object/from16 v1, p0

    move-object v2, v3

    move-object v15, v3

    .end local v3    # "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .local v15, "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    move-object/from16 v3, p1

    move-object/from16 v18, v4

    .end local v4    # "message":Landroid/nfc/NdefMessage;
    .local v18, "message":Landroid/nfc/NdefMessage;
    invoke-virtual/range {v1 .. v7}, Lcom/android/nfc/NfcDispatcher;->tryOverrides(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x8a

    const/4 v3, 0x3

    if-eqz v1, :cond_8

    .line 397
    const/4 v1, 0x5

    invoke-static {v2, v1}, Lcom/android/nfc/NfcStatsLog;->write(II)V

    .line 399
    if-eqz v14, :cond_7

    move/from16 v17, v3

    goto :goto_2

    :cond_7
    const/16 v17, 0x1

    :goto_2
    return v17

    .line 402
    :cond_8
    move-object/from16 v1, v18

    .end local v18    # "message":Landroid/nfc/NdefMessage;
    .restart local v1    # "message":Landroid/nfc/NdefMessage;
    invoke-virtual {v8, v1}, Lcom/android/nfc/NfcDispatcher;->tryPeripheralHandover(Landroid/nfc/NdefMessage;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 403
    if-eqz v16, :cond_9

    const-string v4, "NfcDispatcher"

    const-string v12, "matched BT HANDOVER"

    invoke-static {v4, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_9
    invoke-static {v2, v13}, Lcom/android/nfc/NfcStatsLog;->write(II)V

    .line 406
    if-eqz v14, :cond_a

    move/from16 v17, v3

    goto :goto_3

    :cond_a
    const/16 v17, 0x1

    :goto_3
    return v17

    .line 409
    :cond_b
    iget-object v4, v8, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v10, v4}, Lcom/android/nfc/NfcWifiProtectedSetup;->tryNfcWifiSetup(Landroid/nfc/tech/Ndef;Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 410
    if-eqz v16, :cond_c

    const-string v4, "NfcDispatcher"

    const-string v13, "matched NFC WPS TOKEN"

    invoke-static {v4, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_c
    invoke-static {v2, v12}, Lcom/android/nfc/NfcStatsLog;->write(II)V

    .line 413
    if-eqz v14, :cond_d

    move/from16 v17, v3

    goto :goto_4

    :cond_d
    const/16 v17, 0x1

    :goto_4
    return v17

    .line 416
    :cond_e
    if-eqz v0, :cond_11

    .line 417
    invoke-static {v2, v3}, Lcom/android/nfc/NfcStatsLog;->write(II)V

    .line 419
    if-nez v1, :cond_f

    .line 421
    return v13

    .line 424
    :cond_f
    invoke-virtual {v1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    const/4 v12, 0x0

    aget-object v4, v4, v12

    invoke-virtual {v4}, Landroid/nfc/NdefRecord;->toMimeType()Ljava/lang/String;

    move-result-object v4

    .line 425
    .local v4, "ndefMimeType":Ljava/lang/String;
    if-eqz v11, :cond_10

    .line 426
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_11

    .line 427
    :cond_10
    const-string v2, "NfcDispatcher"

    const-string v3, "Dropping NFC intent in provisioning mode."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    return v13

    .line 432
    .end local v4    # "ndefMimeType":Ljava/lang/String;
    :cond_11
    invoke-virtual {v8, v15, v1}, Lcom/android/nfc/NfcDispatcher;->tryNdef(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;)Z

    move-result v4

    if-eqz v4, :cond_13

    .line 433
    if-eqz v14, :cond_12

    move/from16 v17, v3

    goto :goto_5

    :cond_12
    const/16 v17, 0x1

    :goto_5
    return v17

    .line 436
    :cond_13
    if-eqz v14, :cond_14

    .line 438
    return v3

    .line 442
    :cond_14
    invoke-virtual {v8, v15, v9}, Lcom/android/nfc/NfcDispatcher;->tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 443
    const/4 v2, 0x1

    return v2

    .line 446
    :cond_15
    invoke-virtual {v15}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    .line 447
    invoke-virtual {v15}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 448
    if-eqz v16, :cond_16

    const-string v2, "NfcDispatcher"

    const-string v3, "matched TAG"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_16
    const/4 v2, 0x1

    return v2

    .line 452
    :cond_17
    if-eqz v16, :cond_18

    const-string v3, "NfcDispatcher"

    const-string v4, "no match"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :cond_18
    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/android/nfc/NfcStatsLog;->write(II)V

    .line 454
    return v13

    .line 362
    .end local v0    # "provisioningOnly":Z
    .end local v5    # "overrideIntent":Landroid/app/PendingIntent;
    .end local v6    # "overrideFilters":[Landroid/content/IntentFilter;
    .end local v7    # "overrideTechLists":[[Ljava/lang/String;
    .end local v11    # "provisioningMimes":[Ljava/lang/String;
    .end local v14    # "screenUnlocked":Z
    .end local v15    # "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 877
    monitor-enter p0

    .line 878
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mOverrideTechLists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    monitor-exit p0

    .line 882
    return-void

    .line 881
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 7
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 885
    iget-boolean v0, p0, Lcom/android/nfc/NfcDispatcher;->mDeviceSupportsBluetooth:Z

    const-wide v1, 0x10800000001L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 886
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothEnabledByNfc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-wide v1, 0x10800000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 888
    monitor-enter p0

    .line 889
    const-wide v0, 0x10800000003L

    :try_start_0
    iget-boolean v2, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 890
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 891
    new-instance v0, Ljava/util/StringJoiner;

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 892
    .local v0, "techListsJoiner":Ljava/util/StringJoiner;
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 893
    .local v5, "list":[Ljava/lang/String;
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 892
    nop

    .end local v5    # "list":[Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 895
    :cond_0
    const-wide v2, 0x10900000006L

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 897
    .end local v0    # "techListsJoiner":Ljava/util/StringJoiner;
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    .line 898
    const-wide v2, 0x10b00000004L

    invoke-virtual {v0, p1, v2, v3}, Landroid/app/PendingIntent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 900
    :cond_2
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    if-eqz v0, :cond_3

    .line 901
    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 902
    .local v3, "filter":Landroid/content/IntentFilter;
    const-wide v4, 0x20b00000005L

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/IntentFilter;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 901
    .end local v3    # "filter":Landroid/content/IntentFilter;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 905
    :cond_3
    monitor-exit p0

    .line 906
    return-void

    .line 905
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "tagTechs"    # [Ljava/lang/String;
    .param p2, "filterTechs"    # [Ljava/lang/String;

    .line 801
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_1

    .line 803
    :cond_0
    array-length v1, p2

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 804
    .local v3, "tech":Ljava/lang/String;
    invoke-static {p1, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_1

    .line 805
    return v0

    .line 803
    .end local v3    # "tech":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 808
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 801
    :cond_3
    :goto_1
    return v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 143
    return-void
.end method

.method isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "hasTechFilter"    # Z

    .line 573
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 574
    array-length v2, p2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 575
    .local v4, "filter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/nfc/NfcDispatcher;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "NfcDispatcher"

    invoke-virtual {v4, v5, p1, v1, v6}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_0

    .line 576
    return v0

    .line 574
    .end local v4    # "filter":Landroid/content/IntentFilter;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 579
    :cond_1
    if-nez p3, :cond_2

    .line 580
    return v0

    .line 582
    :cond_2
    return v1
.end method

.method isTechMatch(Landroid/nfc/Tag;[[Ljava/lang/String;)Z
    .locals 6
    .param p1, "tag"    # Landroid/nfc/Tag;
    .param p2, "techLists"    # [[Ljava/lang/String;

    .line 586
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 587
    return v0

    .line 590
    :cond_0
    invoke-virtual {p1}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v1

    .line 591
    .local v1, "tagTechs":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 592
    array-length v2, p2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p2, v3

    .line 593
    .local v4, "filterTechs":[Ljava/lang/String;
    invoke-virtual {p0, v1, v4}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 594
    const/4 v0, 0x1

    return v0

    .line 592
    .end local v4    # "filterTechs":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 597
    :cond_2
    return v0
.end method

.method resumeAppSwitches()V
    .locals 1

    .line 795
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 796
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 797
    return-void
.end method

.method public declared-synchronized setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .locals 3
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "techLists"    # [[Ljava/lang/String;

    monitor-enter p0

    .line 147
    :try_start_0
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcDispatcher"

    const-string v1, "Set Foreground Dispatch"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local p0    # "this":Lcom/android/nfc/NfcDispatcher;
    :cond_0
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    .line 149
    iput-object p2, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    .line 150
    iput-object p3, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    .line 152
    if-eqz p1, :cond_1

    .line 153
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 154
    .local v0, "callingUid":I
    iget v1, p0, Lcom/android/nfc/NfcDispatcher;->mForegroundUid:I

    if-eq v1, v0, :cond_1

    .line 155
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mForegroundCallback:Lcom/android/nfc/ForegroundUtils$Callback;

    invoke-virtual {v1, v2, v0}, Lcom/android/nfc/ForegroundUtils;->registerUidToBackgroundCallback(Lcom/android/nfc/ForegroundUtils$Callback;I)Z

    .line 156
    iput v0, p0, Lcom/android/nfc/NfcDispatcher;->mForegroundUid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    .end local v0    # "callingUid":I
    :cond_1
    monitor-exit p0

    return-void

    .line 146
    .end local p1    # "intent":Landroid/app/PendingIntent;
    .end local p2    # "filters":[Landroid/content/IntentFilter;
    .end local p3    # "techLists":[[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method showWebLinkConfirmation(Lcom/android/nfc/NfcDispatcher$DispatchInfo;)V
    .locals 6
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;

    .line 850
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 851
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    .line 852
    return-void

    .line 854
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    .line 855
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110112

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 857
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f1000be

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 858
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 859
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0c006c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 860
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 861
    const v3, 0x7f0901a9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 862
    .local v3, "url":Landroid/widget/TextView;
    if-eqz v3, :cond_1

    .line 863
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->getUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    :cond_1
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 867
    .end local v3    # "url":Landroid/widget/TextView;
    :cond_2
    const v3, 0x7f100038

    new-instance v4, Lcom/android/nfc/NfcDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lcom/android/nfc/NfcDispatcher$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 868
    const v3, 0x7f10001c

    new-instance v4, Lcom/android/nfc/NfcDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v4, p1}, Lcom/android/nfc/NfcDispatcher$$ExternalSyntheticLambda1;-><init>(Lcom/android/nfc/NfcDispatcher$DispatchInfo;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 871
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 872
    .local v3, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d8

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 873
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 874
    return-void
.end method

.method tryNdef(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;)Z
    .locals 16
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "message"    # Landroid/nfc/NdefMessage;

    .line 601
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    .line 602
    return v3

    .line 604
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v4

    .line 607
    .local v4, "intent":Landroid/content/Intent;
    if-nez v4, :cond_1

    return v3

    .line 610
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/nfc/NfcDispatcher;->extractAarPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;

    move-result-object v5

    .line 611
    .local v5, "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    const-string v8, "NfcDispatcher"

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 612
    .local v6, "pkg":Ljava/lang/String;
    iget-object v9, v2, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v9, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 613
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 614
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "matched AAR to NDEF"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_2
    return v7

    .line 617
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 619
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->getCurrentActiveUserHandles()Ljava/util/List;

    move-result-object v6

    .line 621
    .local v6, "luh":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const-string v9, "Could not create user package context"

    const-string v10, "android"

    if-lez v0, :cond_9

    .line 622
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 624
    .local v11, "firstPackage":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/UserHandle;

    .line 626
    .local v12, "uh":Landroid/os/UserHandle;
    :try_start_0
    iget-object v13, v1, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v10, v3, v12}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v13

    .line 627
    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    .local v13, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 632
    invoke-virtual {v13, v11}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v14

    .line 633
    .local v14, "appLaunchIntent":Landroid/content/Intent;
    if-eqz v14, :cond_6

    .line 634
    invoke-virtual {v13, v14, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 635
    .local v15, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v15, :cond_6

    iget-object v3, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_6

    iget-object v3, v15, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v3, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v3, :cond_6

    .line 636
    invoke-virtual {v2, v14}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 637
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "matched AAR to application launch"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_5
    return v7

    .line 641
    .end local v12    # "uh":Landroid/os/UserHandle;
    .end local v14    # "appLaunchIntent":Landroid/content/Intent;
    .end local v15    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 628
    .end local v13    # "pm":Landroid/content/pm/PackageManager;
    .restart local v12    # "uh":Landroid/os/UserHandle;
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v3, 0x0

    return v3

    .line 643
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12    # "uh":Landroid/os/UserHandle;
    :cond_7
    invoke-static {v11}, Lcom/android/nfc/NfcDispatcher;->getAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 644
    .local v0, "marketIntent":Landroid/content/Intent;
    if-eqz v0, :cond_9

    invoke-virtual {v2, v0}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 645
    sget-boolean v3, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v3, :cond_8

    const-string v3, "matched AAR to market launch"

    invoke-static {v8, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_8
    return v7

    .line 651
    .end local v0    # "marketIntent":Landroid/content/Intent;
    .end local v11    # "firstPackage":Ljava/lang/String;
    :cond_9
    iget-object v0, v2, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->isWebIntent()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->hasIntentReceiver()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 654
    sget-boolean v0, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "matched Web link - prompting user"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_a
    invoke-virtual/range {p0 .. p1}, Lcom/android/nfc/NfcDispatcher;->showWebLinkConfirmation(Lcom/android/nfc/NfcDispatcher$DispatchInfo;)V

    .line 656
    const/16 v0, 0x8a

    invoke-static {v0, v7}, Lcom/android/nfc/NfcStatsLog;->write(II)V

    .line 658
    return v7

    .line 661
    :cond_b
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/UserHandle;

    .line 663
    .local v11, "uh":Landroid/os/UserHandle;
    :try_start_1
    iget-object v0, v1, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-virtual {v0, v10, v12, v11}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 664
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 665
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v0, v4, v12}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v13

    move-object v12, v13

    .line 667
    .local v12, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v12, :cond_d

    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v13, :cond_d

    iget-object v13, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v13, v13, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v13, :cond_d

    .line 668
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v13

    if-eqz v13, :cond_d

    .line 669
    sget-boolean v13, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v13, :cond_c

    const-string v13, "matched NDEF"

    invoke-static {v8, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 670
    :cond_c
    return v7

    .line 674
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v12    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_d
    goto :goto_3

    .line 672
    :catch_1
    move-exception v0

    .line 673
    .local v0, "ignore":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    .end local v0    # "ignore":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "uh":Landroid/os/UserHandle;
    :goto_3
    goto :goto_2

    .line 676
    :cond_e
    const/4 v3, 0x0

    return v3
.end method

.method tryOverrides(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)Z
    .locals 6
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;
    .param p3, "message"    # Landroid/nfc/NdefMessage;
    .param p4, "overrideIntent"    # Landroid/app/PendingIntent;
    .param p5, "overrideFilters"    # [Landroid/content/IntentFilter;
    .param p6, "overrideTechLists"    # [[Ljava/lang/String;

    .line 526
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 527
    return v0

    .line 532
    :cond_0
    const-string v1, "NfcDispatcher"

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz p3, :cond_3

    .line 533
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v4

    .line 534
    .local v4, "intent":Landroid/content/Intent;
    if-eqz v4, :cond_3

    if-eqz p6, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v0

    .line 535
    :goto_0
    invoke-virtual {p0, v4, p5, v5}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 537
    :try_start_0
    iget-object v5, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v5, v2, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 538
    sget-boolean v2, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "matched NDEF override"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    :cond_2
    return v3

    .line 540
    :catch_0
    move-exception v1

    .line 541
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    return v0

    .line 547
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    move-result-object v4

    .line 548
    .restart local v4    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, p2, p6}, Lcom/android/nfc/NfcDispatcher;->isTechMatch(Landroid/nfc/Tag;[[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 550
    :try_start_1
    iget-object v5, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v5, v2, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 551
    sget-boolean v2, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "matched TECH override"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    .line 552
    :cond_4
    return v3

    .line 553
    :catch_1
    move-exception v1

    .line 554
    .restart local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    return v0

    .line 559
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_5
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    move-result-object v4

    .line 560
    if-eqz p6, :cond_6

    move v5, v3

    goto :goto_1

    :cond_6
    move v5, v0

    :goto_1
    invoke-virtual {p0, v4, p5, v5}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 562
    :try_start_2
    iget-object v5, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p4, v5, v2, v4}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 563
    sget-boolean v2, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "matched TAG override"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_2

    .line 564
    :cond_7
    return v3

    .line 565
    :catch_2
    move-exception v1

    .line 566
    .restart local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    return v0

    .line 569
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_8
    return v0
.end method

.method public tryPeripheralHandover(Landroid/nfc/NdefMessage;)Z
    .locals 5
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .line 751
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    iget-boolean v1, p0, Lcom/android/nfc/NfcDispatcher;->mDeviceSupportsBluetooth:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 753
    :cond_0
    sget-boolean v1, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryHandover(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NfcDispatcher"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_1
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v1, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v1

    .line 756
    .local v1, "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v1, :cond_7

    iget-boolean v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-nez v2, :cond_2

    goto :goto_0

    .line 757
    :cond_2
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 760
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 757
    const-string v4, "no_config_bluetooth"

    invoke-virtual {v2, v4, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 761
    return v0

    .line 764
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/nfc/handover/PeripheralHandoverService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 765
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    const-string v3, "device"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 766
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    const-string v3, "headsetname"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 767
    iget v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->transport:I

    const-string v3, "transporttype"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 768
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->oobData:Landroid/bluetooth/OobData;

    if-eqz v2, :cond_4

    .line 769
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->oobData:Landroid/bluetooth/OobData;

    const-string v3, "oobdata"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 771
    :cond_4
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->uuids:[Landroid/os/ParcelUuid;

    if-eqz v2, :cond_5

    .line 772
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->uuids:[Landroid/os/ParcelUuid;

    const-string v3, "uuids"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 774
    :cond_5
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->btClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v2, :cond_6

    .line 775
    iget-object v2, v1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->btClass:Landroid/bluetooth/BluetoothClass;

    const-string v3, "class"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 777
    :cond_6
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothEnabledByNfc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const-string v3, "bt_enabled"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 778
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mMessenger:Landroid/os/Messenger;

    const-string v3, "client"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 779
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 781
    const/4 v2, 0x1

    return v2

    .line 756
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    :goto_0
    return v0

    .line 751
    .end local v1    # "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    :cond_8
    :goto_1
    return v0
.end method

.method tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z
    .locals 11
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;

    .line 691
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    .line 693
    invoke-virtual {p2}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v0

    .line 694
    .local v0, "tagTechs":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 697
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .local v1, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

    invoke-virtual {v2}, Lcom/android/nfc/RegisteredComponentCache;->getComponents()Ljava/util/ArrayList;

    move-result-object v2

    .line 701
    .local v2, "registered":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->getCurrentActiveUserHandles()Ljava/util/List;

    move-result-object v3

    .line 703
    .local v3, "luh":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "NfcDispatcher"

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 705
    .local v5, "uh":Landroid/os/UserHandle;
    :try_start_0
    iget-object v8, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string v9, "android"

    invoke-virtual {v8, v9, v7, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v8

    .line 706
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    .local v6, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 712
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    .line 714
    .local v8, "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    iget-object v9, v8, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->techs:[Ljava/lang/String;

    invoke-virtual {p0, v0, v9}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, v8, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 715
    invoke-static {v6, v9}, Lcom/android/nfc/NfcDispatcher;->isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 719
    iget-object v9, v8, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, v8, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v9, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v9, v9, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v9, :cond_0

    .line 721
    iget-object v9, v8, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    .end local v8    # "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    :cond_0
    goto :goto_1

    .line 725
    .end local v5    # "uh":Landroid/os/UserHandle;
    :cond_1
    goto :goto_0

    .line 707
    .end local v6    # "pm":Landroid/content/pm/PackageManager;
    .restart local v5    # "uh":Landroid/os/UserHandle;
    :catch_0
    move-exception v4

    .line 708
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v8, "Could not create user package context"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    return v7

    .line 727
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "uh":Landroid/os/UserHandle;
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 729
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 730
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    iget-object v8, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 732
    sget-boolean v7, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "matched single TECH"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :cond_3
    return v5

    .line 735
    :cond_4
    iget-object v5, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    goto :goto_2

    .line 736
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_7

    .line 738
    new-instance v4, Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-class v9, Lcom/android/nfc/TechListChooserActivity;

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 739
    .local v4, "intent":Landroid/content/Intent;
    iget-object v8, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string v9, "android.intent.extra.INTENT"

    invoke-virtual {v4, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 740
    const-string v8, "rlist"

    invoke-virtual {v4, v8, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 742
    invoke-virtual {p1, v4}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 743
    sget-boolean v7, Lcom/android/nfc/NfcDispatcher;->DBG:Z

    if-eqz v7, :cond_6

    const-string v7, "matched multiple TECH"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_6
    return v5

    .line 736
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_7
    :goto_2
    nop

    .line 747
    :cond_8
    return v7
.end method

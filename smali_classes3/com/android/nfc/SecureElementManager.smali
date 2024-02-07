.class public Lcom/android/nfc/SecureElementManager;
.super Ljava/lang/Object;
.source "SecureElementManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/SecureElementManager$DebounceTimerTask;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final NFC_SETTINGS_DEFAULT_SE:Ljava/lang/String; = "nfc_default_se"

.field static final NFC_SETTINGS_PREFERRED_SE:Ljava/lang/String; = "nfc_preferred_se"

.field static final NFC_SETTINGS_SE_LIST:Ljava/lang/String; = "nfc_se_list"

.field static final SEID_HOST:I = 0x0

.field static final SEID_STR_DELIMITER:Ljava/lang/String; = ";"

.field static final SEID_STR_ESE:Ljava/lang/String; = "eSE"

.field static final SEID_STR_SIM:Ljava/lang/String; = "SIM"

.field static final SEID_STR_SIM1:Ljava/lang/String; = "SIM1"

.field static final SEID_STR_SIM2:Ljava/lang/String; = "SIM2"

.field static final SIM_SLOT1:I = 0x0

.field static final SIM_SLOT2:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SecureElementManager"

.field static final UNDEFINED:I = -0x1


# instance fields
.field SEID_ESE:I

.field SEID_SIM:I

.field mContext:Landroid/content/Context;

.field mDebounceTime:I

.field mDebounceTimerTask:Lcom/android/nfc/SecureElementManager$DebounceTimerTask;

.field mIsSlotSwitched:Z

.field mIsSupportAutoSwitch:Z

.field mIsSupportDualSim:Z

.field mNfcService:Lcom/android/nfc/NfcService;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mSimDetectDebounceTimer:Ljava/util/Timer;

.field private final mUserValueObserver:Landroid/database/ContentObserver;


# direct methods
.method static bridge synthetic -$$Nest$msetPreferredSimSlot(Lcom/android/nfc/SecureElementManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/nfc/SecureElementManager;->setPreferredSimSlot(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/SecureElementManager;->SEID_ESE:I

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/nfc/SecureElementManager;->SEID_SIM:I

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/SecureElementManager;->mIsSupportDualSim:Z

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/SecureElementManager;->mIsSupportAutoSwitch:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/nfc/SecureElementManager;->mIsSlotSwitched:Z

    .line 49
    const/16 v2, 0xfa0

    iput v2, p0, Lcom/android/nfc/SecureElementManager;->mDebounceTime:I

    .line 172
    new-instance v4, Lcom/android/nfc/SecureElementManager$1;

    invoke-direct {v4, p0}, Lcom/android/nfc/SecureElementManager$1;-><init>(Lcom/android/nfc/SecureElementManager;)V

    iput-object v4, p0, Lcom/android/nfc/SecureElementManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 242
    new-instance v2, Lcom/android/nfc/SecureElementManager$2;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/nfc/SecureElementManager$2;-><init>(Lcom/android/nfc/SecureElementManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/nfc/SecureElementManager;->mUserValueObserver:Landroid/database/ContentObserver;

    .line 52
    const-string v3, "SecureElementManager"

    invoke-static {v3, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput-object p1, p0, Lcom/android/nfc/SecureElementManager;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/SecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    .line 55
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-le v3, v1, :cond_0

    move v0, v1

    :cond_0
    iput-boolean v0, p0, Lcom/android/nfc/SecureElementManager;->mIsSupportDualSim:Z

    .line 56
    if-nez v0, :cond_1

    .line 57
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/nfc/SecureElementManager;->mDebounceTime:I

    .line 59
    :cond_1
    new-instance v6, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 60
    .local v6, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/nfc/SecureElementManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 61
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/SecureElementManager;->mSimDetectDebounceTimer:Ljava/util/Timer;

    .line 62
    iget-object v0, p0, Lcom/android/nfc/SecureElementManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "nfc_default_se"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    return-void
.end method

.method private isSimInsertedInOtherSlot(I)Z
    .locals 6
    .param p1, "curSlotId"    # I

    .line 133
    const/4 v0, -0x1

    if-ne v0, p1, :cond_0

    .line 134
    const/4 p1, 0x0

    .line 137
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 138
    .local v2, "checkSlot":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    .line 140
    .local v3, "simState":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSimInsertedInSecondSlot, simState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SecureElementManager"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    if-eq v3, v1, :cond_3

    if-nez v3, :cond_2

    goto :goto_1

    .line 145
    :cond_2
    return v1

    .line 143
    :cond_3
    :goto_1
    return v0
.end method

.method private setPreferredSimSlot(I)V
    .locals 2
    .param p1, "slotId"    # I

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredSimSlot, slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecureElementManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/nfc/SecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->setPreferredSimSlot(I)V

    .line 170
    return-void
.end method

.method private updateDefaultsForSettings()V
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/android/nfc/SecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getDefaultRoute()I

    move-result v0

    .line 78
    .local v0, "defaultRoute":I
    iget-object v1, p0, Lcom/android/nfc/SecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->getPreferredSimSlot()I

    move-result v1

    .line 80
    .local v1, "preferredSe":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "preferredSeString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/nfc/SecureElementManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nfc_preferred_se"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 83
    iget v3, p0, Lcom/android/nfc/SecureElementManager;->SEID_ESE:I

    if-le v0, v3, :cond_0

    .line 84
    add-int/2addr v0, v1

    .line 87
    :cond_0
    and-int/lit8 v0, v0, 0xf

    .line 88
    iget-object v3, p0, Lcom/android/nfc/SecureElementManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nfc_default_se"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDefaultSeForSettings: pref: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", defaultRoute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SecureElementManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method

.method private updateSeListForSettings()V
    .locals 7

    .line 94
    iget-object v0, p0, Lcom/android/nfc/SecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getSecureElementList()[I

    move-result-object v0

    .line 96
    .local v0, "seList":[I
    const/4 v1, 0x0

    .line 98
    .local v1, "isSimAdded":Z
    const-string v2, ""

    .line 100
    .local v2, "seListForSettings":Ljava/lang/String;
    const-string v3, "SecureElementManager"

    if-eqz v0, :cond_4

    .line 101
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 102
    iget v5, p0, Lcom/android/nfc/SecureElementManager;->SEID_SIM:I

    aget v6, v0, v4

    if-ne v5, v6, :cond_1

    .line 103
    iget-boolean v5, p0, Lcom/android/nfc/SecureElementManager;->mIsSupportDualSim:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SIM1;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 105
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SIM2;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 107
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "SIM;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 109
    :cond_1
    iget v5, p0, Lcom/android/nfc/SecureElementManager;->SEID_ESE:I

    aget v6, v0, v4

    if-ne v5, v6, :cond_2

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "eSE;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_3
    goto :goto_2

    .line 114
    :cond_4
    const-string v4, "Can\'t find SE"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "seList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v3, p0, Lcom/android/nfc/SecureElementManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nfc_se_list"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/android/nfc/SecureElementManager;->updateSeListForSettings()V

    .line 68
    invoke-direct {p0}, Lcom/android/nfc/SecureElementManager;->updateDefaultsForSettings()V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SecureElementManager :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/SecureElementManager;->SEID_SIM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecureElementManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public isSupportAutoSwitch()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/android/nfc/SecureElementManager;->mIsSupportAutoSwitch:Z

    return v0
.end method

.method public isSupportDualSim()Z
    .locals 1

    .line 126
    iget-boolean v0, p0, Lcom/android/nfc/SecureElementManager;->mIsSupportDualSim:Z

    return v0
.end method

.method public simAutoSelectionCheck(I)Z
    .locals 7
    .param p1, "curSlotId"    # I

    .line 149
    const/4 v0, 0x0

    .line 152
    .local v0, "isNeedToRestart":Z
    iget-boolean v1, p0, Lcom/android/nfc/SecureElementManager;->mIsSlotSwitched:Z

    if-nez v1, :cond_1

    .line 153
    invoke-direct {p0, p1}, Lcom/android/nfc/SecureElementManager;->isSimInsertedInOtherSlot(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    const-string v1, "SecureElementManager"

    const-string v2, "SIM is inserted on other slot, switch it"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 156
    .local v2, "switchSlotId":I
    :goto_0
    iget-object v3, p0, Lcom/android/nfc/SecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->getDefaultRoute()I

    move-result v3

    .line 157
    .local v3, "defaultRoute":I
    invoke-direct {p0, v2}, Lcom/android/nfc/SecureElementManager;->setPreferredSimSlot(I)V

    .line 158
    and-int/lit8 v3, v3, 0xf

    .line 159
    iget-object v4, p0, Lcom/android/nfc/SecureElementManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    add-int v5, v3, v2

    const-string v6, "nfc_default_se"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 160
    iput-boolean v1, p0, Lcom/android/nfc/SecureElementManager;->mIsSlotSwitched:Z

    .line 161
    const/4 v0, 0x1

    .line 164
    .end local v2    # "switchSlotId":I
    .end local v3    # "defaultRoute":I
    :cond_1
    return v0
.end method

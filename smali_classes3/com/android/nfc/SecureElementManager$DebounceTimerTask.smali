.class Lcom/android/nfc/SecureElementManager$DebounceTimerTask;
.super Ljava/util/TimerTask;
.source "SecureElementManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/SecureElementManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DebounceTimerTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/SecureElementManager;


# direct methods
.method private constructor <init>(Lcom/android/nfc/SecureElementManager;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/android/nfc/SecureElementManager$DebounceTimerTask;->this$0:Lcom/android/nfc/SecureElementManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/SecureElementManager;Lcom/android/nfc/SecureElementManager$DebounceTimerTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/nfc/SecureElementManager$DebounceTimerTask;-><init>(Lcom/android/nfc/SecureElementManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "curSlotId":I
    const/4 v1, 0x0

    .line 209
    .local v1, "simCount":I
    iget-object v2, p0, Lcom/android/nfc/SecureElementManager$DebounceTimerTask;->this$0:Lcom/android/nfc/SecureElementManager;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/nfc/SecureElementManager;->mDebounceTimerTask:Lcom/android/nfc/SecureElementManager$DebounceTimerTask;

    .line 210
    iget-object v2, p0, Lcom/android/nfc/SecureElementManager$DebounceTimerTask;->this$0:Lcom/android/nfc/SecureElementManager;

    iget-object v2, v2, Lcom/android/nfc/SecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService;->waitNfcEeDiscovery(Z)V

    .line 212
    const/4 v2, 0x0

    .local v2, "slotIndex":I
    :goto_0
    const/4 v4, 0x2

    if-ge v2, v4, :cond_1

    .line 213
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    .line 214
    .local v4, "simState":I
    if-le v4, v3, :cond_0

    .line 215
    add-int/lit8 v1, v1, 0x1

    .line 216
    move v0, v2

    .line 212
    .end local v4    # "simState":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v2    # "slotIndex":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current simCount: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SecureElementManager"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v2, p0, Lcom/android/nfc/SecureElementManager$DebounceTimerTask;->this$0:Lcom/android/nfc/SecureElementManager;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/nfc/SecureElementManager;->mIsSlotSwitched:Z

    .line 222
    if-nez v1, :cond_2

    .line 224
    iget-object v2, p0, Lcom/android/nfc/SecureElementManager$DebounceTimerTask;->this$0:Lcom/android/nfc/SecureElementManager;

    iget-object v2, v2, Lcom/android/nfc/SecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->restartNfcService()V

    .line 227
    :cond_2
    if-ne v1, v3, :cond_3

    .line 229
    iget-object v2, p0, Lcom/android/nfc/SecureElementManager$DebounceTimerTask;->this$0:Lcom/android/nfc/SecureElementManager;

    invoke-static {v2, v0}, Lcom/android/nfc/SecureElementManager;->-$$Nest$msetPreferredSimSlot(Lcom/android/nfc/SecureElementManager;I)V

    .line 230
    iget-object v2, p0, Lcom/android/nfc/SecureElementManager$DebounceTimerTask;->this$0:Lcom/android/nfc/SecureElementManager;

    iget-object v2, v2, Lcom/android/nfc/SecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->restartNfcService()V

    .line 233
    :cond_3
    if-le v1, v3, :cond_4

    .line 235
    iget-object v2, p0, Lcom/android/nfc/SecureElementManager$DebounceTimerTask;->this$0:Lcom/android/nfc/SecureElementManager;

    iget-object v2, v2, Lcom/android/nfc/SecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->restartNfcService()V

    .line 238
    :cond_4
    iget-object v2, p0, Lcom/android/nfc/SecureElementManager$DebounceTimerTask;->this$0:Lcom/android/nfc/SecureElementManager;

    iget-object v2, v2, Lcom/android/nfc/SecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, v4}, Lcom/android/nfc/NfcService;->setWaitForRestarting(Z)V

    .line 239
    return-void
.end method

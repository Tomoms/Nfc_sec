.class Lcom/android/nfc/SecureElementManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SecureElementManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/SecureElementManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/SecureElementManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/SecureElementManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/SecureElementManager;

    .line 172
    iput-object p1, p0, Lcom/android/nfc/SecureElementManager$1;->this$0:Lcom/android/nfc/SecureElementManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 175
    iget-object v0, p0, Lcom/android/nfc/SecureElementManager$1;->this$0:Lcom/android/nfc/SecureElementManager;

    iget-object v0, v0, Lcom/android/nfc/SecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    const-string v1, "SecureElementManager"

    if-nez v0, :cond_0

    .line 176
    const-string v0, "NFC disabled, ignore SIM State change"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-void

    .line 180
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 182
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, "iccState":Ljava/lang/String;
    const-string v3, "ABSENT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 185
    const-string v3, "NOT_READY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 186
    const-string v3, "READY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No handling iccState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 187
    :cond_2
    :goto_0
    const-string v3, "SIM state changed, absent or inserted"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v3, p0, Lcom/android/nfc/SecureElementManager$1;->this$0:Lcom/android/nfc/SecureElementManager;

    iget-object v3, v3, Lcom/android/nfc/SecureElementManager;->mDebounceTimerTask:Lcom/android/nfc/SecureElementManager$DebounceTimerTask;

    if-nez v3, :cond_3

    .line 189
    iget-object v1, p0, Lcom/android/nfc/SecureElementManager$1;->this$0:Lcom/android/nfc/SecureElementManager;

    new-instance v3, Lcom/android/nfc/SecureElementManager$DebounceTimerTask;

    iget-object v4, p0, Lcom/android/nfc/SecureElementManager$1;->this$0:Lcom/android/nfc/SecureElementManager;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/nfc/SecureElementManager$DebounceTimerTask;-><init>(Lcom/android/nfc/SecureElementManager;Lcom/android/nfc/SecureElementManager$DebounceTimerTask-IA;)V

    iput-object v3, v1, Lcom/android/nfc/SecureElementManager;->mDebounceTimerTask:Lcom/android/nfc/SecureElementManager$DebounceTimerTask;

    .line 194
    iget-object v1, p0, Lcom/android/nfc/SecureElementManager$1;->this$0:Lcom/android/nfc/SecureElementManager;

    iget-object v1, v1, Lcom/android/nfc/SecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService;->setWaitForRestarting(Z)V

    .line 195
    iget-object v1, p0, Lcom/android/nfc/SecureElementManager$1;->this$0:Lcom/android/nfc/SecureElementManager;

    iget-object v1, v1, Lcom/android/nfc/SecureElementManager;->mSimDetectDebounceTimer:Ljava/util/Timer;

    iget-object v3, p0, Lcom/android/nfc/SecureElementManager$1;->this$0:Lcom/android/nfc/SecureElementManager;

    iget-object v3, v3, Lcom/android/nfc/SecureElementManager;->mDebounceTimerTask:Lcom/android/nfc/SecureElementManager$DebounceTimerTask;

    iget-object v4, p0, Lcom/android/nfc/SecureElementManager$1;->this$0:Lcom/android/nfc/SecureElementManager;

    iget v4, v4, Lcom/android/nfc/SecureElementManager;->mDebounceTime:I

    int-to-long v4, v4

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1

    .line 191
    :cond_3
    const-string v3, "Already exist a timer."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void

    .line 200
    .end local v2    # "iccState":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void
.end method

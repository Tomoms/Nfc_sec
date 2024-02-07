.class Lcom/android/nfc/SecureElementManager$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/nfc/SecureElementManager;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/SecureElementManager;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 242
    iput-object p1, p0, Lcom/android/nfc/SecureElementManager$2;->this$0:Lcom/android/nfc/SecureElementManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "defaultSe":I
    const/4 v1, 0x0

    .line 249
    .local v1, "preferredSimChange":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/SecureElementManager$2;->this$0:Lcom/android/nfc/SecureElementManager;

    iget-object v2, v2, Lcom/android/nfc/SecureElementManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nfc_default_se"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 251
    goto :goto_0

    .line 250
    :catch_0
    move-exception v2

    .line 253
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange; defaultSe: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SecureElementManager"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v2, p0, Lcom/android/nfc/SecureElementManager$2;->this$0:Lcom/android/nfc/SecureElementManager;

    iget-object v2, v2, Lcom/android/nfc/SecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->getDefaultRoute()I

    move-result v2

    .line 256
    .local v2, "currentSe":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", currentSe"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v3, p0, Lcom/android/nfc/SecureElementManager$2;->this$0:Lcom/android/nfc/SecureElementManager;

    iget v3, v3, Lcom/android/nfc/SecureElementManager;->SEID_ESE:I

    if-le v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/nfc/SecureElementManager$2;->this$0:Lcom/android/nfc/SecureElementManager;

    iget v3, v3, Lcom/android/nfc/SecureElementManager;->SEID_ESE:I

    if-le v0, v3, :cond_0

    .line 258
    const/4 v1, 0x1

    .line 261
    :cond_0
    iget-object v3, p0, Lcom/android/nfc/SecureElementManager$2;->this$0:Lcom/android/nfc/SecureElementManager;

    iget v3, v3, Lcom/android/nfc/SecureElementManager;->SEID_SIM:I

    const-string v5, "onChange; not update same as current: "

    if-ne v2, v3, :cond_1

    .line 262
    iget-object v3, p0, Lcom/android/nfc/SecureElementManager$2;->this$0:Lcom/android/nfc/SecureElementManager;

    iget-object v3, v3, Lcom/android/nfc/SecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->getPreferredSimSlot()I

    move-result v3

    add-int/2addr v2, v3

    .line 263
    if-ne v0, v2, :cond_2

    .line 264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void

    .line 268
    :cond_1
    if-ne v0, v2, :cond_2

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void

    .line 274
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChange; update route to: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 276
    iget-object v4, p0, Lcom/android/nfc/SecureElementManager$2;->this$0:Lcom/android/nfc/SecureElementManager;

    iget-object v4, v4, Lcom/android/nfc/SecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    iget-object v5, p0, Lcom/android/nfc/SecureElementManager$2;->this$0:Lcom/android/nfc/SecureElementManager;

    iget v5, v5, Lcom/android/nfc/SecureElementManager;->SEID_SIM:I

    invoke-virtual {v4, v5, v3}, Lcom/android/nfc/NfcService;->setDefaultRoute(IZ)Z

    .line 277
    iget-object v4, p0, Lcom/android/nfc/SecureElementManager$2;->this$0:Lcom/android/nfc/SecureElementManager;

    iput-boolean v3, v4, Lcom/android/nfc/SecureElementManager;->mIsSlotSwitched:Z

    .line 278
    iget-object v3, p0, Lcom/android/nfc/SecureElementManager$2;->this$0:Lcom/android/nfc/SecureElementManager;

    iget v4, v3, Lcom/android/nfc/SecureElementManager;->SEID_SIM:I

    sub-int v4, v0, v4

    invoke-static {v3, v4}, Lcom/android/nfc/SecureElementManager;->-$$Nest$msetPreferredSimSlot(Lcom/android/nfc/SecureElementManager;I)V

    .line 279
    iget-object v3, p0, Lcom/android/nfc/SecureElementManager$2;->this$0:Lcom/android/nfc/SecureElementManager;

    iget-object v3, v3, Lcom/android/nfc/SecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->restartNfcService()V

    goto :goto_1

    .line 281
    :cond_3
    iget-object v4, p0, Lcom/android/nfc/SecureElementManager$2;->this$0:Lcom/android/nfc/SecureElementManager;

    iget-object v4, v4, Lcom/android/nfc/SecureElementManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v4, v0, v3}, Lcom/android/nfc/NfcService;->setDefaultRoute(IZ)Z

    .line 283
    :goto_1
    return-void
.end method

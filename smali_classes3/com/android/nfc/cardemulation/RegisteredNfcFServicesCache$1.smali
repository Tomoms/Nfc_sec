.class Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;
.super Landroid/content/BroadcastReceiver;
.source "RegisteredNfcFServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 144
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 147
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 148
    .local v0, "uid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "action":Ljava/lang/String;
    sget-boolean v3, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->DBG:Z

    const-string v4, "RegisteredNfcFServicesCache"

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent action: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_0
    if-eq v0, v1, :cond_5

    .line 151
    const-string v1, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 152
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 153
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    nop

    :goto_0
    move v1, v3

    .line 154
    .local v1, "replaced":Z
    if-nez v1, :cond_4

    .line 155
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 156
    .local v3, "currentUser":I
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->-$$Nest$mgetProfileParentId(Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;I)I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 157
    iget-object v4, p0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->invalidateCache(I)V

    .line 161
    .end local v3    # "currentUser":I
    :cond_3
    goto :goto_1

    .line 162
    :cond_4
    sget-boolean v3, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "Ignoring package intent due to package being replaced."

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v1    # "replaced":Z
    :cond_5
    :goto_1
    return-void
.end method

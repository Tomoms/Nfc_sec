.class Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;
.super Landroid/content/BroadcastReceiver;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/cardemulation/RegisteredServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/RegisteredServicesCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 148
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 151
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 152
    .local v0, "uid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "action":Ljava/lang/String;
    sget-boolean v3, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    const-string v4, "RegisteredServicesCache"

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

    .line 154
    :cond_0
    if-eq v0, v1, :cond_6

    .line 155
    const-string v1, "android.intent.extra.REPLACING"

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    const/4 v6, 0x1

    if-eqz v1, :cond_2

    .line 156
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 157
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v6

    goto :goto_0

    :cond_2
    move v1, v3

    .line 158
    .local v1, "replaced":Z
    :goto_0
    if-nez v1, :cond_5

    .line 159
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 160
    .local v4, "currentUser":I
    iget-object v7, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->-$$Nest$mgetProfileParentId(Lcom/android/nfc/cardemulation/RegisteredServicesCache;I)I

    move-result v7

    if-ne v4, v7, :cond_4

    .line 161
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 162
    iget-object v3, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-virtual {v3, v5, v6}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(IZ)V

    goto :goto_1

    .line 164
    :cond_3
    iget-object v5, p0, Lcom/android/nfc/cardemulation/RegisteredServicesCache$1;->this$0:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(IZ)V

    .line 169
    .end local v4    # "currentUser":I
    :cond_4
    :goto_1
    goto :goto_2

    .line 170
    :cond_5
    sget-boolean v3, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "Ignoring package intent due to package being replaced."

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .end local v1    # "replaced":Z
    :cond_6
    :goto_2
    return-void
.end method

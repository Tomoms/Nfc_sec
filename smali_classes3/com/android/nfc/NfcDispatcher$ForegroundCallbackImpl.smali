.class Lcom/android/nfc/NfcDispatcher$ForegroundCallbackImpl;
.super Ljava/lang/Object;
.source "NfcDispatcher.java"

# interfaces
.implements Lcom/android/nfc/ForegroundUtils$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ForegroundCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcDispatcher;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcDispatcher;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/NfcDispatcher;

    .line 163
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher$ForegroundCallbackImpl;->this$0:Lcom/android/nfc/NfcDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidToBackground(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 166
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$ForegroundCallbackImpl;->this$0:Lcom/android/nfc/NfcDispatcher;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$ForegroundCallbackImpl;->this$0:Lcom/android/nfc/NfcDispatcher;

    invoke-static {v1}, Lcom/android/nfc/NfcDispatcher;->-$$Nest$fgetmForegroundUid(Lcom/android/nfc/NfcDispatcher;)I

    move-result v1

    if-ne v1, p1, :cond_1

    .line 168
    invoke-static {}, Lcom/android/nfc/NfcDispatcher;->-$$Nest$sfgetDBG()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NfcDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " switch to background."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$ForegroundCallbackImpl;->this$0:Lcom/android/nfc/NfcDispatcher;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/android/nfc/NfcDispatcher;->-$$Nest$fputmForegroundUid(Lcom/android/nfc/NfcDispatcher;I)V

    .line 170
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$ForegroundCallbackImpl;->this$0:Lcom/android/nfc/NfcDispatcher;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2}, Lcom/android/nfc/NfcDispatcher;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 172
    :cond_1
    monitor-exit v0

    .line 173
    return-void

    .line 172
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

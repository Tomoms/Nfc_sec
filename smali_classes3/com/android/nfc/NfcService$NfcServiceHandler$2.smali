.class Lcom/android/nfc/NfcService$NfcServiceHandler$2;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$TagLongConnectedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcService$NfcServiceHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/NfcService$NfcServiceHandler;

.field final synthetic val$tag:Lcom/android/nfc/DeviceHost$TagEndpoint;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService$NfcServiceHandler;Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/nfc/NfcService$NfcServiceHandler;

    .line 3304
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler$2;->this$1:Lcom/android/nfc/NfcService$NfcServiceHandler;

    iput-object p2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler$2;->val$tag:Lcom/android/nfc/DeviceHost$TagEndpoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagLongConnected(J)V
    .locals 3
    .param p1, "handle"    # J

    .line 3307
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler$2;->this$1:Lcom/android/nfc/NfcService$NfcServiceHandler;

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 3308
    const-string v0, "NfcService"

    const-string v1, "onTagLongConnected, disable polling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3309
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler$2;->val$tag:Lcom/android/nfc/DeviceHost$TagEndpoint;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->stopPresenceChecking()V

    .line 3310
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler$2;->this$1:Lcom/android/nfc/NfcService$NfcServiceHandler;

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 3311
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler$2;->this$1:Lcom/android/nfc/NfcService$NfcServiceHandler;

    iget-object v1, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmDeviceHost(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/nfc/DeviceHost;->startStopPolling(Z)V

    .line 3312
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 3314
    :cond_0
    :goto_0
    return-void
.end method

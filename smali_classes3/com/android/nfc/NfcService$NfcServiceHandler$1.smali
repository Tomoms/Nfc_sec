.class Lcom/android/nfc/NfcService$NfcServiceHandler$1;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;


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


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService$NfcServiceHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/nfc/NfcService$NfcServiceHandler;

    .line 3295
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler$1;->this$1:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTagDisconnected(J)V
    .locals 3
    .param p1, "handle"    # J

    .line 3298
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler$1;->this$1:Lcom/android/nfc/NfcService$NfcServiceHandler;

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/nfc/NfcService;->mCookieUpToDate:J

    .line 3299
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler$1;->this$1:Lcom/android/nfc/NfcService$NfcServiceHandler;

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 3300
    return-void
.end method

.class Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;
.super Landroid/os/Handler;
.source "PeripheralHandoverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/PeripheralHandoverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/handover/PeripheralHandoverService;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/PeripheralHandoverService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/handover/PeripheralHandoverService;

    .line 80
    iput-object p1, p0, Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/PeripheralHandoverService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 83
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 85
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;->this$0:Lcom/android/nfc/handover/PeripheralHandoverService;

    iget-object v0, v0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const v1, 0x88b8

    invoke-virtual {v0, v1}, Landroid/nfc/NfcAdapter;->pausePolling(I)V

    .line 88
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

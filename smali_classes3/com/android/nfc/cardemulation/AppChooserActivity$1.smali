.class Lcom/android/nfc/cardemulation/AppChooserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AppChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/AppChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/AppChooserActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/AppChooserActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/AppChooserActivity;

    .line 71
    iput-object p1, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$1;->this$0:Lcom/android/nfc/cardemulation/AppChooserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 74
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$1;->this$0:Lcom/android/nfc/cardemulation/AppChooserActivity;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->finish()V

    .line 75
    return-void
.end method

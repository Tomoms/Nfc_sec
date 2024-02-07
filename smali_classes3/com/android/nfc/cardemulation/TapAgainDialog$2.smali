.class Lcom/android/nfc/cardemulation/TapAgainDialog$2;
.super Ljava/lang/Object;
.source "TapAgainDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/cardemulation/TapAgainDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/TapAgainDialog;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/TapAgainDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/TapAgainDialog;

    .line 83
    iput-object p1, p0, Lcom/android/nfc/cardemulation/TapAgainDialog$2;->this$0:Lcom/android/nfc/cardemulation/TapAgainDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog$2;->this$0:Lcom/android/nfc/cardemulation/TapAgainDialog;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->finish()V

    .line 87
    return-void
.end method

.class Lcom/android/nfc/cardemulation/AppChooserActivity$2;
.super Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;
.source "AppChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/cardemulation/AppChooserActivity;->onCreate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/ComponentName;)V
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

    .line 117
    iput-object p1, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$2;->this$0:Lcom/android/nfc/cardemulation/AppChooserActivity;

    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .locals 0
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 130
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "bottomSheet"    # Landroid/view/View;
    .param p2, "newState"    # I

    .line 120
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$2;->this$0:Lcom/android/nfc/cardemulation/AppChooserActivity;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->finish()V

    .line 125
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

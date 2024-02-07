.class public final synthetic Lcom/android/nfc/NfcDispatcher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/nfc/NfcDispatcher$DispatchInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/nfc/NfcDispatcher$DispatchInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher$$ExternalSyntheticLambda1;->f$0:Lcom/android/nfc/NfcDispatcher$DispatchInfo;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$$ExternalSyntheticLambda1;->f$0:Lcom/android/nfc/NfcDispatcher$DispatchInfo;

    invoke-static {v0, p1, p2}, Lcom/android/nfc/NfcDispatcher;->lambda$showWebLinkConfirmation$1(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/content/DialogInterface;I)V

    return-void
.end method

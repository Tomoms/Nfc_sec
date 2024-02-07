.class public final synthetic Lcom/android/nfc/cardemulation/HostEmulationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

.field public final synthetic f$1:Landroid/content/ComponentName;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/nfc/cardemulation/HostEmulationManager;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iput-object p2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    iput p3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$$ExternalSyntheticLambda0;->f$1:Landroid/content/ComponentName;

    iget v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$$ExternalSyntheticLambda0;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/cardemulation/HostEmulationManager;->lambda$onPreferredPaymentServiceChanged$0$com-android-nfc-cardemulation-HostEmulationManager(Landroid/content/ComponentName;I)V

    return-void
.end method

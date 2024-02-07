.class public final synthetic Lcom/android/nfc/cardemulation/AidRoutingManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/util/proto/ProtoOutputStream;


# direct methods
.method public synthetic constructor <init>(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$$ExternalSyntheticLambda0;->f$0:Landroid/util/proto/ProtoOutputStream;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidRoutingManager$$ExternalSyntheticLambda0;->f$0:Landroid/util/proto/ProtoOutputStream;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/nfc/cardemulation/AidRoutingManager;->lambda$dumpDebug$0(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V

    return-void
.end method

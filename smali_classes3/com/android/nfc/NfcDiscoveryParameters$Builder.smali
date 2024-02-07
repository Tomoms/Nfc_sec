.class public Lcom/android/nfc/NfcDiscoveryParameters$Builder;
.super Ljava/lang/Object;
.source "NfcDiscoveryParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcDiscoveryParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mParameters:Lcom/android/nfc/NfcDiscoveryParameters;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-direct {v0}, Lcom/android/nfc/NfcDiscoveryParameters;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/NfcDiscoveryParameters$Builder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/android/nfc/NfcDiscoveryParameters;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0}, Lcom/android/nfc/NfcDiscoveryParameters;->-$$Nest$fgetmEnableReaderMode(Lcom/android/nfc/NfcDiscoveryParameters;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0}, Lcom/android/nfc/NfcDiscoveryParameters;->-$$Nest$fgetmEnableLowPowerDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0}, Lcom/android/nfc/NfcDiscoveryParameters;->-$$Nest$fgetmEnableP2p(Lcom/android/nfc/NfcDiscoveryParameters;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t enable LPTD/P2P and reader mode simultaneously"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    return-object v0
.end method

.method public setEnableHostRouting(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .locals 1
    .param p1, "enable"    # Z

    .line 56
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->-$$Nest$fputmEnableHostRouting(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 57
    return-object p0
.end method

.method public setEnableLowPowerDiscovery(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .locals 1
    .param p1, "enable"    # Z

    .line 41
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->-$$Nest$fputmEnableLowPowerDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 42
    return-object p0
.end method

.method public setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .locals 1
    .param p1, "enable"    # Z

    .line 61
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->-$$Nest$fputmEnableP2p(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 62
    return-object p0
.end method

.method public setEnableReaderMode(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .locals 2
    .param p1, "enable"    # Z

    .line 46
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->-$$Nest$fputmEnableReaderMode(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 48
    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/nfc/NfcDiscoveryParameters;->-$$Nest$fputmEnableLowPowerDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 52
    :cond_0
    return-object p0
.end method

.method public setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    .locals 1
    .param p1, "techMask"    # I

    .line 36
    iget-object v0, p0, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->mParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-static {v0, p1}, Lcom/android/nfc/NfcDiscoveryParameters;->-$$Nest$fputmTechMask(Lcom/android/nfc/NfcDiscoveryParameters;I)V

    .line 37
    return-object p0
.end method

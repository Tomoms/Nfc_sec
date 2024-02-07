.class final Lcom/android/nfc/NfcService$SecNfcAdapterService;
.super Lcom/samsung/nfc/ISecNfcAdapter$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SecNfcAdapterService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .line 2075
    iput-object p1, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Lcom/samsung/nfc/ISecNfcAdapter$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public doFactoryRfCalibration()V
    .locals 1

    .line 2116
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2117
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->doFactoryRf()V

    .line 2118
    return-void
.end method

.method public getDefaultRoute()I
    .locals 1

    .line 2091
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2092
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getDefaultRoute()I

    move-result v0

    return v0
.end method

.method public getFactoryRfCalValue()Ljava/lang/String;
    .locals 2

    .line 2122
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2123
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->getFactoryRf()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public getListenTechMask()I
    .locals 1

    .line 2103
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2104
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getListenTechMask()I

    move-result v0

    return v0
.end method

.method public getPreferredSimSlot()I
    .locals 1

    .line 2146
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2147
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getPreferredSimSlot()I

    move-result v0

    return v0
.end method

.method public getSecureElementList()[I
    .locals 1

    .line 2134
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2135
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getSecureElementList()[I

    move-result-object v0

    return-object v0
.end method

.method public setDefaultRoute(I)Z
    .locals 2
    .param p1, "route"    # I

    .line 2084
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2085
    const/4 v0, 0x1

    .line 2086
    .local v0, "isRestartRfDiscovery":Z
    iget-object v1, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1, v0}, Lcom/android/nfc/NfcService;->setDefaultRoute(IZ)Z

    move-result v1

    return v1
.end method

.method public setFWDebugLevel(IZ)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "enable"    # Z

    .line 2109
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2110
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/NfcService;->setFirmwareDebugLevel(IZ)V

    .line 2111
    const/4 v0, 0x1

    return v0
.end method

.method public setListenTechMask(I)Z
    .locals 1
    .param p1, "techMask"    # I

    .line 2097
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2098
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->setListenTechMask(I)Z

    move-result v0

    return v0
.end method

.method public setPowerOffCardEmulation(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 2128
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2129
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->setPowerOffCardEmulation(Z)V

    .line 2130
    return-void
.end method

.method public setPreferredSimSlot(I)V
    .locals 1
    .param p1, "slotId"    # I

    .line 2140
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2141
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->setPreferredSimSlot(I)V

    .line 2142
    return-void
.end method

.method public setRfOptionUpdate(Ljava/lang/String;)Z
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;

    .line 2078
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2079
    iget-object v0, p0, Lcom/android/nfc/NfcService$SecNfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->setRfOptionFilePath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

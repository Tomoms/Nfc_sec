.class final Lcom/android/nfc/NfcService$NfcDtaService;
.super Landroid/nfc/INfcDta$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcDtaService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .line 2512
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/nfc/INfcDta$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disableClient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2571
    return-void
.end method

.method public disableDta()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2523
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2524
    sget-boolean v0, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-eqz v0, :cond_0

    .line 2525
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmDeviceHost(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->disableDtaMode()V

    .line 2526
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    .line 2528
    :cond_0
    return-void
.end method

.method public disableServer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2546
    return-void
.end method

.method public enableClient(Ljava/lang/String;III)Z
    .locals 3
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "miu"    # I
    .param p3, "rwSize"    # I
    .param p4, "testCaseId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2550
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2552
    const/4 v0, 0x0

    .line 2553
    :cond_2
    :goto_1
    return v0
.end method

.method public enableDta()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2514
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2515
    sget-boolean v0, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    if-nez v0, :cond_0

    .line 2516
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmDeviceHost(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->enableDtaMode()V

    .line 2517
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/nfc/NfcService;->sIsDtaMode:Z

    .line 2518
    const-string v0, "NfcService"

    const-string v1, "DTA Mode is Enabled "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    :cond_0
    return-void
.end method

.method public enableServer(Ljava/lang/String;IIII)Z
    .locals 7
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "serviceSap"    # I
    .param p3, "miu"    # I
    .param p4, "rwSize"    # I
    .param p5, "testCaseId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2532
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2535
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public registerMessageService(Ljava/lang/String;)Z
    .locals 1
    .param p1, "msgServiceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2575
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcDtaService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2576
    if-nez p1, :cond_0

    .line 2577
    const/4 v0, 0x0

    return v0

    .line 2579
    :cond_0
    invoke-static {p1}, Lcom/android/nfc/DtaServiceConnector;->setMessageService(Ljava/lang/String;)V

    .line 2580
    const/4 v0, 0x1

    return v0
.end method

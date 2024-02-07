.class public Lcom/android/nfc/dhimpl/NativeNfcManager;
.super Ljava/lang/Object;
.source "NativeNfcManager.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost;


# static fields
.field static final DEFAULT_LLCP_MIU:I = 0x7bc

.field static final DEFAULT_LLCP_RWSIZE:I = 0x2

.field static final DRIVER_NAME:Ljava/lang/String; = "android-nci"

.field static final PREF:Ljava/lang/String; = "NciDeviceHost"

.field private static final TAG:Ljava/lang/String; = "NativeNfcManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsoDepMaxTransceiveLength:I

.field private final mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

.field private final mLock:Ljava/lang/Object;

.field private mNative:J

.field private final mT3tIdentifiers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-string v0, "nfc_sec_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/nfc/DeviceHost$DeviceHostListener;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mLock:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    .line 59
    iput-object p2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    .line 60
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->initializeNativeStructure()Z

    .line 61
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method private native doCreateLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;
.end method

.method private native doCreateLlcpServiceSocket(ILjava/lang/String;III)Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;
.end method

.method private native doCreateLlcpSocket(IIII)Lcom/android/nfc/dhimpl/NativeLlcpSocket;
.end method

.method private native doDeinitialize()Z
.end method

.method private native doDisableDtaMode()V
.end method

.method private native doDisableScreenOffSuspend()V
.end method

.method private native doDownload()Z
.end method

.method private native doDump(Ljava/io/FileDescriptor;)V
.end method

.method private native doEnableDiscovery(IZZZZZ)V
.end method

.method private native doEnableDtaMode()V
.end method

.method private native doEnableScreenOffSuspend()V
.end method

.method private native doFactoryReset()V
.end method

.method private native doGetDefaultRoute()I
.end method

.method private native doGetSimDetection()Z
.end method

.method private native doGetTimeout(I)I
.end method

.method private native doInitialize()Z
.end method

.method private native doResetTimeouts()V
.end method

.method private native doSetDefaultRoute(IZ)Z
.end method

.method private native doSetNfcSecure(Z)Z
.end method

.method private native doSetNfceePowerAndLinkCtrl(Z)V
.end method

.method private native doSetP2pInitiatorModes(I)V
.end method

.method private native doSetP2pTargetModes(I)V
.end method

.method private native doSetPreferredSimSlot(I)V
.end method

.method private native doSetTimeout(II)Z
.end method

.method private native doShutdown(Z)V
.end method

.method private native doStartStopPolling(Z)V
.end method

.method private native getIsoDepMaxTransceiveLength()I
.end method

.method private notifyEeActionProtocolListeners(IILjava/lang/String;)V
    .locals 1
    .param p1, "handle"    # I
    .param p2, "protocol"    # I
    .param p3, "buffer"    # Ljava/lang/String;

    .line 509
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onEeActionProtocolEvent(IILjava/lang/String;)V

    .line 510
    return-void
.end method

.method private notifyEeUpdated()V
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onEeUpdated()V

    .line 546
    return-void
.end method

.method private notifyHostEmuActivated(I)V
    .locals 1
    .param p1, "technology"    # I

    .line 521
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationActivated(I)V

    .line 522
    return-void
.end method

.method private notifyHostEmuData(I[B)V
    .locals 1
    .param p1, "technology"    # I
    .param p2, "data"    # [B

    .line 525
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationData(I[B)V

    .line 526
    return-void
.end method

.method private notifyHostEmuDeactivated(I)V
    .locals 1
    .param p1, "technology"    # I

    .line 529
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationDeactivated(I)V

    .line 530
    return-void
.end method

.method private notifyHwErrorReported()V
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHwErrorReported()V

    .line 550
    return-void
.end method

.method private notifyLlcpLinkActivation(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .line 495
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 496
    return-void
.end method

.method private notifyLlcpLinkDeactivated(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .line 500
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 501
    return-void
.end method

.method private notifyLlcpLinkFirstPacketReceived(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .locals 1
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .line 505
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpFirstPacketReceived(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 506
    return-void
.end method

.method private notifyNdefMessageListeners(Lcom/android/nfc/dhimpl/NativeNfcTag;)V
    .locals 1
    .param p1, "tag"    # Lcom/android/nfc/dhimpl/NativeNfcTag;

    .line 490
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V

    .line 491
    return-void
.end method

.method private notifyRfFieldActivated()V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldActivated()V

    .line 534
    return-void
.end method

.method private notifyRfFieldDeactivated()V
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldDeactivated()V

    .line 538
    return-void
.end method

.method private notifySeListenActivated()V
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeListenActivated()V

    .line 514
    return-void
.end method

.method private notifySeListenDeactivated()V
    .locals 1

    .line 517
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeListenDeactivated()V

    .line 518
    return-void
.end method

.method private notifyTransactionListeners([B[BLjava/lang/String;)V
    .locals 1
    .param p1, "aid"    # [B
    .param p2, "data"    # [B
    .param p3, "evtSrc"    # Ljava/lang/String;

    .line 541
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onNfcTransactionEvent([B[BLjava/lang/String;)V

    .line 542
    return-void
.end method


# virtual methods
.method public canMakeReadOnly(I)Z
    .locals 2
    .param p1, "ndefType"    # I

    .line 314
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public checkFirmware()Z
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDownload()Z

    move-result v0

    return v0
.end method

.method public clearT3tIdentifiersCache()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 173
    monitor-exit v0

    .line 174
    return-void

    .line 173
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public native commitRouting()Z
.end method

.method public createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .locals 4
    .param p1, "nSap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .line 213
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;

    move-result-object v0

    .line 214
    .local v0, "socket":Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    if-eqz v0, :cond_0

    .line 215
    return-object v0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v1

    .line 220
    .local v1, "error":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create llcp socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NativeNfcManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    sparse-switch v1, :sswitch_data_0

    .line 227
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 225
    :sswitch_0
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v1}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        -0xc -> :sswitch_0
        -0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .locals 4
    .param p1, "nSap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .param p3, "miu"    # I
    .param p4, "rw"    # I
    .param p5, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .line 238
    invoke-direct/range {p0 .. p5}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpServiceSocket(ILjava/lang/String;III)Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;

    move-result-object v0

    .line 239
    .local v0, "socket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    if-eqz v0, :cond_0

    .line 240
    return-object v0

    .line 243
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v1

    .line 245
    .local v1, "error":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create llcp socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NativeNfcManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sparse-switch v1, :sswitch_data_0

    .line 252
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 250
    :sswitch_0
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v1}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        -0xc -> :sswitch_0
        -0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .locals 4
    .param p1, "sap"    # I
    .param p2, "miu"    # I
    .param p3, "rw"    # I
    .param p4, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .line 263
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpSocket(IIII)Lcom/android/nfc/dhimpl/NativeLlcpSocket;

    move-result-object v0

    .line 264
    .local v0, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-eqz v0, :cond_0

    .line 265
    return-object v0

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v1

    .line 270
    .local v1, "error":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to create llcp socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NativeNfcManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sparse-switch v1, :sswitch_data_0

    .line 277
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 275
    :sswitch_0
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v1}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    :sswitch_data_0
    .sparse-switch
        -0xc -> :sswitch_0
        -0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public deinitialize()Z
    .locals 1

    .line 119
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDeinitialize()Z

    move-result v0

    return v0
.end method

.method public deregisterT3tIdentifier([B)V
    .locals 6
    .param p1, "t3tIdentifier"    # [B

    .line 155
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 157
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 158
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 159
    .local v2, "handle":I
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 160
    .local v3, "value":[B
    invoke-static {v3, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 161
    invoke-virtual {p0, v2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDeregisterT3tIdentifier(I)V

    .line 162
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    goto :goto_1

    .line 165
    .end local v2    # "handle":I
    .end local v3    # "value":[B
    :cond_0
    goto :goto_0

    .line 166
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    :goto_1
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public native disableDiscovery()V
.end method

.method public disableDtaMode()V
    .locals 2

    .line 97
    const-string v0, "NativeNfcManager"

    const-string v1, "disableDtaMode : entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDisableDtaMode()V

    .line 99
    return-void
.end method

.method public disableScreenOffSuspend()Z
    .locals 1

    .line 392
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDisableScreenOffSuspend()V

    .line 393
    const/4 v0, 0x1

    return v0
.end method

.method public native doAbort(Ljava/lang/String;)V
.end method

.method public native doActivateLlcp()Z
.end method

.method public native doCheckLlcp()Z
.end method

.method public native doDeregisterT3tIdentifier(I)V
.end method

.method public native doGetLastError()I
.end method

.method public native doGetListenTechMask()I
.end method

.method public native doGetSecureElementList()[I
.end method

.method public native doRFoptionUpdate([B)Z
.end method

.method public native doRegisterT3tIdentifier([B)I
.end method

.method public native doSetFactoryTestMode(B)[B
.end method

.method public native doSetFirmwareDebugLevel(IZ)V
.end method

.method public native doSetForceFWDownload(Z)V
.end method

.method public native doSetListenTechMask(I)V
.end method

.method public native doSetRfEnabled(Z)V
.end method

.method public native doSetScreenState(I)V
.end method

.method public native doSetWaitNfcEeDiscovery(Z)V
.end method

.method public dump(Ljava/io/FileDescriptor;)V
    .locals 0
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 377
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDump(Ljava/io/FileDescriptor;)V

    .line 378
    return-void
.end method

.method public enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V
    .locals 7
    .param p1, "params"    # Lcom/android/nfc/NfcDiscoveryParameters;
    .param p2, "restart"    # Z

    .line 195
    nop

    .line 196
    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->getTechMask()I

    move-result v1

    .line 197
    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableLowPowerDiscovery()Z

    move-result v2

    .line 198
    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableReaderMode()Z

    move-result v3

    .line 199
    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableHostRouting()Z

    move-result v4

    .line 200
    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableP2p()Z

    move-result v5

    .line 195
    move-object v0, p0

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doEnableDiscovery(IZZZZZ)V

    .line 202
    return-void
.end method

.method public enableDtaMode()V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doEnableDtaMode()V

    .line 91
    return-void
.end method

.method public enableScreenOffSuspend()Z
    .locals 1

    .line 384
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doEnableScreenOffSuspend()V

    .line 385
    const/4 v0, 0x1

    return v0
.end method

.method public factoryReset()V
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doFactoryReset()V

    .line 106
    return-void
.end method

.method public native getAidTableSize()I
.end method

.method public getDefaultLlcpMiu()I
    .locals 1

    .line 365
    const/16 v0, 0x7bc

    return v0
.end method

.method public getDefaultLlcpRwSize()I
    .locals 1

    .line 370
    const/4 v0, 0x2

    return v0
.end method

.method public getDefaultRoute()I
    .locals 1

    .line 417
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetDefaultRoute()I

    move-result v0

    return v0
.end method

.method public getExtendedLengthApdusSupported()Z
    .locals 2

    .line 359
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->getMaxTransceiveLength(I)I

    move-result v0

    const/16 v1, 0x105

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 360
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public native getLfT3tMax()I
.end method

.method public native getMaxRoutingTableSize()I
.end method

.method public getMaxTransceiveLength(I)I
    .locals 1
    .param p1, "technology"    # I

    .line 319
    const/16 v0, 0xfd

    packed-switch p1, :pswitch_data_0

    .line 336
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 330
    :pswitch_1
    return v0

    .line 334
    :pswitch_2
    const/16 v0, 0xff

    return v0

    .line 332
    :pswitch_3
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsoDepMaxTransceiveLength:I

    return v0

    .line 328
    :pswitch_4
    return v0

    .line 323
    :pswitch_5
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 124
    const-string v0, "android-nci"

    return-object v0
.end method

.method public native getNciVersion()I
.end method

.method public native getNfaStorageDir()Ljava/lang/String;
.end method

.method public native getRoutingTable()[B
.end method

.method public getSimDetection()Z
    .locals 1

    .line 438
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetSimDetection()Z

    move-result v0

    return v0
.end method

.method public getTimeout(I)I
    .locals 1
    .param p1, "tech"    # I

    .line 309
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetTimeout(I)I

    move-result v0

    return v0
.end method

.method public initialize()Z
    .locals 2

    .line 81
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doInitialize()Z

    move-result v0

    .line 82
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->getIsoDepMaxTransceiveLength()I

    move-result v1

    iput v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsoDepMaxTransceiveLength:I

    .line 83
    return v0
.end method

.method public native initializeNativeStructure()Z
.end method

.method public registerT3tIdentifier([B)V
    .locals 4
    .param p1, "t3tIdentifier"    # [B

    .line 143
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doRegisterT3tIdentifier([B)I

    move-result v1

    .line 145
    .local v1, "handle":I
    const v2, 0xffff

    if-eq v1, v2, :cond_0

    .line 146
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .end local v1    # "handle":I
    :cond_0
    monitor-exit v0

    .line 149
    return-void

    .line 148
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetTimeouts()V
    .locals 0

    .line 292
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doResetTimeouts()V

    .line 293
    return-void
.end method

.method public native routeAid([BIII)Z
.end method

.method public native sendRawFrame([B)Z
.end method

.method public setDefaultRoute(IZ)Z
    .locals 1
    .param p1, "defaultRoute"    # I
    .param p2, "restart"    # Z

    .line 424
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetDefaultRoute(IZ)Z

    move-result v0

    return v0
.end method

.method public setNfcSecure(Z)Z
    .locals 1
    .param p1, "enable"    # Z

    .line 400
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetNfcSecure(Z)Z

    move-result v0

    return v0
.end method

.method public setNfceePowerAndLinkCtrl(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 479
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetNfceePowerAndLinkCtrl(Z)V

    .line 480
    return-void
.end method

.method public setP2pInitiatorModes(I)V
    .locals 0
    .param p1, "modes"    # I

    .line 346
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetP2pInitiatorModes(I)V

    .line 347
    return-void
.end method

.method public setP2pTargetModes(I)V
    .locals 0
    .param p1, "modes"    # I

    .line 353
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetP2pTargetModes(I)V

    .line 354
    return-void
.end method

.method public setPreferredSimSlot(I)V
    .locals 0
    .param p1, "preferredSim"    # I

    .line 431
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetPreferredSimSlot(I)V

    .line 432
    return-void
.end method

.method public setTimeout(II)Z
    .locals 1
    .param p1, "tech"    # I
    .param p2, "timeout"    # I

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetTimeout(II)Z

    move-result v0

    return v0
.end method

.method public shutdown(Z)V
    .locals 0
    .param p1, "disableCe"    # Z

    .line 112
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doShutdown(Z)V

    .line 113
    return-void
.end method

.method public native startRfDiscovery(Z)V
.end method

.method public startStopPolling(Z)V
    .locals 0
    .param p1, "start"    # Z

    .line 410
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doStartStopPolling(Z)V

    .line 411
    return-void
.end method

.method public native unrouteAid([B)Z
.end method

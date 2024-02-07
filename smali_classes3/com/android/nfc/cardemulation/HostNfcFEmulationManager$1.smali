.class Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;
.super Ljava/lang/Object;
.source "HostNfcFEmulationManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    .line 288
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 291
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v2, v1, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mService:Landroid/os/Messenger;

    .line 293
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    .line 294
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iput-object p1, v1, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    .line 295
    const-string v1, "HostNfcFEmulationManager"

    const-string v2, "Service bound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    const/4 v2, 0x2

    iput v2, v1, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    .line 298
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mPendingPacket:[B

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v2, v1, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mService:Landroid/os/Messenger;

    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v3, v3, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mPendingPacket:[B

    invoke-virtual {v1, v2, v3}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    .line 300
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mPendingPacket:[B

    .line 302
    :cond_0
    monitor-exit v0

    .line 303
    return-void

    .line 302
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 307
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 308
    :try_start_0
    const-string v1, "HostNfcFEmulationManager"

    const-string v2, "Service unbound"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mService:Landroid/os/Messenger;

    .line 310
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    .line 311
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iput-object v2, v1, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    .line 312
    monitor-exit v0

    .line 313
    return-void

    .line 312
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

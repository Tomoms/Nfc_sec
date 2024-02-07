.class Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
.super Ljava/lang/Thread;
.source "NativeNfcTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/dhimpl/NativeNfcTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PresenceCheckWatchdog"
.end annotation


# instance fields
.field private doCheck:Z

.field private isPaused:Z

.field private isPresent:Z

.field private isStopped:Z

.field private tagDisconnectedCallback:Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

.field private tagLongConnectedCallback:Lcom/android/nfc/DeviceHost$TagLongConnectedCallback;

.field final synthetic this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

.field private final watchdogTimeout:I


# direct methods
.method constructor <init>(Lcom/android/nfc/dhimpl/NativeNfcTag;ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;Lcom/android/nfc/DeviceHost$TagLongConnectedCallback;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/nfc/dhimpl/NativeNfcTag;
    .param p2, "presenceCheckDelay"    # I
    .param p3, "callback"    # Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    .param p4, "callbacklong"    # Lcom/android/nfc/DeviceHost$TagLongConnectedCallback;

    .line 96
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPresent:Z

    .line 89
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isStopped:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPaused:Z

    .line 91
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    .line 98
    iput p2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->watchdogTimeout:I

    .line 99
    iput-object p3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->tagDisconnectedCallback:Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

    .line 100
    iput-object p4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->tagLongConnectedCallback:Lcom/android/nfc/DeviceHost$TagLongConnectedCallback;

    .line 101
    return-void
.end method


# virtual methods
.method public declared-synchronized doResume()V
    .locals 1

    monitor-enter p0

    .line 110
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPaused:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit p0

    return-void

    .line 109
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized end(Z)V
    .locals 1
    .param p1, "disableCallback"    # Z

    monitor-enter p0

    .line 118
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isStopped:Z

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    .line 120
    if-eqz p1, :cond_0

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->tagDisconnectedCallback:Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

    .line 122
    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->tagLongConnectedCallback:Lcom/android/nfc/DeviceHost$TagLongConnectedCallback;

    .line 124
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    monitor-exit p0

    return-void

    .line 117
    .end local p1    # "disableCallback":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pause()V
    .locals 1

    monitor-enter p0

    .line 104
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPaused:Z

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    .line 106
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 103
    .end local p0    # "this":Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 4

    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    const-string v0, "NativeNfcTag"

    const-string v1, "Starting background presence check"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x1

    .line 132
    .local v0, "mNum":I
    :goto_0
    iget-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPresent:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isStopped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_3

    .line 134
    :try_start_1
    iget-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPaused:Z

    if-nez v1, :cond_0

    .line 135
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    .line 137
    :cond_0
    iget v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->watchdogTimeout:I

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    .line 139
    invoke-static {}, Lcom/android/nfc/dhimpl/NativeNfcTag;->-$$Nest$sfgetNFC_POLLING_TIMEOUT()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->tagLongConnectedCallback:Lcom/android/nfc/DeviceHost$TagLongConnectedCallback;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/nfc/dhimpl/NativeNfcTag;->-$$Nest$sfgetNFC_POLLING_TIMEOUT()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 140
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->tagLongConnectedCallback:Lcom/android/nfc/DeviceHost$TagLongConnectedCallback;

    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    invoke-static {v2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->-$$Nest$fgetmConnectedHandle(Lcom/android/nfc/dhimpl/NativeNfcTag;)I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/android/nfc/DeviceHost$TagLongConnectedCallback;->onTagLongConnected(J)V

    .line 141
    const/4 v0, 0x1

    .line 144
    :cond_1
    iget-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    if-eqz v1, :cond_2

    .line 145
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doPresenceCheck()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPresent:Z

    .line 147
    invoke-static {}, Lcom/android/nfc/dhimpl/NativeNfcTag;->-$$Nest$sfgetNFC_POLLING_TIMEOUT()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->tagLongConnectedCallback:Lcom/android/nfc/DeviceHost$TagLongConnectedCallback;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_2

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    :catch_0
    move-exception v1

    .line 161
    :cond_2
    :goto_1
    goto :goto_0

    .line 163
    .end local v0    # "mNum":I
    :cond_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 165
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    monitor-enter v0

    .line 166
    :try_start_3
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->-$$Nest$fputmIsPresent(Lcom/android/nfc/dhimpl/NativeNfcTag;Z)V

    .line 167
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    const-string v0, "NativeNfcTag"

    const-string v1, "Tag lost, restarting polling loop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doDisconnect()Z

    .line 172
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->tagDisconnectedCallback:Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

    if-eqz v0, :cond_4

    .line 173
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    invoke-static {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->-$$Nest$fgetmConnectedHandle(Lcom/android/nfc/dhimpl/NativeNfcTag;)I

    move-result v1

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;->onTagDisconnected(J)V

    .line 175
    :cond_4
    const-string v0, "NativeNfcTag"

    const-string v1, "Stopping background presence check"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void

    .line 167
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 163
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.class final Lcom/android/nfc/NfcService$NfcServiceHandler;
.super Landroid/os/Handler;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .line 3184
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V
    .locals 12
    .param p1, "tagEndpoint"    # Lcom/android/nfc/DeviceHost$TagEndpoint;
    .param p2, "readerParams"    # Lcom/android/nfc/NfcService$ReaderModeParams;

    .line 3778
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmCookieGenerator(Lcom/android/nfc/NfcService;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v1

    const/4 v3, 0x1

    ushr-long/2addr v1, v3

    iput-wide v1, v0, Lcom/android/nfc/NfcService;->mCookieUpToDate:J

    .line 3779
    new-instance v0, Landroid/nfc/Tag;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v5

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v6

    .line 3780
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v7

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v8

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-wide v9, v1, Lcom/android/nfc/NfcService;->mCookieUpToDate:J

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v11, v1, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;IJLandroid/nfc/INfcTag;)V

    .line 3782
    .local v0, "tag":Landroid/nfc/Tag;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 3783
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 3785
    :try_start_1
    iget v4, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit16 v4, v4, 0x100

    if-nez v4, :cond_0

    .line 3786
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmVibrator(Lcom/android/nfc/NfcService;)Landroid/os/Vibrator;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmVibrationEffect(Lcom/android/nfc/NfcService;)Landroid/os/VibrationEffect;

    move-result-object v5

    invoke-static {}, Lcom/android/nfc/NfcService;->-$$Nest$sfgetHARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES()Landroid/os/VibrationAttributes;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    .line 3788
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4, v3}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 3790
    :cond_0
    iget-object v4, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    if-eqz v4, :cond_2

    .line 3791
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mScreenState:I

    if-ne v4, v1, :cond_1

    .line 3792
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmPowerManager(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v2, v2}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 3795
    :cond_1
    iget-object v4, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    invoke-interface {v4, v0}, Landroid/nfc/IAppCallback;->onTagDiscovered(Landroid/nfc/Tag;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3796
    return-void

    .line 3807
    :cond_2
    goto :goto_0

    .line 3803
    :catch_0
    move-exception v1

    .line 3805
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "NfcService"

    const-string v3, "App exception, not dispatching."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3806
    return-void

    .line 3800
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 3801
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "NfcService"

    const-string v6, "Reader mode remote has died, falling back."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3807
    nop

    .line 3809
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmNfcDispatcher(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    move-result v4

    .line 3810
    .local v4, "dispatchResult":I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v6, v6, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-nez v6, :cond_b

    .line 3811
    sget-boolean v6, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v6, :cond_4

    const-string v6, "NfcService"

    const-string v7, "Tag dispatch failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3812
    :cond_4
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/nfc/NfcService;->unregisterObject(I)V

    .line 3813
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v6, v6, Lcom/android/nfc/NfcService;->mPollDelay:I

    const/4 v7, -0x1

    if-le v6, v7, :cond_8

    .line 3814
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->stopPresenceChecking()V

    .line 3815
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 3816
    :try_start_3
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v7, v7, Lcom/android/nfc/NfcService;->mPollingDelayed:Z

    if-nez v7, :cond_6

    .line 3817
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v3, v7, Lcom/android/nfc/NfcService;->mPollingDelayed:Z

    .line 3818
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v7}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmDeviceHost(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v7

    invoke-interface {v7, v2}, Lcom/android/nfc/DeviceHost;->startStopPolling(Z)V

    .line 3819
    sget-boolean v7, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v7, :cond_5

    const-string v7, "NfcService"

    const-string v8, "Polling delayed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3820
    :cond_5
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v7}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmHandler(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v8}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmHandler(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v8

    const/16 v9, 0x14

    .line 3821
    invoke-virtual {v8, v9}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    iget-object v9, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v9, v9, Lcom/android/nfc/NfcService;->mPollDelay:I

    int-to-long v9, v9

    .line 3820
    invoke-virtual {v7, v8, v9, v10}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 3823
    :cond_6
    sget-boolean v7, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v7, :cond_7

    const-string v7, "NfcService"

    const-string v8, "Keep waiting for polling delay"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3825
    :cond_7
    :goto_1
    monitor-exit v6

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/nfc/NfcService$NfcServiceHandler;
    .end local p1    # "tagEndpoint":Lcom/android/nfc/DeviceHost$TagEndpoint;
    .end local p2    # "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    :try_start_4
    throw v1

    .line 3827
    .restart local p0    # "this":Lcom/android/nfc/NfcService$NfcServiceHandler;
    .restart local p1    # "tagEndpoint":Lcom/android/nfc/DeviceHost$TagEndpoint;
    .restart local p2    # "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    :cond_8
    const-string v6, "NfcService"

    const-string v7, "Keep presence checking."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3829
    :goto_2
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v6, v6, Lcom/android/nfc/NfcService;->mScreenState:I

    if-ne v6, v1, :cond_a

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mNotifyDispatchFailed:Z

    if-eqz v1, :cond_a

    .line 3830
    invoke-static {}, Lcom/android/nfc/NfcService;->-$$Nest$sfgetsToast_debounce()Z

    move-result v1

    if-nez v1, :cond_9

    .line 3831
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v6, 0x7f1000b8

    invoke-static {v1, v6, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 3832
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3833
    invoke-static {v3}, Lcom/android/nfc/NfcService;->-$$Nest$sfputsToast_debounce(Z)V

    .line 3834
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmHandler(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v1

    const/16 v6, 0x13

    invoke-static {}, Lcom/android/nfc/NfcService;->-$$Nest$sfgetsToast_debounce_time_ms()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v1, v6, v7, v8}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3837
    :cond_9
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v5}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 3839
    :cond_a
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mAntennaBlockedMessageShown:Z

    if-nez v1, :cond_d

    invoke-static {}, Lcom/android/nfc/NfcService;->-$$Nest$sfgetmDispatchFailedCount()I

    move-result v1

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-$$Nest$sfputmDispatchFailedCount(I)V

    invoke-static {}, Lcom/android/nfc/NfcService;->-$$Nest$sfgetmDispatchFailedMax()I

    move-result v5

    if-le v1, v5, :cond_d

    .line 3840
    new-instance v1, Lcom/android/nfc/NfcBlockedNotification;

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Lcom/android/nfc/NfcBlockedNotification;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/nfc/NfcBlockedNotification;->startNotification()V

    .line 3841
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 3842
    :try_start_5
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmPrefsEditor(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "antenna_blocked_message_shown"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3843
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmPrefsEditor(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3844
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3845
    :try_start_6
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmBackupManager(Lcom/android/nfc/NfcService;)Landroid/app/backup/BackupManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 3846
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v3, v1, Lcom/android/nfc/NfcService;->mAntennaBlockedMessageShown:Z

    .line 3847
    invoke-static {v2}, Lcom/android/nfc/NfcService;->-$$Nest$sfputmDispatchFailedCount(I)V

    .line 3848
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_d

    const-string v1, "NfcService"

    const-string v2, "Tag dispatch failed notification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 3844
    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .end local p0    # "this":Lcom/android/nfc/NfcService$NfcServiceHandler;
    .end local p1    # "tagEndpoint":Lcom/android/nfc/DeviceHost$TagEndpoint;
    .end local p2    # "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    :try_start_8
    throw v2

    .line 3850
    .restart local p0    # "this":Lcom/android/nfc/NfcService$NfcServiceHandler;
    .restart local p1    # "tagEndpoint":Lcom/android/nfc/DeviceHost$TagEndpoint;
    .restart local p2    # "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    :cond_b
    if-ne v4, v3, :cond_d

    .line 3851
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v5, v5, Lcom/android/nfc/NfcService;->mScreenState:I

    if-ne v5, v1, :cond_c

    .line 3852
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmPowerManager(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6, v2, v2}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 3855
    :cond_c
    invoke-static {v2}, Lcom/android/nfc/NfcService;->-$$Nest$sfputmDispatchFailedCount(I)V

    .line 3856
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmVibrator(Lcom/android/nfc/NfcService;)Landroid/os/Vibrator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmVibrationEffect(Lcom/android/nfc/NfcService;)Landroid/os/VibrationEffect;

    move-result-object v2

    invoke-static {}, Lcom/android/nfc/NfcService;->-$$Nest$sfgetHARDWARE_FEEDBACK_VIBRATION_ATTRIBUTES()Landroid/os/VibrationAttributes;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;)V

    .line 3857
    invoke-static {}, Lcom/android/nfc/NfcMetrics;->logTagRead()V

    .line 3858
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService;->playSound(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 3863
    .end local v0    # "tag":Landroid/nfc/Tag;
    .end local v4    # "dispatchResult":I
    :cond_d
    :goto_3
    nop

    .line 3864
    return-void

    .line 3860
    :catch_2
    move-exception v0

    .line 3861
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NfcService"

    const-string v2, "Tag creation exception, not dispatching."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3862
    return-void
.end method

.method private getNfcPreferredPaymentChangedSEAccessAllowedPackages(I)Ljava/util/ArrayList;
    .locals 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3622
    const-string v0, "NfcService"

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-$$Nest$misSEServiceAvailable(Lcom/android/nfc/NfcService;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mNfcPreferredPaymentChangedInstalledPackages:Ljava/util/HashMap;

    .line 3623
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 3626
    :cond_0
    const/4 v1, 0x0

    .line 3628
    .local v1, "readers":[Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmSEService(Lcom/android/nfc/NfcService;)Landroid/se/omapi/ISecureElementService;

    move-result-object v3

    invoke-interface {v3}, Landroid/se/omapi/ISecureElementService;->getReaders()[Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v3

    .line 3632
    nop

    .line 3634
    if-eqz v1, :cond_a

    array-length v3, v1

    if-nez v3, :cond_1

    goto/16 :goto_4

    .line 3637
    :cond_1
    const/4 v3, 0x0

    .line 3638
    .local v3, "nfcAccessFinal":[Z
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mNfcPreferredPaymentChangedInstalledPackages:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 3639
    .local v4, "packagesOfUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    .line 3641
    .local v5, "installedPackages":[Ljava/lang/String;
    array-length v6, v1

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_6

    aget-object v8, v1, v7

    .line 3643
    .local v8, "reader":Ljava/lang/String;
    :try_start_1
    iget-object v9, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmSEService(Lcom/android/nfc/NfcService;)Landroid/se/omapi/ISecureElementService;

    move-result-object v9

    .line 3644
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 3643
    invoke-interface {v9, v8, v2, v10, p1}, Landroid/se/omapi/ISecureElementService;->isNfcEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;I)[Z

    move-result-object v9

    .line 3646
    .local v9, "accessList":[Z
    if-nez v9, :cond_2

    .line 3647
    goto :goto_2

    .line 3649
    :cond_2
    if-nez v3, :cond_3

    .line 3650
    move-object v3, v9

    .line 3652
    :cond_3
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    array-length v11, v9

    if-ge v10, v11, :cond_5

    .line 3653
    aget-boolean v11, v9, v10

    if-eqz v11, :cond_4

    .line 3654
    const/4 v11, 0x1

    aput-boolean v11, v3, v10
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3652
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3659
    .end local v9    # "accessList":[Z
    .end local v10    # "i":I
    :cond_5
    goto :goto_2

    .line 3657
    :catch_0
    move-exception v9

    .line 3658
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error in isNfcEventAllowed() "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3641
    .end local v8    # "reader":Ljava/lang/String;
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3661
    :cond_6
    if-nez v3, :cond_7

    .line 3662
    return-object v2

    .line 3664
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3665
    .local v0, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    array-length v6, v3

    if-ge v2, v6, :cond_9

    .line 3666
    aget-boolean v6, v3, v2

    if-eqz v6, :cond_8

    .line 3667
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3665
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3670
    .end local v2    # "i":I
    :cond_9
    return-object v0

    .line 3635
    .end local v0    # "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "nfcAccessFinal":[Z
    .end local v4    # "packagesOfUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "installedPackages":[Ljava/lang/String;
    :cond_a
    :goto_4
    return-object v2

    .line 3629
    :catch_1
    move-exception v3

    .line 3630
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in getReaders() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3631
    return-object v2

    .line 3624
    .end local v1    # "readers":[Ljava/lang/String;
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_b
    :goto_5
    return-object v2
.end method

.method private llcpActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)Z
    .locals 4
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 3721
    const-string v0, "NfcService"

    const-string v1, "LLCP Activation message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3723
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 3724
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NfcService"

    const-string v2, "NativeP2pDevice.MODE_P2P_TARGET"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3725
    :cond_0
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->connect()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3727
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmDeviceHost(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doCheckLlcp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3729
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmDeviceHost(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doActivateLlcp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3730
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "NfcService"

    const-string v2, "Initiator Activate LLCP OK"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3731
    :cond_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 3733
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3734
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3735
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getLlcpVersion()B

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/P2pLinkManager;->onLlcpActivated(B)V

    .line 3736
    return v1

    .line 3734
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3739
    :cond_2
    const-string v0, "NfcService"

    const-string v1, "Initiator LLCP activation failed. Disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3740
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto/16 :goto_0

    .line 3743
    :cond_3
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "NfcService"

    const-string v1, "Remote Target does not support LLCP. Disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3744
    :cond_4
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto :goto_0

    .line 3747
    :cond_5
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "NfcService"

    const-string v1, "Cannot connect remote Target. Polling loop restarted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3753
    :cond_6
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_a

    .line 3754
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "NfcService"

    const-string v2, "NativeP2pDevice.MODE_P2P_INITIATOR"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3756
    :cond_7
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmDeviceHost(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doCheckLlcp()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3758
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmDeviceHost(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doActivateLlcp()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3759
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "NfcService"

    const-string v2, "Target Activate LLCP OK"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3760
    :cond_8
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 3762
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3763
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3764
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getLlcpVersion()B

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/P2pLinkManager;->onLlcpActivated(B)V

    .line 3765
    return v1

    .line 3763
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 3768
    :cond_9
    const-string v0, "NfcService"

    const-string v1, "checkLlcp failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3772
    :cond_a
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private sendNfcPermissionProtectedBroadcast(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3607
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3608
    return-void

    .line 3610
    :cond_0
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3611
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3612
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3613
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3614
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3615
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_1

    .line 3616
    .end local v1    # "userId":I
    :cond_1
    goto :goto_0

    .line 3617
    :cond_2
    return-void
.end method

.method private sendOffHostTransactionEvent([B[B[B)V
    .locals 19
    .param p1, "aid"    # [B
    .param p2, "data"    # [B
    .param p3, "readerByteArray"    # [B

    .line 3561
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "NfcService"

    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-$$Nest$misSEServiceAvailable(Lcom/android/nfc/NfcService;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object/from16 v12, p2

    move-object/from16 v5, p3

    goto/16 :goto_8

    .line 3566
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v4, "UTF-8"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v5, p3

    :try_start_1
    invoke-direct {v0, v5, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 3567
    .local v0, "reader":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 3568
    .local v6, "userId":I
    iget-object v7, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, v7, Lcom/android/nfc/NfcService;->mNfcEventInstalledPackages:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 3569
    .local v7, "packagesOfUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    .line 3570
    .local v8, "installedPackages":[Ljava/lang/String;
    iget-object v9, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmSEService(Lcom/android/nfc/NfcService;)Landroid/se/omapi/ISecureElementService;

    move-result-object v9

    .line 3571
    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 3570
    invoke-interface {v9, v0, v2, v10, v6}, Landroid/se/omapi/ISecureElementService;->isNfcEventAllowed(Ljava/lang/String;[B[Ljava/lang/String;I)[Z

    move-result-object v9

    .line 3572
    .local v9, "nfcAccess":[Z
    if-nez v9, :cond_1

    .line 3573
    goto :goto_0

    .line 3575
    :cond_1
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.nfc.action.TRANSACTION_DETECTED"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3576
    .local v10, "intent":Landroid/content/Intent;
    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3577
    const/high16 v11, 0x10000000

    invoke-virtual {v10, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3578
    const-string v11, "android.nfc.extra.AID"

    invoke-virtual {v10, v11, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3579
    const-string v11, "android.nfc.extra.DATA"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v12, p2

    :try_start_2
    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 3580
    const-string v11, "android.nfc.extra.SECURE_ELEMENT_NAME"

    invoke-virtual {v10, v11, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3581
    new-instance v11, Ljava/lang/StringBuilder;

    array-length v13, v2

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3582
    .local v11, "aidString":Ljava/lang/StringBuilder;
    array-length v13, v2

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_2

    aget-byte v17, v2, v15

    .line 3583
    .local v17, "b":B
    const-string v14, "%02X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static/range {v17 .. v17}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v18

    const/16 v16, 0x0

    aput-object v18, v2, v16

    invoke-static {v14, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3582
    nop

    .end local v17    # "b":B
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    goto :goto_1

    .line 3585
    :cond_2
    new-instance v2, Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "nfc://secure:0/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 3586
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v2, v13}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3587
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-virtual {v10, v13}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 3589
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v13

    .line 3590
    .local v13, "options":Landroid/app/BroadcastOptions;
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 3591
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    array-length v15, v9

    if-ge v14, v15, :cond_4

    .line 3592
    aget-boolean v15, v9, v14

    if-eqz v15, :cond_3

    .line 3593
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v10, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3594
    iget-object v15, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v15, v15, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    .end local v0    # "reader":Ljava/lang/String;
    .local v16, "reader":Ljava/lang/String;
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 3595
    invoke-virtual {v13}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 3594
    move-object/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "url":Ljava/lang/String;
    .local v18, "url":Ljava/lang/String;
    invoke-virtual {v15, v10, v0, v2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 3592
    .end local v16    # "reader":Ljava/lang/String;
    .end local v18    # "url":Ljava/lang/String;
    .restart local v0    # "reader":Ljava/lang/String;
    .restart local v2    # "url":Ljava/lang/String;
    :cond_3
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    .line 3591
    .end local v0    # "reader":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    .restart local v16    # "reader":Ljava/lang/String;
    .restart local v18    # "url":Ljava/lang/String;
    :goto_3
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    move-object/from16 v2, v18

    goto :goto_2

    .end local v16    # "reader":Ljava/lang/String;
    .end local v18    # "url":Ljava/lang/String;
    .restart local v0    # "reader":Ljava/lang/String;
    .restart local v2    # "url":Ljava/lang/String;
    :cond_4
    move-object/from16 v16, v0

    move-object/from16 v18, v2

    .line 3598
    .end local v0    # "reader":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v7    # "packagesOfUser":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "installedPackages":[Ljava/lang/String;
    .end local v9    # "nfcAccess":[Z
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "aidString":Ljava/lang/StringBuilder;
    .end local v13    # "options":Landroid/app/BroadcastOptions;
    .end local v14    # "i":I
    .restart local v16    # "reader":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    goto/16 :goto_0

    .line 3601
    .end local v16    # "reader":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 3599
    :catch_1
    move-exception v0

    goto :goto_5

    .line 3567
    .restart local v0    # "reader":Ljava/lang/String;
    :cond_5
    move-object/from16 v12, p2

    move-object/from16 v16, v0

    .end local v0    # "reader":Ljava/lang/String;
    goto :goto_6

    .line 3601
    :catch_2
    move-exception v0

    move-object/from16 v12, p2

    goto :goto_4

    .line 3599
    :catch_3
    move-exception v0

    move-object/from16 v12, p2

    goto :goto_5

    .line 3601
    :catch_4
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v5, p3

    .line 3602
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect format for Secure Element name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 3599
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_5
    move-exception v0

    move-object/from16 v12, p2

    move-object/from16 v5, p3

    .line 3600
    .local v0, "e":Landroid/os/RemoteException;
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in isNfcEventAllowed() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_6
    nop

    .line 3604
    :goto_7
    return-void

    .line 3561
    :cond_6
    move-object/from16 v12, p2

    move-object/from16 v5, p3

    .line 3562
    :goto_8
    return-void
.end method

.method private sendPreferredPaymentChangedEvent(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .line 3674
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3676
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmNfcDispatcher(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    .line 3677
    monitor-enter p0

    .line 3678
    :try_start_0
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcPreferredPaymentChangedInstalledPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3679
    .local v1, "userId":I
    nop

    .line 3680
    invoke-direct {p0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->getNfcPreferredPaymentChangedSEAccessAllowedPackages(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 3681
    .local v2, "SEPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 3682
    .local v3, "userHandle":Landroid/os/UserHandle;
    const/high16 v4, 0x10000000

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3683
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3684
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3685
    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3686
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, v7, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v7, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3687
    .end local v6    # "packageName":Ljava/lang/String;
    goto :goto_1

    .line 3691
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v5

    .line 3692
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3696
    .local v5, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 3698
    :try_start_2
    iget-object v7, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, v7, Lcom/android/nfc/NfcService;->mNfcPreferredPaymentChangedInstalledPackages:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3700
    .local v8, "packageName":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v5, v8, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    .line 3701
    .local v9, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3702
    goto :goto_2

    .line 3704
    :cond_1
    iget-object v10, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v10, :cond_3

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_3

    .line 3708
    :cond_2
    invoke-virtual {p1, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3709
    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3710
    iget-object v10, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v10, v10, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v10, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3714
    .end local v9    # "info":Landroid/content/pm/PackageInfo;
    :cond_3
    goto :goto_3

    .line 3712
    :catch_0
    move-exception v9

    .line 3713
    .local v9, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v10, "NfcService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in getPackageInfo "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3715
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    :goto_3
    goto :goto_2

    .line 3716
    .end local v1    # "userId":I
    .end local v2    # "SEPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    goto/16 :goto_0

    .line 3693
    .restart local v1    # "userId":I
    .restart local v2    # "SEPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "userHandle":Landroid/os/UserHandle;
    :catch_1
    move-exception v4

    .line 3694
    .local v4, "e":Ljava/lang/IllegalStateException;
    const-string v5, "NfcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fail to get PackageManager for user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3695
    goto/16 :goto_0

    .line 3717
    .end local v1    # "userId":I
    .end local v2    # "SEPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    :cond_5
    monitor-exit p0

    .line 3718
    return-void

    .line 3717
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .param p1, "msg"    # Landroid/os/Message;

    .line 3188
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    if-eq v0, v3, :cond_0

    .line 3189
    const-string v0, "NfcService"

    const-string v3, "handleMessage() called while NFC is not enabled."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    return-void

    .line 3193
    :cond_0
    iget v0, v2, Landroid/os/Message;->what:I

    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3555
    const-string v0, "NfcService"

    const-string v3, "Unknown message received"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3545
    :pswitch_0
    iget-object v3, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v3

    .line 3546
    :try_start_0
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mPollingDelayed:Z

    if-nez v0, :cond_1

    .line 3547
    monitor-exit v3

    return-void

    .line 3549
    :cond_1
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v9, v0, Lcom/android/nfc/NfcService;->mPollingDelayed:Z

    .line 3550
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmDeviceHost(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, v8}, Lcom/android/nfc/DeviceHost;->startStopPolling(Z)V

    .line 3551
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3552
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_20

    const-string v0, "NfcService"

    const-string v3, "Polling is started"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 3551
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 3541
    :pswitch_1
    invoke-static {v9}, Lcom/android/nfc/NfcService;->-$$Nest$sfputsToast_debounce(Z)V

    .line 3542
    goto/16 :goto_7

    .line 3533
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.nfc.action.PREFERRED_PAYMENT_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3535
    .local v0, "preferredPaymentChangedIntent":Landroid/content/Intent;
    const-string v3, "android.nfc.extra.PREFERRED_PAYMENT_CHANGED_REASON"

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 3536
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3535
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3537
    invoke-direct {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendPreferredPaymentChangedEvent(Landroid/content/Intent;)V

    .line 3538
    goto/16 :goto_7

    .line 3525
    .end local v0    # "preferredPaymentChangedIntent":Landroid/content/Intent;
    :pswitch_3
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmCardEmulationManager(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3526
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmCardEmulationManager(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onOffHostAidSelected()V

    .line 3528
    :cond_2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [[B

    .line 3529
    .local v0, "data":[[B
    aget-object v4, v0, v9

    aget-object v5, v0, v8

    aget-object v3, v0, v3

    invoke-direct {v1, v4, v5, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendOffHostTransactionEvent([B[B[B)V

    .line 3530
    goto/16 :goto_7

    .line 3499
    .end local v0    # "data":[[B
    :pswitch_4
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 3500
    const-string v0, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_APPLY_SCREEN_STATE "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v6, v6, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3502
    iget-object v3, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v3

    .line 3504
    :try_start_2
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v9, v0, Lcom/android/nfc/NfcService;->mPollingDelayed:Z

    .line 3505
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmHandler(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v0

    const/16 v6, 0x14

    invoke-virtual {v0, v6}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 3507
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    if-ne v0, v5, :cond_3

    .line 3508
    monitor-exit v3

    return-void

    .line 3509
    :cond_3
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3511
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-ne v0, v4, :cond_4

    .line 3512
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v9}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 3513
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v9, v0, Lcom/android/nfc/NfcService;->mIsRequestUnlockShowed:Z

    .line 3515
    :cond_4
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmNfcUnlockManager(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3516
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    or-int/lit8 v0, v0, 0x10

    goto :goto_0

    :cond_5
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 3518
    .local v0, "screen_state_mask":I
    :goto_0
    iget-object v3, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmNfcUnlockManager(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3519
    iget-object v3, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, v9}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 3521
    :cond_6
    iget-object v3, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmDeviceHost(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/nfc/DeviceHost;->doSetScreenState(I)V

    .line 3522
    goto/16 :goto_7

    .line 3509
    .end local v0    # "screen_state_mask":I
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 3482
    :pswitch_5
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_7

    .line 3483
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v3, "nfc_tag"

    iget-object v4, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3484
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3486
    :cond_7
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_8

    .line 3487
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v3, "nfc_ce"

    iget-object v4, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3488
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNumHceDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3490
    :cond_8
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_9

    .line 3491
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string v3, "nfc_p2p"

    iget-object v4, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v0, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3492
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNumP2pDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3494
    :cond_9
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 3495
    const-wide/32 v3, 0xdbba00

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3496
    goto/16 :goto_7

    .line 3467
    :pswitch_6
    iget-object v3, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v3

    .line 3468
    :try_start_4
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-object v7, v0, Lcom/android/nfc/NfcService;->mDebounceTagUid:[B

    .line 3469
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;

    move-object v4, v0

    .line 3470
    .local v4, "tagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-object v7, v0, Lcom/android/nfc/NfcService;->mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;

    .line 3471
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput v6, v0, Lcom/android/nfc/NfcService;->mDebounceTagNativeHandle:I

    .line 3472
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3473
    if-eqz v4, :cond_20

    .line 3475
    :try_start_5
    invoke-interface {v4}, Landroid/nfc/ITagRemovedCallback;->onTagRemoved()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 3478
    :goto_1
    goto/16 :goto_7

    .line 3476
    :catch_0
    move-exception v0

    goto :goto_1

    .line 3472
    .end local v4    # "tagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    .line 3227
    :pswitch_7
    const-string v0, "NfcService"

    const-string v3, "message to deregister LF_T3T_IDENTIFIER"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmDeviceHost(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 3230
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 3231
    .local v0, "t3tIdentifier":[B
    iget-object v3, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmDeviceHost(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/nfc/DeviceHost;->deregisterT3tIdentifier([B)V

    .line 3233
    iget-object v3, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v3, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-static {v3, v4}, Lcom/android/nfc/NfcService;->-$$Nest$mcomputeDiscoveryParameters(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v3

    .line 3234
    .local v3, "params":Lcom/android/nfc/NfcDiscoveryParameters;
    iget-object v4, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v4}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v4

    .line 3235
    .local v4, "shouldRestart":Z
    iget-object v5, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmDeviceHost(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 3236
    goto/16 :goto_7

    .line 3215
    .end local v0    # "t3tIdentifier":[B
    .end local v3    # "params":Lcom/android/nfc/NfcDiscoveryParameters;
    .end local v4    # "shouldRestart":Z
    :pswitch_8
    const-string v0, "NfcService"

    const-string v3, "message to register LF_T3T_IDENTIFIER"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmDeviceHost(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 3218
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    .line 3219
    .restart local v0    # "t3tIdentifier":[B
    iget-object v3, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmDeviceHost(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/nfc/DeviceHost;->registerT3tIdentifier([B)V

    .line 3221
    iget-object v3, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v4, v3, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-static {v3, v4}, Lcom/android/nfc/NfcService;->-$$Nest$mcomputeDiscoveryParameters(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v3

    .line 3222
    .restart local v3    # "params":Lcom/android/nfc/NfcDiscoveryParameters;
    iget-object v4, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v4}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v4

    .line 3223
    .restart local v4    # "shouldRestart":Z
    iget-object v5, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmDeviceHost(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 3224
    goto/16 :goto_7

    .line 3462
    .end local v0    # "t3tIdentifier":[B
    .end local v3    # "params":Lcom/android/nfc/NfcDiscoveryParameters;
    .end local v4    # "shouldRestart":Z
    :pswitch_9
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService$NfcAdapterService;->resumePolling()V

    .line 3463
    goto/16 :goto_7

    .line 3458
    :pswitch_a
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3459
    .local v0, "fieldOffIntent":Landroid/content/Intent;
    invoke-direct {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcPermissionProtectedBroadcast(Landroid/content/Intent;)V

    .line 3460
    goto/16 :goto_7

    .line 3451
    .end local v0    # "fieldOffIntent":Landroid/content/Intent;
    :pswitch_b
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3452
    .local v0, "fieldOnIntent":Landroid/content/Intent;
    invoke-direct {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendNfcPermissionProtectedBroadcast(Landroid/content/Intent;)V

    .line 3453
    iget-object v3, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v3, v3, Lcom/android/nfc/NfcService;->mIsSecureNfcEnabled:Z

    if-eqz v3, :cond_20

    .line 3454
    iget-object v3, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->sendRequireUnlockIntent()V

    goto/16 :goto_7

    .line 3239
    .end local v0    # "fieldOnIntent":Landroid/content/Intent;
    :pswitch_c
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/nfc/BeamShareData;

    invoke-virtual {v0, v3}, Lcom/android/nfc/P2pLinkManager;->onManualBeamInvoke(Landroid/nfc/BeamShareData;)V

    .line 3240
    goto/16 :goto_7

    .line 3243
    :pswitch_d
    iget-object v3, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v3

    .line 3244
    :try_start_7
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    if-eq v0, v8, :cond_c

    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    if-ne v0, v5, :cond_a

    goto :goto_3

    .line 3249
    :cond_a
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v0}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3250
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmDeviceHost(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->commitRouting()Z

    goto :goto_2

    .line 3252
    :cond_b
    const-string v0, "NfcService"

    const-string v4, "Not committing routing because discovery is disabled."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3254
    :goto_2
    monitor-exit v3

    .line 3255
    goto/16 :goto_7

    .line 3246
    :cond_c
    :goto_3
    const-string v0, "NfcService"

    const-string v4, "Skip commit routing when NFCC is off or turning off"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    monitor-exit v3

    return-void

    .line 3254
    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    .line 3210
    :pswitch_e
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 3211
    .local v0, "aid":Ljava/lang/String;
    iget-object v3, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmDeviceHost(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v3

    invoke-static {v0}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/nfc/DeviceHost;->unrouteAid([B)Z

    .line 3212
    goto/16 :goto_7

    .line 3195
    .end local v0    # "aid":Ljava/lang/String;
    :pswitch_f
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 3196
    .local v0, "route":I
    iget v3, v2, Landroid/os/Message;->arg2:I

    .line 3197
    .local v3, "aidInfo":I
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 3199
    .local v4, "aid":Ljava/lang/String;
    const/4 v5, 0x0

    .line 3200
    .local v5, "power":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    .line 3201
    .local v6, "bundle":Landroid/os/Bundle;
    if-eqz v6, :cond_d

    .line 3202
    const-string v7, "power"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 3205
    :cond_d
    iget-object v7, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v7}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmDeviceHost(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v7

    invoke-static {v4}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-interface {v7, v8, v0, v3, v5}, Lcom/android/nfc/DeviceHost;->routeAid([BIII)Z

    .line 3207
    goto/16 :goto_7

    .line 3448
    .end local v0    # "route":I
    .end local v3    # "aidInfo":I
    .end local v4    # "aid":Ljava/lang/String;
    .end local v5    # "power":I
    .end local v6    # "bundle":Landroid/os/Bundle;
    :pswitch_10
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->onLlcpFirstPacketReceived()V

    .line 3449
    goto/16 :goto_7

    .line 3258
    :pswitch_11
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/nfc/NdefMessage;

    .line 3259
    .local v0, "ndefMsg":Landroid/nfc/NdefMessage;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3260
    .local v4, "extras":Landroid/os/Bundle;
    const-string v5, "ndefmsg"

    invoke-virtual {v4, v5, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3261
    const-string v5, "ndefmaxlength"

    invoke-virtual {v4, v5, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3262
    const-string v5, "ndefcardstate"

    invoke-virtual {v4, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3263
    const-string v5, "ndeftype"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3265
    iget-object v5, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmCookieGenerator(Lcom/android/nfc/NfcService;)Ljava/security/SecureRandom;

    move-result-object v6

    invoke-virtual {v6}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v6

    ushr-long/2addr v6, v8

    iput-wide v6, v5, Lcom/android/nfc/NfcService;->mCookieUpToDate:J

    .line 3266
    new-array v5, v8, [B

    aput-byte v9, v5, v9

    new-array v6, v8, [I

    const/4 v7, 0x6

    aput v7, v6, v9

    new-array v7, v8, [Landroid/os/Bundle;

    aput-object v4, v7, v9

    iget-object v9, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-wide v9, v9, Lcom/android/nfc/NfcService;->mCookieUpToDate:J

    invoke-static {v5, v6, v7, v9, v10}, Landroid/nfc/Tag;->createMockTag([B[I[Landroid/os/Bundle;J)Landroid/nfc/Tag;

    move-result-object v5

    .line 3269
    .local v5, "tag":Landroid/nfc/Tag;
    const-string v6, "NfcService"

    const-string v7, "mock NDEF tag, starting corresponding activity"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    const-string v6, "NfcService"

    invoke-virtual {v5}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3271
    iget-object v6, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmNfcDispatcher(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    move-result v6

    .line 3272
    .local v6, "dispatchStatus":I
    if-ne v6, v8, :cond_e

    .line 3273
    iget-object v3, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, v8}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_7

    .line 3274
    :cond_e
    if-ne v6, v3, :cond_20

    .line 3275
    iget-object v7, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v7, v3}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_7

    .line 3421
    .end local v0    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v4    # "extras":Landroid/os/Bundle;
    .end local v5    # "tag":Landroid/nfc/Tag;
    .end local v6    # "dispatchStatus":I
    :pswitch_12
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    if-eqz v0, :cond_f

    .line 3422
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.nfc.action.LLCP_DOWN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3423
    .local v0, "deactIntent":Landroid/content/Intent;
    iget-object v3, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3425
    .end local v0    # "deactIntent":Landroid/content/Intent;
    :cond_f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 3426
    .local v3, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    const/4 v4, 0x0

    .line 3428
    .local v4, "needsDisconnect":Z
    const-string v0, "NfcService"

    const-string v5, "LLCP Link Deactivated message. Restart polling loop."

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3429
    iget-object v5, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v5

    .line 3431
    :try_start_8
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 3433
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v0

    if-nez v0, :cond_11

    .line 3434
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_10

    const-string v0, "NfcService"

    const-string v6, "disconnecting from target"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    :cond_10
    const/4 v4, 0x1

    goto :goto_4

    .line 3437
    :cond_11
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_12

    const-string v0, "NfcService"

    const-string v6, "not disconnecting from initiator"

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3440
    :cond_12
    :goto_4
    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 3441
    if-eqz v4, :cond_13

    .line 3442
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    .line 3445
    :cond_13
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    .line 3446
    goto/16 :goto_7

    .line 3440
    :catchall_4
    move-exception v0

    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v0

    .line 3411
    .end local v3    # "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    .end local v4    # "needsDisconnect":Z
    :pswitch_13
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmPowerManager(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4, v9, v9}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 3413
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    if-eqz v0, :cond_14

    .line 3414
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.nfc.action.LLCP_UP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3415
    .local v0, "actIntent":Landroid/content/Intent;
    iget-object v3, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3417
    .end local v0    # "actIntent":Landroid/content/Intent;
    :cond_14
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    invoke-direct {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->llcpActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)Z

    .line 3418
    goto/16 :goto_7

    .line 3281
    :pswitch_14
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_15

    const-string v0, "NfcService"

    const-string v3, "Tag detected, notifying applications"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3282
    :cond_15
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNumTagsDetected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 3283
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3287
    .local v3, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v5, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v5

    .line 3288
    :try_start_a
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mDebounceTagUid:[B

    move-object v10, v0

    .line 3289
    .local v10, "debounceTagUid":[B
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mDebounceTagDebounceMs:I

    move v11, v0

    .line 3290
    .local v11, "debounceTagMs":I
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;

    move-object v12, v0

    .line 3291
    .local v12, "debounceTagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 3292
    const/4 v5, 0x0

    .line 3293
    .local v5, "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    const/16 v13, 0x7d

    .line 3294
    .local v13, "presenceCheckDelay":I
    new-instance v0, Lcom/android/nfc/NfcService$NfcServiceHandler$1;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler$1;-><init>(Lcom/android/nfc/NfcService$NfcServiceHandler;)V

    move-object v14, v0

    .line 3303
    .local v14, "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    new-instance v0, Lcom/android/nfc/NfcService$NfcServiceHandler$2;

    invoke-direct {v0, v1, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler$2;-><init>(Lcom/android/nfc/NfcService$NfcServiceHandler;Lcom/android/nfc/DeviceHost$TagEndpoint;)V

    move-object v15, v0

    .line 3317
    .local v15, "callbacklong":Lcom/android/nfc/DeviceHost$TagLongConnectedCallback;
    iget-object v6, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v6

    .line 3318
    :try_start_b
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    move-object v5, v0

    .line 3319
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 3320
    if-eqz v5, :cond_19

    .line 3321
    iget v13, v5, Lcom/android/nfc/NfcService$ReaderModeParams;->presenceCheckDelay:I

    .line 3322
    iget v0, v5, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_17

    .line 3323
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_16

    const-string v0, "NfcService"

    const-string v4, "Skipping NDEF detection in reader mode"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3324
    :cond_16
    invoke-interface {v3, v13, v14, v15}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;Lcom/android/nfc/DeviceHost$TagLongConnectedCallback;)V

    .line 3328
    invoke-direct {v1, v3, v5}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    .line 3329
    goto/16 :goto_7

    .line 3332
    :cond_17
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    if-eqz v0, :cond_19

    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mSkipNdefRead:Z

    if-eqz v0, :cond_19

    .line 3333
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_18

    const-string v0, "NfcService"

    const-string v4, "Only NDEF detection in reader mode"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3334
    :cond_18
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$TagEndpoint;->findNdef()V

    .line 3335
    invoke-interface {v3, v13, v14, v15}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;Lcom/android/nfc/DeviceHost$TagLongConnectedCallback;)V

    .line 3339
    invoke-direct {v1, v3, v5}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    .line 3340
    goto/16 :goto_7

    .line 3344
    :cond_19
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getConnectedTechnology()I

    move-result v0

    const/16 v6, 0xa

    if-ne v0, v6, :cond_1b

    .line 3349
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_1a

    const-string v0, "NfcService"

    const-string v4, "Skipping NDEF detection for NFC Barcode"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3350
    :cond_1a
    invoke-interface {v3, v13, v14, v15}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;Lcom/android/nfc/DeviceHost$TagLongConnectedCallback;)V

    .line 3354
    invoke-direct {v1, v3, v5}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    .line 3355
    goto/16 :goto_7

    .line 3357
    :cond_1b
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$TagEndpoint;->findAndReadNdef()Landroid/nfc/NdefMessage;

    move-result-object v6

    .line 3359
    .local v6, "ndefMsg":Landroid/nfc/NdefMessage;
    if-nez v6, :cond_1c

    .line 3361
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$TagEndpoint;->reconnect()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 3362
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 3363
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-ne v0, v4, :cond_20

    .line 3364
    invoke-static {}, Lcom/android/nfc/NfcService;->-$$Nest$sfgetsToast_debounce()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mNotifyReadFailed:Z

    if-eqz v0, :cond_20

    .line 3365
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v4, 0x7f1000b9

    invoke-static {v0, v4, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 3366
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3367
    invoke-static {v8}, Lcom/android/nfc/NfcService;->-$$Nest$sfputsToast_debounce(Z)V

    .line 3368
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmHandler(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v0

    const/16 v4, 0x13

    invoke-static {}, Lcom/android/nfc/NfcService;->-$$Nest$sfgetsToast_debounce_time_ms()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v0, v4, v7, v8}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_7

    .line 3376
    :cond_1c
    if-eqz v10, :cond_1f

    .line 3379
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v0

    invoke-static {v10, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1e

    if-eqz v6, :cond_1d

    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mLastReadNdefMessage:Landroid/nfc/NdefMessage;

    .line 3380
    invoke-virtual {v6, v0}, Landroid/nfc/NdefMessage;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_5

    .line 3386
    :cond_1d
    iget-object v4, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v4

    .line 3387
    :try_start_c
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-object v7, v0, Lcom/android/nfc/NfcService;->mDebounceTagUid:[B

    .line 3388
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-object v7, v0, Lcom/android/nfc/NfcService;->mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;

    .line 3389
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    const/4 v7, -0x1

    iput v7, v0, Lcom/android/nfc/NfcService;->mDebounceTagNativeHandle:I

    .line 3390
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 3391
    if-eqz v12, :cond_1f

    .line 3393
    :try_start_d
    invoke-interface {v12}, Landroid/nfc/ITagRemovedCallback;->onTagRemoved()V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_1

    .line 3396
    goto :goto_6

    .line 3394
    :catch_1
    move-exception v0

    goto :goto_6

    .line 3390
    :catchall_5
    move-exception v0

    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v0

    .line 3381
    :cond_1e
    :goto_5
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmHandler(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v0

    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 3382
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-$$Nest$fgetmHandler(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v0

    int-to-long v7, v11

    invoke-virtual {v0, v4, v7, v8}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3383
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 3384
    return-void

    .line 3401
    :cond_1f
    :goto_6
    iget-object v0, v1, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iput-object v6, v0, Lcom/android/nfc/NfcService;->mLastReadNdefMessage:Landroid/nfc/NdefMessage;

    .line 3403
    invoke-interface {v3, v13, v14, v15}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;Lcom/android/nfc/DeviceHost$TagLongConnectedCallback;)V

    .line 3407
    invoke-direct {v1, v3, v5}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    .line 3408
    goto :goto_7

    .line 3319
    .end local v6    # "ndefMsg":Landroid/nfc/NdefMessage;
    :catchall_6
    move-exception v0

    :try_start_f
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    throw v0

    .line 3291
    .end local v5    # "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    .end local v10    # "debounceTagUid":[B
    .end local v11    # "debounceTagMs":I
    .end local v12    # "debounceTagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    .end local v13    # "presenceCheckDelay":I
    .end local v14    # "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    .end local v15    # "callbacklong":Lcom/android/nfc/DeviceHost$TagLongConnectedCallback;
    :catchall_7
    move-exception v0

    :try_start_10
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v0

    .line 3558
    .end local v3    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    :cond_20
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class final Lcom/android/nfc/P2pLinkManager$SendTask;
.super Landroid/os/AsyncTask;
.source "P2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SendTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field handoverClient:Lcom/android/nfc/handover/HandoverClient;

.field nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

.field snepClient:Lcom/android/nfc/snep/SnepClient;

.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/nfc/P2pLinkManager;

    .line 838
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method doHandover([Landroid/net/Uri;Landroid/os/UserHandle;)I
    .locals 6
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 844
    const/4 v0, 0x0

    .line 845
    .local v0, "response":Landroid/nfc/NdefMessage;
    invoke-static {}, Lcom/android/nfc/beam/BeamManager;->getInstance()Lcom/android/nfc/beam/BeamManager;

    move-result-object v1

    .line 847
    .local v1, "beamManager":Lcom/android/nfc/beam/BeamManager;
    invoke-virtual {v1}, Lcom/android/nfc/beam/BeamManager;->isBeamInProgress()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    .line 848
    return v3

    .line 851
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v2, v2, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v2}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverRequestMessage()Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 852
    .local v2, "request":Landroid/nfc/NdefMessage;
    const/4 v4, 0x2

    if-eqz v2, :cond_6

    .line 853
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v5, :cond_1

    .line 854
    invoke-virtual {v5, v2}, Lcom/android/nfc/handover/HandoverClient;->sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 856
    :cond_1
    if-nez v0, :cond_2

    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v5, :cond_2

    .line 860
    invoke-virtual {v5, v2}, Lcom/android/nfc/snep/SnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    .line 861
    .local v5, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 863
    .end local v5    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :cond_2
    if-nez v0, :cond_4

    .line 864
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v3, :cond_3

    .line 865
    return v4

    .line 867
    :cond_3
    const/4 v3, 0x1

    return v3

    .line 873
    :cond_4
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v4, v4, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v5, v5, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 874
    invoke-virtual {v5, v0}, Lcom/android/nfc/handover/HandoverDataParser;->getOutgoingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v5

    .line 873
    invoke-virtual {v1, v4, v5, p1, p2}, Lcom/android/nfc/beam/BeamManager;->startBeamSend(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;[Landroid/net/Uri;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 875
    return v3

    .line 878
    :cond_5
    invoke-static {}, Lcom/android/nfc/NfcMetrics;->logP2pHoBt()V

    .line 879
    const/4 v3, 0x0

    return v3

    .line 870
    :cond_6
    return v4
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 838
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$SendTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "args"    # [Ljava/lang/Void;

    .line 896
    const/4 v0, 0x0

    .line 898
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v1

    .line 899
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget v2, v2, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget v2, v2, Lcom/android/nfc/P2pLinkManager;->mSendState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    goto/16 :goto_4

    .line 902
    :cond_0
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v2, v2, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 903
    .local v2, "m":Landroid/nfc/NdefMessage;
    iget-object v3, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v3, v3, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 904
    .local v3, "uris":[Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v5, v5, Lcom/android/nfc/P2pLinkManager;->mUserHandle:Landroid/os/UserHandle;

    .line 905
    .local v5, "userHandle":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v6, v6, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    iput-object v6, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    .line 906
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v6, v6, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    iput-object v6, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 907
    iget-object v6, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v6, v6, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    iput-object v6, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 908
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 912
    .local v6, "time":J
    if-eqz v3, :cond_1

    .line 913
    const-string v1, "NfcP2pLinkManager"

    const-string v8, "Trying handover request"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :try_start_1
    invoke-virtual {p0, v3, v5}, Lcom/android/nfc/P2pLinkManager$SendTask;->doHandover([Landroid/net/Uri;Landroid/os/UserHandle;)I

    move-result v1

    .line 916
    .local v1, "handoverResult":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 928
    :pswitch_0
    const/4 v0, 0x0

    .line 929
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v8}, Lcom/android/nfc/P2pLinkManager;->onHandoverBusy()V

    goto :goto_0

    .line 924
    :pswitch_1
    const/4 v0, 0x0

    .line 925
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v8}, Lcom/android/nfc/P2pLinkManager;->onHandoverUnsupported()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 926
    goto :goto_0

    .line 921
    :pswitch_2
    const/4 v0, 0x0

    .line 922
    goto :goto_0

    .line 918
    :pswitch_3
    const/4 v0, 0x1

    .line 919
    nop

    .line 934
    .end local v1    # "handoverResult":I
    :goto_0
    goto :goto_1

    .line 932
    :catch_0
    move-exception v1

    .line 933
    .local v1, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 937
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v1, :cond_2

    .line 938
    const-string v1, "NfcP2pLinkManager"

    const-string v8, "Sending ndef via SNEP"

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :try_start_2
    invoke-virtual {p0, v2}, Lcom/android/nfc/P2pLinkManager$SendTask;->doSnepProtocol(Landroid/nfc/NdefMessage;)I

    move-result v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 941
    .local v1, "snepResult":I
    packed-switch v1, :pswitch_data_1

    .line 949
    const/4 v0, 0x0

    goto :goto_2

    .line 946
    :pswitch_4
    const/4 v0, 0x0

    .line 947
    goto :goto_2

    .line 943
    :pswitch_5
    const/4 v0, 0x1

    .line 944
    nop

    .line 953
    .end local v1    # "snepResult":I
    :goto_2
    goto :goto_3

    .line 951
    :catch_1
    move-exception v1

    .line 952
    .local v1, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 956
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    if-eqz v1, :cond_3

    .line 957
    invoke-virtual {v1, v2}, Lcom/android/nfc/ndefpush/NdefPushClient;->push(Landroid/nfc/NdefMessage;)Z

    move-result v0

    .line 960
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    .line 961
    .end local v6    # "time":J
    .local v8, "time":J
    const-string v1, "NfcP2pLinkManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SendTask result="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", time ms="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    if-eqz v0, :cond_4

    .line 963
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v1, v2, v8, v9}, Lcom/android/nfc/P2pLinkManager;->onSendComplete(Landroid/nfc/NdefMessage;J)V

    .line 966
    :cond_4
    return-object v4

    .line 900
    .end local v2    # "m":Landroid/nfc/NdefMessage;
    .end local v3    # "uris":[Landroid/net/Uri;
    .end local v5    # "userHandle":Landroid/os/UserHandle;
    .end local v8    # "time":J
    :cond_5
    :goto_4
    :try_start_3
    monitor-exit v1

    return-object v4

    .line 908
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method doSnepProtocol(Landroid/nfc/NdefMessage;)I
    .locals 1
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 883
    if-eqz p1, :cond_0

    .line 884
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v0, p1}, Lcom/android/nfc/snep/SnepClient;->put(Landroid/nfc/NdefMessage;)V

    .line 885
    const/4 v0, 0x0

    return v0

    .line 887
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

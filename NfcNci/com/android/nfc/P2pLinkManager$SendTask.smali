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
        "Landroid/os/AsyncTask",
        "<",
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
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/P2pLinkManager;

    .prologue
    .line 806
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method doHandover([Landroid/net/Uri;Landroid/os/UserHandle;)I
    .registers 10
    .param p1, "uris"    # [Landroid/net/Uri;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    .line 840
    const/4 v2, 0x0

    .line 841
    .local v2, "response":Landroid/nfc/NdefMessage;
    invoke-static {}, Lcom/android/nfc/beam/BeamManager;->getInstance()Lcom/android/nfc/beam/BeamManager;

    move-result-object v0

    .line 843
    .local v0, "beamManager":Lcom/android/nfc/beam/BeamManager;
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v4, v4, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/nfc/beam/BeamManager;->isWifiP2pBeamInProgress(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamManager;->isBeamInProgress()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 844
    return v6

    .line 847
    :cond_18
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v4, v4, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v4}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverRequestMessage()Landroid/nfc/NdefMessage;

    move-result-object v1

    .line 848
    .local v1, "request":Landroid/nfc/NdefMessage;
    if-eqz v1, :cond_3f

    .line 849
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    if-eqz v4, :cond_2c

    .line 850
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    invoke-virtual {v4, v1}, Lcom/android/nfc/handover/HandoverClient;->sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 852
    .end local v2    # "response":Landroid/nfc/NdefMessage;
    :cond_2c
    if-nez v2, :cond_3c

    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v4, :cond_3c

    .line 856
    iget-object v4, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v4, v1}, Lcom/android/nfc/snep/SnepClient;->get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v3

    .line 857
    .local v3, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    invoke-virtual {v3}, Lcom/android/nfc/snep/SnepMessage;->getNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 859
    .end local v3    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :cond_3c
    if-nez v2, :cond_40

    .line 860
    return v5

    .line 863
    .restart local v2    # "response":Landroid/nfc/NdefMessage;
    :cond_3f
    return v5

    .line 866
    .end local v2    # "response":Landroid/nfc/NdefMessage;
    :cond_40
    invoke-virtual {p0, v0, v2, p1, p2}, Lcom/android/nfc/P2pLinkManager$SendTask;->startBeamSend(Lcom/android/nfc/beam/BeamManager;Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 867
    return v6

    .line 870
    :cond_47
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 883
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$SendTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 15
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    const/4 v12, 0x0

    .line 887
    const/4 v3, 0x0

    .line 889
    .local v3, "result":Z
    iget-object v10, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v10

    .line 890
    :try_start_5
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget v9, v9, Lcom/android/nfc/P2pLinkManager;->mLinkState:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_13

    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget v9, v9, Lcom/android/nfc/P2pLinkManager;->mSendState:I
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_a4

    const/4 v11, 0x4

    if-eq v9, v11, :cond_15

    :cond_13
    monitor-exit v10

    .line 891
    return-object v12

    .line 893
    :cond_15
    :try_start_15
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v2, v9, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;

    .line 894
    .local v2, "m":Landroid/nfc/NdefMessage;
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v5, v9, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    .line 895
    .local v5, "uris":[Landroid/net/Uri;
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v8, v9, Lcom/android/nfc/P2pLinkManager;->mUserHandle:Landroid/os/UserHandle;

    .line 896
    .local v8, "userHandle":Landroid/os/UserHandle;
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v9, v9, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    iput-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    .line 897
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v9, v9, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    iput-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->handoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 898
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v9, v9, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    iput-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_a4

    monitor-exit v10

    .line 901
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 903
    .local v6, "time":J
    if-eqz v5, :cond_4a

    .line 904
    const-string/jumbo v9, "NfcP2pLinkManager"

    const-string/jumbo v10, "Trying handover request"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :try_start_43
    invoke-virtual {p0, v5, v8}, Lcom/android/nfc/P2pLinkManager$SendTask;->doHandover([Landroid/net/Uri;Landroid/os/UserHandle;)I
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_b2

    move-result v1

    .line 907
    .local v1, "handoverResult":I
    packed-switch v1, :pswitch_data_c4

    .line 928
    .end local v1    # "handoverResult":I
    :cond_4a
    :goto_4a
    if-nez v3, :cond_63

    if-eqz v2, :cond_63

    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    if-eqz v9, :cond_63

    .line 929
    const-string/jumbo v9, "NfcP2pLinkManager"

    const-string/jumbo v10, "Sending ndef via SNEP"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    :try_start_5b
    invoke-virtual {p0, v2}, Lcom/android/nfc/P2pLinkManager$SendTask;->doSnepProtocol(Landroid/nfc/NdefMessage;)I
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_c0

    move-result v4

    .line 932
    .local v4, "snepResult":I
    packed-switch v4, :pswitch_data_d0

    .line 940
    const/4 v3, 0x0

    .line 947
    .end local v4    # "snepResult":I
    :cond_63
    :goto_63
    if-nez v3, :cond_71

    if-eqz v2, :cond_71

    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    if-eqz v9, :cond_71

    .line 948
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->nppClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    invoke-virtual {v9, v2}, Lcom/android/nfc/ndefpush/NdefPushClient;->push(Landroid/nfc/NdefMessage;)Z

    move-result v3

    .line 951
    .end local v3    # "result":Z
    :cond_71
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long v6, v10, v6

    .line 952
    const-string/jumbo v9, "NfcP2pLinkManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "SendTask result="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", time ms="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    if-eqz v3, :cond_a3

    .line 954
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v9, v2, v6, v7}, Lcom/android/nfc/P2pLinkManager;->onSendComplete(Landroid/nfc/NdefMessage;J)V

    .line 957
    :cond_a3
    return-object v12

    .line 889
    .end local v2    # "m":Landroid/nfc/NdefMessage;
    .end local v5    # "uris":[Landroid/net/Uri;
    .end local v6    # "time":J
    .end local v8    # "userHandle":Landroid/os/UserHandle;
    .restart local v3    # "result":Z
    :catchall_a4
    move-exception v9

    monitor-exit v10

    throw v9

    .line 909
    .restart local v1    # "handoverResult":I
    .restart local v2    # "m":Landroid/nfc/NdefMessage;
    .restart local v5    # "uris":[Landroid/net/Uri;
    .restart local v6    # "time":J
    .restart local v8    # "userHandle":Landroid/os/UserHandle;
    :pswitch_a7
    const/4 v3, 0x1

    .line 910
    goto :goto_4a

    .line 912
    :pswitch_a9
    const/4 v3, 0x0

    .line 913
    goto :goto_4a

    .line 915
    :pswitch_ab
    const/4 v3, 0x0

    .line 916
    :try_start_ac
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v9}, Lcom/android/nfc/P2pLinkManager;->onHandoverUnsupported()V

    goto :goto_4a

    .line 923
    .end local v1    # "handoverResult":I
    :catch_b2
    move-exception v0

    .line 924
    .local v0, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_4a

    .line 919
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "handoverResult":I
    :pswitch_b5
    const/4 v3, 0x0

    .line 920
    iget-object v9, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v9}, Lcom/android/nfc/P2pLinkManager;->onHandoverBusy()V
    :try_end_bb
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_bb} :catch_b2

    goto :goto_4a

    .line 934
    .end local v1    # "handoverResult":I
    .restart local v4    # "snepResult":I
    :pswitch_bc
    const/4 v3, 0x1

    .line 935
    goto :goto_63

    .line 937
    :pswitch_be
    const/4 v3, 0x0

    .line 938
    goto :goto_63

    .line 942
    .end local v4    # "snepResult":I
    :catch_c0
    move-exception v0

    .line 943
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v3, 0x0

    goto :goto_63

    .line 907
    nop

    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_a7
        :pswitch_a9
        :pswitch_ab
        :pswitch_b5
    .end packed-switch

    .line 932
    :pswitch_data_d0
    .packed-switch 0x0
        :pswitch_bc
        :pswitch_be
    .end packed-switch
.end method

.method doSnepProtocol(Landroid/nfc/NdefMessage;)I
    .registers 3
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 874
    if-eqz p1, :cond_9

    .line 875
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->snepClient:Lcom/android/nfc/snep/SnepClient;

    invoke-virtual {v0, p1}, Lcom/android/nfc/snep/SnepClient;->put(Landroid/nfc/NdefMessage;)V

    .line 876
    const/4 v0, 0x0

    return v0

    .line 878
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method startBeamSend(Lcom/android/nfc/beam/BeamManager;Landroid/nfc/NdefMessage;[Landroid/net/Uri;Landroid/os/UserHandle;)Z
    .registers 9
    .param p1, "beamManager"    # Lcom/android/nfc/beam/BeamManager;
    .param p2, "response"    # Landroid/nfc/NdefMessage;
    .param p3, "uris"    # [Landroid/net/Uri;
    .param p4, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 815
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v2, v2, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v2, p2}, Lcom/android/nfc/handover/HandoverDataParser;->getOutgoingWifiP2pHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;

    move-result-object v1

    .line 817
    .local v1, "wifiP2pHandoverData":Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;
    if-eqz v1, :cond_1c

    .line 823
    const-string/jumbo v2, "NfcP2pLinkManager"

    const-string/jumbo v3, "Start beam via Wi-Fi P2P"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v2, v2, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2, v1, p3, p4}, Lcom/android/nfc/beam/BeamManager;->startBeamSend(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;[Landroid/net/Uri;Landroid/os/UserHandle;)Z

    move-result v2

    return v2

    .line 828
    :cond_1c
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v2, v2, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v2, p2}, Lcom/android/nfc/handover/HandoverDataParser;->getOutgoingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    .line 830
    .local v0, "handoverData":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v0, :cond_38

    .line 832
    const-string/jumbo v2, "NfcP2pLinkManager"

    const-string/jumbo v3, "Start beam via Bluetooth"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object v2, p0, Lcom/android/nfc/P2pLinkManager$SendTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v2, v2, Lcom/android/nfc/P2pLinkManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2, v0, p3, p4}, Lcom/android/nfc/beam/BeamManager;->startBeamSend(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;[Landroid/net/Uri;Landroid/os/UserHandle;)Z

    move-result v2

    return v2

    .line 836
    :cond_38
    const/4 v2, 0x0

    return v2
.end method

.class Lcom/android/nfc/NfcService$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 4788
    iput-object p1, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4791
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4793
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v9, "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

    .line 4792
    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 4795
    new-instance v9, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v10, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v9, v10}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4790
    :cond_1a
    :goto_1a
    return-void

    .line 4796
    :cond_1b
    const-string/jumbo v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_36

    .line 4797
    const-string/jumbo v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 4796
    if-nez v9, :cond_36

    .line 4798
    const-string/jumbo v9, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 4796
    if-eqz v9, :cond_d9

    .line 4800
    :cond_36
    const/4 v5, 0x1

    .line 4801
    .local v5, "screenState":I
    const-string/jumbo v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_88

    .line 4802
    const/4 v5, 0x1

    .line 4815
    :cond_41
    :goto_41
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9, v5}, Lcom/android/nfc/NfcService;->-wrap12(Lcom/android/nfc/NfcService;I)V

    .line 4816
    sget-boolean v9, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v9, :cond_64

    const-string/jumbo v9, "NfcService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Screen State:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4817
    :cond_64
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v9, v9, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v9, :cond_73

    .line 4818
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->-get7(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setScreenState(I)V

    .line 4820
    :cond_73
    new-instance v9, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v10, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v9, v10}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    invoke-virtual {v9, v10}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1a

    .line 4803
    :cond_88
    const-string/jumbo v9, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a9

    .line 4804
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->-get19(Lcom/android/nfc/NfcService;)Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v9

    if-nez v9, :cond_a7

    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v9}, Lcom/android/nfc/NfcService;->isInputSimPinCodeDone()Z

    move-result v9

    if-eqz v9, :cond_a7

    .line 4806
    const/4 v5, 0x3

    goto :goto_41

    .line 4805
    :cond_a7
    const/4 v5, 0x2

    goto :goto_41

    .line 4807
    :cond_a9
    const-string/jumbo v9, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_41

    .line 4808
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->-get29(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v9

    if-nez v9, :cond_bf

    .line 4809
    return-void

    .line 4811
    :cond_bf
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->-get19(Lcom/android/nfc/NfcService;)Landroid/app/KeyguardManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v9

    if-nez v9, :cond_d6

    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v9}, Lcom/android/nfc/NfcService;->isInputSimPinCodeDone()Z

    move-result v9

    if-eqz v9, :cond_d6

    .line 4813
    const/4 v5, 0x3

    goto/16 :goto_41

    .line 4812
    :cond_d6
    const/4 v5, 0x2

    goto/16 :goto_41

    .line 4821
    .end local v5    # "screenState":I
    :cond_d9
    const-string/jumbo v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14f

    .line 4822
    sget-boolean v9, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v9, :cond_ef

    const-string/jumbo v9, "NfcService"

    const-string/jumbo v10, "TelephonyIntents.ACTION_SIM_STATE_CHANGED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4823
    :cond_ef
    const-string/jumbo v9, "slot"

    const/4 v10, -0x1

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 4824
    .local v6, "slot":I
    if-eqz v6, :cond_114

    .line 4825
    const-string/jumbo v9, "NfcService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Ignore SIM_STATE_CHANGED intent. SlotID : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4826
    return-void

    .line 4829
    :cond_114
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    iget-object v9, v9, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "phone"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 4830
    .local v7, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v1

    .line 4831
    .local v1, "mccMnc":Ljava/lang/String;
    if-eqz v1, :cond_12d

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_134

    .line 4836
    :cond_12d
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9, v1}, Lcom/android/nfc/NfcService;->-wrap14(Lcom/android/nfc/NfcService;Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 4832
    :cond_134
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->-get12(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v9

    const/16 v10, 0x32

    invoke-virtual {v9, v10}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 4833
    .local v2, "msg":Landroid/os/Message;
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4834
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->-get12(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v9

    const-wide/16 v10, 0x14

    invoke-virtual {v9, v2, v10, v11}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_1a

    .line 4838
    .end local v1    # "mccMnc":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v6    # "slot":I
    .end local v7    # "tm":Landroid/telephony/TelephonyManager;
    :cond_14f
    const-string/jumbo v9, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1da

    .line 4839
    const-string/jumbo v9, "android.intent.extra.user_handle"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 4840
    .local v8, "userId":I
    monitor-enter p0

    .line 4841
    :try_start_161
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9, v8}, Lcom/android/nfc/NfcService;->-set12(Lcom/android/nfc/NfcService;I)I
    :try_end_166
    .catchall {:try_start_161 .. :try_end_166} :catchall_1d7

    monitor-exit p0

    .line 4845
    sget-boolean v9, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v9, :cond_174

    const-string/jumbo v9, "NfcService"

    const-string/jumbo v10, "Lock off host card emulation"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4846
    :cond_174
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/nfc/NfcService;->-set6(Lcom/android/nfc/NfcService;Z)Z

    .line 4847
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    .line 4849
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    iget-object v9, v9, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    iget-object v10, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v10}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/nfc/P2pLinkManager;->onUserSwitched(I)V

    .line 4850
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v9, v9, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v9, :cond_1a1

    .line 4851
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->-get7(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v9

    iget-object v10, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v10}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onUserSwitched(I)V

    .line 4854
    :cond_1a1
    if-eqz v8, :cond_1a8

    .line 4855
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9, v8}, Lcom/android/nfc/NfcService;->-wrap11(Lcom/android/nfc/NfcService;I)V

    .line 4857
    :cond_1a8
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->-get23(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceGsma;

    move-result-object v9

    if-eqz v9, :cond_1b9

    .line 4858
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->-get23(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceGsma;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/nfc/NfcService$NfcServiceGsma;->onUserSwitched()V

    .line 4860
    :cond_1b9
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->-get0(Lcom/android/nfc/NfcService;)Z

    move-result v9

    if-nez v9, :cond_1c8

    .line 4861
    invoke-static {}, Lcom/sonymobile/nfc/InstalledPackageCache;->getInstance()Lcom/sonymobile/nfc/InstalledPackageCache;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/sonymobile/nfc/InstalledPackageCache;->onUserSwitched(I)V

    .line 4863
    :cond_1c8
    new-instance v9, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v10, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v9, v10}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1a

    .line 4840
    :catchall_1d7
    move-exception v9

    monitor-exit p0

    throw v9

    .line 4864
    .end local v8    # "userId":I
    :cond_1da
    const-string/jumbo v9, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_205

    .line 4865
    sget-boolean v9, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v9, :cond_1f0

    const-string/jumbo v9, "NfcService"

    const-string/jumbo v10, "Intent ACTION_POWER_CONNECTED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4866
    :cond_1f0
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/nfc/NfcService;->-set2(Lcom/android/nfc/NfcService;Z)Z

    .line 4867
    new-instance v9, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v10, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v9, v10}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1a

    .line 4868
    :cond_205
    const-string/jumbo v9, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_230

    .line 4869
    sget-boolean v9, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v9, :cond_21b

    const-string/jumbo v9, "NfcService"

    const-string/jumbo v10, "Intent ACTION_POWER_DISCONNECTED"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4870
    :cond_21b
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    const/4 v10, 0x0

    invoke-static {v9, v10}, Lcom/android/nfc/NfcService;->-set2(Lcom/android/nfc/NfcService;Z)Z

    .line 4871
    new-instance v9, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v10, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v9, v10}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1a

    .line 4872
    :cond_230
    const-string/jumbo v9, "com.sonymobile.nfclock.NFCLOCK"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_307

    .line 4873
    sget-boolean v9, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v9, :cond_246

    const-string/jumbo v9, "NfcService"

    const-string/jumbo v10, "NFC lock state notify received"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4874
    :cond_246
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->-get16(Lcom/android/nfc/NfcService;)Z

    move-result v4

    .line 4875
    .local v4, "nfclockstate":Z
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    const-string/jumbo v10, "nfclockstate"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v9, v10}, Lcom/android/nfc/NfcService;->-set5(Lcom/android/nfc/NfcService;Z)Z

    .line 4876
    sget-boolean v9, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v9, :cond_277

    const-string/jumbo v9, "NfcService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "old : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4877
    :cond_277
    sget-boolean v9, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v9, :cond_29b

    const-string/jumbo v9, "NfcService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "new : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v11}, Lcom/android/nfc/NfcService;->-get16(Lcom/android/nfc/NfcService;)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4878
    :cond_29b
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->-get36(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ServiceExtension;

    move-result-object v9

    if-eqz v9, :cond_2b3

    .line 4879
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->-get36(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ServiceExtension;

    move-result-object v9

    iget-object v10, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v10}, Lcom/android/nfc/NfcService;->-get16(Lcom/android/nfc/NfcService;)Z

    move-result v10

    const/4 v11, 0x1

    invoke-interface {v9, v10, v11}, Lcom/android/nfc/ServiceExtension;->onNfcLockStateChanged(ZZ)V

    .line 4881
    :cond_2b3
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->-get25(Lcom/android/nfc/NfcService;)I

    move-result v3

    .line 4882
    .local v3, "nfcLockType":I
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    const-string/jumbo v10, "extra_nfc_lock_type"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/nfc/NfcService;->-set9(Lcom/android/nfc/NfcService;I)I

    .line 4883
    new-instance v10, Lcom/android/nfc/NfcService$LockUnlockTask;

    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v10, v9}, Lcom/android/nfc/NfcService$LockUnlockTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v9, 0x4

    new-array v11, v9, [Ljava/lang/Integer;

    .line 4884
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->-get16(Lcom/android/nfc/NfcService;)Z

    move-result v9

    if-eqz v9, :cond_303

    .line 4885
    const/4 v9, 0x1

    .line 4884
    :goto_2d9
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x0

    aput-object v9, v11, v12

    .line 4886
    if-eqz v4, :cond_305

    .line 4887
    const/4 v9, 0x1

    .line 4886
    :goto_2e3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x1

    aput-object v9, v11, v12

    .line 4888
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x2

    aput-object v9, v11, v12

    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->-get25(Lcom/android/nfc/NfcService;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v12, 0x3

    aput-object v9, v11, v12

    .line 4883
    invoke-virtual {v10, v11}, Lcom/android/nfc/NfcService$LockUnlockTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1a

    .line 4885
    :cond_303
    const/4 v9, 0x0

    goto :goto_2d9

    .line 4887
    :cond_305
    const/4 v9, 0x0

    goto :goto_2e3

    .line 4889
    .end local v3    # "nfcLockType":I
    .end local v4    # "nfclockstate":Z
    :cond_307
    const-string/jumbo v9, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1a

    .line 4890
    sget-boolean v9, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v9, :cond_31d

    const-string/jumbo v9, "NfcService"

    const-string/jumbo v10, "Device is shutting down."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4891
    :cond_31d
    const-string/jumbo v9, "android.intent.extra.SHUTDOWN_USERSPACE_ONLY"

    const/4 v10, 0x0

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_1a

    .line 4893
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v9}, Lcom/android/nfc/NfcService;->-get37(Lcom/android/nfc/NfcService;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_1a

    .line 4894
    iget-object v9, p0, Lcom/android/nfc/NfcService$1;->this$0:Lcom/android/nfc/NfcService;

    const-string/jumbo v10, ""

    invoke-static {v9, v10}, Lcom/android/nfc/NfcService;->-set11(Lcom/android/nfc/NfcService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1a
.end method

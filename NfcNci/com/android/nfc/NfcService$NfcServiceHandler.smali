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
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 4192
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V
    .registers 15
    .param p1, "tagEndpoint"    # Lcom/android/nfc/DeviceHost$TagEndpoint;
    .param p2, "readerParams"    # Lcom/android/nfc/NfcService$ReaderModeParams;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 4689
    new-instance v0, Landroid/nfc/Tag;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v1

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v2

    .line 4690
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v4

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    .line 4689
    invoke-direct/range {v0 .. v5}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    .line 4691
    .local v0, "tag":Landroid/nfc/Tag;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V

    .line 4692
    if-eqz p2, :cond_4d

    .line 4694
    :try_start_22
    iget v1, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit16 v1, v1, 0x100

    if-nez v1, :cond_2e

    .line 4695
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 4697
    :cond_2e
    iget-object v1, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    if-eqz v1, :cond_4d

    .line 4698
    iget-object v1, p2, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    invoke-interface {v1, v0}, Landroid/nfc/IAppCallback;->onTagDiscovered(Landroid/nfc/Tag;)V
    :try_end_37
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_37} :catch_43
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_37} :catch_38

    .line 4699
    return-void

    .line 4706
    :catch_38
    move-exception v8

    .line 4708
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NfcService"

    const-string/jumbo v2, "App exception, not dispatching."

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4709
    return-void

    .line 4703
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_43
    move-exception v7

    .line 4704
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "NfcService"

    const-string/jumbo v2, "Reader mode remote has died, falling back."

    invoke-static {v1, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4712
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_4d
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get24(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    move-result v6

    .line 4713
    .local v6, "dispatchResult":I
    if-ne v6, v11, :cond_7e

    .line 4714
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_7e

    .line 4715
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 4716
    const v2, 0x7f090025

    .line 4715
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4717
    .local v9, "toastString":Ljava/lang/String;
    invoke-static {v9}, Lcom/sonymobile/nfc/ToastMaster;->isSameToastShown(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7d

    .line 4718
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1, v9}, Lcom/sonymobile/nfc/ToastMaster;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 4719
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v11}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 4688
    .end local v9    # "toastString":Ljava/lang/String;
    :cond_7d
    :goto_7d
    return-void

    .line 4721
    :cond_7e
    if-ne v6, v10, :cond_7d

    .line 4722
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/handover/NfcWifiDirectUtility;->isDispatchTagQuietly(Landroid/nfc/Tag;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_a7

    .line 4723
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get5(Lcom/android/nfc/NfcService;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_a1

    .line 4724
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get41(Lcom/android/nfc/NfcService;)Landroid/os/Vibrator;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 4726
    :cond_a1
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v10}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto :goto_7d

    .line 4729
    :cond_a7
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 4730
    const v2, 0x7f090024

    .line 4729
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4731
    .restart local v9    # "toastString":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1, v9}, Lcom/sonymobile/nfc/ToastMaster;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_7d
.end method

.method private llcpActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)Z
    .registers 6
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4634
    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "LLCP Activation message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4636
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v0

    if-nez v0, :cond_97

    .line 4637
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "NativeP2pDevice.MODE_P2P_TARGET"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4638
    :cond_1e
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->connect()Z

    move-result v0

    if-eqz v0, :cond_89

    .line 4640
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doCheckLlcp()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 4642
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doActivateLlcp()Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 4643
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_49

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "Initiator Activate LLCP OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4644
    :cond_49
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 4646
    :try_start_4c
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5b
    .catchall {:try_start_4c .. :try_end_5b} :catchall_68

    monitor-exit v1

    .line 4648
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getLlcpVersion()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager;->onLlcpActivated(B)V

    .line 4649
    return v3

    .line 4644
    :catchall_68
    move-exception v0

    monitor-exit v1

    throw v0

    .line 4652
    :cond_6b
    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "Initiator LLCP activation failed. Disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4653
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    .line 4685
    :cond_77
    :goto_77
    return v2

    .line 4656
    :cond_78
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_85

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "Remote Target does not support LLCP. Disconnect."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4657
    :cond_85
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    goto :goto_77

    .line 4660
    :cond_89
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_77

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "Cannot connect remote Target. Polling loop restarted."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_77

    .line 4666
    :cond_97
    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v0

    if-ne v0, v3, :cond_77

    .line 4667
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_aa

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "NativeP2pDevice.MODE_P2P_INITIATOR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4669
    :cond_aa
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doCheckLlcp()Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 4671
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->doActivateLlcp()Z

    move-result v0

    if-eqz v0, :cond_77

    .line 4672
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_cf

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "Target Activate LLCP OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4673
    :cond_cf
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 4675
    :try_start_d2
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e1
    .catchall {:try_start_d2 .. :try_end_e1} :catchall_ee

    monitor-exit v1

    .line 4677
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getLlcpVersion()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager;->onLlcpActivated(B)V

    .line 4678
    return v3

    .line 4673
    :catchall_ee
    move-exception v0

    monitor-exit v1

    throw v0

    .line 4681
    :cond_f1
    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "checkLlcp failed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_77
.end method

.method private sendSeBroadcast(Landroid/content/Intent;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4594
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->-get0(Lcom/android/nfc/NfcService;)Z

    move-result v6

    if-nez v6, :cond_2f

    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->-get39(Lcom/android/nfc/NfcService;)I

    move-result v6

    if-eqz v6, :cond_2f

    .line 4595
    const-string/jumbo v6, "NfcService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Sending SE broadcast: Supporeted only for owner: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4596
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 4595
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4597
    return-void

    .line 4599
    :cond_2f
    const/16 v6, 0x20

    invoke-virtual {p1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4601
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->-get24(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    .line 4602
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4603
    .local v0, "matchingPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4604
    .local v5, "preferredPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p0

    .line 4605
    :try_start_48
    invoke-static {}, Lcom/sonymobile/nfc/InstalledPackageCache;->getInstance()Lcom/sonymobile/nfc/InstalledPackageCache;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sonymobile/nfc/InstalledPackageCache;->get()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "pkg$iterator":Ljava/util/Iterator;
    :cond_54
    :goto_54
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_96

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 4606
    .local v3, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_54

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_54

    .line 4607
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7}, Lcom/android/nfc/NfceeAccessControl;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 4608
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4609
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->-get7(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v6

    if-eqz v6, :cond_54

    .line 4610
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->-get7(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v6

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->packageHasPreferredService(Ljava/lang/String;)Z

    move-result v6

    .line 4609
    if-eqz v6, :cond_54

    .line 4611
    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_92
    .catchall {:try_start_48 .. :try_end_92} :catchall_93

    goto :goto_54

    .line 4604
    .end local v3    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v4    # "pkg$iterator":Ljava/util/Iterator;
    :catchall_93
    move-exception v6

    monitor-exit p0

    throw v6

    .line 4616
    .restart local v4    # "pkg$iterator":Ljava/util/Iterator;
    :cond_96
    :try_start_96
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_b7

    .line 4620
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "packageName$iterator":Ljava/util/Iterator;
    :goto_a0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4621
    .local v1, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4622
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_a0

    .line 4625
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "packageName$iterator":Ljava/util/Iterator;
    :cond_b7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "packageName$iterator":Ljava/util/Iterator;
    :goto_bb
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4626
    .restart local v1    # "packageName":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4627
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_d1
    .catchall {:try_start_96 .. :try_end_d1} :catchall_93

    goto :goto_bb

    .end local v1    # "packageName":Ljava/lang/String;
    :cond_d2
    monitor-exit p0

    .line 4593
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 53
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 4195
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v47, v0

    packed-switch v47, :pswitch_data_9ba

    .line 4588
    :pswitch_9
    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "Unknown message received"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4194
    :cond_12
    :goto_12
    return-void

    .line 4197
    :pswitch_13
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v38, v0

    .line 4198
    .local v38, "route":I
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 4199
    .local v7, "aid":Ljava/lang/String;
    const/16 v37, 0x0

    .line 4200
    .local v37, "result":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v47

    invoke-interface/range {v47 .. v47}, Lcom/android/nfc/DeviceHost;->isRouteAidExtended()Z

    move-result v47

    if-nez v47, :cond_80

    .line 4201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v47

    invoke-static {v7}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v48

    move-object/from16 v0, v47

    move-object/from16 v1, v48

    move/from16 v2, v38

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/DeviceHost;->routeAid([BI)Z

    move-result v37

    .line 4215
    .local v37, "result":Z
    :goto_49
    if-nez v37, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get14(Lcom/android/nfc/NfcService;)Z

    move-result v47

    if-eqz v47, :cond_12

    .line 4218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    invoke-static/range {v47 .. v48}, Lcom/android/nfc/NfcService;->-set1(Lcom/android/nfc/NfcService;Z)Z

    .line 4219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get7(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v48, v0

    invoke-virtual/range {v48 .. v48}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v48

    move-object/from16 v0, v47

    move/from16 v1, v48

    move/from16 v2, v38

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->disableServiceForAidRoute(ILjava/lang/String;I)V

    goto :goto_12

    .line 4203
    .local v37, "result":Z
    :cond_80
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v34, v0

    .line 4204
    .local v34, "power":I
    const-string/jumbo v47, "*"

    move-object/from16 v0, v47

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v47

    if-eqz v47, :cond_c0

    .line 4205
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v47

    add-int/lit8 v47, v47, -0x1

    const/16 v48, 0x0

    move/from16 v0, v48

    move/from16 v1, v47

    invoke-virtual {v7, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 4206
    .local v12, "cuttedAid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v47

    invoke-static {v12}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v48

    .line 4207
    const/16 v49, 0x1

    .line 4206
    move-object/from16 v0, v47

    move-object/from16 v1, v48

    move/from16 v2, v38

    move/from16 v3, v34

    move/from16 v4, v49

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/nfc/DeviceHost;->routeAid([BIIZ)Z

    move-result v37

    .local v37, "result":Z
    goto :goto_49

    .line 4209
    .end local v12    # "cuttedAid":Ljava/lang/String;
    .local v37, "result":Z
    :cond_c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v47

    invoke-static {v7}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v48

    .line 4210
    const/16 v49, 0x0

    .line 4209
    move-object/from16 v0, v47

    move-object/from16 v1, v48

    move/from16 v2, v38

    move/from16 v3, v34

    move/from16 v4, v49

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/nfc/DeviceHost;->routeAid([BIIZ)Z

    move-result v37

    .local v37, "result":Z
    goto/16 :goto_49

    .line 4224
    .end local v7    # "aid":Ljava/lang/String;
    .end local v34    # "power":I
    .end local v37    # "result":Z
    .end local v38    # "route":I
    :pswitch_e0
    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "message to register LF_T3T_IDENTIFIER"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v47

    invoke-interface/range {v47 .. v47}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 4227
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, [B

    .line 4228
    .local v41, "t3tIdentifier":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->registerT3tIdentifier([B)V

    .line 4230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    move/from16 v48, v0

    invoke-static/range {v47 .. v48}, Lcom/android/nfc/NfcService;->-wrap4(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v32

    .line 4231
    .local v32, "params":Lcom/android/nfc/NfcDiscoveryParameters;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v40

    .line 4232
    .local v40, "shouldRestart":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v32

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    goto/16 :goto_12

    .line 4236
    .end local v32    # "params":Lcom/android/nfc/NfcDiscoveryParameters;
    .end local v40    # "shouldRestart":Z
    .end local v41    # "t3tIdentifier":[B
    :pswitch_14a
    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "message to deregister LF_T3T_IDENTIFIER"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v47

    invoke-interface/range {v47 .. v47}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 4239
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, [B

    .line 4240
    .restart local v41    # "t3tIdentifier":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost;->deregisterT3tIdentifier([B)V

    .line 4242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    move/from16 v48, v0

    invoke-static/range {v47 .. v48}, Lcom/android/nfc/NfcService;->-wrap4(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v32

    .line 4243
    .restart local v32    # "params":Lcom/android/nfc/NfcDiscoveryParameters;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v40

    .line 4244
    .restart local v40    # "shouldRestart":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v32

    move/from16 v2, v40

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    goto/16 :goto_12

    .line 4248
    .end local v32    # "params":Lcom/android/nfc/NfcDiscoveryParameters;
    .end local v40    # "shouldRestart":Z
    .end local v41    # "t3tIdentifier":[B
    :pswitch_1b4
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    .line 4249
    .restart local v7    # "aid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v47

    invoke-static {v7}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v48

    invoke-interface/range {v47 .. v48}, Lcom/android/nfc/DeviceHost;->unrouteAid([B)Z

    goto/16 :goto_12

    .line 4253
    .end local v7    # "aid":Ljava/lang/String;
    :pswitch_1cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v48, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Landroid/nfc/BeamShareData;

    move-object/from16 v0, v48

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager;->onManualBeamInvoke(Landroid/nfc/BeamShareData;)V

    goto/16 :goto_12

    .line 4258
    :pswitch_1ea
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get9(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DiscoveryManager;

    move-result-object v47

    if-eqz v47, :cond_203

    .line 4259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get9(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DiscoveryManager;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/nfc/DiscoveryManager;->notifyCommitRouting()V

    .line 4261
    :cond_203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get14(Lcom/android/nfc/NfcService;)Z

    move-result v47

    if-eqz v47, :cond_21a

    .line 4262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-static/range {v47 .. v48}, Lcom/android/nfc/NfcService;->-set1(Lcom/android/nfc/NfcService;Z)Z

    .line 4264
    :cond_21a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v48

    move-object/from16 v1, v47

    iput-boolean v0, v1, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    .line 4265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    invoke-virtual/range {v47 .. v48}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    goto/16 :goto_12

    .line 4270
    :pswitch_235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v47

    invoke-interface/range {v47 .. v47}, Lcom/android/nfc/DeviceHost;->clearRouting()V

    goto/16 :goto_12

    .line 4274
    :pswitch_244
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v30, v0

    check-cast v30, Landroid/nfc/NdefMessage;

    .line 4275
    .local v30, "ndefMsg":Landroid/nfc/NdefMessage;
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 4276
    .local v22, "extras":Landroid/os/Bundle;
    const-string/jumbo v47, "ndefmsg"

    move-object/from16 v0, v22

    move-object/from16 v1, v47

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4277
    const-string/jumbo v47, "ndefmaxlength"

    const/16 v48, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4278
    const-string/jumbo v47, "ndefcardstate"

    const/16 v48, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4279
    const-string/jumbo v47, "ndeftype"

    const/16 v48, -0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v47

    move/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4280
    const/16 v47, 0x1

    move/from16 v0, v47

    new-array v0, v0, [B

    move-object/from16 v47, v0

    const/16 v48, 0x0

    const/16 v49, 0x0

    aput-byte v48, v47, v49

    .line 4281
    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [I

    move-object/from16 v48, v0

    const/16 v49, 0x6

    const/16 v50, 0x0

    aput v49, v48, v50

    .line 4282
    const/16 v49, 0x1

    move/from16 v0, v49

    new-array v0, v0, [Landroid/os/Bundle;

    move-object/from16 v49, v0

    const/16 v50, 0x0

    aput-object v22, v49, v50

    .line 4280
    invoke-static/range {v47 .. v49}, Landroid/nfc/Tag;->createMockTag([B[I[Landroid/os/Bundle;)Landroid/nfc/Tag;

    move-result-object v42

    .line 4283
    .local v42, "tag":Landroid/nfc/Tag;
    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "mock NDEF tag, starting corresponding activity"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4284
    const-string/jumbo v47, "NfcService"

    invoke-virtual/range {v42 .. v42}, Landroid/nfc/Tag;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get24(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    move-result v18

    .line 4286
    .local v18, "dispatchStatus":I
    const/16 v47, 0x1

    move/from16 v0, v18

    move/from16 v1, v47

    if-ne v0, v1, :cond_2ed

    .line 4287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    invoke-virtual/range {v47 .. v48}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_12

    .line 4288
    :cond_2ed
    const/16 v47, 0x2

    move/from16 v0, v18

    move/from16 v1, v47

    if-ne v0, v1, :cond_12

    .line 4289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    move/from16 v47, v0

    const/16 v48, 0x3

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_12

    .line 4290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    const/16 v48, 0x2

    invoke-virtual/range {v47 .. v48}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_12

    .line 4296
    .end local v18    # "dispatchStatus":I
    .end local v22    # "extras":Landroid/os/Bundle;
    .end local v30    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v42    # "tag":Landroid/nfc/Tag;
    :pswitch_316
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_323

    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "Tag detected, notifying applications"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4297
    :cond_323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get29(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager;

    move-result-object v47

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v48

    const/16 v50, 0x0

    invoke-virtual/range {v47 .. v50}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 4298
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 4302
    .local v43, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v48, v0

    monitor-enter v48

    .line 4303
    :try_start_345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mDebounceTagUid:[B

    move-object/from16 v16, v0

    .line 4304
    .local v16, "debounceTagUid":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v14, v0, Lcom/android/nfc/NfcService;->mDebounceTagDebounceMs:I

    .line 4305
    .local v14, "debounceTagMs":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v15, v0, Lcom/android/nfc/NfcService;->mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;
    :try_end_365
    .catchall {:try_start_345 .. :try_end_365} :catchall_3a1

    .local v15, "debounceTagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    monitor-exit v48

    .line 4307
    if-eqz v16, :cond_3bf

    .line 4308
    invoke-interface/range {v43 .. v43}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v47

    move-object/from16 v0, v16

    move-object/from16 v1, v47

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v47

    if-eqz v47, :cond_3a4

    .line 4310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get12(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v47

    const/16 v48, 0x38

    invoke-virtual/range {v47 .. v48}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 4311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get12(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v47

    int-to-long v0, v14

    move-wide/from16 v48, v0

    const/16 v50, 0x38

    move-object/from16 v0, v47

    move/from16 v1, v50

    move-wide/from16 v2, v48

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 4312
    invoke-interface/range {v43 .. v43}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 4313
    return-void

    .line 4302
    .end local v14    # "debounceTagMs":I
    .end local v15    # "debounceTagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    .end local v16    # "debounceTagUid":[B
    :catchall_3a1
    move-exception v47

    monitor-exit v48

    throw v47

    .line 4315
    .restart local v14    # "debounceTagMs":I
    .restart local v15    # "debounceTagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    .restart local v16    # "debounceTagUid":[B
    :cond_3a4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v48, v0

    monitor-enter v48

    .line 4316
    :try_start_3ab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    const/16 v49, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mDebounceTagUid:[B
    :try_end_3b9
    .catchall {:try_start_3ab .. :try_end_3b9} :catchall_413

    monitor-exit v48

    .line 4318
    if-eqz v15, :cond_3bf

    .line 4320
    :try_start_3bc
    invoke-interface {v15}, Landroid/nfc/ITagRemovedCallback;->onTagRemoved()V
    :try_end_3bf
    .catch Landroid/os/RemoteException; {:try_start_3bc .. :try_end_3bf} :catch_416

    .line 4327
    :cond_3bf
    :goto_3bf
    const/16 v36, 0x0

    .line 4328
    .local v36, "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    const/16 v35, 0x7d

    .line 4330
    .local v35, "presenceCheckDelay":I
    new-instance v10, Lcom/android/nfc/NfcService$NfcServiceHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler$1;-><init>(Lcom/android/nfc/NfcService$NfcServiceHandler;)V

    .line 4336
    .local v10, "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v48, v0

    monitor-enter v48

    .line 4337
    :try_start_3d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    move-object/from16 v36, v0
    :try_end_3dd
    .catchall {:try_start_3d1 .. :try_end_3dd} :catchall_418

    .local v36, "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    monitor-exit v48

    .line 4339
    if-eqz v36, :cond_41b

    .line 4340
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/nfc/NfcService$ReaderModeParams;->presenceCheckDelay:I

    move/from16 v35, v0

    .line 4341
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    move/from16 v47, v0

    move/from16 v0, v47

    and-int/lit16 v0, v0, 0x80

    move/from16 v47, v0

    if-eqz v47, :cond_41b

    .line 4342
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_401

    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "Skipping NDEF detection in reader mode"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4343
    :cond_401
    move-object/from16 v0, v43

    move/from16 v1, v35

    invoke-interface {v0, v1, v10}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 4344
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    goto/16 :goto_12

    .line 4315
    .end local v10    # "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    .end local v35    # "presenceCheckDelay":I
    .end local v36    # "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    :catchall_413
    move-exception v47

    monitor-exit v48

    throw v47

    .line 4321
    :catch_416
    move-exception v19

    .local v19, "e":Landroid/os/RemoteException;
    goto :goto_3bf

    .line 4336
    .end local v19    # "e":Landroid/os/RemoteException;
    .restart local v10    # "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    .restart local v35    # "presenceCheckDelay":I
    .local v36, "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    :catchall_418
    move-exception v47

    monitor-exit v48

    throw v47

    .line 4349
    .local v36, "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    :cond_41b
    if-eqz v36, :cond_479

    .line 4350
    move-object/from16 v0, v36

    iget v0, v0, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    move/from16 v47, v0

    move/from16 v0, v47

    and-int/lit16 v0, v0, 0x100

    move/from16 v47, v0

    if-nez v47, :cond_47c

    const/16 v33, 0x1

    .line 4351
    .local v33, "playSound":Z
    :goto_42d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    move/from16 v47, v0

    const/16 v48, 0x3

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_44e

    if-eqz v33, :cond_44e

    .line 4352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-virtual/range {v47 .. v48}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 4354
    :cond_44e
    invoke-interface/range {v43 .. v43}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getConnectedTechnology()I

    move-result v47

    const/16 v48, 0xa

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_47f

    .line 4359
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_467

    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "Skipping NDEF detection for NFC Barcode"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4360
    :cond_467
    move-object/from16 v0, v43

    move/from16 v1, v35

    invoke-interface {v0, v1, v10}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 4361
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    goto/16 :goto_12

    .line 4349
    .end local v33    # "playSound":Z
    :cond_479
    const/16 v33, 0x1

    .restart local v33    # "playSound":Z
    goto :goto_42d

    .line 4350
    .end local v33    # "playSound":Z
    :cond_47c
    const/16 v33, 0x0

    .restart local v33    # "playSound":Z
    goto :goto_42d

    .line 4364
    :cond_47f
    invoke-interface/range {v43 .. v43}, Lcom/android/nfc/DeviceHost$TagEndpoint;->findAndReadNdef()Landroid/nfc/NdefMessage;

    move-result-object v30

    .line 4366
    .restart local v30    # "ndefMsg":Landroid/nfc/NdefMessage;
    if-eqz v30, :cond_497

    .line 4367
    move-object/from16 v0, v43

    move/from16 v1, v35

    invoke-interface {v0, v1, v10}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 4368
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    goto/16 :goto_12

    .line 4370
    :cond_497
    invoke-interface/range {v43 .. v43}, Lcom/android/nfc/DeviceHost$TagEndpoint;->reconnect()Z

    move-result v47

    if-eqz v47, :cond_4bd

    .line 4371
    invoke-interface/range {v43 .. v43}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getConnectedTechnology()I

    move-result v47

    const/16 v48, 0x4

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_4ab

    .line 4372
    const/16 v35, 0x1f4

    .line 4374
    :cond_4ab
    move-object/from16 v0, v43

    move/from16 v1, v35

    invoke-interface {v0, v1, v10}, Lcom/android/nfc/DeviceHost$TagEndpoint;->startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    .line 4375
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->dispatchTagEndpoint(Lcom/android/nfc/DeviceHost$TagEndpoint;Lcom/android/nfc/NfcService$ReaderModeParams;)V

    goto/16 :goto_12

    .line 4377
    :cond_4bd
    invoke-interface/range {v43 .. v43}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 4378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget v0, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    move/from16 v47, v0

    const/16 v48, 0x3

    move/from16 v0, v47

    move/from16 v1, v48

    if-ne v0, v1, :cond_12

    .line 4379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    .line 4380
    const v48, 0x7f090025

    .line 4379
    invoke-virtual/range {v47 .. v48}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v45

    .line 4381
    .local v45, "toastString":Ljava/lang/String;
    invoke-static/range {v45 .. v45}, Lcom/sonymobile/nfc/ToastMaster;->isSameToastShown(Ljava/lang/CharSequence;)Z

    move-result v47

    if-nez v47, :cond_12

    .line 4382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v45

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/ToastMaster;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 4383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    const/16 v48, 0x2

    invoke-virtual/range {v47 .. v48}, Lcom/android/nfc/NfcService;->playSound(I)V

    goto/16 :goto_12

    .line 4391
    .end local v10    # "callback":Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;
    .end local v14    # "debounceTagMs":I
    .end local v15    # "debounceTagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    .end local v16    # "debounceTagUid":[B
    .end local v30    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v33    # "playSound":Z
    .end local v35    # "presenceCheckDelay":I
    .end local v36    # "readerParams":Lcom/android/nfc/NfcService$ReaderModeParams;
    .end local v43    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    .end local v45    # "toastString":Ljava/lang/String;
    :pswitch_50d
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_51a

    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "Card Emulation message with parameter"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4392
    :cond_51a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v46, v0

    check-cast v46, [[B

    .line 4393
    .local v46, "transaction":[[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v48, v0

    monitor-enter v48

    .line 4394
    :try_start_529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get26(Lcom/android/nfc/NfcService;)Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcher;

    move-result-object v47

    if-eqz v47, :cond_553

    .line 4395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get26(Lcom/android/nfc/NfcService;)Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcher;

    move-result-object v47

    const/16 v49, 0x0

    aget-object v49, v46, v49

    const/16 v50, 0x1

    aget-object v50, v46, v50

    move-object/from16 v0, v47

    move-object/from16 v1, v49

    move-object/from16 v2, v50

    invoke-interface {v0, v1, v2}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcher;->dispatch([B[B)V
    :try_end_550
    .catchall {:try_start_529 .. :try_end_550} :catchall_565

    :cond_550
    :goto_550
    monitor-exit v48

    goto/16 :goto_12

    .line 4397
    :cond_553
    :try_start_553
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_550

    const-string/jumbo v47, "NfcService"

    const-string/jumbo v49, "No transaction dispatcher available"

    move-object/from16 v0, v47

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_564
    .catchall {:try_start_553 .. :try_end_564} :catchall_565

    goto :goto_550

    .line 4393
    :catchall_565
    move-exception v47

    monitor-exit v48

    throw v47

    .line 4403
    .end local v46    # "transaction":[[B
    :pswitch_568
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_575

    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "MSG_USER_SWITCH_COMPLETE"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4404
    :cond_575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get35(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v39

    .line 4405
    .local v39, "screenState":I
    const/16 v47, 0x3

    move/from16 v0, v39

    move/from16 v1, v47

    if-ne v0, v1, :cond_599

    .line 4406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/nfc/NfcService;->isInputSimPinCodeDone()Z

    move-result v47

    if-nez v47, :cond_599

    .line 4407
    const/16 v39, 0x2

    .line 4410
    :cond_599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    move/from16 v47, v0

    if-eqz v47, :cond_5b8

    .line 4411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get7(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setScreenState(I)V

    .line 4413
    :cond_5b8
    new-instance v47, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v48, v0

    invoke-direct/range {v47 .. v48}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/16 v48, 0x1

    move/from16 v0, v48

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v48, v0

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    const/16 v50, 0x0

    aput-object v49, v48, v50

    invoke-virtual/range {v47 .. v48}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_12

    .line 4417
    .end local v39    # "screenState":I
    :pswitch_5d8
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_5e5

    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "Card Removal message"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4419
    :cond_5e5
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 4420
    .local v11, "cardRemovalIntent":Landroid/content/Intent;
    const-string/jumbo v47, "com.android.nfc_extras.action.EMV_CARD_REMOVAL"

    move-object/from16 v0, v47

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4421
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_5ff

    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "Broadcasting com.android.nfc_extras.action.EMV_CARD_REMOVAL"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4422
    :cond_5ff
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_12

    .line 4426
    .end local v11    # "cardRemovalIntent":Landroid/content/Intent;
    :pswitch_606
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_613

    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "APDU Received message"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    :cond_613
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, [B

    .line 4429
    .local v8, "apduBytes":[B
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 4430
    .local v9, "apduReceivedIntent":Landroid/content/Intent;
    const-string/jumbo v47, "com.android.nfc_extras.action.APDU_RECEIVED"

    move-object/from16 v0, v47

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4431
    if-eqz v8, :cond_635

    array-length v0, v8

    move/from16 v47, v0

    if-lez v47, :cond_635

    .line 4432
    const-string/jumbo v47, "com.android.nfc_extras.extra.APDU_BYTES"

    move-object/from16 v0, v47

    invoke-virtual {v9, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 4434
    :cond_635
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_642

    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "Broadcasting com.android.nfc_extras.action.APDU_RECEIVED"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4435
    :cond_642
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_12

    .line 4439
    .end local v8    # "apduBytes":[B
    .end local v9    # "apduReceivedIntent":Landroid/content/Intent;
    :pswitch_649
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_656

    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "MIFARE access message"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4441
    :cond_656
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, [B

    .line 4442
    .local v29, "mifareCmd":[B
    new-instance v27, Landroid/content/Intent;

    invoke-direct/range {v27 .. v27}, Landroid/content/Intent;-><init>()V

    .line 4443
    .local v27, "mifareAccessIntent":Landroid/content/Intent;
    const-string/jumbo v47, "com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

    move-object/from16 v0, v27

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4444
    if-eqz v29, :cond_6b4

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v47, v0

    const/16 v48, 0x1

    move/from16 v0, v47

    move/from16 v1, v48

    if-le v0, v1, :cond_6b4

    .line 4445
    const/16 v47, 0x1

    aget-byte v47, v29, v47

    move/from16 v0, v47

    and-int/lit16 v0, v0, 0xff

    move/from16 v28, v0

    .line 4446
    .local v28, "mifareBlock":I
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_6a8

    const-string/jumbo v47, "NfcService"

    new-instance v48, Ljava/lang/StringBuilder;

    invoke-direct/range {v48 .. v48}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v49, "Mifare Block="

    invoke-virtual/range {v48 .. v49}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v48

    move-object/from16 v0, v48

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v48

    invoke-virtual/range {v48 .. v48}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4447
    :cond_6a8
    const-string/jumbo v47, "com.android.nfc_extras.extra.MIFARE_BLOCK"

    move-object/from16 v0, v27

    move-object/from16 v1, v47

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4449
    .end local v28    # "mifareBlock":I
    :cond_6b4
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_6c1

    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "Broadcasting com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4450
    :cond_6c1
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_12

    .line 4454
    .end local v27    # "mifareAccessIntent":Landroid/content/Intent;
    .end local v29    # "mifareCmd":[B
    :pswitch_6ca
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get29(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager;

    move-result-object v47

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v48

    const/16 v50, 0x0

    invoke-virtual/range {v47 .. v50}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 4455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    move/from16 v47, v0

    if-eqz v47, :cond_706

    .line 4456
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v47, "com.android.nfc.action.LLCP_UP"

    move-object/from16 v0, v47

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4457
    .local v6, "actIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4460
    .end local v6    # "actIntent":Landroid/content/Intent;
    :cond_706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v47

    if-eqz v47, :cond_12

    .line 4464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get20(Lcom/android/nfc/NfcService;)Z

    move-result v47

    if-nez v47, :cond_12

    .line 4465
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->llcpActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)Z

    move-result v47

    if-eqz v47, :cond_12

    .line 4466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    invoke-static/range {v47 .. v48}, Lcom/android/nfc/NfcService;->-set8(Lcom/android/nfc/NfcService;Z)Z

    .line 4467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/nfc/NfcService;->-get21(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v48

    invoke-static/range {v47 .. v48}, Lcom/android/nfc/NfcService;->-wrap10(Lcom/android/nfc/NfcService;Ljava/util/HashMap;)V

    goto/16 :goto_12

    .line 4473
    :pswitch_750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    move/from16 v47, v0

    if-eqz v47, :cond_779

    .line 4474
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v47, "com.android.nfc.action.LLCP_DOWN"

    move-object/from16 v0, v47

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4475
    .local v13, "deactIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4477
    .end local v13    # "deactIntent":Landroid/content/Intent;
    :cond_779
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 4478
    .local v17, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    const/16 v31, 0x0

    .line 4480
    .local v31, "needsDisconnect":Z
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_790

    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "LLCP Link Deactivated message. Restart polling loop."

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4481
    :cond_790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v48, v0

    monitor-enter v48

    .line 4483
    :try_start_797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    move-object/from16 v47, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getHandle()I

    move-result v49

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    move-object/from16 v0, v47

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    if-eqz v47, :cond_7ce

    .line 4485
    invoke-interface/range {v17 .. v17}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v47

    if-nez v47, :cond_832

    .line 4486
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_7cc

    const-string/jumbo v47, "NfcService"

    const-string/jumbo v49, "disconnecting from target"

    move-object/from16 v0, v47

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7cc
    .catchall {:try_start_797 .. :try_end_7cc} :catchall_844

    .line 4487
    :cond_7cc
    const/16 v31, 0x1

    :cond_7ce
    :goto_7ce
    monitor-exit v48

    .line 4494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v47

    if-eqz v47, :cond_12

    .line 4498
    if-eqz v31, :cond_7e0

    .line 4499
    invoke-interface/range {v17 .. v17}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    .line 4502
    :cond_7e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get20(Lcom/android/nfc/NfcService;)Z

    move-result v47

    if-eqz v47, :cond_819

    .line 4503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    const/16 v48, 0x0

    invoke-static/range {v47 .. v48}, Lcom/android/nfc/NfcService;->-set8(Lcom/android/nfc/NfcService;Z)Z

    .line 4504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    .line 4505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v48, v0

    invoke-static/range {v48 .. v48}, Lcom/android/nfc/NfcService;->-get22(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v48

    invoke-static/range {v47 .. v48}, Lcom/android/nfc/NfcService;->-wrap10(Lcom/android/nfc/NfcService;Ljava/util/HashMap;)V

    .line 4507
    :cond_819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get36(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ServiceExtension;

    move-result-object v47

    if-eqz v47, :cond_12

    .line 4508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    invoke-virtual/range {v47 .. v48}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    goto/16 :goto_12

    .line 4489
    :cond_832
    :try_start_832
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_7ce

    const-string/jumbo v47, "NfcService"

    const-string/jumbo v49, "not disconnecting from initiator"

    move-object/from16 v0, v47

    move-object/from16 v1, v49

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_843
    .catchall {:try_start_832 .. :try_end_843} :catchall_844

    goto :goto_7ce

    .line 4481
    :catchall_844
    move-exception v47

    monitor-exit v48

    throw v47

    .line 4512
    .end local v17    # "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    .end local v31    # "needsDisconnect":Z
    :pswitch_847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/nfc/P2pLinkManager;->onLlcpFirstPacketReceived()V

    goto/16 :goto_12

    .line 4516
    :pswitch_858
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_865

    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "Target Deselected"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4517
    :cond_865
    new-instance v23, Landroid/content/Intent;

    invoke-direct/range {v23 .. v23}, Landroid/content/Intent;-><init>()V

    .line 4518
    .local v23, "intent":Landroid/content/Intent;
    const-string/jumbo v47, "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

    move-object/from16 v0, v23

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4519
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_881

    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "Broadcasting Intent"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4520
    :cond_881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v47, v0

    const-string/jumbo v48, "android.permission.NFC"

    move-object/from16 v0, v47

    move-object/from16 v1, v23

    move-object/from16 v2, v48

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 4524
    .end local v23    # "intent":Landroid/content/Intent;
    :pswitch_89b
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_8a8

    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "SE FIELD ACTIVATED"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4525
    :cond_8a8
    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .line 4526
    .local v21, "eventFieldOnIntent":Landroid/content/Intent;
    const-string/jumbo v47, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    move-object/from16 v0, v21

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4527
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_12

    .line 4532
    .end local v21    # "eventFieldOnIntent":Landroid/content/Intent;
    :pswitch_8c0
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_8cd

    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "SE FIELD DEACTIVATED"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4533
    :cond_8cd
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 4534
    .local v20, "eventFieldOffIntent":Landroid/content/Intent;
    const-string/jumbo v47, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    move-object/from16 v0, v20

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4535
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_12

    .line 4540
    .end local v20    # "eventFieldOffIntent":Landroid/content/Intent;
    :pswitch_8e5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    move-object/from16 v47, v0

    invoke-virtual/range {v47 .. v47}, Lcom/android/nfc/NfcService$NfcAdapterService;->resumePolling()V

    goto/16 :goto_12

    .line 4544
    :pswitch_8f6
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_903

    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "SE LISTEN MODE ACTIVATED"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4545
    :cond_903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    move/from16 v47, v0

    if-eqz v47, :cond_911

    .line 4546
    :cond_911
    new-instance v24, Landroid/content/Intent;

    invoke-direct/range {v24 .. v24}, Landroid/content/Intent;-><init>()V

    .line 4547
    .local v24, "listenModeActivated":Landroid/content/Intent;
    const-string/jumbo v47, "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

    move-object/from16 v0, v24

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4548
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_12

    .line 4554
    .end local v24    # "listenModeActivated":Landroid/content/Intent;
    :pswitch_929
    sget-boolean v47, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v47, :cond_936

    const-string/jumbo v47, "NfcService"

    const-string/jumbo v48, "SE LISTEN MODE DEACTIVATED"

    invoke-static/range {v47 .. v48}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4555
    :cond_936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    move/from16 v47, v0

    if-eqz v47, :cond_944

    .line 4556
    :cond_944
    new-instance v25, Landroid/content/Intent;

    invoke-direct/range {v25 .. v25}, Landroid/content/Intent;-><init>()V

    .line 4557
    .local v25, "listenModeDeactivated":Landroid/content/Intent;
    const-string/jumbo v47, "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

    move-object/from16 v0, v25

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4558
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendSeBroadcast(Landroid/content/Intent;)V

    .line 4560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    invoke-static/range {v47 .. v47}, Lcom/android/nfc/NfcService;->-get36(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ServiceExtension;

    move-result-object v47

    if-eqz v47, :cond_12

    .line 4561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    const/16 v48, 0x1

    invoke-virtual/range {v47 .. v48}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    goto/16 :goto_12

    .line 4567
    .end local v25    # "listenModeDeactivated":Landroid/content/Intent;
    :pswitch_973
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Ljava/lang/String;

    .line 4568
    .local v26, "mccMnc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/nfc/NfcService;->-wrap14(Lcom/android/nfc/NfcService;Ljava/lang/String;)V

    goto/16 :goto_12

    .line 4574
    .end local v26    # "mccMnc":Ljava/lang/String;
    :pswitch_98a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v48, v0

    monitor-enter v48

    .line 4575
    :try_start_991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    const/16 v49, 0x0

    move-object/from16 v0, v49

    move-object/from16 v1, v47

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mDebounceTagUid:[B

    .line 4576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService$NfcServiceHandler;->this$0:Lcom/android/nfc/NfcService;

    move-object/from16 v47, v0

    move-object/from16 v0, v47

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;

    move-object/from16 v44, v0
    :try_end_9ab
    .catchall {:try_start_991 .. :try_end_9ab} :catchall_9b6

    .local v44, "tagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    monitor-exit v48

    .line 4578
    if-eqz v44, :cond_12

    .line 4580
    :try_start_9ae
    invoke-interface/range {v44 .. v44}, Landroid/nfc/ITagRemovedCallback;->onTagRemoved()V
    :try_end_9b1
    .catch Landroid/os/RemoteException; {:try_start_9ae .. :try_end_9b1} :catch_9b3

    goto/16 :goto_12

    .line 4581
    :catch_9b3
    move-exception v19

    .restart local v19    # "e":Landroid/os/RemoteException;
    goto/16 :goto_12

    .line 4574
    .end local v19    # "e":Landroid/os/RemoteException;
    .end local v44    # "tagRemovedCallback":Landroid/nfc/ITagRemovedCallback;
    :catchall_9b6
    move-exception v47

    monitor-exit v48

    throw v47

    .line 4195
    nop

    :pswitch_data_9ba
    .packed-switch 0x0
        :pswitch_316
        :pswitch_9
        :pswitch_6ca
        :pswitch_750
        :pswitch_858
        :pswitch_9
        :pswitch_1b4
        :pswitch_244
        :pswitch_89b
        :pswitch_8c0
        :pswitch_606
        :pswitch_5d8
        :pswitch_649
        :pswitch_8f6
        :pswitch_929
        :pswitch_847
        :pswitch_13
        :pswitch_235
        :pswitch_1ea
        :pswitch_1cd
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8e5
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_50d
        :pswitch_568
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_973
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_e0
        :pswitch_14a
        :pswitch_98a
    .end packed-switch
.end method

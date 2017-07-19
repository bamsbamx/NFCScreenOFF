.class Lcom/android/nfc/NfcService$LockUnlockTask;
.super Lcom/android/nfc/NfcService$EnableDisableTask;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockUnlockTask"
.end annotation


# static fields
.field static final STATE_NFC_LOCKED:I = 0x1

.field static final STATE_NFC_UNLOCKED:I = 0x0

.field static final TASK_NFC_LOCK:I = 0x1

.field static final TASK_NFC_UNLOCK:I


# instance fields
.field mIsNewNfcLockState:Z

.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 1483
    iput-object p1, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    .line 1488
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->mIsNewNfcLockState:Z

    .line 1483
    return-void
.end method


# virtual methods
.method disableRwP2pIfNeeded()V
    .registers 3

    .prologue
    .line 1581
    iget-object v0, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1582
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService$LockUnlockTask;->performDiscovery(IZ)Z

    .line 1580
    :cond_d
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .registers 7
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1493
    iget-object v0, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    packed-switch v0, :pswitch_data_de

    .line 1501
    :pswitch_b
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1502
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_e8

    .line 1540
    :cond_17
    :goto_17
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1541
    return-object v4

    .line 1496
    :pswitch_1d
    const-string/jumbo v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Processing LockUnlockTask task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from bad state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1497
    iget-object v2, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mState:I

    .line 1496
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1498
    return-object v4

    .line 1504
    :pswitch_49
    iput-boolean v3, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->mIsNewNfcLockState:Z

    .line 1505
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_6d

    .line 1506
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$LockUnlockTask;->unlockNfc()V

    .line 1507
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$LockUnlockTask;->enableRwP2pIfNeeded()V

    .line 1508
    iget-object v1, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 1509
    :try_start_5c
    iget-object v0, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    if-eqz v0, :cond_68

    .line 1510
    iget-object v0, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->setBeamShareActivityState(Z)V
    :try_end_68
    .catchall {:try_start_5c .. :try_end_68} :catchall_6a

    :cond_68
    monitor-exit v1

    goto :goto_17

    .line 1508
    :catchall_6a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1514
    :cond_6d
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_7a

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "already unlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    :cond_7a
    iget-object v0, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_17

    .line 1517
    const/4 v0, 0x2

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_17

    .line 1518
    aget-object v0, p1, v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_17

    .line 1519
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_9e

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "UIM unlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    :cond_9e
    iget-object v0, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get7(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onNfcEnabled()V

    goto/16 :goto_17

    .line 1525
    :pswitch_a9
    iput-boolean v1, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->mIsNewNfcLockState:Z

    .line 1526
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_ce

    .line 1527
    iget-object v1, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 1528
    :try_start_b6
    iget-object v0, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    if-eqz v0, :cond_c2

    .line 1529
    iget-object v0, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->setBeamShareActivityState(Z)V
    :try_end_c2
    .catchall {:try_start_b6 .. :try_end_c2} :catchall_cb

    :cond_c2
    monitor-exit v1

    .line 1532
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$LockUnlockTask;->disableRwP2pIfNeeded()V

    .line 1533
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$LockUnlockTask;->lockNfc()V

    goto/16 :goto_17

    .line 1527
    :catchall_cb
    move-exception v0

    monitor-exit v1

    throw v0

    .line 1535
    :cond_ce
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_17

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "already locked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    .line 1493
    nop

    :pswitch_data_de
    .packed-switch 0x2
        :pswitch_1d
        :pswitch_b
        :pswitch_1d
    .end packed-switch

    .line 1502
    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_49
        :pswitch_a9
    .end packed-switch
.end method

.method enableRwP2pIfNeeded()V
    .registers 6

    .prologue
    .line 1570
    const/4 v0, 0x1

    .line 1572
    .local v0, "newState":I
    iget-object v1, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get30(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "nfc_on"

    .line 1573
    const-string/jumbo v3, "ro.nfc.on.default"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 1572
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1574
    const/4 v0, 0x3

    .line 1577
    :cond_19
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService$LockUnlockTask;->performDiscovery(IZ)Z

    .line 1569
    return-void
.end method

.method lockNfc()V
    .registers 3

    .prologue
    .line 1561
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "Locking Nfc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    :cond_d
    iget-object v0, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get36(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ServiceExtension;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 1563
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$LockUnlockTask;->disableInternal()Z

    .line 1565
    :cond_18
    iget-object v0, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->endDisable()V

    .line 1566
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "param"    # Ljava/lang/Object;

    .prologue
    .line 1545
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "param":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcService$LockUnlockTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 5
    .param p1, "param"    # Ljava/lang/Void;

    .prologue
    .line 1546
    iget-object v0, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get36(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ServiceExtension;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 1547
    iget-object v0, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get36(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ServiceExtension;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->mIsNewNfcLockState:Z

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/nfc/ServiceExtension;->onNfcLockStateChanged(ZZ)V

    .line 1545
    :cond_14
    return-void
.end method

.method unlockNfc()V
    .registers 3

    .prologue
    .line 1552
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "Unlocking Nfc"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :cond_d
    iget-object v0, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->prepareEnable()V

    .line 1554
    iget-object v0, p0, Lcom/android/nfc/NfcService$LockUnlockTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get36(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ServiceExtension;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1555
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$LockUnlockTask;->enableInternal()Z

    .line 1557
    :cond_21
    return-void
.end method

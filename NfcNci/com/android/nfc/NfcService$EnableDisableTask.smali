.class Lcom/android/nfc/NfcService$EnableDisableTask;
.super Landroid/os/AsyncTask;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnableDisableTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 1164
    iput-object p1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method disableInternal()Z
    .registers 13

    .prologue
    const/4 v6, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 1324
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-get1(Lcom/android/nfc/NfcService;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1325
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5, v11}, Lcom/android/nfc/NfcService;->-set3(Lcom/android/nfc/NfcService;Z)Z

    .line 1327
    :cond_10
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-get36(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ServiceExtension;

    move-result-object v5

    if-eqz v5, :cond_12c

    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-get1(Lcom/android/nfc/NfcService;)Z

    move-result v5

    if-eqz v5, :cond_12c

    .line 1335
    :cond_20
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v5, v5, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v5, :cond_33

    .line 1336
    const-string/jumbo v5, "NfcService"

    const-string/jumbo v6, "HCE OFF"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v11, v5, Lcom/android/nfc/NfcService;->mHostRouteEnabled:Z

    .line 1340
    :cond_33
    const-string/jumbo v5, "NfcService"

    const-string/jumbo v6, "Disabling NFC"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    const/4 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 1347
    new-instance v4, Lcom/android/nfc/NfcService$WatchDogThread;

    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const-string/jumbo v6, "disableInternal"

    const/16 v7, 0x2710

    invoke-direct {v4, v5, v6, v7}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 1348
    .local v4, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    invoke-virtual {v4}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 1349
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v5, v5, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v5, :cond_5e

    .line 1350
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-get7(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onNfcDisabled()V

    .line 1352
    :cond_5e
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-wrap8(Lcom/android/nfc/NfcService;)V

    .line 1353
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v5, v11, v11}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 1361
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1363
    .local v3, "startTime":Ljava/lang/Long;
    :goto_72
    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v6

    .line 1364
    :try_start_75
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-get28(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;
    :try_end_7a
    .catchall {:try_start_75 .. :try_end_7a} :catchall_14a

    move-result-object v5

    if-nez v5, :cond_133

    monitor-exit v6

    .line 1374
    :cond_7e
    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v6

    .line 1375
    :try_start_81
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-get28(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;
    :try_end_86
    .catchall {:try_start_81 .. :try_end_86} :catchall_14f

    move-result-object v5

    if-eqz v5, :cond_97

    .line 1377
    :try_start_89
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v7, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v7}, Lcom/android/nfc/NfcService;->-get28(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v7

    iget-object v7, v7, Lcom/android/nfc/NfcService$OpenSecureElement;->binder:Landroid/os/IBinder;

    const/4 v8, -0x1

    invoke-virtual {v5, v8, v7}, Lcom/android/nfc/NfcService;->_nfcEeClose(ILandroid/os/IBinder;)V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_97} :catch_158
    .catchall {:try_start_89 .. :try_end_97} :catchall_14f

    :cond_97
    :goto_97
    monitor-exit v6

    .line 1386
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5}, Lcom/android/nfc/NfcService;->maybeDisconnectTarget()V

    .line 1388
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-get24(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v5

    invoke-virtual {v5, v10, v10, v10}, Lcom/android/nfc/NfcDispatcher;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 1390
    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v6

    .line 1391
    :try_start_a9
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-get9(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DiscoveryManager;

    move-result-object v5

    if-eqz v5, :cond_ba

    .line 1392
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-get9(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DiscoveryManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/DiscoveryManager;->deinitialize()V
    :try_end_ba
    .catchall {:try_start_a9 .. :try_end_ba} :catchall_152

    :cond_ba
    monitor-exit v6

    .line 1396
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/nfc/DeviceHost;->deinitialize()Z

    move-result v2

    .line 1397
    .local v2, "result":Z
    sget-boolean v5, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v5, :cond_e3

    const-string/jumbo v5, "NfcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mDeviceHost.deinitialize() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    :cond_e3
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-get32(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost$NfcProperty;

    move-result-object v5

    const-string/jumbo v6, "apply.rw.ce.rf"

    invoke-interface {v5, v6}, Lcom/android/nfc/DeviceHost$NfcProperty;->applyProperty(Ljava/lang/String;)V

    .line 1401
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-get20(Lcom/android/nfc/NfcService;)Z

    move-result v5

    if-eqz v5, :cond_10e

    .line 1402
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5, v11}, Lcom/android/nfc/NfcService;->-set8(Lcom/android/nfc/NfcService;Z)Z

    .line 1403
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v5, v5, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v5}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    .line 1404
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->-get22(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/nfc/NfcService;->-wrap10(Lcom/android/nfc/NfcService;Ljava/util/HashMap;)V

    .line 1407
    :cond_10e
    invoke-virtual {v4}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 1409
    iget-object v6, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v6

    .line 1410
    :try_start_114
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->getNfcOffParameters()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v7

    iput-object v7, v5, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 1411
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V
    :try_end_120
    .catchall {:try_start_114 .. :try_end_120} :catchall_155

    monitor-exit v6

    .line 1414
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v5}, Lcom/android/nfc/NfcService;->releaseSoundPool()V

    .line 1416
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-wrap13(Lcom/android/nfc/NfcService;)V

    .line 1418
    return v2

    .line 1330
    .end local v2    # "result":Z
    .end local v3    # "startTime":Ljava/lang/Long;
    .end local v4    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :cond_12c
    iget-object v5, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v5, v5, Lcom/android/nfc/NfcService;->mState:I

    if-ne v5, v6, :cond_20

    .line 1331
    return v6

    .restart local v3    # "startTime":Ljava/lang/Long;
    .restart local v4    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :cond_133
    monitor-exit v6

    .line 1368
    const-wide/16 v6, 0x64

    :try_start_136
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_139
    .catch Ljava/lang/InterruptedException; {:try_start_136 .. :try_end_139} :catch_14d

    .line 1372
    :goto_139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1388

    cmp-long v5, v6, v8

    if-gez v5, :cond_7e

    goto/16 :goto_72

    .line 1363
    :catchall_14a
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1369
    :catch_14d
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_139

    .line 1374
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_14f
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1390
    :catchall_152
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1409
    .restart local v2    # "result":Z
    :catchall_155
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1378
    .end local v2    # "result":Z
    :catch_158
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto/16 :goto_97
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1166
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcService$EnableDisableTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .registers 9
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1168
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mState:I

    packed-switch v1, :pswitch_data_11e

    .line 1183
    :pswitch_a
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1185
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_128

    .line 1238
    :cond_16
    :goto_16
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1239
    return-object v6

    .line 1171
    :pswitch_1c
    const-string/jumbo v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Processing EnableDisable task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " from bad state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1172
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v3, v3, Lcom/android/nfc/NfcService;->mState:I

    .line 1171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    return-object v6

    .line 1187
    :pswitch_48
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get1(Lcom/android/nfc/NfcService;)Z

    move-result v1

    if-nez v1, :cond_54

    .line 1188
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->enableInternal()Z

    goto :goto_16

    .line 1190
    :cond_54
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v4}, Lcom/android/nfc/NfcService$EnableDisableTask;->performDiscovery(IZ)Z

    goto :goto_16

    .line 1194
    :pswitch_59
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get1(Lcom/android/nfc/NfcService;)Z

    move-result v1

    if-nez v1, :cond_65

    .line 1195
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->disableInternal()Z

    goto :goto_16

    .line 1197
    :cond_65
    invoke-virtual {p0, v5, v4}, Lcom/android/nfc/NfcService$EnableDisableTask;->performDiscovery(IZ)Z

    goto :goto_16

    .line 1201
    :pswitch_69
    const-string/jumbo v1, "NfcService"

    const-string/jumbo v2, "checking on firmware download"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->checkFirmware()V

    .line 1204
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get30(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "nfc_on"

    sget-boolean v3, Lcom/android/nfc/NfcService;->NFC_ON_DEFAULT:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_94

    .line 1205
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get1(Lcom/android/nfc/NfcService;)Z

    move-result v1

    if-eqz v1, :cond_110

    .line 1209
    :cond_94
    const-string/jumbo v1, "NfcService"

    const-string/jumbo v2, "NFC is off.  Checking firmware version"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1218
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1219
    const-string/jumbo v1, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1220
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1223
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_b9
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->isChipReady()Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 1224
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_d2

    const-string/jumbo v1, "NfcService"

    const-string/jumbo v2, "Sending intent: com.sonymobile.nfc.NFC_CHIP_READY"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_d2
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.nfc.NFC_CHIP_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1226
    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1229
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_e1
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get30(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "first_boot"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1230
    const-string/jumbo v1, "NfcService"

    const-string/jumbo v2, "First Boot"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get31(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "first_boot"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1232
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get31(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_16

    .line 1206
    :cond_110
    const-string/jumbo v1, "NfcService"

    const-string/jumbo v2, "NFC is on. Doing normal stuff"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->enableInternal()Z

    goto :goto_b9

    .line 1168
    nop

    :pswitch_data_11e
    .packed-switch 0x2
        :pswitch_1c
        :pswitch_a
        :pswitch_1c
    .end packed-switch

    .line 1185
    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_48
        :pswitch_59
        :pswitch_69
    .end packed-switch
.end method

.method enableInternal()Z
    .registers 8

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x1

    .line 1247
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v2, v2, Lcom/android/nfc/NfcService;->mState:I

    if-ne v2, v3, :cond_9

    .line 1248
    return v6

    .line 1252
    :cond_9
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get1(Lcom/android/nfc/NfcService;)Z

    move-result v2

    if-eqz v2, :cond_98

    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get36(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ServiceExtension;

    move-result-object v2

    if-eqz v2, :cond_98

    const/4 v0, 0x1

    .line 1254
    .local v0, "disableUpdatingState":Z
    :goto_1a
    const-string/jumbo v2, "NfcService"

    const-string/jumbo v3, "Enabling NFC"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    if-nez v0, :cond_29

    .line 1256
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 1259
    :cond_29
    new-instance v1, Lcom/android/nfc/NfcService$WatchDogThread;

    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const-string/jumbo v3, "enableInternal"

    const v4, 0x15f90

    invoke-direct {v1, v2, v3, v4}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 1260
    .local v1, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    invoke-virtual {v1}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 1262
    :try_start_39
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get34(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_42
    .catchall {:try_start_39 .. :try_end_42} :catchall_a8

    .line 1264
    :try_start_42
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get32(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost$NfcProperty;

    move-result-object v2

    const-string/jumbo v3, "apply.rw.ce"

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost$NfcProperty;->applyProperty(Ljava/lang/String;)V

    .line 1265
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get32(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost$NfcProperty;

    move-result-object v2

    const-string/jumbo v3, "apply.p2p"

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost$NfcProperty;->applyProperty(Ljava/lang/String;)V

    .line 1267
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v3
    :try_end_5d
    .catchall {:try_start_42 .. :try_end_5d} :catchall_9d

    .line 1268
    :try_start_5d
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get9(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DiscoveryManager;

    move-result-object v2

    if-eqz v2, :cond_6e

    .line 1269
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get9(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DiscoveryManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/DiscoveryManager;->initialize()V
    :try_end_6e
    .catchall {:try_start_5d .. :try_end_6e} :catchall_9a

    :cond_6e
    :try_start_6e
    monitor-exit v3

    .line 1272
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->initialize()Z

    move-result v2

    if-nez v2, :cond_ad

    .line 1273
    const-string/jumbo v2, "NfcService"

    const-string/jumbo v3, "Error enabling NFC"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    if-nez v0, :cond_8a

    .line 1275
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V
    :try_end_8a
    .catchall {:try_start_6e .. :try_end_8a} :catchall_9d

    .line 1280
    :cond_8a
    :try_start_8a
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get34(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_93
    .catchall {:try_start_8a .. :try_end_93} :catchall_a8

    .line 1277
    const/4 v2, 0x0

    .line 1283
    invoke-virtual {v1}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 1277
    return v2

    .line 1252
    .end local v0    # "disableUpdatingState":Z
    .end local v1    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :cond_98
    const/4 v0, 0x0

    .restart local v0    # "disableUpdatingState":Z
    goto :goto_1a

    .line 1267
    .restart local v1    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :catchall_9a
    move-exception v2

    :try_start_9b
    monitor-exit v3

    throw v2
    :try_end_9d
    .catchall {:try_start_9b .. :try_end_9d} :catchall_9d

    .line 1279
    :catchall_9d
    move-exception v2

    .line 1280
    :try_start_9e
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->-get34(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1279
    throw v2
    :try_end_a8
    .catchall {:try_start_9e .. :try_end_a8} :catchall_a8

    .line 1282
    :catchall_a8
    move-exception v2

    .line 1283
    invoke-virtual {v1}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 1282
    throw v2

    .line 1280
    :cond_ad
    :try_start_ad
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get34(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_b6
    .catchall {:try_start_ad .. :try_end_b6} :catchall_a8

    .line 1283
    invoke-virtual {v1}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 1286
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v2, v2, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v2, :cond_c8

    .line 1289
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get7(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onNfcEnabled()V

    .line 1292
    :cond_c8
    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v3

    .line 1293
    :try_start_cb
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1294
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get38(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1295
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    iget-object v4, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 1296
    if-nez v0, :cond_ed

    .line 1297
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V
    :try_end_ed
    .catchall {:try_start_cb .. :try_end_ed} :catchall_135

    :cond_ed
    monitor-exit v3

    .line 1301
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->initSoundPool()V

    .line 1303
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-wrap7(Lcom/android/nfc/NfcService;)V

    .line 1306
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v6, v2, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    .line 1307
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->-get35(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v3

    iput v3, v2, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 1308
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, v6}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1310
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get32(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost$NfcProperty;

    move-result-object v2

    const-string/jumbo v3, "apply.rw.ce.rf"

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost$NfcProperty;->applyProperty(Ljava/lang/String;)V

    .line 1311
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get32(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost$NfcProperty;

    move-result-object v2

    const-string/jumbo v3, "apply.debug.routing"

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost$NfcProperty;->applyProperty(Ljava/lang/String;)V

    .line 1313
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get1(Lcom/android/nfc/NfcService;)Z

    move-result v2

    if-eqz v2, :cond_134

    .line 1314
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2, v6}, Lcom/android/nfc/NfcService;->-set3(Lcom/android/nfc/NfcService;Z)Z

    .line 1316
    :cond_134
    return v6

    .line 1292
    :catchall_135
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method performDiscovery(IZ)Z
    .registers 9
    .param p1, "newState"    # I
    .param p2, "toUnlock"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1422
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_30

    const-string/jumbo v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performDiscovery : newState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1423
    invoke-static {p1}, Lcom/android/nfc/NfcService;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1422
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1423
    const-string/jumbo v2, ", toUnlock : "

    .line 1422
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    :cond_30
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    if-ne p1, v0, :cond_38

    if-eqz p2, :cond_53

    .line 1429
    :cond_38
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get36(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ServiceExtension;

    move-result-object v0

    if-nez v0, :cond_76

    .line 1430
    if-ne p1, v5, :cond_61

    .line 1431
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_4f

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "enabling R/W P2P will be done by enableInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_4f
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->enableInternal()Z

    .line 1437
    :cond_52
    :goto_52
    return v3

    .line 1425
    :cond_53
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_60

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "nothing to chenge: performDiscovery is not needed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_60
    return v3

    .line 1433
    :cond_61
    if-ne p1, v3, :cond_52

    if-nez p2, :cond_52

    .line 1434
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_72

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "disabling R/W P2P will be done by disableInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    :cond_72
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$EnableDisableTask;->disableInternal()Z

    goto :goto_52

    .line 1440
    :cond_76
    if-ne p1, v5, :cond_96

    .line 1441
    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "Enabling R/W P2P"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 1443
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v0

    .line 1444
    const/4 v1, 0x3

    :try_start_89
    invoke-virtual {p0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_93

    monitor-exit v0

    .line 1447
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 1463
    :goto_92
    return v3

    .line 1443
    :catchall_93
    move-exception v1

    monitor-exit v0

    throw v1

    .line 1449
    :cond_96
    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "Disabling R/W P2P"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 1451
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-wrap8(Lcom/android/nfc/NfcService;)V

    .line 1452
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->maybeDisconnectTarget()V

    .line 1453
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get24(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v0

    invoke-virtual {v0, v4, v4, v4}, Lcom/android/nfc/NfcDispatcher;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 1454
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get20(Lcom/android/nfc/NfcService;)Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 1455
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/nfc/NfcService;->-set8(Lcom/android/nfc/NfcService;Z)Z

    .line 1456
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    .line 1457
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get22(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/nfc/NfcService;->-wrap10(Lcom/android/nfc/NfcService;Ljava/util/HashMap;)V

    .line 1460
    :cond_d6
    invoke-virtual {p0, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->updateState(I)V

    .line 1461
    iget-object v0, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    goto :goto_92
.end method

.method updateState(I)V
    .registers 6
    .param p1, "newState"    # I

    .prologue
    .line 1467
    iget-object v2, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 1468
    :try_start_3
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v1, v1, Lcom/android/nfc/NfcService;->mState:I
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_31

    if-ne p1, v1, :cond_b

    monitor-exit v2

    .line 1469
    return-void

    .line 1471
    :cond_b
    :try_start_b
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iput p1, v1, Lcom/android/nfc/NfcService;->mState:I

    .line 1472
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1473
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1474
    const-string/jumbo v1, "android.nfc.extra.ADAPTER_STATE"

    iget-object v3, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget v3, v3, Lcom/android/nfc/NfcService;->mState:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1475
    iget-object v1, p0, Lcom/android/nfc/NfcService$EnableDisableTask;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2f
    .catchall {:try_start_b .. :try_end_2f} :catchall_31

    monitor-exit v2

    .line 1466
    return-void

    .line 1467
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_31
    move-exception v1

    monitor-exit v2

    throw v1
.end method

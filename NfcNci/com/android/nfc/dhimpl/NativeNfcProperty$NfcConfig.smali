.class final Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;
.super Lcom/sonymobile/nfc/INfcConfig$Stub;
.source "NativeNfcProperty.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/dhimpl/NativeNfcProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcConfig"
.end annotation


# instance fields
.field private clientMap:Ljava/util/HashMap;

.field final synthetic this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;


# direct methods
.method constructor <init>(Lcom/android/nfc/dhimpl/NativeNfcProperty;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/nfc/dhimpl/NativeNfcProperty;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-direct {p0}, Lcom/sonymobile/nfc/INfcConfig$Stub;-><init>()V

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->clientMap:Ljava/util/HashMap;

    .line 240
    return-void
.end method


# virtual methods
.method public antennaTest([B)[B
    .registers 3
    .param p1, "param"    # [B

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap0(Lcom/android/nfc/dhimpl/NativeNfcProperty;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public binderDied()V
    .registers 7

    .prologue
    .line 245
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->clientMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 246
    :try_start_3
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->clientMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 247
    .local v3, "keySet":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 248
    .local v1, "iterator":Ljava/util/Iterator;
    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 249
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 250
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->clientMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 251
    .local v0, "binder":Landroid/os/IBinder;
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-nez v4, :cond_d

    .line 252
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->clientMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2e

    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "key":Ljava/lang/String;
    :cond_2c
    monitor-exit v5

    .line 244
    return-void

    .line 245
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v3    # "keySet":Ljava/util/Set;
    :catchall_2e
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method buildRoutingParamter(Lcom/android/nfc/DiscoveryManager$Params;III)V
    .registers 16
    .param p1, "p"    # Lcom/android/nfc/DiscoveryManager$Params;
    .param p2, "seMask"    # I
    .param p3, "p2pListenTech"    # I
    .param p4, "ceListenTech"    # I

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v6, 0x0

    .line 415
    filled-new-array {v9, v8, v10}, [I

    move-result-object v3

    .line 422
    .local v3, "seIds":[I
    const/4 v0, 0x0

    .line 423
    .local v0, "dhProtocol":I
    const/4 v4, 0x0

    .line 424
    .local v4, "uiccProtocol":I
    const/4 v1, 0x0

    .line 425
    .local v1, "eseProtocol":I
    array-length v7, v3

    move v5, v6

    :goto_e
    if-ge v5, v7, :cond_1b

    aget v2, v3, v5

    .line 426
    .local v2, "seId":I
    invoke-virtual {p1, v2, v6, v6, v6}, Lcom/android/nfc/DiscoveryManager$Params;->addTechRouting(IIII)V

    .line 427
    invoke-virtual {p1, v2, v6, v6, v6}, Lcom/android/nfc/DiscoveryManager$Params;->addProtoRouting(IIII)V

    .line 425
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 429
    .end local v2    # "seId":I
    :cond_1b
    if-eqz p3, :cond_1f

    .line 430
    const/16 v0, 0x10

    .line 432
    :cond_1f
    if-eqz p4, :cond_32

    .line 433
    and-int/lit8 v5, p2, 0x1

    if-eqz v5, :cond_27

    .line 434
    or-int/lit8 v0, v0, 0x8

    .line 436
    :cond_27
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_2d

    .line 437
    const/16 v4, 0x8

    .line 439
    :cond_2d
    and-int/lit8 v5, p2, 0x8

    if-eqz v5, :cond_32

    .line 440
    const/4 v1, 0x4

    .line 444
    :cond_32
    if-eqz v0, :cond_37

    .line 445
    invoke-virtual {p1, v9, v0, v6, v6}, Lcom/android/nfc/DiscoveryManager$Params;->addProtoRouting(IIII)V

    .line 448
    :cond_37
    if-eqz v4, :cond_3c

    .line 449
    invoke-virtual {p1, v8, v4, v4, v6}, Lcom/android/nfc/DiscoveryManager$Params;->addProtoRouting(IIII)V

    .line 452
    :cond_3c
    if-eqz v1, :cond_41

    .line 453
    invoke-virtual {p1, v10, v1, v1, v6}, Lcom/android/nfc/DiscoveryManager$Params;->addProtoRouting(IIII)V

    .line 414
    :cond_41
    return-void
.end method

.method public getCardEmulationType()I
    .registers 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap5(Lcom/android/nfc/dhimpl/NativeNfcProperty;)I

    move-result v0

    return v0
.end method

.method public getChipVersion()[B
    .registers 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap1(Lcom/android/nfc/dhimpl/NativeNfcProperty;)[B

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue(Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 526
    const/4 v0, -0x1

    .line 527
    .local v0, "id":I
    const-string/jumbo v1, "polling"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 528
    const/4 v0, 0x0

    .line 536
    :cond_b
    :goto_b
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v1, v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap6(Lcom/android/nfc/dhimpl/NativeNfcProperty;I)I

    move-result v1

    return v1

    .line 529
    :cond_12
    const-string/jumbo v1, "uicc_listen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 530
    const/4 v0, 0x1

    goto :goto_b

    .line 531
    :cond_1d
    const-string/jumbo v1, "p2p_listen"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 532
    const/4 v0, 0x2

    goto :goto_b

    .line 533
    :cond_28
    const-string/jumbo v1, "default_se"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 534
    const/4 v0, 0x3

    goto :goto_b
.end method

.method public getP2pTargetMode()I
    .registers 2

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap7(Lcom/android/nfc/dhimpl/NativeNfcProperty;)I

    move-result v0

    return v0
.end method

.method public getPollingMode()I
    .registers 3

    .prologue
    .line 518
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-get1(Lcom/android/nfc/dhimpl/NativeNfcProperty;)Lcom/android/nfc/NfcService;

    move-result-object v1

    monitor-enter v1

    .line 519
    :try_start_7
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap8(Lcom/android/nfc/dhimpl/NativeNfcProperty;)I
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit v1

    return v0

    .line 518
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getPollingTech()I
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap9(Lcom/android/nfc/dhimpl/NativeNfcProperty;)I

    move-result v0

    return v0
.end method

.method public getSecureElement()I
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap10(Lcom/android/nfc/dhimpl/NativeNfcProperty;)I

    move-result v0

    return v0
.end method

.method public getSecureElementList()[I
    .registers 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap4(Lcom/android/nfc/dhimpl/NativeNfcProperty;)[I

    move-result-object v0

    return-object v0
.end method

.method public isNfcLocked()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 294
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getNfcAdapterExInterface()Lcom/sonymobile/nfc/INfcAdapterEx$Stub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->isNfcLocked()Z

    move-result v0

    return v0
.end method

.method public prbsTestStart(II)I
    .registers 5
    .param p1, "tech"    # I
    .param p2, "bitrate"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-get1(Lcom/android/nfc/dhimpl/NativeNfcProperty;)Lcom/android/nfc/NfcService;

    move-result-object v1

    monitor-enter v1

    .line 322
    :try_start_7
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap11(Lcom/android/nfc/dhimpl/NativeNfcProperty;II)I
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit v1

    return v0

    .line 321
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public prbsTestStop()I
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap12(Lcom/android/nfc/dhimpl/NativeNfcProperty;)I

    move-result v0

    return v0
.end method

.method public readParameterValue(IZ)[B
    .registers 5
    .param p1, "address"    # I
    .param p2, "isExtended"    # Z

    .prologue
    .line 341
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-get1(Lcom/android/nfc/dhimpl/NativeNfcProperty;)Lcom/android/nfc/NfcService;

    move-result-object v1

    monitor-enter v1

    .line 342
    :try_start_7
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap2(Lcom/android/nfc/dhimpl/NativeNfcProperty;IZ)[B
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 341
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public readTlvEncodedParameter([B)[B
    .registers 4
    .param p1, "idTlv"    # [B

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-get1(Lcom/android/nfc/dhimpl/NativeNfcProperty;)Lcom/android/nfc/NfcService;

    move-result-object v1

    monitor-enter v1

    .line 356
    :try_start_7
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap3(Lcom/android/nfc/dhimpl/NativeNfcProperty;[B)[B
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 355
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public renewRouting(IIIIIZ)V
    .registers 21
    .param p1, "protocolSe"    # I
    .param p2, "techSe"    # I
    .param p3, "ce"    # I
    .param p4, "pollTech"    # I
    .param p5, "listenTech"    # I
    .param p6, "isLimitTech"    # Z

    .prologue
    .line 377
    invoke-static {}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-get0()Z

    move-result v3

    if-eqz v3, :cond_32

    const-string/jumbo v3, "NativeNfcProperty"

    const-string/jumbo v4, "renewRouting: techSe=%x, ce=%x, poll=%x, listen=%x"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 378
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 377
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_32
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->hasDiscoveryManager()Z

    move-result v3

    if-eqz v3, :cond_af

    .line 380
    invoke-static {}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-get0()Z

    move-result v3

    if-eqz v3, :cond_4b

    const-string/jumbo v3, "NativeNfcProperty"

    const-string/jumbo v4, "DiscoveryManger is available, send request to it."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_4b
    invoke-static {}, Lcom/android/nfc/NfcService;->getConstConfig()Lcom/sonymobile/nfc/ConstConfig;

    move-result-object v3

    iget v3, v3, Lcom/sonymobile/nfc/ConstConfig;->SE_HANDLE_HOST:I

    move/from16 v0, p2

    if-ne v0, v3, :cond_83

    .line 384
    const/4 v13, 0x1

    .line 385
    .local v13, "seMask":I
    const/4 v12, 0x4

    .line 401
    .local v12, "seId":I
    :goto_57
    const/4 v3, 0x2

    .line 400
    move/from16 v0, p4

    move/from16 v1, p5

    move/from16 v2, p3

    invoke-static {v3, v0, v1, v2, v13}, Lcom/android/nfc/DiscoveryManager;->createOverridingParams(IIIII)Lcom/android/nfc/DiscoveryManager$Params;

    move-result-object v10

    .line 402
    .local v10, "p":Lcom/android/nfc/DiscoveryManager$Params;
    move/from16 v0, p5

    move/from16 v1, p3

    invoke-virtual {p0, v10, v13, v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->buildRoutingParamter(Lcom/android/nfc/DiscoveryManager$Params;III)V

    .line 403
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/android/nfc/NfcService;->pushDiscovery(Lcom/android/nfc/DiscoveryManager$Params;)V

    .line 404
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->applyRoutingNow()I

    move-result v11

    .line 405
    .local v11, "ret":I
    if-gez v11, :cond_82

    .line 406
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/nfc/NfcService;->popDiscovery(I)V

    .line 376
    .end local v10    # "p":Lcom/android/nfc/DiscoveryManager$Params;
    .end local v11    # "ret":I
    .end local v12    # "seId":I
    .end local v13    # "seMask":I
    :cond_82
    :goto_82
    return-void

    .line 386
    :cond_83
    invoke-static {}, Lcom/android/nfc/NfcService;->getConstConfig()Lcom/sonymobile/nfc/ConstConfig;

    move-result-object v3

    iget v3, v3, Lcom/sonymobile/nfc/ConstConfig;->SE_HANDLE_UICC:I

    move/from16 v0, p2

    if-ne v0, v3, :cond_90

    .line 387
    const/4 v13, 0x2

    .line 388
    .restart local v13    # "seMask":I
    const/4 v12, 0x2

    .restart local v12    # "seId":I
    goto :goto_57

    .line 389
    .end local v12    # "seId":I
    .end local v13    # "seMask":I
    :cond_90
    invoke-static {}, Lcom/android/nfc/NfcService;->getConstConfig()Lcom/sonymobile/nfc/ConstConfig;

    move-result-object v3

    iget v3, v3, Lcom/sonymobile/nfc/ConstConfig;->SE_HANDLE_ESE_SMX:I

    move/from16 v0, p2

    if-ne v0, v3, :cond_9d

    .line 390
    const/4 v13, 0x4

    .line 391
    .restart local v13    # "seMask":I
    const/4 v12, 0x1

    .restart local v12    # "seId":I
    goto :goto_57

    .line 392
    .end local v12    # "seId":I
    .end local v13    # "seMask":I
    :cond_9d
    invoke-static {}, Lcom/android/nfc/NfcService;->getConstConfig()Lcom/sonymobile/nfc/ConstConfig;

    move-result-object v3

    iget v3, v3, Lcom/sonymobile/nfc/ConstConfig;->SE_HANDLE_ESE_FN:I

    move/from16 v0, p2

    if-ne v0, v3, :cond_ac

    .line 393
    const/16 v13, 0x8

    .line 394
    .restart local v13    # "seMask":I
    const/16 v12, 0x8

    .restart local v12    # "seId":I
    goto :goto_57

    .line 396
    .end local v12    # "seId":I
    .end local v13    # "seMask":I
    :cond_ac
    const/4 v13, 0x0

    .line 397
    .restart local v13    # "seMask":I
    const/4 v12, 0x0

    .restart local v12    # "seId":I
    goto :goto_57

    .line 409
    .end local v12    # "seId":I
    .end local v13    # "seMask":I
    :cond_af
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-static/range {v3 .. v9}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap23(Lcom/android/nfc/dhimpl/NativeNfcProperty;IIIIIZ)V

    goto :goto_82
.end method

.method public sendExtCmd([B)I
    .registers 4
    .param p1, "cmd"    # [B

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-get1(Lcom/android/nfc/dhimpl/NativeNfcProperty;)Lcom/android/nfc/NfcService;

    move-result-object v1

    monitor-enter v1

    .line 363
    :try_start_7
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap14(Lcom/android/nfc/dhimpl/NativeNfcProperty;[B)I
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit v1

    return v0

    .line 362
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public sendExtCmdWithRb([B[B)I
    .registers 5
    .param p1, "cmd"    # [B
    .param p2, "res"    # [B

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-get1(Lcom/android/nfc/dhimpl/NativeNfcProperty;)Lcom/android/nfc/NfcService;

    move-result-object v1

    monitor-enter v1

    .line 370
    :try_start_7
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap13(Lcom/android/nfc/dhimpl/NativeNfcProperty;[B[B)I
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit v1

    return v0

    .line 369
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setCardEmulationType(I)I
    .registers 4
    .param p1, "tech"    # I

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-get1(Lcom/android/nfc/dhimpl/NativeNfcProperty;)Lcom/android/nfc/NfcService;

    move-result-object v1

    monitor-enter v1

    .line 476
    :try_start_7
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap15(Lcom/android/nfc/dhimpl/NativeNfcProperty;I)I
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit v1

    return v0

    .line 475
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setClient(Landroid/os/IBinder;Ljava/lang/String;)I
    .registers 10
    .param p1, "client"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x8

    .line 261
    if-nez p2, :cond_5

    .line 262
    return v5

    .line 264
    :cond_5
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->clientMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 265
    move-object v1, p1

    .line 266
    .local v1, "clientBinder":Landroid/os/IBinder;
    if-eqz p1, :cond_24

    .line 267
    :try_start_b
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->clientMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_48

    move-result v3

    if-nez v3, :cond_1c

    .line 269
    const/4 v3, 0x0

    :try_start_14
    invoke-interface {p1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 270
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->clientMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1c} :catch_1e
    .catchall {:try_start_14 .. :try_end_1c} :catchall_48

    :cond_1c
    monitor-exit v4

    .line 289
    return v6

    .line 271
    :catch_1e
    move-exception v2

    .line 272
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->binderDied()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_48

    monitor-exit v4

    .line 273
    return v5

    .line 277
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_24
    :try_start_24
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->clientMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v1, v0
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_48

    .line 278
    if-nez v1, :cond_32

    monitor-exit v4

    .line 279
    return v5

    .line 281
    :cond_32
    :try_start_32
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->clientMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 282
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->clientMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_48

    move-result v3

    if-nez v3, :cond_1c

    monitor-exit v4

    .line 284
    return v5

    .line 264
    :catchall_48
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setP2pTargetMode(I)I
    .registers 4
    .param p1, "tech"    # I

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-get1(Lcom/android/nfc/dhimpl/NativeNfcProperty;)Lcom/android/nfc/NfcService;

    move-result-object v1

    monitor-enter v1

    .line 500
    :try_start_7
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap16(Lcom/android/nfc/dhimpl/NativeNfcProperty;I)I
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit v1

    return v0

    .line 499
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setPollingMode(I)I
    .registers 4
    .param p1, "mode"    # I

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-get1(Lcom/android/nfc/dhimpl/NativeNfcProperty;)Lcom/android/nfc/NfcService;

    move-result-object v1

    monitor-enter v1

    .line 512
    :try_start_7
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap17(Lcom/android/nfc/dhimpl/NativeNfcProperty;I)I
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit v1

    return v0

    .line 511
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setPollingTech(I)I
    .registers 4
    .param p1, "tech"    # I

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-get1(Lcom/android/nfc/dhimpl/NativeNfcProperty;)Lcom/android/nfc/NfcService;

    move-result-object v1

    monitor-enter v1

    .line 488
    :try_start_7
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap18(Lcom/android/nfc/dhimpl/NativeNfcProperty;I)I
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit v1

    return v0

    .line 487
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setSecureElement(I)I
    .registers 3
    .param p1, "se"    # I

    .prologue
    .line 460
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap19(Lcom/android/nfc/dhimpl/NativeNfcProperty;I)I

    move-result v0

    return v0
.end method

.method public setTestMode(Z)I
    .registers 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 299
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getNfcAdapterExInterface()Lcom/sonymobile/nfc/INfcAdapterEx$Stub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->setTestMode(Z)I

    move-result v0

    return v0
.end method

.method public swpTest(I)I
    .registers 4
    .param p1, "handle"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-get1(Lcom/android/nfc/dhimpl/NativeNfcProperty;)Lcom/android/nfc/NfcService;

    move-result-object v1

    monitor-enter v1

    .line 315
    :try_start_7
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap20(Lcom/android/nfc/dhimpl/NativeNfcProperty;I)I
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit v1

    return v0

    .line 314
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public writeParameterValue(II[BZ)I
    .registers 7
    .param p1, "address"    # I
    .param p2, "length"    # I
    .param p3, "data"    # [B
    .param p4, "isExtended"    # Z

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-get1(Lcom/android/nfc/dhimpl/NativeNfcProperty;)Lcom/android/nfc/NfcService;

    move-result-object v1

    monitor-enter v1

    .line 335
    :try_start_7
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap21(Lcom/android/nfc/dhimpl/NativeNfcProperty;II[BZ)I
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit v1

    return v0

    .line 334
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public writeTlvEncodedParameter([B)I
    .registers 4
    .param p1, "data"    # [B

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-get1(Lcom/android/nfc/dhimpl/NativeNfcProperty;)Lcom/android/nfc/NfcService;

    move-result-object v1

    monitor-enter v1

    .line 349
    :try_start_7
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;->this$0:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-static {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->-wrap22(Lcom/android/nfc/dhimpl/NativeNfcProperty;[B)I
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_f

    move-result v0

    monitor-exit v1

    return v0

    .line 348
    :catchall_f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.class final Lcom/android/nfc/NfcService$NfcAdapterExtrasService;
.super Landroid/nfc/INfcAdapterExtras$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcAdapterExtrasService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 3310
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/nfc/INfcAdapterExtras$Stub;-><init>()V

    return-void
.end method

.method private _open(Landroid/os/IBinder;)I
    .registers 12
    .param p1, "b"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 3345
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v5

    .line 3346
    :try_start_4
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v6}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_b5

    move-result v6

    if-nez v6, :cond_f

    .line 3347
    const/4 v4, -0x6

    monitor-exit v5

    return v4

    .line 3349
    :cond_f
    :try_start_f
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v6, v6, Lcom/android/nfc/NfcService;->mInProvisionMode:Z
    :try_end_13
    .catchall {:try_start_f .. :try_end_13} :catchall_b5

    if-eqz v6, :cond_18

    .line 3351
    const/4 v4, -0x1

    monitor-exit v5

    return v4

    .line 3353
    :cond_18
    :try_start_18
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v6}, Lcom/android/nfc/P2pLinkManager;->isLlcpActive()Z
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_b5

    move-result v6

    if-eqz v6, :cond_25

    .line 3357
    const/4 v4, -0x5

    monitor-exit v5

    return v4

    .line 3359
    :cond_25
    :try_start_25
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->-get28(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_b5

    move-result-object v6

    if-eqz v6, :cond_30

    .line 3360
    const/4 v4, -0x2

    monitor-exit v5

    return v4

    .line 3363
    :cond_30
    const/4 v3, 0x0

    .line 3364
    .local v3, "restorePolling":Z
    :try_start_31
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v6, v6, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    if-eqz v6, :cond_46

    .line 3368
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 3369
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    .line 3370
    const/4 v3, 0x1

    .line 3373
    :cond_46
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v6}, Lcom/android/nfc/NfcService;->doOpenSecureElementConnection()I

    move-result v1

    .line 3374
    .local v1, "handle":I
    if-gez v1, :cond_65

    .line 3376
    if-eqz v3, :cond_63

    .line 3377
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    const/4 v7, 0x1

    invoke-interface {v4, v6, v7}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 3378
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z
    :try_end_63
    .catchall {:try_start_31 .. :try_end_63} :catchall_b5

    :cond_63
    monitor-exit v5

    .line 3380
    return v1

    .line 3382
    :cond_65
    :try_start_65
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v6

    const/4 v7, 0x3

    const/16 v8, 0x3e8

    invoke-interface {v6, v7, v8}, Lcom/android/nfc/DeviceHost;->setTimeout(II)Z

    .line 3383
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v7, Lcom/android/nfc/NfcService$OpenSecureElement;

    iget-object v8, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->getCallingPid()I

    move-result v9

    invoke-direct {v7, v8, v9, v1, p1}, Lcom/android/nfc/NfcService$OpenSecureElement;-><init>(Lcom/android/nfc/NfcService;IILandroid/os/IBinder;)V

    invoke-static {v6, v7}, Lcom/android/nfc/NfcService;->-set10(Lcom/android/nfc/NfcService;Lcom/android/nfc/NfcService$OpenSecureElement;)Lcom/android/nfc/NfcService$OpenSecureElement;
    :try_end_81
    .catchall {:try_start_65 .. :try_end_81} :catchall_b5

    .line 3385
    :try_start_81
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->-get28(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {p1, v6, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_81 .. :try_end_8b} :catch_aa
    .catchall {:try_start_81 .. :try_end_8b} :catchall_b5

    .line 3392
    :goto_8b
    :try_start_8b
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    :goto_9c
    if-ge v4, v7, :cond_b8

    aget-object v2, v6, v4

    .line 3393
    .local v2, "packageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v8, v8, Lcom/android/nfc/NfcService;->mSePackages:Ljava/util/HashSet;

    invoke-virtual {v8, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3392
    add-int/lit8 v4, v4, 0x1

    goto :goto_9c

    .line 3386
    .end local v2    # "packageName":Ljava/lang/String;
    :catch_aa
    move-exception v0

    .line 3387
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->-get28(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/nfc/NfcService$OpenSecureElement;->binderDied()V
    :try_end_b4
    .catchall {:try_start_8b .. :try_end_b4} :catchall_b5

    goto :goto_8b

    .line 3345
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "handle":I
    .end local v3    # "restorePolling":Z
    :catchall_b5
    move-exception v4

    monitor-exit v5

    throw v4

    .restart local v1    # "handle":I
    .restart local v3    # "restorePolling":Z
    :cond_b8
    monitor-exit v5

    .line 3396
    return v1
.end method

.method private _transceive([B)[B
    .registers 5
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3431
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 3432
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 3433
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "NFC is not enabled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_14

    .line 3431
    :catchall_14
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3435
    :cond_17
    :try_start_17
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get28(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v0

    if-nez v0, :cond_28

    .line 3436
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v2, "NFC EE is not open"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3438
    :cond_28
    invoke-static {}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->getCallingPid()I

    move-result v0

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get28(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v2

    iget v2, v2, Lcom/android/nfc/NfcService$OpenSecureElement;->pid:I

    if-eq v0, v2, :cond_3f

    .line 3439
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v2, "Wrong PID"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3f
    .catchall {:try_start_17 .. :try_end_3f} :catchall_14

    :cond_3f
    monitor-exit v1

    .line 3443
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get28(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;

    move-result-object v1

    iget v1, v1, Lcom/android/nfc/NfcService$OpenSecureElement;->handle:I

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/NfcService;->doTransceive(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method private writeEeException(ILjava/lang/String;)Landroid/os/Bundle;
    .registers 5
    .param p1, "exceptionType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 3318
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3319
    .local v0, "p":Landroid/os/Bundle;
    const-string/jumbo v1, "e"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3320
    const-string/jumbo v1, "m"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3321
    return-object v0
.end method

.method private writeNoException()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 3312
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3313
    .local v0, "p":Landroid/os/Bundle;
    const-string/jumbo v1, "e"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3314
    return-object v0
.end method


# virtual methods
.method public authenticate(Ljava/lang/String;[B)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "token"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3472
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 3471
    return-void
.end method

.method public close(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .registers 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3402
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 3406
    :try_start_5
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3, p2}, Lcom/android/nfc/NfcService;->_nfcEeClose(ILandroid/os/IBinder;)V

    .line 3407
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeNoException()Landroid/os/Bundle;
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_13

    move-result-object v1

    .line 3411
    .local v1, "result":Landroid/os/Bundle;
    :goto_12
    return-object v1

    .line 3408
    .end local v1    # "result":Landroid/os/Bundle;
    :catch_13
    move-exception v0

    .line 3409
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {p0, v3, v2}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "result":Landroid/os/Bundle;
    goto :goto_12
.end method

.method public getCardEmulationRoute(Ljava/lang/String;)I
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3450
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 3451
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get10(Lcom/android/nfc/NfcService;)I

    move-result v0

    return v0
.end method

.method public getDriverName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3477
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 3478
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/Bundle;
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "b"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3326
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 3329
    invoke-direct {p0, p2}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->_open(Landroid/os/IBinder;)I

    move-result v0

    .line 3330
    .local v0, "handle":I
    if-gez v0, :cond_13

    .line 3331
    const-string/jumbo v2, "NFCEE open exception."

    invoke-direct {p0, v0, v2}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 3335
    .local v1, "result":Landroid/os/Bundle;
    :goto_12
    return-object v1

    .line 3333
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_13
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeNoException()Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "result":Landroid/os/Bundle;
    goto :goto_12
.end method

.method public setCardEmulationRoute(Ljava/lang/String;I)V
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "route"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3456
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 3457
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3, p2}, Lcom/android/nfc/NfcService;->-set0(Lcom/android/nfc/NfcService;I)I

    .line 3458
    new-instance v0, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v3}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    .line 3459
    .local v0, "applyRoutingTask":Lcom/android/nfc/NfcService$ApplyRoutingTask;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3462
    :try_start_17
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->get()Ljava/lang/Object;
    :try_end_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_17 .. :try_end_1a} :catch_26
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 3455
    :goto_1a
    return-void

    .line 3465
    :catch_1b
    move-exception v1

    .line 3466
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "NfcService"

    const-string/jumbo v4, "failed to set card emulation mode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    .line 3463
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_26
    move-exception v2

    .line 3464
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    const-string/jumbo v3, "NfcService"

    const-string/jumbo v4, "failed to set card emulation mode"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a
.end method

.method public transceive(Ljava/lang/String;[B)Landroid/os/Bundle;
    .registers 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "in"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3416
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 3421
    :try_start_5
    invoke-direct {p0, p2}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->_transceive([B)[B

    move-result-object v1

    .line 3422
    .local v1, "out":[B
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeNoException()Landroid/os/Bundle;

    move-result-object v2

    .line 3423
    .local v2, "result":Landroid/os/Bundle;
    const-string/jumbo v3, "out"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_14

    .line 3427
    .end local v1    # "out":[B
    :goto_13
    return-object v2

    .line 3424
    .end local v2    # "result":Landroid/os/Bundle;
    :catch_14
    move-exception v0

    .line 3425
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {p0, v4, v3}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;->writeEeException(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .restart local v2    # "result":Landroid/os/Bundle;
    goto :goto_13
.end method

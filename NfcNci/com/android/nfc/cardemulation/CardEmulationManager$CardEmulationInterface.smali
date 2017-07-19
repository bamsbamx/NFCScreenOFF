.class final Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;
.super Landroid/nfc/INfcCardEmulation$Stub;
.source "CardEmulationManager.java"

# interfaces
.implements Lcom/android/nfc/cardemulation/NfcCardEmulationExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/CardEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CardEmulationInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/CardEmulationManager;

    .prologue
    .line 498
    iput-object p1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-direct {p0}, Landroid/nfc/INfcCardEmulation$Stub;-><init>()V

    return-void
.end method

.method private isDefaultServiceForAidImpl(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 528
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 529
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 530
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 531
    const/4 v0, 0x0

    return v0

    .line 533
    :cond_14
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDefaultServiceForCategoryImpl(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 503
    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 504
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 505
    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v2, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 506
    return v1

    .line 509
    :cond_14
    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p3, v3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 510
    .local v0, "defaultService":Landroid/content/ComponentName;
    if-eqz v0, :cond_21

    invoke-virtual {v0, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_21
    return v1
.end method


# virtual methods
.method public getAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 593
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 594
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 595
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 596
    const/4 v0, 0x0

    return-object v0

    .line 598
    :cond_14
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getAidGroupForService(IILandroid/content/ComponentName;Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;

    move-result-object v0

    return-object v0
.end method

.method public getServices(ILjava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 625
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 626
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 627
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getServicesForCategory(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getUsedAidTableSizeInPercent(ILjava/lang/String;)I
    .registers 5
    .param p1, "userHandle"    # I
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 678
    const-string/jumbo v0, "CardEmulationManager"

    const-string/jumbo v1, "getUsedAidTableSizeInPercent() is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v0, 0x0

    return v0
.end method

.method public isDefaultServiceForAid(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "aid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->isDefaultServiceForAidImpl(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    .line 541
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-static {v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->-get0(Lcom/android/nfc/cardemulation/CardEmulationManager;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 542
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-static {v1, p2, v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->-wrap0(Lcom/android/nfc/cardemulation/CardEmulationManager;Landroid/content/ComponentName;Z)V

    .line 545
    :cond_11
    return v0
.end method

.method public isDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    .line 516
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->isDefaultServiceForCategoryImpl(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    .line 518
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-static {v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->-get0(Lcom/android/nfc/cardemulation/CardEmulationManager;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 519
    const-string/jumbo v1, "payment"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 518
    if-eqz v1, :cond_1a

    .line 520
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-static {v1, p2, v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->-wrap0(Lcom/android/nfc/cardemulation/CardEmulationManager;Landroid/content/ComponentName;Z)V

    .line 523
    :cond_1a
    return v0
.end method

.method public isRegisteredService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 6
    .param p1, "userHandle"    # I
    .param p2, "app"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 671
    const-string/jumbo v0, "CardEmulationManager"

    const-string/jumbo v1, "isRegisteredService() is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    const/4 v0, 0x1

    return v0
.end method

.method public registerAidGroupForService(ILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "aidGroup"    # Landroid/nfc/cardemulation/AidGroup;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 573
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 574
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 575
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 576
    return v3

    .line 578
    :cond_14
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 579
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 578
    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->registerAidGroupForService(IILandroid/content/ComponentName;Landroid/nfc/cardemulation/AidGroup;)Z

    move-result v0

    .line 580
    .local v0, "result":Z
    if-nez v0, :cond_23

    .line 581
    return v3

    .line 583
    :cond_23
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 584
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sonymobile.nfc.action.SYNC_UIM_REQUEST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v4, "com.sonymobile.nfc.permission.NFC_SECURE_SETTING"

    .line 584
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 587
    :cond_48
    return v0
.end method

.method public registerService(ILandroid/content/ComponentName;Ljava/lang/String;)I
    .registers 6
    .param p1, "userHandle"    # I
    .param p2, "app"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 657
    const-string/jumbo v0, "CardEmulationManager"

    const-string/jumbo v1, "registerService() is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const/4 v0, 0x0

    return v0
.end method

.method public removeAidGroupForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 605
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 606
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 607
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 608
    return v3

    .line 610
    :cond_14
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 611
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 610
    invoke-virtual {v1, p1, v2, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->removeAidGroupForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    .line 612
    .local v0, "result":Z
    if-nez v0, :cond_23

    .line 613
    return v3

    .line 615
    :cond_23
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 616
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sonymobile.nfc.action.SYNC_UIM_REQUEST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v4, "com.sonymobile.nfc.permission.NFC_SECURE_SETTING"

    .line 616
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 619
    :cond_48
    return v0
.end method

.method public setDefaultForNextTap(ILandroid/content/ComponentName;)Z
    .registers 4
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 562
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 563
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 564
    if-eqz p2, :cond_14

    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 567
    :cond_14
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p2}, Lcom/android/nfc/cardemulation/PreferredServices;->setDefaultForNextTap(Landroid/content/ComponentName;)Z

    move-result v0

    return v0

    .line 565
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultServiceForCategory(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 551
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 552
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 553
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 554
    const/4 v0, 0x0

    return v0

    .line 556
    :cond_14
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPreferredService(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 633
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 634
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isServiceRegistered(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 635
    const-string/jumbo v0, "CardEmulationManager"

    const-string/jumbo v1, "setPreferredService: unknown component."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v0, 0x0

    return v0

    .line 638
    :cond_1e
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    .line 639
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 638
    invoke-virtual {v0, p1, v1}, Lcom/android/nfc/cardemulation/PreferredServices;->registerPreferredForegroundService(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public supportsAidPrefixRegistration()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 651
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->supportsAidPrefixRegistration()Z

    move-result v0

    return v0
.end method

.method public unregisterOtherService(ILandroid/content/ComponentName;)I
    .registers 5
    .param p1, "userHandle"    # I
    .param p2, "app"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 664
    const-string/jumbo v0, "CardEmulationManager"

    const-string/jumbo v1, "unregisterOtherService() is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    const/4 v0, 0x0

    return v0
.end method

.method public unsetPreferredService()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 644
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 645
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    .line 646
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 645
    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/PreferredServices;->unregisteredPreferredForegroundService(I)Z

    move-result v0

    return v0
.end method

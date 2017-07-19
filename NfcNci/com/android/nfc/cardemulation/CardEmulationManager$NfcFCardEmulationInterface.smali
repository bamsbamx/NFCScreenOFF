.class final Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;
.super Landroid/nfc/INfcFCardEmulation$Stub;
.source "CardEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/CardEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcFCardEmulationInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/CardEmulationManager;

    .prologue
    .line 687
    iput-object p1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-direct {p0}, Landroid/nfc/INfcFCardEmulation$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disableNfcFForegroundService()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 763
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    .line 764
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 763
    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->unregisteredEnabledForegroundService(I)Z

    move-result v0

    return v0
.end method

.method public enableNfcFForegroundService(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 753
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isNfcFServiceInstalled(ILandroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 754
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    .line 755
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 754
    invoke-virtual {v0, p1, v1}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->registerEnabledForegroundService(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0

    .line 757
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxNumOfRegisterableSystemCodes()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 779
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getLfT3tMax()I

    move-result v0

    return v0
.end method

.method public getNfcFServices(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 770
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 771
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 772
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getServices(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNfcid2ForService(ILandroid/content/ComponentName;)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 728
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 729
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 730
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isNfcFServiceInstalled(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 731
    const/4 v0, 0x0

    return-object v0

    .line 733
    :cond_14
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 734
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 733
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getNfcid2ForService(IILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemCodeForService(ILandroid/content/ComponentName;)Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 691
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 692
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 693
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isNfcFServiceInstalled(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 694
    const/4 v0, 0x0

    return-object v0

    .line 696
    :cond_14
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 697
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 696
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->getSystemCodeForService(IILandroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerSystemCodeForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "systemCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 705
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 706
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isNfcFServiceInstalled(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 707
    const/4 v0, 0x0

    return v0

    .line 709
    :cond_14
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 710
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 709
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->registerSystemCodeForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public removeSystemCodeForService(ILandroid/content/ComponentName;)Z
    .registers 5
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 716
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 717
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 718
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isNfcFServiceInstalled(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 719
    const/4 v0, 0x0

    return v0

    .line 721
    :cond_14
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 722
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 721
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->removeSystemCodeForService(IILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public setNfcid2ForService(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "nfcid2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 740
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 741
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 742
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isNfcFServiceInstalled(ILandroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 743
    const/4 v0, 0x0

    return v0

    .line 745
    :cond_14
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;->this$0:Lcom/android/nfc/cardemulation/CardEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 746
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 745
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->setNfcid2ForService(IILandroid/content/ComponentName;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

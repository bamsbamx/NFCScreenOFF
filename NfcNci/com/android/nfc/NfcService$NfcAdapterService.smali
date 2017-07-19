.class final Lcom/android/nfc/NfcService$NfcAdapterService;
.super Landroid/nfc/INfcAdapter$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcAdapterService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 1729
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/nfc/INfcAdapter$Stub;-><init>()V

    return-void
.end method

.method private computeLockscreenPollMask([I)I
    .registers 11
    .param p1, "techList"    # [I

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 2132
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2134
    .local v2, "techCodeToMask":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2135
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2136
    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2137
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2138
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2139
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2140
    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2142
    const/4 v1, 0x0

    .line 2144
    .local v1, "mask":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_60
    array-length v3, p1

    if-ge v0, v3, :cond_83

    .line 2145
    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 2146
    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v1, v3

    .line 2144
    :cond_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_60

    .line 2149
    :cond_83
    return v1
.end method


# virtual methods
.method public addNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;[I)V
    .registers 6
    .param p1, "unlockHandler"    # Landroid/nfc/INfcUnlockHandler;
    .param p2, "techList"    # [I

    .prologue
    .line 2111
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2113
    invoke-direct {p0, p2}, Lcom/android/nfc/NfcService$NfcAdapterService;->computeLockscreenPollMask([I)I

    move-result v0

    .line 2114
    .local v0, "lockscreenPollMask":I
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 2115
    :try_start_e
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get27(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/nfc/NfcUnlockManager;->addUnlockHandler(Landroid/nfc/INfcUnlockHandler;I)I
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_1f

    monitor-exit v2

    .line 2118
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 2110
    return-void

    .line 2114
    :catchall_1f
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public disable(Z)Z
    .registers 7
    .param p1, "saveState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1765
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1766
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_16

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "Disabling Nfc."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    :cond_16
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get16(Lcom/android/nfc/NfcService;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1769
    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "denying disable() request (nfc lock)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    return v3

    .line 1773
    :cond_28
    if-eqz p1, :cond_2f

    .line 1774
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService;->saveNfcOnSetting(Z)V

    .line 1777
    :cond_2f
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v1, v4, [Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1779
    return v4
.end method

.method public disableNdefPush()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1878
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1879
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 1880
    :try_start_c
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mIsOverridingNdefPushSetting:Z

    if-eqz v1, :cond_1d

    .line 1881
    const-string/jumbo v1, "NfcService"

    const-string/jumbo v3, "unexpected function call"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_7b

    monitor-exit v2

    .line 1882
    return v4

    .line 1885
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_7b

    if-nez v1, :cond_25

    monitor-exit v2

    .line 1886
    return v5

    .line 1888
    :cond_25
    :try_start_25
    const-string/jumbo v1, "NfcService"

    const-string/jumbo v3, "disabling NDEF Push"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get31(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v3, "ndef_push_on"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1890
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get31(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1891
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 1892
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService;->setBeamShareActivityState(Z)V

    .line 1893
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 1894
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 1896
    :cond_60
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.nfc.NDEF_PUSH_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1897
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1898
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1899
    const-string/jumbo v4, "com.sonymobile.nfc.permission.NDEF_PUSH_STATE_CHANGED"

    .line 1898
    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_25 .. :try_end_79} :catchall_7b

    monitor-exit v2

    .line 1901
    return v5

    .line 1879
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_7b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public dispatch(Landroid/nfc/Tag;)V
    .registers 3
    .param p1, "tag"    # Landroid/nfc/Tag;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2036
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2037
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get24(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcDispatcher;->dispatchTag(Landroid/nfc/Tag;)I

    .line 2035
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/NfcService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2030
    return-void
.end method

.method public enable()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1739
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1741
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get16(Lcom/android/nfc/NfcService;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1742
    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "denying enable() request (nfc lock)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    return v4

    .line 1747
    :cond_1b
    const-string/jumbo v0, "persist.security.nfc.lockout"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_25

    .line 1748
    return v4

    .line 1751
    :cond_25
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0, v3}, Lcom/android/nfc/NfcService;->-wrap1(Lcom/android/nfc/NfcService;Z)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 1752
    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "denying enable() request (NFC policy)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1753
    return v4

    .line 1756
    :cond_37
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService;->saveNfcOnSetting(Z)V

    .line 1758
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v1, v3, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1760
    return v3
.end method

.method public enableNdefPush()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 1850
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1851
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 1852
    :try_start_b
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mIsOverridingNdefPushSetting:Z

    if-eqz v1, :cond_1d

    .line 1853
    const-string/jumbo v1, "NfcService"

    const-string/jumbo v3, "unexpected function call"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_b .. :try_end_1a} :catchall_7b

    .line 1854
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 1857
    :cond_1d
    :try_start_1d
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v1, v1, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z
    :try_end_21
    .catchall {:try_start_1d .. :try_end_21} :catchall_7b

    if-eqz v1, :cond_25

    monitor-exit v2

    .line 1858
    return v5

    .line 1860
    :cond_25
    :try_start_25
    const-string/jumbo v1, "NfcService"

    const-string/jumbo v3, "enabling NDEF Push"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get31(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v3, "ndef_push_on"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1862
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get31(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1863
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 1864
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcService;->setBeamShareActivityState(Z)V

    .line 1865
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-eqz v1, :cond_60

    .line 1866
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V

    .line 1868
    :cond_60
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.nfc.NDEF_PUSH_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1869
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1870
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1871
    const-string/jumbo v4, "com.sonymobile.nfc.permission.NDEF_PUSH_STATE_CHANGED"

    .line 1870
    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_79
    .catchall {:try_start_25 .. :try_end_79} :catchall_7b

    monitor-exit v2

    .line 1873
    return v5

    .line 1851
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_7b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getNfcAdapterExtrasInterface(Ljava/lang/String;)Landroid/nfc/INfcAdapterExtras;
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2105
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcService;->enforceNfceeAdminPerm(Ljava/lang/String;)V

    .line 2106
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mExtrasService:Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

    return-object v0
.end method

.method public getNfcAdapterVendorInterface(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 3
    .param p1, "vendor"    # Ljava/lang/String;

    .prologue
    .line 1734
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;
    .registers 2

    .prologue
    .line 2005
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_11

    .line 2006
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get7(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;

    move-result-object v0

    return-object v0

    .line 2008
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;
    .registers 2

    .prologue
    .line 2014
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceFCapable:Z

    if-eqz v0, :cond_11

    .line 2015
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get7(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;

    move-result-object v0

    return-object v0

    .line 2017
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNfcTagInterface()Landroid/nfc/INfcTag;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2000
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    return-object v0
.end method

.method public getState()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2024
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 2025
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v1

    return v0

    .line 2024
    :catchall_9
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public ignore(IILandroid/nfc/ITagRemovedCallback;)Z
    .registers 11
    .param p1, "nativeHandle"    # I
    .param p2, "debounceMs"    # I
    .param p3, "callback"    # Landroid/nfc/ITagRemovedCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1785
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1787
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findAndRemoveObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 1788
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_4a

    .line 1790
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v2

    array-length v1, v2

    .line 1791
    .local v1, "uidLength":I
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v3

    .line 1792
    :try_start_1a
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput p2, v2, Lcom/android/nfc/NfcService;->mDebounceTagDebounceMs:I

    .line 1793
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    new-array v4, v1, [B

    iput-object v4, v2, Lcom/android/nfc/NfcService;->mDebounceTagUid:[B

    .line 1794
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iput-object p3, v2, Lcom/android/nfc/NfcService;->mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;

    .line 1795
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v2

    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mDebounceTagUid:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v4, v6, v1}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_35
    .catchall {:try_start_1a .. :try_end_35} :catchall_47

    monitor-exit v3

    .line 1801
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 1802
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get12(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v2

    int-to-long v4, p2

    const/16 v3, 0x38

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1803
    const/4 v2, 0x1

    return v2

    .line 1791
    :catchall_47
    move-exception v2

    monitor-exit v3

    throw v2

    .line 1805
    .end local v1    # "uidLength":I
    :cond_4a
    return v3
.end method

.method public invokeBeam()V
    .registers 3

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1964
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get11(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/ForegroundUtils;->isInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1965
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/P2pLinkManager;->onManualBeamInvoke(Landroid/nfc/BeamShareData;)V

    .line 1961
    :goto_1f
    return-void

    .line 1967
    :cond_20
    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "Calling activity not in foreground."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public invokeBeamInternal(Landroid/nfc/BeamShareData;)V
    .registers 6
    .param p1, "shareData"    # Landroid/nfc/BeamShareData;

    .prologue
    .line 1973
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1974
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1975
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x13

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1976
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1995
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get12(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1972
    return-void
.end method

.method public isNdefPushEnabled()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1843
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 1844
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget v0, v0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_10

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_12

    :goto_e
    monitor-exit v1

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    .line 1843
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public pausePolling(I)V
    .registers 8
    .param p1, "timeoutInMs"    # I

    .prologue
    .line 1811
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1813
    if-lez p1, :cond_11

    int-to-long v0, p1

    const-wide/32 v2, 0x9c40

    cmp-long v0, v0, v2

    if-lez v0, :cond_33

    .line 1814
    :cond_11
    const-string/jumbo v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Refusing to pause polling for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1815
    return-void

    .line 1818
    :cond_33
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 1819
    :try_start_36
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mPollingPaused:Z

    .line 1820
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V

    .line 1821
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get12(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v0

    .line 1822
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get12(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v2

    const/16 v3, 0x1c

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    int-to-long v4, p1

    .line 1821
    invoke-virtual {v0, v2, v4, v5}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_5a
    .catchall {:try_start_36 .. :try_end_5a} :catchall_5c

    monitor-exit v1

    .line 1810
    return-void

    .line 1818
    :catchall_5c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeNfcUnlockHandler(Landroid/nfc/INfcUnlockHandler;)V
    .registers 5
    .param p1, "token"    # Landroid/nfc/INfcUnlockHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2123
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 2124
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get27(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    invoke-interface {p1}, Landroid/nfc/INfcUnlockHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcUnlockManager;->removeUnlockHandler(Landroid/os/IBinder;)I
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_18

    monitor-exit v1

    .line 2127
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 2122
    return-void

    .line 2123
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public resumePolling()V
    .registers 4

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 1830
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 1831
    :try_start_a
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mPollingPaused:Z
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_31

    if-nez v0, :cond_12

    monitor-exit v1

    .line 1832
    return-void

    .line 1835
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get12(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-result-object v0

    const/16 v2, 0x1c

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService$NfcServiceHandler;->removeMessages(I)V

    .line 1836
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mPollingPaused:Z

    .line 1837
    new-instance v0, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, v2}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2f
    .catchall {:try_start_12 .. :try_end_2f} :catchall_31

    monitor-exit v1

    .line 1827
    return-void

    .line 1830
    :catchall_31
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setAppCallback(Landroid/nfc/IAppCallback;)V
    .registers 6
    .param p1, "callback"    # Landroid/nfc/IAppCallback;

    .prologue
    .line 1943
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1946
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get40(Lcom/android/nfc/NfcService;)Landroid/os/UserManager;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 1947
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get40(Lcom/android/nfc/NfcService;)Landroid/os/UserManager;

    move-result-object v1

    .line 1948
    const-string/jumbo v2, "no_outgoing_beam"

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 1947
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 1949
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/android/nfc/P2pLinkManager;->setNdefCallback(Landroid/nfc/IAppCallback;I)V

    .line 1942
    :cond_33
    :goto_33
    return-void

    .line 1950
    :cond_34
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_33

    .line 1951
    const-string/jumbo v1, "NfcService"

    const-string/jumbo v2, "Disabling default Beam behavior"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method public setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;Landroid/nfc/TechListParcel;)V
    .registers 10
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "techListsParcel"    # Landroid/nfc/TechListParcel;

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1907
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1908
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3}, Lcom/android/nfc/NfcService;->-get11(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/nfc/ForegroundUtils;->isInForeground(I)Z

    move-result v3

    if-nez v3, :cond_23

    .line 1909
    const-string/jumbo v2, "NfcService"

    const-string/jumbo v3, "setForegroundDispatch: Caller not in foreground."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    return-void

    .line 1913
    :cond_23
    if-nez p1, :cond_33

    if-nez p2, :cond_33

    if-nez p3, :cond_33

    .line 1914
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get24(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v2

    invoke-virtual {v2, v5, v5, v5}, Lcom/android/nfc/NfcDispatcher;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 1915
    return-void

    .line 1919
    :cond_33
    if-eqz p2, :cond_39

    .line 1920
    array-length v3, p2

    if-nez v3, :cond_4a

    .line 1921
    const/4 p2, 0x0

    .line 1932
    .end local p2    # "filters":[Landroid/content/IntentFilter;
    :cond_39
    const/4 v1, 0x0

    .line 1933
    .local v1, "techLists":[[Ljava/lang/String;
    if-eqz p3, :cond_40

    .line 1934
    invoke-virtual {p3}, Landroid/nfc/TechListParcel;->getTechLists()[[Ljava/lang/String;

    move-result-object v1

    .line 1937
    .end local v1    # "techLists":[[Ljava/lang/String;
    :cond_40
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get24(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/nfc/NfcDispatcher;->setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 1906
    return-void

    .line 1923
    .restart local p2    # "filters":[Landroid/content/IntentFilter;
    :cond_4a
    array-length v3, p2

    :goto_4b
    if-ge v2, v3, :cond_39

    aget-object v0, p2, v2

    .line 1924
    .local v0, "filter":Landroid/content/IntentFilter;
    if-nez v0, :cond_5a

    .line 1925
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "null IntentFilter"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1923
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4b
.end method

.method public setP2pModes(II)V
    .registers 6
    .param p1, "initiatorModes"    # I
    .param p2, "targetModes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2042
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceAdminPermissions(Landroid/content/Context;)V

    .line 2043
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 2046
    :try_start_a
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get9(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DiscoveryManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 2047
    const-string/jumbo v0, "NfcService"

    const-string/jumbo v2, "DiscoveryManager is enabled. setP2pModes is disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_37

    monitor-exit v1

    .line 2048
    return-void

    :cond_1d
    monitor-exit v1

    .line 2051
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->setP2pInitiatorModes(I)V

    .line 2052
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/nfc/DeviceHost;->setP2pTargetModes(I)V

    .line 2053
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 2041
    return-void

    .line 2043
    :catchall_37
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setReaderMode(Landroid/os/IBinder;Landroid/nfc/IAppCallback;ILandroid/os/Bundle;)V
    .registers 14
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "callback"    # Landroid/nfc/IAppCallback;
    .param p3, "flags"    # I
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x7d

    .line 2059
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2060
    .local v0, "callingUid":I
    const/16 v5, 0x3e8

    if-eq v0, v5, :cond_16

    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v5}, Lcom/android/nfc/NfcService;->-get11(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/nfc/ForegroundUtils;->isInForeground(I)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 2064
    :cond_16
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v5

    .line 2065
    :try_start_19
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v6}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v6

    if-nez v6, :cond_36

    .line 2066
    const-string/jumbo v4, "NfcService"

    const-string/jumbo v6, "setReaderMode() called while NFC is not enabled."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_c5

    monitor-exit v5

    .line 2067
    return-void

    .line 2061
    :cond_2c
    const-string/jumbo v4, "NfcService"

    const-string/jumbo v5, "setReaderMode: Caller is not in foreground and is not system process."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    return-void

    .line 2069
    :cond_36
    if-eqz p3, :cond_98

    .line 2071
    :try_start_38
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    new-instance v7, Lcom/android/nfc/NfcService$ReaderModeParams;

    iget-object v8, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v7, v8}, Lcom/android/nfc/NfcService$ReaderModeParams;-><init>(Lcom/android/nfc/NfcService;)V

    iput-object v7, v6, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    .line 2072
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iput-object p2, v6, Lcom/android/nfc/NfcService$ReaderModeParams;->callback:Landroid/nfc/IAppCallback;

    .line 2073
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iput p3, v6, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    .line 2074
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz p4, :cond_5e

    .line 2075
    const-string/jumbo v4, "presence"

    .line 2076
    const/16 v7, 0x7d

    .line 2075
    invoke-virtual {p4, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 2074
    :cond_5e
    iput v4, v6, Lcom/android/nfc/NfcService$ReaderModeParams;->presenceCheckDelay:I

    .line 2078
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->hasDiscoveryManager()Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 2080
    new-instance v3, Lcom/android/nfc/DiscoveryManager$Params;

    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    invoke-direct {v3, v4}, Lcom/android/nfc/DiscoveryManager$Params;-><init>(Lcom/android/nfc/NfcService$ReaderModeParams;)V

    .line 2081
    .local v3, "p":Lcom/android/nfc/DiscoveryManager$Params;
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->-get9(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DiscoveryManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/nfc/DiscoveryManager;->pushDiscovery(Lcom/android/nfc/DiscoveryManager$Params;)I

    .line 2083
    .end local v3    # "p":Lcom/android/nfc/DiscoveryManager$Params;
    :cond_7a
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->-get33(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {p1, v4, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_84
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_84} :catch_8c
    .catchall {:try_start_38 .. :try_end_84} :catchall_c5

    .line 2099
    :goto_84
    :try_start_84
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/android/nfc/NfcService;->applyRouting(Z)V
    :try_end_8a
    .catchall {:try_start_84 .. :try_end_8a} :catchall_c5

    monitor-exit v5

    .line 2058
    return-void

    .line 2084
    :catch_8c
    move-exception v1

    .line 2085
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_8d
    const-string/jumbo v4, "NfcService"

    const-string/jumbo v6, "Remote binder has already died."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_8d .. :try_end_96} :catchall_c5

    monitor-exit v5

    .line 2086
    return-void

    .line 2090
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_98
    :try_start_98
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->hasDiscoveryManager()Z

    move-result v4

    if-eqz v4, :cond_aa

    .line 2091
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->-get9(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DiscoveryManager;

    move-result-object v4

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/android/nfc/DiscoveryManager;->popDiscovery(I)I

    .line 2093
    :cond_aa
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    const/4 v6, 0x0

    iput-object v6, v4, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    .line 2094
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->-get33(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    move-result-object v4

    const/4 v6, 0x0

    invoke-interface {p1, v4, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_b9
    .catch Ljava/util/NoSuchElementException; {:try_start_98 .. :try_end_b9} :catch_ba
    .catchall {:try_start_98 .. :try_end_b9} :catchall_c5

    goto :goto_84

    .line 2095
    :catch_ba
    move-exception v2

    .line 2096
    .local v2, "e":Ljava/util/NoSuchElementException;
    :try_start_bb
    const-string/jumbo v4, "NfcService"

    const-string/jumbo v6, "Reader mode Binder was never registered."

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catchall {:try_start_bb .. :try_end_c4} :catchall_c5

    goto :goto_84

    .line 2064
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    :catchall_c5
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public verifyNfcPermission()V
    .registers 2

    .prologue
    .line 1957
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcAdapterService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 1956
    return-void
.end method

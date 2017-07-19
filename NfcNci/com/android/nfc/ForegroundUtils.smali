.class public Lcom/android/nfc/ForegroundUtils;
.super Landroid/app/IProcessObserver$Stub;
.source "ForegroundUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/ForegroundUtils$Callback;,
        Lcom/android/nfc/ForegroundUtils$Singleton;
    }
.end annotation


# static fields
.field static final DBG:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBackgroundCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/android/nfc/ForegroundUtils$Callback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mForegroundUidPids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/util/SparseBooleanArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mIActivityManager:Landroid/app/IActivityManager;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 4

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 35
    const-string/jumbo v1, "ForegroundUtils"

    iput-object v1, p0, Lcom/android/nfc/ForegroundUtils;->TAG:Ljava/lang/String;

    .line 38
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mLock:Ljava/lang/Object;

    .line 43
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    .line 45
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 44
    iput-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mBackgroundCallbacks:Landroid/util/SparseArray;

    .line 52
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mIActivityManager:Landroid/app/IActivityManager;

    .line 54
    :try_start_23
    iget-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1, p0}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_28} :catch_29

    .line 51
    :goto_28
    return-void

    .line 55
    :catch_29
    move-exception v0

    .line 57
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "ForegroundUtils"

    const-string/jumbo v2, "ForegroundUtils: could not get IActivityManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method synthetic constructor <init>(Lcom/android/nfc/ForegroundUtils;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/nfc/ForegroundUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/nfc/ForegroundUtils;
    .registers 1

    .prologue
    .line 66
    invoke-static {}, Lcom/android/nfc/ForegroundUtils$Singleton;->-get0()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    return-object v0
.end method

.method private handleUidToBackground(I)V
    .registers 9
    .param p1, "uid"    # I

    .prologue
    .line 140
    const/4 v3, 0x0

    .line 141
    .local v3, "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    iget-object v6, p0, Lcom/android/nfc/ForegroundUtils;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 142
    :try_start_4
    iget-object v5, p0, Lcom/android/nfc/ForegroundUtils;->mBackgroundCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 143
    .local v2, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    if-eqz v2, :cond_19

    .line 144
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_30

    .line 146
    .end local v3    # "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    .local v4, "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    :try_start_13
    iget-object v5, p0, Lcom/android/nfc/ForegroundUtils;->mBackgroundCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_34

    move-object v3, v4

    .end local v4    # "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    :cond_19
    monitor-exit v6

    .line 150
    if-eqz v3, :cond_33

    .line 151
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/ForegroundUtils$Callback;

    .line 152
    .local v0, "callback":Lcom/android/nfc/ForegroundUtils$Callback;
    invoke-interface {v0, p1}, Lcom/android/nfc/ForegroundUtils$Callback;->onUidToBackground(I)V

    goto :goto_20

    .line 141
    .end local v0    # "callback":Lcom/android/nfc/ForegroundUtils$Callback;
    .end local v1    # "callback$iterator":Ljava/util/Iterator;
    .end local v2    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    .restart local v3    # "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    :catchall_30
    move-exception v5

    .end local v3    # "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    :goto_31
    monitor-exit v6

    throw v5

    .line 139
    .restart local v2    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    :cond_33
    return-void

    .line 141
    .restart local v4    # "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    :catchall_34
    move-exception v5

    move-object v3, v4

    .end local v4    # "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    .local v3, "pendingCallbacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    goto :goto_31
.end method

.method private isInForegroundLocked(I)Z
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public getForegroundPids(I)Ljava/util/List;
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v3, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    .line 125
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 124
    invoke-virtual {v3, p1, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 126
    .local v0, "foregroundPids":Landroid/util/SparseBooleanArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .local v2, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/nfc/ForegroundUtils;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 128
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    :try_start_1a
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2e

    .line 129
    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_30

    .line 128
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_2e
    monitor-exit v4

    .line 132
    return-object v2

    .line 127
    :catchall_30
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public getForegroundUids()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 110
    .local v1, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/android/nfc/ForegroundUtils;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 111
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    :try_start_f
    iget-object v2, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_27

    .line 112
    iget-object v2, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catchall {:try_start_f .. :try_end_24} :catchall_29

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_27
    monitor-exit v3

    .line 115
    return-object v1

    .line 110
    :catchall_29
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public isInForeground(I)Z
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/nfc/ForegroundUtils;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/nfc/ForegroundUtils;->isInForegroundLocked(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_9

    move-result v1

    monitor-exit v0

    return v1

    .line 99
    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public onForegroundActivitiesChanged(IIZ)V
    .registers 9
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "hasForegroundActivities"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    const/4 v1, 0x0

    .line 161
    .local v1, "uidToBackground":Z
    iget-object v3, p0, Lcom/android/nfc/ForegroundUtils;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 162
    :try_start_4
    iget-object v2, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    .line 163
    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 162
    invoke-virtual {v2, p2, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseBooleanArray;

    .line 164
    .local v0, "foregroundPids":Landroid/util/SparseBooleanArray;
    if-eqz p3, :cond_2a

    .line 165
    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 169
    :goto_17
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-nez v2, :cond_31

    .line 170
    iget-object v2, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2e

    .line 171
    const/4 v1, 0x1

    :goto_23
    monitor-exit v3

    .line 176
    if-eqz v1, :cond_29

    .line 177
    invoke-direct {p0, p2}, Lcom/android/nfc/ForegroundUtils;->handleUidToBackground(I)V

    .line 159
    :cond_29
    return-void

    .line 167
    :cond_2a
    :try_start_2a
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_2e

    goto :goto_17

    .line 161
    .end local v0    # "foregroundPids":Landroid/util/SparseBooleanArray;
    :catchall_2e
    move-exception v2

    monitor-exit v3

    throw v2

    .line 173
    .restart local v0    # "foregroundPids":Landroid/util/SparseBooleanArray;
    :cond_31
    :try_start_31
    iget-object v2, p0, Lcom/android/nfc/ForegroundUtils;->mForegroundUidPids:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_2e

    goto :goto_23
.end method

.method public onProcessDied(II)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/nfc/ForegroundUtils;->onForegroundActivitiesChanged(IIZ)V

    .line 201
    return-void
.end method

.method public onProcessStateChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "procState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 209
    return-void
.end method

.method public registerUidToBackgroundCallback(Lcom/android/nfc/ForegroundUtils$Callback;I)Z
    .registers 7
    .param p1, "callback"    # Lcom/android/nfc/ForegroundUtils$Callback;
    .param p2, "uid"    # I

    .prologue
    .line 81
    iget-object v2, p0, Lcom/android/nfc/ForegroundUtils;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 82
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/nfc/ForegroundUtils;->isInForegroundLocked(I)Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_24

    move-result v1

    if-nez v1, :cond_c

    .line 83
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 87
    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mBackgroundCallbacks:Landroid/util/SparseArray;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 88
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, p0, Lcom/android/nfc/ForegroundUtils;->mBackgroundCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_c .. :try_end_21} :catchall_24

    .line 90
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    .line 81
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/ForegroundUtils$Callback;>;"
    :catchall_24
    move-exception v1

    monitor-exit v2

    throw v1
.end method

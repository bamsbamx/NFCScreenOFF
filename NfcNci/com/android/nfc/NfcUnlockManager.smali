.class Lcom/android/nfc/NfcUnlockManager;
.super Ljava/lang/Object;
.source "NfcUnlockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcUnlockManager$Singleton;,
        Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcUnlockManager"


# instance fields
.field private mLockscreenPollMask:I

.field private final mUnlockHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I

    .line 94
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/NfcUnlockManager;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/nfc/NfcUnlockManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/nfc/NfcUnlockManager;
    .registers 1

    .prologue
    .line 32
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager$Singleton;->-get0()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v0

    return-object v0
.end method

.method private recomputePollMask()I
    .registers 5

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "pollMask":I
    iget-object v3, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "wrapper$iterator":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;

    .line 77
    .local v1, "wrapper":Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;
    iget v3, v1, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;->mPollMask:I

    or-int/2addr v0, v3

    goto :goto_b

    .line 79
    .end local v1    # "wrapper":Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;
    :cond_1b
    return v0
.end method


# virtual methods
.method declared-synchronized addUnlockHandler(Landroid/nfc/INfcUnlockHandler;I)I
    .registers 7
    .param p1, "unlockHandler"    # Landroid/nfc/INfcUnlockHandler;
    .param p2, "pollMask"    # I

    .prologue
    monitor-enter p0

    .line 37
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/nfc/INfcUnlockHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 38
    iget v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_27

    monitor-exit p0

    return v0

    .line 41
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/nfc/INfcUnlockHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 42
    new-instance v2, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, v3}, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;-><init>(Landroid/nfc/INfcUnlockHandler;ILcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;)V

    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_27

    monitor-exit p0

    return v0

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getLockscreenPollMask()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 83
    :try_start_1
    iget v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isLockscreenPollingEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 87
    :try_start_2
    iget v1, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_9

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    :cond_7
    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized removeUnlockHandler(Landroid/os/IBinder;)I
    .registers 3
    .param p1, "unlockHandler"    # Landroid/os/IBinder;

    .prologue
    monitor-enter p0

    .line 47
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 48
    iget-object v0, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-direct {p0}, Lcom/android/nfc/NfcUnlockManager;->recomputePollMask()I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I

    .line 52
    :cond_14
    iget v0, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    return v0

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized tryUnlock(Landroid/nfc/Tag;)Z
    .registers 8
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    monitor-enter p0

    .line 56
    :try_start_1
    iget-object v4, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 57
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/IBinder;>;"
    :cond_b
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_3e

    move-result v4

    if-eqz v4, :cond_41

    .line 59
    :try_start_11
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 60
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/nfc/NfcUnlockManager;->mUnlockHandlers:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;

    .line 61
    .local v2, "handlerWrapper":Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;
    iget-object v4, v2, Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;->mUnlockHandler:Landroid/nfc/INfcUnlockHandler;

    invoke-interface {v4, p1}, Landroid/nfc/INfcUnlockHandler;->onUnlockAttempted(Landroid/nfc/Tag;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_24} :catch_2a
    .catchall {:try_start_11 .. :try_end_24} :catchall_3e

    move-result v4

    if-eqz v4, :cond_b

    .line 62
    const/4 v4, 0x1

    monitor-exit p0

    return v4

    .line 64
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "handlerWrapper":Lcom/android/nfc/NfcUnlockManager$UnlockHandlerWrapper;
    :catch_2a
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2b
    const-string/jumbo v4, "NfcUnlockManager"

    const-string/jumbo v5, "failed to communicate with unlock handler, removing"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 66
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 67
    invoke-direct {p0}, Lcom/android/nfc/NfcUnlockManager;->recomputePollMask()I

    move-result v4

    iput v4, p0, Lcom/android/nfc/NfcUnlockManager;->mLockscreenPollMask:I
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_3e

    goto :goto_b

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/IBinder;>;"
    :catchall_3e
    move-exception v4

    monitor-exit p0

    throw v4

    .line 71
    .restart local v3    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/IBinder;>;"
    :cond_41
    const/4 v4, 0x0

    monitor-exit p0

    return v4
.end method

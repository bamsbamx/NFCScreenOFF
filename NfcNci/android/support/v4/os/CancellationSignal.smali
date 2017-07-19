.class public final Landroid/support/v4/os/CancellationSignal;
.super Ljava/lang/Object;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    }
.end annotation


# instance fields
.field private mCancelInProgress:Z

.field private mCancellationSignalObj:Ljava/lang/Object;

.field private mIsCanceled:Z

.field private mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private waitForCancelFinishedLocked()V
    .registers 3

    .prologue
    .line 150
    :goto_0
    iget-boolean v1, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    if-eqz v1, :cond_a

    .line 152
    :try_start_4
    invoke-virtual {p0}, Landroid/support/v4/os/CancellationSignal;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_0

    .line 153
    :catch_8
    move-exception v0

    .local v0, "ex":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 149
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_a
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 5

    .prologue
    .line 67
    monitor-enter p0

    .line 68
    :try_start_1
    iget-boolean v2, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_25

    if-eqz v2, :cond_7

    monitor-exit p0

    .line 69
    return-void

    .line 71
    :cond_7
    const/4 v2, 0x1

    :try_start_8
    iput-boolean v2, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    .line 72
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    .line 73
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    .line 74
    .local v0, "listener":Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    iget-object v1, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_25

    .local v1, "obj":Ljava/lang/Object;
    monitor-exit p0

    .line 78
    if-eqz v0, :cond_17

    .line 79
    :try_start_14
    invoke-interface {v0}, Landroid/support/v4/os/CancellationSignal$OnCancelListener;->onCancel()V

    .line 81
    :cond_17
    if-eqz v1, :cond_1c

    .line 82
    invoke-static {v1}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->cancel(Ljava/lang/Object;)V
    :try_end_1c
    .catchall {:try_start_14 .. :try_end_1c} :catchall_2b

    .line 85
    :cond_1c
    monitor-enter p0

    .line 86
    const/4 v2, 0x0

    :try_start_1e
    iput-boolean v2, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    .line 87
    invoke-virtual {p0}, Landroid/support/v4/os/CancellationSignal;->notifyAll()V
    :try_end_23
    .catchall {:try_start_1e .. :try_end_23} :catchall_28

    monitor-exit p0

    .line 64
    return-void

    .line 67
    .end local v0    # "listener":Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    .end local v1    # "obj":Ljava/lang/Object;
    :catchall_25
    move-exception v2

    monitor-exit p0

    throw v2

    .line 85
    .restart local v0    # "listener":Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    .restart local v1    # "obj":Ljava/lang/Object;
    :catchall_28
    move-exception v2

    monitor-exit p0

    throw v2

    .line 84
    :catchall_2b
    move-exception v2

    .line 85
    monitor-enter p0

    .line 86
    const/4 v3, 0x0

    :try_start_2e
    iput-boolean v3, p0, Landroid/support/v4/os/CancellationSignal;->mCancelInProgress:Z

    .line 87
    invoke-virtual {p0}, Landroid/support/v4/os/CancellationSignal;->notifyAll()V
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_35

    monitor-exit p0

    .line 84
    throw v2

    .line 85
    :catchall_35
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getCancellationSignalObject()Ljava/lang/Object;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 135
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_8

    .line 136
    return-object v2

    .line 138
    :cond_8
    monitor-enter p0

    .line 139
    :try_start_9
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    if-nez v0, :cond_1c

    .line 140
    invoke-static {}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->create()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    .line 141
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z

    if-eqz v0, :cond_1c

    .line 142
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->cancel(Ljava/lang/Object;)V

    .line 145
    :cond_1c
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mCancellationSignalObj:Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-object v0

    .line 138
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCanceled()Z
    .registers 2

    .prologue
    .line 44
    monitor-enter p0

    .line 45
    :try_start_1
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 44
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnCancelListener(Landroid/support/v4/os/CancellationSignal$OnCancelListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    .prologue
    .line 109
    monitor-enter p0

    .line 110
    :try_start_1
    invoke-direct {p0}, Landroid/support/v4/os/CancellationSignal;->waitForCancelFinishedLocked()V

    .line 112
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_19

    if-ne v0, p1, :cond_a

    monitor-exit p0

    .line 113
    return-void

    .line 115
    :cond_a
    :try_start_a
    iput-object p1, p0, Landroid/support/v4/os/CancellationSignal;->mOnCancelListener:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    .line 116
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->mIsCanceled:Z
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_19

    if-eqz v0, :cond_12

    if-nez p1, :cond_14

    :cond_12
    monitor-exit p0

    .line 117
    return-void

    :cond_14
    monitor-exit p0

    .line 120
    invoke-interface {p1}, Landroid/support/v4/os/CancellationSignal$OnCancelListener;->onCancel()V

    .line 108
    return-void

    .line 109
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public throwIfCanceled()V
    .registers 2

    .prologue
    .line 55
    invoke-virtual {p0}, Landroid/support/v4/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 56
    new-instance v0, Landroid/support/v4/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/support/v4/os/OperationCanceledException;-><init>()V

    throw v0

    .line 54
    :cond_c
    return-void
.end method

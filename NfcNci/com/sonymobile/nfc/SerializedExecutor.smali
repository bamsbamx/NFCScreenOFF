.class public Lcom/sonymobile/nfc/SerializedExecutor;
.super Ljava/lang/Object;
.source "SerializedExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;


# instance fields
.field private mActive:Ljava/lang/Runnable;

.field private final mTasks:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Lcom/sonymobile/nfc/SerializedExecutor;

    invoke-direct {v0}, Lcom/sonymobile/nfc/SerializedExecutor;-><init>()V

    sput-object v0, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/nfc/SerializedExecutor;->mTasks:Ljava/util/ArrayDeque;

    .line 33
    return-void
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    monitor-enter p0

    .line 37
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/nfc/SerializedExecutor;->mTasks:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/sonymobile/nfc/SerializedExecutor$1;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/nfc/SerializedExecutor$1;-><init>(Lcom/sonymobile/nfc/SerializedExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/sonymobile/nfc/SerializedExecutor;->mActive:Ljava/lang/Runnable;

    if-nez v0, :cond_12

    .line 48
    invoke-virtual {p0}, Lcom/sonymobile/nfc/SerializedExecutor;->scheduleNext()V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    .line 36
    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized scheduleNext()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/nfc/SerializedExecutor;->mTasks:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/sonymobile/nfc/SerializedExecutor;->mActive:Ljava/lang/Runnable;

    .line 54
    iget-object v0, p0, Lcom/sonymobile/nfc/SerializedExecutor;->mActive:Ljava/lang/Runnable;

    if-eqz v0, :cond_16

    .line 55
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/sonymobile/nfc/SerializedExecutor;->mActive:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit p0

    .line 52
    return-void

    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

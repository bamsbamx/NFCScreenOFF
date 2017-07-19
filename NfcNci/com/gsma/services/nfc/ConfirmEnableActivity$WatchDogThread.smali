.class Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;
.super Ljava/lang/Thread;
.source "ConfirmEnableActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gsma/services/nfc/ConfirmEnableActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchDogThread"
.end annotation


# instance fields
.field final mCancelWaiter:Ljava/lang/Object;

.field mCanceled:Z

.field final mTimeout:I

.field final synthetic this$0:Lcom/gsma/services/nfc/ConfirmEnableActivity;


# direct methods
.method public constructor <init>(Lcom/gsma/services/nfc/ConfirmEnableActivity;Ljava/lang/String;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/gsma/services/nfc/ConfirmEnableActivity;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    .line 42
    iput-object p1, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;->this$0:Lcom/gsma/services/nfc/ConfirmEnableActivity;

    .line 43
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;->mCancelWaiter:Ljava/lang/Object;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;->mCanceled:Z

    .line 44
    iput p3, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;->mTimeout:I

    .line 42
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 64
    :try_start_1
    iget-object v1, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;->mCancelWaiter:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_12

    .line 65
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;->mCanceled:Z

    .line 66
    iget-object v0, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;->mCancelWaiter:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :try_start_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_12

    monitor-exit p0

    .line 63
    return-void

    .line 64
    :catchall_f
    move-exception v0

    :try_start_10
    monitor-exit v1

    throw v0
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_12

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 7

    .prologue
    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;->mCancelWaiter:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_1b

    .line 51
    :try_start_3
    iget-object v1, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;->mCancelWaiter:Ljava/lang/Object;

    iget v3, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;->mTimeout:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 52
    iget-boolean v1, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;->mCanceled:Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_18

    if-eqz v1, :cond_11

    :try_start_f
    monitor-exit v2

    .line 53
    return-void

    :cond_11
    monitor-exit v2
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_1b

    .line 60
    :goto_12
    iget-object v1, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;->this$0:Lcom/gsma/services/nfc/ConfirmEnableActivity;

    invoke-virtual {v1}, Lcom/gsma/services/nfc/ConfirmEnableActivity;->finish()V

    .line 48
    return-void

    .line 50
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v2

    throw v1
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_1b} :catch_1b

    .line 56
    :catch_1b
    move-exception v0

    .line 58
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {p0}, Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;->interrupt()V

    goto :goto_12
.end method

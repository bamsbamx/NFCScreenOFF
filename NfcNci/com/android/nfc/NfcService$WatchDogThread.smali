.class Lcom/android/nfc/NfcService$WatchDogThread;
.super Ljava/lang/Thread;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchDogThread"
.end annotation


# instance fields
.field final mCancelWaiter:Ljava/lang/Object;

.field mCanceled:Z

.field final mTimeout:I

.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "timeout"    # I

    .prologue
    .line 3559
    iput-object p1, p0, Lcom/android/nfc/NfcService$WatchDogThread;->this$0:Lcom/android/nfc/NfcService;

    .line 3560
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 3555
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCancelWaiter:Ljava/lang/Object;

    .line 3557
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCanceled:Z

    .line 3561
    iput p3, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mTimeout:I

    .line 3559
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 3583
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCancelWaiter:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_12

    .line 3584
    const/4 v0, 0x1

    :try_start_5
    iput-boolean v0, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCanceled:Z

    .line 3585
    iget-object v0, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCancelWaiter:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_f

    :try_start_c
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_12

    monitor-exit p0

    .line 3582
    return-void

    .line 3583
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
    .line 3567
    :try_start_0
    iget-object v2, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCancelWaiter:Ljava/lang/Object;

    monitor-enter v2
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_3d

    .line 3568
    :try_start_3
    iget-object v1, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCancelWaiter:Ljava/lang/Object;

    iget v3, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mTimeout:I

    int-to-long v4, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 3569
    iget-boolean v1, p0, Lcom/android/nfc/NfcService$WatchDogThread;->mCanceled:Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_3a

    if-eqz v1, :cond_11

    :try_start_f
    monitor-exit v2

    .line 3570
    return-void

    :cond_11
    monitor-exit v2
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_3d

    .line 3578
    :goto_12
    const-string/jumbo v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/nfc/NfcService$WatchDogThread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " : Watchdog triggered, aborting."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3579
    iget-object v1, p0, Lcom/android/nfc/NfcService$WatchDogThread;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->doAbort()V

    .line 3565
    return-void

    .line 3567
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v2

    throw v1
    :try_end_3d
    .catch Ljava/lang/InterruptedException; {:try_start_3b .. :try_end_3d} :catch_3d

    .line 3573
    :catch_3d
    move-exception v0

    .line 3575
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "NfcService"

    const-string/jumbo v2, "Watchdog thread interruped."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3576
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$WatchDogThread;->interrupt()V

    goto :goto_12
.end method

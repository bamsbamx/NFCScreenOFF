.class Lcom/android/nfc/NfcService$ApplyRoutingTask;
.super Landroid/os/AsyncTask;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplyRoutingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 4739
    iput-object p1, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 4741
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .registers 6
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4742
    iget-object v1, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 4743
    if-eqz p1, :cond_a

    :try_start_7
    array-length v0, p1

    if-eq v0, v2, :cond_12

    .line 4745
    :cond_a
    iget-object v0, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_4c

    monitor-exit v1

    .line 4746
    return-object v3

    .line 4749
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get18(Lcom/android/nfc/NfcService;)Z
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_4c

    move-result v0

    if-eqz v0, :cond_1c

    monitor-exit v1

    .line 4750
    return-object v3

    .line 4752
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 4754
    iget-object v0, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get34(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_30
    .catchall {:try_start_1c .. :try_end_30} :catchall_4c

    .line 4756
    :try_start_30
    iget-object v0, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_41

    .line 4758
    :try_start_36
    iget-object v0, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get34(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_4c

    monitor-exit v1

    .line 4760
    return-object v3

    .line 4757
    :catchall_41
    move-exception v0

    .line 4758
    :try_start_42
    iget-object v2, p0, Lcom/android/nfc/NfcService$ApplyRoutingTask;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get34(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4757
    throw v0
    :try_end_4c
    .catchall {:try_start_42 .. :try_end_4c} :catchall_4c

    .line 4742
    :catchall_4c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

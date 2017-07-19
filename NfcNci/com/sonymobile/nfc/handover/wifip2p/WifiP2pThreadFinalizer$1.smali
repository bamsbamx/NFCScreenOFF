.class Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer$1;
.super Ljava/util/TimerTask;
.source "WifiP2pThreadFinalizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 19
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;

    invoke-static {v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;->-get0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;)Landroid/os/HandlerThread;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 20
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;

    invoke-static {v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;->-get0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 21
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;

    invoke-static {v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;->-get0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 22
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;->-set0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    :cond_25
    monitor-exit p0

    .line 18
    return-void

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

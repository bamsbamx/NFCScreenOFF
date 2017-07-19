.class public Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;
.super Ljava/lang/Object;
.source "WifiP2pThreadFinalizer.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer$1;
    }
.end annotation


# static fields
.field private static final TIMEOUT_MS:I = 0x7d0


# instance fields
.field private final mCleanUpTask:Ljava/util/TimerTask;

.field private final mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mTimer:Ljava/util/Timer;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;)Landroid/os/HandlerThread;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method public constructor <init>(Landroid/os/HandlerThread;)V
    .registers 6
    .param p1, "thread"    # Landroid/os/HandlerThread;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer$1;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;->mCleanUpTask:Ljava/util/TimerTask;

    .line 28
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;->mTimer:Ljava/util/Timer;

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 33
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 34
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;->mCleanUpTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 32
    return-void
.end method

.method private cleanUp()V
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_12

    .line 43
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 44
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;->mCleanUpTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->run()V

    .line 41
    :cond_12
    return-void
.end method


# virtual methods
.method public addNumberOfRegisteredListener(I)V
    .registers 3
    .param p1, "count"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 37
    return-void
.end method

.method public onFailure(I)V
    .registers 2
    .param p1, "reason"    # I

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;->cleanUp()V

    .line 49
    return-void
.end method

.method public onSuccess()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;->cleanUp()V

    .line 54
    return-void
.end method

.class Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;
.super Ljava/lang/Object;
.source "WifiP2pHandover.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiscoverPeersListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    .prologue
    .line 395
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 8
    .param p1, "reason"    # I

    .prologue
    .line 398
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string/jumbo v1, "WifiP2pHandover"

    const-string/jumbo v2, "Failed to discover peers"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_13
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-static {v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get3(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_6e

    .line 402
    const-wide/16 v2, 0xbb8

    :try_start_1e
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_33

    .line 407
    :cond_21
    :goto_21
    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    monitor-enter v2

    .line 408
    :try_start_24
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-static {v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-wrap0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 409
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-static {v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-wrap1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)V
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_6b

    monitor-exit v2

    .line 410
    return-void

    .line 403
    :catch_33
    move-exception v0

    .line 404
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string/jumbo v1, "WifiP2pHandover"

    const-string/jumbo v2, "Thread interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 413
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_48
    :try_start_48
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-static {v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get6(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-static {v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;

    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-direct {v4, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)V

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 414
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-static {v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get3(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-set1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;I)I
    :try_end_69
    .catchall {:try_start_48 .. :try_end_69} :catchall_6b

    monitor-exit v2

    .line 397
    :goto_6a
    return-void

    .line 407
    :catchall_6b
    move-exception v1

    monitor-exit v2

    throw v1

    .line 417
    :cond_6e
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_81

    const-string/jumbo v1, "WifiP2pHandover"

    const-string/jumbo v2, "Failed attempt to discover peers"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_81
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->complete(Z)V

    goto :goto_6a
.end method

.method public onSuccess()V
    .registers 5

    .prologue
    .line 424
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "WifiP2pHandover"

    const-string/jumbo v1, "Discover peers successful"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_13
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-set1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;I)I

    .line 426
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-static {v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get4(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-static {v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get4(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 427
    const-wide/16 v2, 0x1388

    .line 426
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 423
    return-void
.end method

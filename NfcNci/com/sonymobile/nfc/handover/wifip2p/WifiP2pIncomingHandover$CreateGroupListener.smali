.class Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$CreateGroupListener;
.super Ljava/lang/Object;
.source "WifiP2pIncomingHandover.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateGroupListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$CreateGroupListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$CreateGroupListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$CreateGroupListener;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 8
    .param p1, "reason"    # I

    .prologue
    .line 270
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string/jumbo v1, "WifiP2pIncomingHandover"

    const-string/jumbo v2, "Failed to create group"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_13
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$CreateGroupListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-static {v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get2(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_6e

    .line 274
    const-wide/16 v2, 0xbb8

    :try_start_1e
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_33

    .line 279
    :cond_21
    :goto_21
    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$CreateGroupListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    monitor-enter v2

    .line 280
    :try_start_24
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$CreateGroupListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-static {v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-wrap0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 281
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$CreateGroupListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-static {v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-wrap1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)V
    :try_end_31
    .catchall {:try_start_24 .. :try_end_31} :catchall_6b

    monitor-exit v2

    .line 282
    return-void

    .line 275
    :catch_33
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string/jumbo v1, "WifiP2pIncomingHandover"

    const-string/jumbo v2, "Thread interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 285
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_48
    :try_start_48
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$CreateGroupListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-static {v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get5(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$CreateGroupListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-static {v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v3

    new-instance v4, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$CreateGroupListener;

    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$CreateGroupListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-direct {v4, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$CreateGroupListener;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)V

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 286
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$CreateGroupListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-static {v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get2(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-set1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;I)I
    :try_end_69
    .catchall {:try_start_48 .. :try_end_69} :catchall_6b

    monitor-exit v2

    .line 269
    :goto_6a
    return-void

    .line 279
    :catchall_6b
    move-exception v1

    monitor-exit v2

    throw v1

    .line 289
    :cond_6e
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_81

    const-string/jumbo v1, "WifiP2pIncomingHandover"

    const-string/jumbo v2, "Failed attempt to create group"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_81
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$CreateGroupListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->complete(Z)V

    goto :goto_6a
.end method

.method public onSuccess()V
    .registers 3

    .prologue
    .line 296
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "WifiP2pIncomingHandover"

    const-string/jumbo v1, "Create group successful"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_13
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$CreateGroupListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-set1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;I)I

    .line 295
    return-void
.end method

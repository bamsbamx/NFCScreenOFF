.class Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$ConnectionCallbacksImpl;
.super Ljava/lang/Object;
.source "WifiApiClient.java"

# interfaces
.implements Lcom/sonymobile/wifi/SomcWifiApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionCallbacksImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$ConnectionCallbacksImpl;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$ConnectionCallbacksImpl;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$ConnectionCallbacksImpl;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;)V

    return-void
.end method


# virtual methods
.method public onConnected(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->-get0()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connected to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_21
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$ConnectionCallbacksImpl;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;

    monitor-enter v1

    .line 83
    :try_start_24
    const-string/jumbo v0, "wifi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 84
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$ConnectionCallbacksImpl;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;

    check-cast p2, Lcom/sonymobile/wifi/SomcWifiManager;

    .end local p2    # "service":Ljava/lang/Object;
    invoke-static {v0, p2}, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->-set0(Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;Lcom/sonymobile/wifi/SomcWifiManager;)Lcom/sonymobile/wifi/SomcWifiManager;
    :try_end_34
    .catchall {:try_start_24 .. :try_end_34} :catchall_61

    :cond_34
    :goto_34
    monitor-exit v1

    .line 90
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$ConnectionCallbacksImpl;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;

    invoke-static {v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->-get3(Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;)Lcom/sonymobile/wifi/SomcWifiManager;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$ConnectionCallbacksImpl;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;

    invoke-static {v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->-get4(Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;)Lcom/sonymobile/wifi/p2p/SomcWifiP2pManager;

    move-result-object v0

    if-eqz v0, :cond_4f

    .line 91
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$ConnectionCallbacksImpl;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;

    invoke-static {v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->-get2(Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;)Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$Callback;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$Callback;->onClientConnected(Z)V

    .line 80
    :cond_4f
    return-void

    .line 85
    .restart local p2    # "service":Ljava/lang/Object;
    :cond_50
    :try_start_50
    const-string/jumbo v0, "wifip2p"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 86
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$ConnectionCallbacksImpl;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;

    check-cast p2, Lcom/sonymobile/wifi/p2p/SomcWifiP2pManager;

    .end local p2    # "service":Ljava/lang/Object;
    invoke-static {v0, p2}, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->-set1(Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;Lcom/sonymobile/wifi/p2p/SomcWifiP2pManager;)Lcom/sonymobile/wifi/p2p/SomcWifiP2pManager;
    :try_end_60
    .catchall {:try_start_50 .. :try_end_60} :catchall_61

    goto :goto_34

    .line 82
    :catchall_61
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDisconnected(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$ConnectionCallbacksImpl;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->-set0(Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;Lcom/sonymobile/wifi/SomcWifiManager;)Lcom/sonymobile/wifi/SomcWifiManager;

    .line 98
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$ConnectionCallbacksImpl;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->-set1(Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;Lcom/sonymobile/wifi/p2p/SomcWifiP2pManager;)Lcom/sonymobile/wifi/p2p/SomcWifiP2pManager;

    .line 99
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$ConnectionCallbacksImpl;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;

    invoke-static {v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->-get2(Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;)Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$Callback;->onClientConnected(Z)V

    .line 96
    return-void
.end method

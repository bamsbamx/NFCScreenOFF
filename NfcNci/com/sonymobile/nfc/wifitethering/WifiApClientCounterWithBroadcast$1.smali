.class Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$1;
.super Ljava/lang/Object;
.source "WifiApClientCounterWithBroadcast.java"

# interfaces
.implements Lcom/sonymobile/wifi/SomcWifiApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$1;->this$0:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "service"    # Ljava/lang/Object;

    .prologue
    .line 81
    invoke-static {}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->-get0()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SomcWifiApiClient : connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_10
    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$1;->this$0:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;

    monitor-enter v1

    .line 83
    :try_start_13
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$1;->this$0:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;

    check-cast p2, Lcom/sonymobile/wifi/SomcWifiManager;

    .end local p2    # "service":Ljava/lang/Object;
    invoke-static {v0, p2}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->-set0(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;Lcom/sonymobile/wifi/SomcWifiManager;)Lcom/sonymobile/wifi/SomcWifiManager;
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_2b

    monitor-exit v1

    .line 85
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$1;->this$0:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;

    invoke-static {v0}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->-get2(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;)Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$1;->this$0:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;

    invoke-static {v1}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->-wrap0(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;->onUpdateClientNum(I)V

    .line 80
    return-void

    .line 82
    :catchall_2b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onDisconnected(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->-get0()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SomcWifiApiClient : disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_10
    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$1;->this$0:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;

    monitor-enter v1

    .line 92
    :try_start_13
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$1;->this$0:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->-set0(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;Lcom/sonymobile/wifi/SomcWifiManager;)Lcom/sonymobile/wifi/SomcWifiManager;
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1b

    monitor-exit v1

    .line 89
    return-void

    .line 91
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method

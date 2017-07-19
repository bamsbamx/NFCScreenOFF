.class public Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;
.super Ljava/lang/Object;
.source "WifiApiClient.java"

# interfaces
.implements Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$Callback;,
        Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$ConnectionCallbacksImpl;
    }
.end annotation


# static fields
.field private static DBG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$Callback;

.field private final mSomcWifiApiClient:Lcom/sonymobile/wifi/SomcWifiApiClient;

.field private mSomcWifiManager:Lcom/sonymobile/wifi/SomcWifiManager;

.field private mSomcWifiP2pManager:Lcom/sonymobile/wifi/p2p/SomcWifiP2pManager;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->DBG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;)Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$Callback;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->mCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$Callback;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;)Lcom/sonymobile/wifi/SomcWifiManager;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->mSomcWifiManager:Lcom/sonymobile/wifi/SomcWifiManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;)Lcom/sonymobile/wifi/p2p/SomcWifiP2pManager;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->mSomcWifiP2pManager:Lcom/sonymobile/wifi/p2p/SomcWifiP2pManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;Lcom/sonymobile/wifi/SomcWifiManager;)Lcom/sonymobile/wifi/SomcWifiManager;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->mSomcWifiManager:Lcom/sonymobile/wifi/SomcWifiManager;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;Lcom/sonymobile/wifi/p2p/SomcWifiP2pManager;)Lcom/sonymobile/wifi/p2p/SomcWifiP2pManager;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->mSomcWifiP2pManager:Lcom/sonymobile/wifi/p2p/SomcWifiP2pManager;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-string/jumbo v0, "WifiApiClient"

    sput-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->TAG:Ljava/lang/String;

    .line 21
    sget-boolean v0, Lcom/android/nfc/beam/BeamManager;->DBG:Z

    sput-boolean v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->DBG:Z

    .line 19
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$Callback;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$Callback;

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->mSomcWifiManager:Lcom/sonymobile/wifi/SomcWifiManager;

    .line 26
    iput-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->mSomcWifiP2pManager:Lcom/sonymobile/wifi/p2p/SomcWifiP2pManager;

    .line 35
    iput-object p2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->mCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$Callback;

    .line 37
    new-instance v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$ConnectionCallbacksImpl;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$ConnectionCallbacksImpl;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$ConnectionCallbacksImpl;)V

    .line 38
    .local v0, "connection":Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$ConnectionCallbacksImpl;
    new-instance v1, Lcom/sonymobile/wifi/SomcWifiApiClient;

    invoke-direct {v1, p1}, Lcom/sonymobile/wifi/SomcWifiApiClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->mSomcWifiApiClient:Lcom/sonymobile/wifi/SomcWifiApiClient;

    .line 39
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->mSomcWifiApiClient:Lcom/sonymobile/wifi/SomcWifiApiClient;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/wifi/SomcWifiApiClient;->connect(Ljava/lang/String;Lcom/sonymobile/wifi/SomcWifiApiClient$ConnectionCallbacks;)V

    .line 40
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->mSomcWifiApiClient:Lcom/sonymobile/wifi/SomcWifiApiClient;

    const-string/jumbo v2, "wifip2p"

    invoke-virtual {v1, v2, v0}, Lcom/sonymobile/wifi/SomcWifiApiClient;->connect(Ljava/lang/String;Lcom/sonymobile/wifi/SomcWifiApiClient$ConnectionCallbacks;)V

    .line 34
    return-void
.end method


# virtual methods
.method public discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V
    .registers 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    .param p3, "freq"    # I

    .prologue
    .line 56
    monitor-enter p0

    .line 57
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->mSomcWifiP2pManager:Lcom/sonymobile/wifi/p2p/SomcWifiP2pManager;

    if-eqz v0, :cond_a

    .line 58
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->mSomcWifiP2pManager:Lcom/sonymobile/wifi/p2p/SomcWifiP2pManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/wifi/p2p/SomcWifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableWifiWithDelayedFirstScan()Z
    .registers 2

    .prologue
    .line 45
    monitor-enter p0

    .line 46
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->mSomcWifiManager:Lcom/sonymobile/wifi/SomcWifiManager;

    if-eqz v0, :cond_d

    .line 47
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->mSomcWifiManager:Lcom/sonymobile/wifi/SomcWifiManager;

    invoke-virtual {v0}, Lcom/sonymobile/wifi/SomcWifiManager;->enableWifiWithDelayedFirstScan()Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_10

    move-result v0

    monitor-exit p0

    return v0

    :cond_d
    monitor-exit p0

    .line 51
    const/4 v0, 0x0

    return v0

    .line 45
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public release()V
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->mSomcWifiApiClient:Lcom/sonymobile/wifi/SomcWifiApiClient;

    invoke-virtual {v0}, Lcom/sonymobile/wifi/SomcWifiApiClient;->disconnect()V

    .line 74
    return-void
.end method

.method public setIncomingDeviceAddress(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 66
    monitor-enter p0

    .line 67
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->mSomcWifiP2pManager:Lcom/sonymobile/wifi/p2p/SomcWifiP2pManager;

    if-eqz v0, :cond_a

    .line 68
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;->mSomcWifiP2pManager:Lcom/sonymobile/wifi/p2p/SomcWifiP2pManager;

    invoke-virtual {v0, p2}, Lcom/sonymobile/wifi/p2p/SomcWifiP2pManager;->setIncomingDeviceAddress(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    .line 65
    return-void

    .line 66
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

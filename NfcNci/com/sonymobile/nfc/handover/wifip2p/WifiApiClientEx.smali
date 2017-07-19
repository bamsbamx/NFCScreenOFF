.class public Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClientEx;
.super Ljava/lang/Object;
.source "WifiApiClientEx.java"

# interfaces
.implements Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;


# instance fields
.field private final mWifiManagerEx:Lcom/sonymobile/nfc/WifiManagerEx;

.field private final mWifiP2pManagerEx:Lcom/sonymobile/nfc/WifiP2pManagerEx;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string/jumbo v2, "wifip2p"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 24
    .local v1, "wifiP2pManager":Landroid/net/wifi/p2p/WifiP2pManager;
    new-instance v2, Lcom/sonymobile/nfc/WifiP2pManagerEx;

    invoke-direct {v2, v1}, Lcom/sonymobile/nfc/WifiP2pManagerEx;-><init>(Landroid/net/wifi/p2p/WifiP2pManager;)V

    iput-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClientEx;->mWifiP2pManagerEx:Lcom/sonymobile/nfc/WifiP2pManagerEx;

    .line 26
    const-string/jumbo v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 27
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    new-instance v2, Lcom/sonymobile/nfc/WifiManagerEx;

    invoke-direct {v2, v0}, Lcom/sonymobile/nfc/WifiManagerEx;-><init>(Landroid/net/wifi/WifiManager;)V

    iput-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClientEx;->mWifiManagerEx:Lcom/sonymobile/nfc/WifiManagerEx;

    .line 21
    return-void
.end method


# virtual methods
.method public discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V
    .registers 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    .param p3, "freq"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClientEx;->mWifiP2pManagerEx:Lcom/sonymobile/nfc/WifiP2pManagerEx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/nfc/WifiP2pManagerEx;->discoverOnSpecificFrequency(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V

    .line 36
    return-void
.end method

.method public enableWifiWithDelayedFirstScan()Z
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClientEx;->mWifiManagerEx:Lcom/sonymobile/nfc/WifiManagerEx;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/WifiManagerEx;->enableWifiWithDelayedFirstScan()Z

    move-result v0

    return v0
.end method

.method public release()V
    .registers 1

    .prologue
    .line 47
    return-void
.end method

.method public setIncomingDeviceAddress(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 5
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClientEx;->mWifiP2pManagerEx:Lcom/sonymobile/nfc/WifiP2pManagerEx;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/nfc/WifiP2pManagerEx;->setIncomingDeviceAddress(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 42
    return-void
.end method

.class public Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;
.super Ljava/lang/Object;
.source "WifiApClientCounterWithBroadcast.java"

# interfaces
.implements Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$1;,
        Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$WifiApClientCouterReceiver;
    }
.end annotation


# static fields
.field private static DBG:Z

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;

.field private final mConnectionCallbacks:Lcom/sonymobile/wifi/SomcWifiApiClient$ConnectionCallbacks;

.field private final mContext:Landroid/content/Context;

.field private mReceiver:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$WifiApClientCouterReceiver;

.field private mSomcWifiApiClient:Lcom/sonymobile/wifi/SomcWifiApiClient;

.field private mSomcWifiManager:Lcom/sonymobile/wifi/SomcWifiManager;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->DBG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;)Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->mCallback:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;Lcom/sonymobile/wifi/SomcWifiManager;)Lcom/sonymobile/wifi/SomcWifiManager;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->mSomcWifiManager:Lcom/sonymobile/wifi/SomcWifiManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;)I
    .registers 2

    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->getClientNum()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string/jumbo v0, "WifiApClientCounterWithBroadcast"

    sput-object v0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->TAG:Ljava/lang/String;

    .line 24
    sget-boolean v0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->DBG:Z

    sput-boolean v0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->DBG:Z

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$1;-><init>(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->mConnectionCallbacks:Lcom/sonymobile/wifi/SomcWifiApiClient$ConnectionCallbacks;

    .line 34
    iput-object p1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->mCallback:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;

    .line 33
    return-void
.end method

.method private getClientNum()I
    .registers 4

    .prologue
    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, "num":I
    monitor-enter p0

    .line 68
    :try_start_2
    iget-object v2, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->mSomcWifiManager:Lcom/sonymobile/wifi/SomcWifiManager;

    if-eqz v2, :cond_12

    .line 69
    iget-object v2, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->mSomcWifiManager:Lcom/sonymobile/wifi/SomcWifiManager;

    invoke-virtual {v2}, Lcom/sonymobile/wifi/SomcWifiManager;->getWifiApConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 70
    .local v0, "devices":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-eqz v0, :cond_12

    .line 71
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_14

    move-result v1

    .end local v0    # "devices":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_12
    monitor-exit p0

    .line 75
    return v1

    .line 67
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method public start()V
    .registers 5

    .prologue
    .line 40
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.sonymobile.wifi.AP_CLIENT_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "filter":Landroid/content/IntentFilter;
    monitor-enter p0

    .line 42
    :try_start_9
    new-instance v1, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$WifiApClientCouterReceiver;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$WifiApClientCouterReceiver;-><init>(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;)V

    iput-object v1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->mReceiver:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$WifiApClientCouterReceiver;

    .line 43
    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->mReceiver:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$WifiApClientCouterReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 45
    new-instance v1, Lcom/sonymobile/wifi/SomcWifiApiClient;

    iget-object v2, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/wifi/SomcWifiApiClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->mSomcWifiApiClient:Lcom/sonymobile/wifi/SomcWifiApiClient;

    .line 46
    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->mSomcWifiApiClient:Lcom/sonymobile/wifi/SomcWifiApiClient;

    const-string/jumbo v2, "wifi"

    iget-object v3, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->mConnectionCallbacks:Lcom/sonymobile/wifi/SomcWifiApiClient$ConnectionCallbacks;

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/wifi/SomcWifiApiClient;->connect(Ljava/lang/String;Lcom/sonymobile/wifi/SomcWifiApiClient$ConnectionCallbacks;)V
    :try_end_2a
    .catchall {:try_start_9 .. :try_end_2a} :catchall_2c

    monitor-exit p0

    .line 39
    return-void

    .line 41
    :catchall_2c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 52
    monitor-enter p0

    .line 53
    :try_start_1
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->mReceiver:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$WifiApClientCouterReceiver;

    if-eqz v0, :cond_f

    .line 54
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->mReceiver:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$WifiApClientCouterReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->mReceiver:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$WifiApClientCouterReceiver;

    .line 58
    :cond_f
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->mSomcWifiApiClient:Lcom/sonymobile/wifi/SomcWifiApiClient;

    if-eqz v0, :cond_1b

    .line 59
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->mSomcWifiApiClient:Lcom/sonymobile/wifi/SomcWifiApiClient;

    invoke-virtual {v0}, Lcom/sonymobile/wifi/SomcWifiApiClient;->disconnect()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->mSomcWifiApiClient:Lcom/sonymobile/wifi/SomcWifiApiClient;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    :cond_1b
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

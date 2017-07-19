.class public Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;
.super Ljava/lang/Object;
.source "WifiP2pHandover.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;
.implements Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler$Callback;
.implements Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$1;,
        Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$Callback;,
        Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverOnSpecificFreqListener;,
        Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;
    }
.end annotation


# static fields
.field private static final DBG:Ljava/lang/Boolean;

.field private static final MAX_SPECIFIC_FREQ_SCAN_RETRY_COUNT:I = 0xa

.field private static final MSG_COMPLETE:I = 0x2

.field private static final MSG_NORMAL_FREQ_SCAN_TIMEOUT:I = 0x4

.field private static final MSG_SPECIFIC_FREQ_SCAN_TIMEOUT:I = 0x3

.field private static final MSG_TIMEOUT:I = 0x1

.field private static final NORMAL_FREQ_SCAN_TIMEOUT_MS:I = 0x1388

.field private static final SPECIFIC_FREQ_SCAN_TIMEOUT_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "WifiP2pHandover"

.field private static final TIMEOUT_MS:I = 0x4e20


# instance fields
.field private final mCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$Callback;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mChannelFreqToScan:I

.field private mChannelThread:Landroid/os/HandlerThread;

.field private mConflictConnection:Z

.field private mConnectingStarted:Z

.field private final mContext:Landroid/content/Context;

.field private mDiscoverPeersRetryCount:I

.field private final mFileUri:[Landroid/net/Uri;

.field private final mHandler:Landroid/os/Handler;

.field private mIsRunning:Z

.field private mIsTransferCanceled:Z

.field private final mNotification:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;

.field private final mNotificationHandler:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanRetryCount:I

.field private final mTargetAddress:Ljava/lang/String;

.field private mTransferClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;

.field private final mTransferId:I

.field private mWifiP2pApiClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

.field private final mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method static synthetic -get0()Ljava/lang/Boolean;
    .registers 1

    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->DBG:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)I
    .registers 2

    iget v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannelFreqToScan:I

    return v0
.end method

.method static synthetic -get3(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)I
    .registers 2

    iget v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mDiscoverPeersRetryCount:I

    return v0
.end method

.method static synthetic -get4(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mWifiP2pApiClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)Landroid/net/wifi/p2p/WifiP2pManager;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mConflictConnection:Z

    return p1
.end method

.method static synthetic -set1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;I)I
    .registers 2

    iput p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mDiscoverPeersRetryCount:I

    return p1
.end method

.method static synthetic -set2(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mIsTransferCanceled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)Z
    .registers 2

    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->isChannelAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->channelIsNotAvailable()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/android/nfc/beam/BeamManager;->DBG:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->DBG:Ljava/lang/Boolean;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$Callback;
    .param p3, "transferRecord"    # Lcom/android/nfc/beam/BeamTransferRecord;
    .param p4, "wifiApiClient"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    .prologue
    const/4 v4, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mIsRunning:Z

    .line 70
    iput-boolean v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mConnectingStarted:Z

    .line 71
    iput-boolean v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mIsTransferCanceled:Z

    .line 72
    iput-boolean v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mConflictConnection:Z

    .line 74
    const/16 v0, 0x96c

    iput v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannelFreqToScan:I

    .line 75
    iput v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mDiscoverPeersRetryCount:I

    .line 76
    iput v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mScanRetryCount:I

    .line 262
    new-instance v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$1;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 84
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mContext:Landroid/content/Context;

    .line 85
    iput-object p2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$Callback;

    .line 86
    iget v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->id:I

    iput v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mTransferId:I

    .line 87
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->remoteMacAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mTargetAddress:Ljava/lang/String;

    .line 88
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mFileUri:[Landroid/net/Uri;

    .line 89
    iput-object p4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mWifiP2pApiClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    .line 92
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->wifiChannel:Landroid/net/wifi/WifiChannel;

    if-eqz v0, :cond_37

    .line 93
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->wifiChannel:Landroid/net/wifi/WifiChannel;

    iget v0, v0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    iput v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannelFreqToScan:I

    .line 96
    :cond_37
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5b

    const-string/jumbo v0, "WifiP2pHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Channel Frequency used is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannelFreqToScan:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_5b
    const-string/jumbo v0, "wifip2p"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 99
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mHandler:Landroid/os/Handler;

    .line 101
    new-instance v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;

    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mTransferId:I

    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mFileUri:[Landroid/net/Uri;

    array-length v3, v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;-><init>(Landroid/content/Context;IIZ)V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mNotification:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;

    .line 102
    new-instance v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;

    invoke-direct {v0, p1, p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;-><init>(Landroid/content/Context;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler$Callback;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mNotificationHandler:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;

    .line 83
    return-void
.end method

.method private channelIsNotAvailable()V
    .registers 3

    .prologue
    .line 161
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "WifiP2pHandover"

    const-string/jumbo v1, "Channel is no longer available, finish the process"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->complete(Z)V

    .line 160
    return-void
.end method

.method private connect()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 329
    iget-boolean v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mConnectingStarted:Z

    if-eqz v1, :cond_17

    .line 330
    sget-object v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_16

    const-string/jumbo v1, "WifiP2pHandover"

    const-string/jumbo v2, "Connection already started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_16
    return-void

    .line 334
    :cond_17
    sget-object v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3b

    const-string/jumbo v1, "WifiP2pHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Trying to connect to -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mTargetAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_3b
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 337
    .local v0, "config":Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mTargetAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 338
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v4, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 340
    iput v4, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 342
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$2;

    invoke-direct {v3, p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$2;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 355
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mConnectingStarted:Z

    .line 328
    return-void
.end method

.method private disconnect(Z)V
    .registers 6
    .param p1, "success"    # Z

    .prologue
    const/4 v3, 0x0

    .line 359
    sget-object v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string/jumbo v1, "WifiP2pHandover"

    const-string/jumbo v2, "Wi-Fi P2P disconnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_12
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->isChannelAvailable()Z

    move-result v1

    if-eqz v1, :cond_51

    .line 362
    new-instance v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;

    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannelThread:Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;-><init>(Landroid/os/HandlerThread;)V

    .line 364
    .local v0, "threadFinalizer":Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;->addNumberOfRegisteredListener(I)V

    .line 366
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 368
    if-nez p1, :cond_37

    .line 369
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;->addNumberOfRegisteredListener(I)V

    .line 370
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 374
    :cond_37
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 382
    .end local v0    # "threadFinalizer":Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;
    :cond_3e
    :goto_3e
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannelThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_44

    .line 383
    iput-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannelThread:Landroid/os/HandlerThread;

    .line 386
    :cond_44
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v1, :cond_4a

    .line 387
    iput-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 390
    :cond_4a
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mTransferClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;

    if-eqz v1, :cond_50

    .line 391
    iput-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mTransferClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;

    .line 358
    :cond_50
    return-void

    .line 376
    :cond_51
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannelThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_3e

    .line 377
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannelThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 378
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannelThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->interrupt()V

    goto :goto_3e
.end method

.method private isChannelAvailable()Z
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_6

    .line 154
    const/4 v0, 0x0

    return v0

    .line 157
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private resetTimeout()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 468
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 469
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 470
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 467
    :cond_1b
    return-void
.end method


# virtual methods
.method public complete(Z)V
    .registers 10
    .param p1, "success"    # Z

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 511
    iget-boolean v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mIsRunning:Z

    if-nez v3, :cond_1b

    .line 512
    sget-object v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1a

    const-string/jumbo v1, "WifiP2pHandover"

    const-string/jumbo v2, "Wi-Fi P2P Outgoing Handover already completed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_1a
    return-void

    .line 516
    :cond_1b
    sget-object v3, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2c

    const-string/jumbo v3, "WifiP2pHandover"

    const-string/jumbo v4, "Wi-Fi P2P Outgoing Handover complete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    :cond_2c
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mNotificationHandler:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;

    invoke-virtual {v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->stop()V

    .line 520
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 521
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 524
    :cond_3e
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 525
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 528
    :cond_4b
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 529
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 532
    :cond_58
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_6f

    .line 533
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 534
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_72

    :goto_68
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 535
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 538
    .end local v0    # "msg":Landroid/os/Message;
    :cond_6f
    iput-boolean v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mIsRunning:Z

    .line 510
    return-void

    .restart local v0    # "msg":Landroid/os/Message;
    :cond_72
    move v1, v2

    .line 534
    goto :goto_68
.end method

.method public getTransferId()I
    .registers 2

    .prologue
    .line 542
    iget v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mTransferId:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 168
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_11e

    .line 245
    return v5

    .line 170
    :pswitch_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_50

    const/4 v0, 0x1

    .line 172
    .local v0, "success":Z
    :goto_e
    sget-object v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_21

    const-string/jumbo v3, "WifiP2pHandover"

    if-eqz v0, :cond_52

    .line 173
    const-string/jumbo v1, "Outgoing transfer success"

    .line 172
    :goto_1e
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_21
    if-nez v0, :cond_2c

    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mTransferClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;

    if-eqz v1, :cond_2c

    .line 176
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mTransferClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->cancel()V

    .line 179
    :cond_2c
    iget-boolean v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mIsTransferCanceled:Z

    if-eqz v1, :cond_56

    .line 180
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mNotification:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->showNotification(I)V

    .line 186
    :goto_36
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_43

    .line 187
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 188
    iput-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 191
    :cond_43
    monitor-enter p0

    .line 192
    :try_start_44
    invoke-direct {p0, v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->disconnect(Z)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_61

    monitor-exit p0

    .line 195
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$Callback;

    iget-boolean v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mConflictConnection:Z

    invoke-interface {v1, v0, v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$Callback;->onTransferComplete(ZZ)V

    .line 196
    return v2

    .line 170
    .end local v0    # "success":Z
    :cond_50
    const/4 v0, 0x0

    .restart local v0    # "success":Z
    goto :goto_e

    .line 173
    :cond_52
    const-string/jumbo v1, "Outgoing transfer failed"

    goto :goto_1e

    .line 182
    :cond_56
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mNotification:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;

    if-eqz v0, :cond_5f

    move v1, v2

    :goto_5b
    invoke-virtual {v3, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->showNotification(I)V

    goto :goto_36

    .line 183
    :cond_5f
    const/4 v1, 0x2

    goto :goto_5b

    .line 191
    :catchall_61
    move-exception v1

    monitor-exit p0

    throw v1

    .line 199
    .end local v0    # "success":Z
    :pswitch_64
    sget-object v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_75

    const-string/jumbo v1, "WifiP2pHandover"

    const-string/jumbo v3, "Timeout occurred"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_75
    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->complete(Z)V

    .line 201
    return v2

    .line 204
    :pswitch_79
    sget-object v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9d

    const-string/jumbo v1, "WifiP2pHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Specific frequency scan timeout occurred: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mScanRetryCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_9d
    iget-boolean v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mConnectingStarted:Z

    if-nez v1, :cond_d1

    .line 207
    monitor-enter p0

    .line 208
    :try_start_a2
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->isChannelAvailable()Z

    move-result v1

    if-nez v1, :cond_ad

    .line 209
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->channelIsNotAvailable()V
    :try_end_ab
    .catchall {:try_start_a2 .. :try_end_ab} :catchall_e0

    monitor-exit p0

    .line 210
    return v2

    .line 213
    :cond_ad
    :try_start_ad
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 215
    iget v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mScanRetryCount:I

    const/16 v3, 0xa

    if-ge v1, v3, :cond_d2

    .line 216
    iget v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mScanRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mScanRetryCount:I

    .line 217
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mWifiP2pApiClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 218
    new-instance v4, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverOnSpecificFreqListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverOnSpecificFreqListener;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverOnSpecificFreqListener;)V

    iget v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannelFreqToScan:I

    .line 217
    invoke-interface {v1, v3, v4, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V
    :try_end_d0
    .catchall {:try_start_ad .. :try_end_d0} :catchall_e0

    :goto_d0
    monitor-exit p0

    .line 225
    :cond_d1
    return v2

    .line 220
    :cond_d2
    :try_start_d2
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;)V

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    :try_end_df
    .catchall {:try_start_d2 .. :try_end_df} :catchall_e0

    goto :goto_d0

    .line 207
    :catchall_e0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 228
    :pswitch_e3
    sget-object v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f4

    const-string/jumbo v1, "WifiP2pHandover"

    const-string/jumbo v3, "Normal frequency scan timeout occurred"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_f4
    iget-boolean v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mConnectingStarted:Z

    if-nez v1, :cond_11a

    .line 231
    monitor-enter p0

    .line 232
    :try_start_f9
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->isChannelAvailable()Z

    move-result v1

    if-nez v1, :cond_104

    .line 233
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->channelIsNotAvailable()V
    :try_end_102
    .catchall {:try_start_f9 .. :try_end_102} :catchall_11b

    monitor-exit p0

    .line 234
    return v2

    .line 237
    :cond_104
    :try_start_104
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 238
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v4, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverPeersListener;)V

    invoke-virtual {v1, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    :try_end_119
    .catchall {:try_start_104 .. :try_end_119} :catchall_11b

    monitor-exit p0

    .line 242
    :cond_11a
    return v2

    .line 231
    :catchall_11b
    move-exception v1

    monitor-exit p0

    throw v1

    .line 168
    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_64
        :pswitch_9
        :pswitch_79
        :pswitch_e3
    .end packed-switch
.end method

.method public hasStarted()Z
    .registers 2

    .prologue
    .line 506
    iget-boolean v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mIsRunning:Z

    return v0
.end method

.method public onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pInfo;

    .prologue
    const/4 v4, 0x0

    .line 134
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mTransferClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;

    if-eqz v0, :cond_17

    .line 135
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "WifiP2pHandover"

    const-string/jumbo v1, "Client already started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_16
    return-void

    .line 139
    :cond_17
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string/jumbo v0, "WifiP2pHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Established connection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_39
    if-eqz p1, :cond_3f

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    if-nez v0, :cond_54

    .line 142
    :cond_3f
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_50

    const-string/jumbo v0, "WifiP2pHandover"

    const-string/jumbo v1, "Wifi P2P Info is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_50
    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->complete(Z)V

    .line 144
    return-void

    .line 147
    :cond_54
    new-instance v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;

    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mFileUri:[Landroid/net/Uri;

    .line 148
    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-direct {v0, p0, v1, v2, v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;Landroid/content/Context;[Landroid/net/Uri;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mTransferClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;

    .line 149
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mTransferClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;

    new-array v1, v4, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 133
    return-void
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .registers 9
    .param p1, "peerList"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    .line 107
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "peer$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 108
    .local v0, "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    sget-object v2, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string/jumbo v2, "WifiP2pHandover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "On Peer Available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_3a
    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mTargetAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 111
    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 112
    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 115
    :cond_51
    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 116
    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    :cond_5e
    monitor-enter p0

    .line 120
    :try_start_5f
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->isChannelAvailable()Z

    move-result v2

    if-nez v2, :cond_6a

    .line 121
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->channelIsNotAvailable()V
    :try_end_68
    .catchall {:try_start_5f .. :try_end_68} :catchall_6e

    :goto_68
    monitor-exit p0

    .line 106
    .end local v0    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_69
    return-void

    .line 125
    .restart local v0    # "peer":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_6a
    :try_start_6a
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->connect()V
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_6e

    goto :goto_68

    .line 119
    :catchall_6e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public start()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 476
    iput-boolean v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mIsRunning:Z

    .line 478
    sget-object v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string/jumbo v1, "WifiP2pHandover"

    const-string/jumbo v2, "Wi-Fi P2P Outgoing Handover started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_15
    sget-object v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_39

    const-string/jumbo v1, "WifiP2pHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Send data to target device -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mTargetAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_39
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 482
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    const-string/jumbo v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string/jumbo v1, "com.sonymobile.nfc.handover.wifip2p.action.CANCEL_WIFI_P2P_HANDOVER_TRANSFER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 486
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 487
    const-string/jumbo v1, "com.sonymobile.nfc.action.SONY_WIFI_P2P_NDEF_DETECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 490
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "$ChannelThread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannelThread:Landroid/os/HandlerThread;

    .line 491
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannelThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 492
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannelThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 494
    monitor-enter p0

    .line 495
    :try_start_a2
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mWifiP2pApiClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    .line 496
    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverOnSpecificFreqListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverOnSpecificFreqListener;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$DiscoverOnSpecificFreqListener;)V

    iget v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mChannelFreqToScan:I

    .line 495
    invoke-interface {v1, v2, v3, v4}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V
    :try_end_b1
    .catchall {:try_start_a2 .. :try_end_b1} :catchall_c5

    monitor-exit p0

    .line 499
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 501
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mNotificationHandler:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->start()V

    .line 475
    return-void

    .line 494
    :catchall_c5
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateTransferInfo(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;I)V
    .registers 4
    .param p1, "data"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    .param p2, "currentFileCount"    # I

    .prologue
    .line 546
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mNotificationHandler:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->updateTransferInfo(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;I)V

    .line 545
    return-void
.end method

.method public updateTransferProgress(FIZ)V
    .registers 5
    .param p1, "progress"    # F
    .param p2, "currentCount"    # I
    .param p3, "progressOccurred"    # Z

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mIsTransferCanceled:Z

    if-eqz v0, :cond_5

    .line 252
    return-void

    .line 255
    :cond_5
    if-eqz p3, :cond_a

    .line 256
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->resetTimeout()V

    .line 259
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->mNotification:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->showProgressNotification(FI)V

    .line 250
    return-void
.end method

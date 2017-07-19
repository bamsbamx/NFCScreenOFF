.class public Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;
.super Ljava/lang/Object;
.source "WifiP2pIncomingHandover.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;
.implements Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler$Callback;
.implements Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;,
        Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$CreateGroupListener;,
        Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$wifiP2pChannelListener;
    }
.end annotation


# static fields
.field private static final DBG:Ljava/lang/Boolean;

.field private static final MSG_CHECK_CLIENT_CONNECTION:I = 0x3

.field private static final MSG_COMPLETE:I = 0x2

.field private static final MSG_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiP2pIncomingHandover"

.field private static final TIMEOUT_MS:I = 0x4e20


# instance fields
.field private final mCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$Callback;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mChannelThread:Landroid/os/HandlerThread;

.field private final mClientAddress:Ljava/lang/String;

.field private mConflictConnection:Z

.field private final mContext:Landroid/content/Context;

.field private mCreateGroupRetryCount:I

.field private mDataInfo:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mIsRunning:Z

.field private mIsTransferCanceled:Z

.field private mListenChannel:I

.field private final mNotificationHandler:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;

.field private mOperatingChannel:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mTransferId:I

.field private mTransferServer:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;

.field private mWifiP2pApiClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

.field private mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private final mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private final notification:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;


# direct methods
.method static synthetic -get0()Ljava/lang/Boolean;
    .registers 1

    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->DBG:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)I
    .registers 2

    iget v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mCreateGroupRetryCount:I

    return v0
.end method

.method static synthetic -get3(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mTransferServer:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)Landroid/net/wifi/p2p/WifiP2pManager;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mConflictConnection:Z

    return p1
.end method

.method static synthetic -set1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;I)I
    .registers 2

    iput p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mCreateGroupRetryCount:I

    return p1
.end method

.method static synthetic -set2(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mIsTransferCanceled:Z

    return p1
.end method

.method static synthetic -set3(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)Z
    .registers 2

    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->isChannelAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->channelIsNotAvailable()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/android/nfc/beam/BeamManager;->DBG:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->DBG:Ljava/lang/Boolean;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$Callback;
    .param p3, "transferRecord"    # Lcom/android/nfc/beam/BeamTransferRecord;
    .param p4, "wifiApiClient"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mIsRunning:Z

    .line 60
    iput-boolean v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mIsTransferCanceled:Z

    .line 61
    iput-boolean v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mConflictConnection:Z

    .line 63
    iput v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mListenChannel:I

    .line 64
    iput v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mOperatingChannel:I

    .line 65
    iput v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mCreateGroupRetryCount:I

    .line 199
    new-instance v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mContext:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$Callback;

    .line 71
    iget v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->id:I

    iput v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mTransferId:I

    .line 72
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->remoteMacAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mClientAddress:Ljava/lang/String;

    .line 73
    iput-object p4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mWifiP2pApiClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    .line 75
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->wifiChannel:Landroid/net/wifi/WifiChannel;

    if-eqz v0, :cond_36

    .line 76
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->wifiChannel:Landroid/net/wifi/WifiChannel;

    iget v0, v0, Landroid/net/wifi/WifiChannel;->channelNum:I

    iput v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mListenChannel:I

    .line 77
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->wifiChannel:Landroid/net/wifi/WifiChannel;

    iget v0, v0, Landroid/net/wifi/WifiChannel;->channelNum:I

    iput v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mOperatingChannel:I

    .line 80
    :cond_36
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_60

    const-string/jumbo v1, "WifiP2pIncomingHandover"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Channel Frequency used is: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 81
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->wifiChannel:Landroid/net/wifi/WifiChannel;

    if-eqz v0, :cond_89

    .line 82
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->wifiChannel:Landroid/net/wifi/WifiChannel;

    iget v0, v0, Landroid/net/wifi/WifiChannel;->freqMHz:I

    .line 80
    :goto_55
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_60
    const-string/jumbo v0, "wifip2p"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;

    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mTransferId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;-><init>(Landroid/content/Context;IZ)V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->notification:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;

    .line 88
    new-instance v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;

    invoke-direct {v0, p1, p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;-><init>(Landroid/content/Context;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler$Callback;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mNotificationHandler:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;

    .line 68
    return-void

    .line 82
    :cond_89
    const/16 v0, 0x96c

    goto :goto_55
.end method

.method private channelIsNotAvailable()V
    .registers 3

    .prologue
    .line 195
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "WifiP2pIncomingHandover"

    const-string/jumbo v1, "Channel is no longer available, finish the process"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->complete(Z)V

    .line 194
    return-void
.end method

.method private disconnect()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 314
    sget-object v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string/jumbo v1, "WifiP2pIncomingHandover"

    const-string/jumbo v2, "Wi-Fi P2P disconnection"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_12
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->isChannelAvailable()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 318
    new-instance v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;

    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mChannelThread:Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;-><init>(Landroid/os/HandlerThread;)V

    .line 319
    .local v0, "threadFinalizer":Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;->addNumberOfRegisteredListener(I)V

    .line 322
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 330
    .end local v0    # "threadFinalizer":Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pThreadFinalizer;
    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mChannelThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_30

    .line 331
    iput-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mChannelThread:Landroid/os/HandlerThread;

    .line 334
    :cond_30
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-eqz v1, :cond_36

    .line 335
    iput-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 338
    :cond_36
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mTransferServer:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;

    if-eqz v1, :cond_3c

    .line 339
    iput-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mTransferServer:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;

    .line 313
    :cond_3c
    return-void

    .line 324
    :cond_3d
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mChannelThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_2a

    .line 325
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mChannelThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 326
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mChannelThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->interrupt()V

    goto :goto_2a
.end method

.method private isChannelAvailable()Z
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_6

    .line 188
    const/4 v0, 0x0

    return v0

    .line 191
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method private resetTimeout()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 344
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 345
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 346
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 343
    :cond_1b
    return-void
.end method


# virtual methods
.method public complete(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;Z)V
    .registers 3
    .param p1, "data"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    .param p2, "success"    # Z

    .prologue
    .line 386
    if-eqz p2, :cond_4

    .line 387
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mDataInfo:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    .line 390
    :cond_4
    invoke-virtual {p0, p2}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->complete(Z)V

    .line 385
    return-void
.end method

.method public complete(Z)V
    .registers 8
    .param p1, "success"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 395
    iget-boolean v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mIsRunning:Z

    if-nez v3, :cond_19

    .line 396
    sget-object v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_18

    const-string/jumbo v1, "WifiP2pIncomingHandover"

    const-string/jumbo v2, "Wi-Fi P2P Incoming Handover already completed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_18
    return-void

    .line 400
    :cond_19
    sget-object v3, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2a

    const-string/jumbo v3, "WifiP2pIncomingHandover"

    const-string/jumbo v4, "Wi-Fi P2P Incoming Handover complete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_2a
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mNotificationHandler:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;

    invoke-virtual {v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->stop()V

    .line 403
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 404
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 407
    :cond_3c
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_53

    .line 408
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 409
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_56

    :goto_4c
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 410
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 413
    .end local v0    # "msg":Landroid/os/Message;
    :cond_53
    iput-boolean v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mIsRunning:Z

    .line 394
    return-void

    .restart local v0    # "msg":Landroid/os/Message;
    :cond_56
    move v1, v2

    .line 409
    goto :goto_4c
.end method

.method public getTransferId()I
    .registers 2

    .prologue
    .line 417
    iget v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mTransferId:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 112
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_dc

    .line 169
    return v8

    .line 114
    :pswitch_9
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v7, :cond_50

    const/4 v3, 0x1

    .line 116
    .local v3, "success":Z
    :goto_e
    sget-object v4, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_21

    const-string/jumbo v5, "WifiP2pIncomingHandover"

    if-eqz v3, :cond_52

    .line 117
    const-string/jumbo v4, "Incoming transfer success"

    .line 116
    :goto_1e
    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_21
    if-nez v3, :cond_2c

    iget-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mTransferServer:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;

    if-eqz v4, :cond_2c

    .line 120
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mTransferServer:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;

    invoke-virtual {v4}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->cancel()V

    .line 123
    :cond_2c
    iget-boolean v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mIsTransferCanceled:Z

    if-eqz v4, :cond_56

    .line 124
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->notification:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->showNotification(I)V

    .line 132
    :goto_36
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v4, :cond_43

    .line 133
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 134
    iput-object v6, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 137
    :cond_43
    monitor-enter p0

    .line 138
    :try_start_44
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->disconnect()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_70

    monitor-exit p0

    .line 141
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$Callback;

    iget-boolean v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mConflictConnection:Z

    invoke-interface {v4, v3, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$Callback;->onTransferComplete(ZZ)V

    .line 142
    return v7

    .line 114
    .end local v3    # "success":Z
    :cond_50
    const/4 v3, 0x0

    .restart local v3    # "success":Z
    goto :goto_e

    .line 117
    :cond_52
    const-string/jumbo v4, "Incoming transfer failed"

    goto :goto_1e

    .line 125
    :cond_56
    if-eqz v3, :cond_69

    iget-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mDataInfo:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    if-eqz v4, :cond_69

    .line 126
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->notification:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;

    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mDataInfo:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    invoke-virtual {v4, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->buildViewIntent(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;)V

    .line 127
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->notification:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;

    invoke-virtual {v4, v7}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->showNotification(I)V

    goto :goto_36

    .line 129
    :cond_69
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->notification:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->showNotification(I)V

    goto :goto_36

    .line 137
    :catchall_70
    move-exception v4

    monitor-exit p0

    throw v4

    .line 145
    .end local v3    # "success":Z
    :pswitch_73
    sget-object v4, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_84

    const-string/jumbo v4, "WifiP2pIncomingHandover"

    const-string/jumbo v5, "Timeout occurred"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_84
    invoke-virtual {p0, v8}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->complete(Z)V

    .line 147
    return v7

    .line 150
    :pswitch_88
    const/4 v2, 0x0

    .line 152
    .local v2, "isClientStillConnected":Z
    sget-object v4, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9a

    const-string/jumbo v4, "WifiP2pIncomingHandover"

    const-string/jumbo v5, "Check client connection"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_9a
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v4, :cond_bf

    .line 155
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mWifiP2pGroup:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_a8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 156
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mClientAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 157
    const/4 v2, 0x1

    .line 163
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1    # "device$iterator":Ljava/util/Iterator;
    :cond_bf
    if-nez v2, :cond_db

    iget-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mTransferServer:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;

    if-eqz v4, :cond_db

    .line 164
    sget-object v4, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_d6

    const-string/jumbo v4, "WifiP2pIncomingHandover"

    const-string/jumbo v5, "Client lost connection"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :cond_d6
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mTransferServer:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;

    invoke-virtual {v4}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->cancel()V

    .line 167
    :cond_db
    return v7

    .line 112
    :pswitch_data_dc
    .packed-switch 0x1
        :pswitch_73
        :pswitch_9
        :pswitch_88
    .end packed-switch
.end method

.method public hasStarted()Z
    .registers 2

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mIsRunning:Z

    return v0
.end method

.method public onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
    .registers 6
    .param p1, "info"    # Landroid/net/wifi/p2p/WifiP2pInfo;

    .prologue
    const/4 v3, 0x0

    .line 93
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mTransferServer:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;

    if-eqz v0, :cond_17

    .line 94
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "WifiP2pIncomingHandover"

    const-string/jumbo v1, "Server already started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_16
    return-void

    .line 98
    :cond_17
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string/jumbo v0, "WifiP2pIncomingHandover"

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

    .line 100
    :cond_39
    if-nez p1, :cond_50

    .line 101
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4c

    const-string/jumbo v0, "WifiP2pIncomingHandover"

    const-string/jumbo v1, "Wifi P2P Info is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_4c
    invoke-virtual {p0, v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->complete(Z)V

    .line 103
    return-void

    .line 106
    :cond_50
    new-instance v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;

    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;-><init>(Landroid/content/Context;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mTransferServer:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;

    .line 107
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mTransferServer:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 92
    return-void
.end method

.method public setNumberOfFileToRetrieve(I)V
    .registers 3
    .param p1, "fileCount"    # I

    .prologue
    .line 421
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->notification:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;

    invoke-virtual {v0, p1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->setFileCount(I)V

    .line 420
    return-void
.end method

.method public start()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 352
    iput-boolean v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mIsRunning:Z

    .line 354
    sget-object v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string/jumbo v1, "WifiP2pIncomingHandover"

    const-string/jumbo v2, "Wi-Fi P2P Incoming Handover started"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_15
    sget-object v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_39

    const-string/jumbo v1, "WifiP2pIncomingHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Receive data from -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mClientAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_39
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 358
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 359
    const-string/jumbo v1, "com.sonymobile.nfc.handover.wifip2p.action.CANCEL_WIFI_P2P_HANDOVER_TRANSFER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 361
    const-string/jumbo v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 362
    const-string/jumbo v1, "com.sonymobile.nfc.action.SONY_WIFI_P2P_NDEF_DETECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 363
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 365
    new-instance v1, Landroid/os/HandlerThread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->getClass()Ljava/lang/Class;

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

    iput-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mChannelThread:Landroid/os/HandlerThread;

    .line 366
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mChannelThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 368
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mChannelThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 370
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mListenChannel:I

    .line 371
    iget v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mOperatingChannel:I

    new-instance v5, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$wifiP2pChannelListener;

    invoke-direct {v5, p0, v6}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$wifiP2pChannelListener;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$wifiP2pChannelListener;)V

    .line 370
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 373
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mWifiP2pApiClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mClientAddress:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v6}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;->setIncomingDeviceAddress(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 374
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$CreateGroupListener;

    invoke-direct {v3, p0, v6}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$CreateGroupListener;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$CreateGroupListener;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 375
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 377
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mNotificationHandler:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->start()V

    .line 351
    return-void
.end method

.method public updateTransferInfo(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;I)V
    .registers 4
    .param p1, "data"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    .param p2, "currentFileCount"    # I

    .prologue
    .line 425
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mNotificationHandler:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->updateTransferInfo(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;I)V

    .line 424
    return-void
.end method

.method public updateTransferProgress(FIZ)V
    .registers 5
    .param p1, "progress"    # F
    .param p2, "currentCount"    # I
    .param p3, "progressOccurred"    # Z

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->mIsTransferCanceled:Z

    if-eqz v0, :cond_5

    .line 176
    return-void

    .line 179
    :cond_5
    if-eqz p3, :cond_a

    .line 180
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->resetTimeout()V

    .line 183
    :cond_a
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->notification:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;

    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pNotification;->showProgressNotification(FI)V

    .line 174
    return-void
.end method

.class public Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;
.super Landroid/app/Service;
.source "WifiP2pBeamService.java"

# interfaces
.implements Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$1;,
        Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$2;,
        Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$3;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field public static final EXTRA_BEAM_COMPLETE_CALLBACK:Ljava/lang/String; = "com.sonymobile.nfc.handover.wifip2p.TRANSFER_COMPLETE_CALLBACK"

.field public static final EXTRA_BEAM_INCOMING_HANDOVER:Ljava/lang/String; = "com.sonymobile.nfc.handover.wifip2p.EXTRA_BEAM_INCOMING_HANDOVER"

.field public static EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String; = null

.field private static final MSG_DO_TRANSFER:I = 0x0

.field private static TAG:Ljava/lang/String; = null

.field private static final WAIT_FOR_API_MS:I = 0x1f4


# instance fields
.field private final mClientCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$Callback;

.field private mCompleteCallback:Landroid/os/Messenger;

.field private final mHandler:Landroid/os/Handler;

.field private mIsIncomingHandover:Z

.field private mStartId:I

.field private mTransferRecord:Lcom/android/nfc/beam/BeamTransferRecord;

.field private mWifiEnabledByNfc:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pApiClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

.field private mWifiP2pHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverable;

.field private final mWifiStateReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->DBG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;)I
    .registers 2

    iget v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mStartId:I

    return v0
.end method

.method static synthetic -get4(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;)Lcom/android/nfc/beam/BeamTransferRecord;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mTransferRecord:Lcom/android/nfc/beam/BeamTransferRecord;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;)Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiP2pApiClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;)Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiP2pApiClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;Lcom/android/nfc/beam/BeamTransferRecord;)Z
    .registers 3
    .param p1, "transferRecord"    # Lcom/android/nfc/beam/BeamTransferRecord;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->doTransfer(Lcom/android/nfc/beam/BeamTransferRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->handleWifiStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;Z)V
    .registers 2
    .param p1, "success"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->invokeCompleteCallback(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    const-string/jumbo v0, "WifiP2pBeamService"

    sput-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->TAG:Ljava/lang/String;

    .line 44
    sget-boolean v0, Lcom/android/nfc/beam/BeamManager;->DBG:Z

    sput-boolean v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->DBG:Z

    .line 47
    const-string/jumbo v0, "com.sonymobile.nfc.handover.wifip2p.EXTRA_BEAM_TRANSFER_RECORD"

    .line 46
    sput-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 67
    new-instance v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$1;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    .line 75
    new-instance v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$2;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;)V

    .line 74
    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mClientCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$Callback;

    .line 89
    new-instance v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$3;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$3;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mHandler:Landroid/os/Handler;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiEnabledByNfc:Z

    .line 109
    return-void
.end method

.method private createWifiP2pTransfer(Lcom/android/nfc/beam/BeamTransferRecord;)Z
    .registers 5
    .param p1, "transferRecord"    # Lcom/android/nfc/beam/BeamTransferRecord;

    .prologue
    const/4 v2, 0x0

    .line 205
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiP2pHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverable;

    if-eqz v0, :cond_6

    .line 206
    return v2

    .line 209
    :cond_6
    iget v0, p1, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    sget v1, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_WIFI_P2P:I

    if-eq v0, v1, :cond_d

    .line 211
    return v2

    .line 214
    :cond_d
    iget-boolean v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mIsIncomingHandover:Z

    if-eqz v0, :cond_1c

    .line 215
    new-instance v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    .line 216
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiP2pApiClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    .line 215
    invoke-direct {v0, p0, p0, p1, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;-><init>(Landroid/content/Context;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiP2pHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverable;

    .line 221
    :goto_1a
    const/4 v0, 0x1

    return v0

    .line 218
    :cond_1c
    new-instance v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    .line 219
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiP2pApiClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    .line 218
    invoke-direct {v0, p0, p0, p1, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;-><init>(Landroid/content/Context;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiP2pHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverable;

    goto :goto_1a
.end method

.method private doTransfer(Lcom/android/nfc/beam/BeamTransferRecord;)Z
    .registers 5
    .param p1, "transferRecord"    # Lcom/android/nfc/beam/BeamTransferRecord;

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->createWifiP2pTransfer(Lcom/android/nfc/beam/BeamTransferRecord;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 187
    return v2

    .line 190
    :cond_8
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 191
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->isWifiP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_17

    .line 192
    return v2

    .line 194
    :cond_17
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiP2pHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverable;

    invoke-interface {v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverable;->start()V

    .line 201
    :cond_1c
    const/4 v0, 0x1

    return v0

    .line 196
    :cond_1e
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->enableWifiForP2p()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 197
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Error enabling Wifi."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return v2
.end method

.method private enableWifiForP2p()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 175
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    .line 176
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiP2pApiClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    invoke-interface {v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;->enableWifiWithDelayedFirstScan()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 177
    iput-boolean v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiEnabledByNfc:Z

    .line 182
    :cond_13
    return v1

    .line 179
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private handleWifiStateChanged(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 225
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 227
    const-string/jumbo v2, "wifi_state"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 228
    .local v1, "state":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 224
    .end local v1    # "state":I
    :cond_18
    :goto_18
    return-void

    .line 238
    :cond_19
    const-string/jumbo v2, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 239
    const-string/jumbo v2, "wifi_p2p_state"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 240
    .restart local v1    # "state":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_18

    .line 242
    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiP2pHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverable;

    if-eqz v2, :cond_18

    .line 243
    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiP2pHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverable;

    invoke-interface {v2}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverable;->hasStarted()Z

    move-result v2

    if-nez v2, :cond_18

    .line 244
    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 245
    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiP2pHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverable;

    invoke-interface {v2}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverable;->start()V

    goto :goto_18
.end method

.method private invokeCompleteCallback(Z)V
    .registers 8
    .param p1, "success"    # Z

    .prologue
    const/4 v1, 0x0

    .line 252
    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mCompleteCallback:Landroid/os/Messenger;

    if-eqz v2, :cond_15

    .line 254
    :try_start_5
    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mCompleteCallback:Landroid/os/Messenger;

    .line 255
    if-eqz p1, :cond_a

    const/4 v1, 0x1

    .line 254
    :cond_a
    const/4 v3, 0x0

    .line 255
    const/16 v4, 0xb

    const/4 v5, 0x0

    .line 254
    invoke-static {v3, v4, v1, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_15} :catch_16

    .line 251
    :cond_15
    :goto_15
    return-void

    .line 256
    :catch_16
    move-exception v0

    .line 257
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to invoke Beam complete callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method private isWifiP2pEnabled()Z
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 161
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 162
    .local v3, "filter":Landroid/content/IntentFilter;
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p0

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v6

    .line 164
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_21

    .line 165
    const-string/jumbo v0, "wifi_p2p_state"

    const/4 v1, -0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 166
    .local v7, "state":I
    const/4 v0, 0x2

    if-ne v7, v0, :cond_21

    .line 167
    const/4 v0, 0x1

    return v0

    .line 171
    .end local v7    # "state":I
    :cond_21
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 284
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 117
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 120
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    const-string/jumbo v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 114
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 127
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 129
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiP2pApiClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    if-eqz v0, :cond_f

    .line 130
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiP2pApiClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    invoke-interface {v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;->release()V

    .line 131
    iput-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiP2pApiClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    .line 134
    :cond_f
    iput-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiP2pHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverable;

    .line 135
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 126
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v2, 0x0

    .line 140
    iput p3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mStartId:I

    .line 142
    if-eqz p1, :cond_11

    .line 143
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/beam/BeamTransferRecord;

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mTransferRecord:Lcom/android/nfc/beam/BeamTransferRecord;

    if-nez v0, :cond_22

    .line 144
    :cond_11
    sget-boolean v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->DBG:Z

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "No transfer record provided. Stopping."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1d
    invoke-virtual {p0, p3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->stopSelf(I)V

    .line 146
    const/4 v0, 0x2

    return v0

    .line 149
    :cond_22
    const-string/jumbo v0, "com.sonymobile.nfc.handover.wifip2p.TRANSFER_COMPLETE_CALLBACK"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mCompleteCallback:Landroid/os/Messenger;

    .line 150
    const-string/jumbo v0, "com.sonymobile.nfc.handover.wifip2p.EXTRA_BEAM_INCOMING_HANDOVER"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mIsIncomingHandover:Z

    .line 152
    new-instance v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;

    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mClientCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$Callback;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;-><init>(Landroid/content/Context;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$Callback;)V

    .line 155
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public onTransferComplete(ZZ)V
    .registers 6
    .param p1, "success"    # Z
    .param p2, "conflictConnection"    # Z

    .prologue
    const/4 v2, 0x0

    .line 265
    if-nez p1, :cond_17

    .line 266
    sget-boolean v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->DBG:Z

    if-eqz v0, :cond_f

    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Wifi P2P Transfer failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_f
    iget-boolean v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiEnabledByNfc:Z

    if-eqz v0, :cond_17

    if-eqz p2, :cond_17

    .line 269
    iput-boolean v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiEnabledByNfc:Z

    .line 273
    :cond_17
    iget-boolean v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiEnabledByNfc:Z

    if-eqz v0, :cond_22

    .line 274
    iput-boolean v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiEnabledByNfc:Z

    .line 275
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 278
    :cond_22
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->invokeCompleteCallback(Z)V

    .line 279
    iget v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mStartId:I

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->stopSelf(I)V

    .line 263
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 289
    sget-boolean v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->DBG:Z

    if-eqz v0, :cond_d

    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Wifi P2P Beam service unbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_d
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiP2pHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverable;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiP2pHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverable;

    invoke-interface {v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverable;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 293
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->mWifiP2pHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverable;

    invoke-interface {v0, v2}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverable;->complete(Z)V

    .line 296
    :cond_1e
    return v2
.end method

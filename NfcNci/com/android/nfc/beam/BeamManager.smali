.class public Lcom/android/nfc/beam/BeamManager;
.super Ljava/lang/Object;
.source "BeamManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/beam/BeamManager$Singleton;
    }
.end annotation


# static fields
.field private static final ACTION_WHITELIST_DEVICE:Ljava/lang/String; = "android.btopp.intent.action.WHITELIST_DEVICE"

.field private static final CONNECT_WIFI_DISPLAY_DURATION_MS:I = 0x2710

.field public static final DBG:Z

.field public static final MSG_BEAM_COMPLETE:I = 0x0

.field public static final MSG_WIFI_P2P_BEAM_COMPLETE:I = 0xb

.field private static final TAG:Ljava/lang/String; = "BeamManager"


# instance fields
.field private mBeamInProgress:Z

.field private final mCallback:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mMessenger:Landroid/os/Messenger;

.field private mNfcService:Lcom/android/nfc/NfcService;

.field private mWifiDisplayExecutedTime:J

.field private mWifiP2pBeamInProgress:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 51
    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v1, "user"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    :goto_14
    sput-boolean v0, Lcom/android/nfc/beam/BeamManager;->DBG:Z

    .line 49
    return-void

    .line 51
    :cond_17
    const/4 v0, 0x1

    goto :goto_14
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    .line 76
    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamManager;->mWifiP2pBeamInProgress:Z

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    .line 79
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mNfcService:Lcom/android/nfc/NfcService;

    .line 80
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mMessenger:Landroid/os/Messenger;

    .line 74
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/beam/BeamManager;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/nfc/beam/BeamManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/nfc/beam/BeamManager;
    .registers 1

    .prologue
    .line 84
    sget-object v0, Lcom/android/nfc/beam/BeamManager$Singleton;->INSTANCE:Lcom/android/nfc/beam/BeamManager;

    return-object v0
.end method

.method private playSound(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 260
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_e

    move v0, v1

    .line 261
    .local v0, "success":Z
    :goto_6
    if-eqz v0, :cond_d

    .line 262
    iget-object v2, p0, Lcom/android/nfc/beam/BeamManager;->mNfcService:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, v1}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 259
    :cond_d
    return-void

    .line 260
    .end local v0    # "success":Z
    :cond_e
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private startWifiP2pHandover(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;[Landroid/net/Uri;Landroid/os/UserHandle;Z)Z
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverData"    # Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;
    .param p3, "uris"    # [Landroid/net/Uri;
    .param p4, "userHandle"    # Landroid/os/UserHandle;
    .param p5, "incoming"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 211
    iget-object v4, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 212
    :try_start_5
    iget-boolean v3, p0, Lcom/android/nfc/beam/BeamManager;->mWifiP2pBeamInProgress:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_4e

    if-nez v3, :cond_b

    if-nez p2, :cond_d

    :cond_b
    monitor-exit v4

    .line 213
    return v7

    .line 215
    :cond_d
    const/4 v3, 0x1

    :try_start_e
    iput-boolean v3, p0, Lcom/android/nfc/beam/BeamManager;->mWifiP2pBeamInProgress:Z
    :try_end_10
    .catchall {:try_start_e .. :try_end_10} :catchall_4e

    monitor-exit v4

    .line 220
    iget-object v3, p2, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;->deviceMacAddr:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;->wifiChannel:Landroid/net/wifi/WifiChannel;

    .line 221
    iget-boolean v5, p2, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;->carrierActivating:Z

    .line 219
    invoke-static {v3, v4, v5, p3}, Lcom/android/nfc/beam/BeamTransferRecord;->forWifiDevice(Ljava/lang/String;Landroid/net/wifi/WifiChannel;Z[Landroid/net/Uri;)Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v2

    .line 222
    .local v2, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 223
    const-class v4, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;

    .line 222
    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v0, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 225
    const-string/jumbo v3, "com.sonymobile.nfc.handover.wifip2p.TRANSFER_COMPLETE_CALLBACK"

    .line 226
    new-instance v4, Landroid/os/Messenger;

    iget-object v5, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 225
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 227
    const-string/jumbo v3, "com.sonymobile.nfc.handover.wifip2p.EXTRA_BEAM_INCOMING_HANDOVER"

    invoke-virtual {v0, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    invoke-static {p1}, Lcom/sonymobile/nfc/cta/CtaUtils;->isCtaSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 230
    invoke-static {p1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->isWifiEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_51

    .line 237
    :cond_4a
    invoke-virtual {p1, v0, p4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 238
    return v6

    .line 211
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :catchall_4e
    move-exception v3

    monitor-exit v4

    throw v3

    .line 231
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v2    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :cond_51
    iget-object v3, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v7, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 232
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/nfc/beam/BeamManager;->mMessenger:Landroid/os/Messenger;

    invoke-static {p1, v3, v6, v1, v0}, Lcom/sonymobile/nfc/cta/CtaUtils;->showCtaDialogWithMessage(Landroid/content/Context;Landroid/os/Messenger;ILandroid/os/Message;Landroid/content/Intent;)V

    .line 234
    return v6
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 185
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_14

    .line 186
    iget-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 187
    const/4 v1, 0x0

    :try_start_a
    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_11

    monitor-exit v0

    .line 189
    invoke-direct {p0, p1}, Lcom/android/nfc/beam/BeamManager;->playSound(Landroid/os/Message;)V

    .line 190
    return v3

    .line 186
    :catchall_11
    move-exception v1

    monitor-exit v0

    throw v1

    .line 191
    :cond_14
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_28

    .line 192
    iget-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    const/4 v1, 0x0

    :try_start_1e
    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamManager;->mWifiP2pBeamInProgress:Z
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_25

    monitor-exit v0

    .line 195
    invoke-direct {p0, p1}, Lcom/android/nfc/beam/BeamManager;->playSound(Landroid/os/Message;)V

    .line 196
    return v3

    .line 192
    :catchall_25
    move-exception v1

    monitor-exit v0

    throw v1

    .line 198
    :cond_28
    return v2
.end method

.method public isBeamInProgress()Z
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_3
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    .line 88
    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public isWifiDisplayConnecting()Z
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 248
    .local v0, "curTime":J
    iget-wide v2, p0, Lcom/android/nfc/beam/BeamManager;->mWifiDisplayExecutedTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_e

    .line 249
    return v6

    .line 252
    :cond_e
    iget-wide v2, p0, Lcom/android/nfc/beam/BeamManager;->mWifiDisplayExecutedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_19

    .line 253
    return v6

    .line 256
    :cond_19
    const/4 v2, 0x1

    return v2
.end method

.method public isWifiP2pBeamInProgress(Landroid/content/Context;)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    iget-object v1, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_17

    move-result v0

    if-nez v0, :cond_13

    .line 101
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 104
    :cond_13
    :try_start_13
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamManager;->mWifiP2pBeamInProgress:Z
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_17

    monitor-exit v1

    return v0

    .line 94
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onWifiDisplayHandoverExecuted()V
    .registers 3

    .prologue
    .line 242
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/nfc/beam/BeamManager;->mWifiDisplayExecutedTime:J

    .line 241
    return-void
.end method

.method public startBeamReceive(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Z
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 110
    iget-object v1, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_5
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_51

    if-eqz v0, :cond_b

    monitor-exit v1

    .line 112
    return v2

    .line 114
    :cond_b
    const/4 v0, 0x1

    :try_start_c
    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_51

    monitor-exit v1

    .line 120
    iget-object v0, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    iget-boolean v1, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    const/4 v5, 0x0

    .line 119
    invoke-static {v0, v1, v5}, Lcom/android/nfc/beam/BeamTransferRecord;->forBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v6

    .line 122
    .local v6, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 123
    const-class v1, Lcom/android/nfc/beam/BeamReceiveService;

    .line 122
    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    .local v4, "receiveIntent":Landroid/content/Intent;
    const-string/jumbo v0, "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

    invoke-virtual {v4, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 125
    const-string/jumbo v0, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    .line 126
    new-instance v1, Landroid/os/Messenger;

    iget-object v5, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    invoke-direct {v1, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 125
    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 127
    invoke-static {p1}, Lcom/sonymobile/nfc/cta/CtaUtils;->isCtaSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 128
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 135
    :cond_46
    iget-object v0, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/beam/BeamManager;->whitelistOppDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 136
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v4, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 137
    return v7

    .line 110
    .end local v4    # "receiveIntent":Landroid/content/Intent;
    .end local v6    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :catchall_51
    move-exception v0

    monitor-exit v1

    throw v0

    .line 129
    .restart local v4    # "receiveIntent":Landroid/content/Intent;
    .restart local v6    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :cond_54
    iget-object v0, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    invoke-virtual {v0, v2, v2, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    .line 130
    .local v3, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamManager;->mMessenger:Landroid/os/Messenger;

    .line 131
    iget-object v5, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    move-object v0, p1

    .line 130
    invoke-static/range {v0 .. v5}, Lcom/sonymobile/nfc/cta/CtaUtils;->showCtaDialogWithMessage(Landroid/content/Context;Landroid/os/Messenger;ILandroid/os/Message;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 132
    return v7
.end method

.method public startBeamReceive(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;)Z
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverData"    # Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;

    .prologue
    .line 142
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/beam/BeamManager;->startWifiP2pHandover(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;[Landroid/net/Uri;Landroid/os/UserHandle;Z)Z

    move-result v0

    return v0
.end method

.method public startBeamSend(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;[Landroid/net/Uri;Landroid/os/UserHandle;)Z
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "outgoingHandoverData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .param p3, "uris"    # [Landroid/net/Uri;
    .param p4, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 148
    iget-object v4, p0, Lcom/android/nfc/beam/BeamManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 149
    :try_start_5
    iget-boolean v3, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_48

    if-eqz v3, :cond_b

    monitor-exit v4

    .line 150
    return v6

    .line 152
    :cond_b
    const/4 v3, 0x1

    :try_start_c
    iput-boolean v3, p0, Lcom/android/nfc/beam/BeamManager;->mBeamInProgress:Z
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_48

    monitor-exit v4

    .line 157
    iget-object v3, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    iget-boolean v4, p2, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    .line 156
    invoke-static {v3, v4, p3}, Lcom/android/nfc/beam/BeamTransferRecord;->forBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v2

    .line 159
    .local v2, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 160
    const-class v4, Lcom/android/nfc/beam/BeamSendService;

    .line 159
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    .local v1, "sendIntent":Landroid/content/Intent;
    sget-object v3, Lcom/android/nfc/beam/BeamSendService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 162
    const-string/jumbo v3, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    .line 163
    new-instance v4, Landroid/os/Messenger;

    iget-object v5, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 162
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 165
    invoke-static {p1}, Lcom/sonymobile/nfc/cta/CtaUtils;->isCtaSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 166
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 173
    :cond_44
    invoke-virtual {p1, v1, p4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 174
    return v7

    .line 148
    .end local v1    # "sendIntent":Landroid/content/Intent;
    .end local v2    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :catchall_48
    move-exception v3

    monitor-exit v4

    throw v3

    .line 167
    .restart local v1    # "sendIntent":Landroid/content/Intent;
    .restart local v2    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :cond_4b
    iget-object v3, p0, Lcom/android/nfc/beam/BeamManager;->mCallback:Landroid/os/Handler;

    invoke-virtual {v3, v6, v6, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 168
    .local v0, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/nfc/beam/BeamManager;->mMessenger:Landroid/os/Messenger;

    invoke-static {p1, v3, v6, v0, v1}, Lcom/sonymobile/nfc/cta/CtaUtils;->showCtaDialogWithMessage(Landroid/content/Context;Landroid/os/Messenger;ILandroid/os/Message;Landroid/content/Intent;)V

    .line 170
    return v7
.end method

.method public startBeamSend(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;[Landroid/net/Uri;Landroid/os/UserHandle;)Z
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "outgoingHandoverData"    # Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;
    .param p3, "uris"    # [Landroid/net/Uri;
    .param p4, "userHandle"    # Landroid/os/UserHandle;

    .prologue
    .line 180
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/beam/BeamManager;->startWifiP2pHandover(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;[Landroid/net/Uri;Landroid/os/UserHandle;Z)Z

    move-result v0

    return v0
.end method

.method whitelistOppDevice(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 202
    sget-boolean v1, Lcom/android/nfc/beam/BeamManager;->DBG:Z

    if-eqz v1, :cond_25

    const-string/jumbo v1, "BeamManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Whitelisting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for BT OPP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_25
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.btopp.intent.action.WHITELIST_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 205
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 201
    return-void
.end method

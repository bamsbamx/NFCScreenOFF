.class public Lcom/android/nfc/handover/BluetoothPeripheralHandover;
.super Ljava/lang/Object;
.source "BluetoothPeripheralHandover.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;,
        Lcom/android/nfc/handover/BluetoothPeripheralHandover$2;,
        Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;
    }
.end annotation


# static fields
.field static final ACTION_ALLOW_CONNECT:Ljava/lang/String; = "com.android.nfc.handover.action.ALLOW_CONNECT"

.field static final ACTION_CONNECT:I = 0x2

.field static final ACTION_DENY_CONNECT:Ljava/lang/String; = "com.android.nfc.handover.action.DENY_CONNECT"

.field static final ACTION_DISCONNECT:I = 0x1

.field static final ACTION_INIT:I = 0x0

.field static final DBG:Z = false

.field static final MAX_RETRY_COUNT:I = 0x3

.field static final MSG_NEXT_STEP:I = 0x2

.field static final MSG_RETRY:I = 0x3

.field static final MSG_TIMEOUT:I = 0x1

.field static final RESULT_CONNECTED:I = 0x1

.field static final RESULT_DISCONNECTED:I = 0x2

.field static final RESULT_PENDING:I = 0x0

.field static final RETRY_CONNECT_WAIT_TIME_MS:I = 0x1388

.field static final RETRY_PAIRING_WAIT_TIME_MS:I = 0x7d0

.field static final STATE_BONDING:I = 0x4

.field static final STATE_COMPLETE:I = 0x7

.field static final STATE_CONNECTING:I = 0x5

.field static final STATE_DISCONNECTING:I = 0x6

.field static final STATE_INIT:I = 0x0

.field static final STATE_INIT_COMPLETE:I = 0x2

.field static final STATE_WAITING_FOR_BOND_CONFIRMATION:I = 0x3

.field static final STATE_WAITING_FOR_PROXIES:I = 0x1

.field static final TAG:Ljava/lang/String; = "BluetoothPeripheralHandover"

.field static final TIMEOUT_MS:I = 0x4e20


# instance fields
.field mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field mA2dpResult:I

.field mAction:I

.field final mAudioManager:Landroid/media/AudioManager;

.field final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field final mCallback:Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

.field final mContext:Landroid/content/Context;

.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mHandler:Landroid/os/Handler;

.field mHeadset:Landroid/bluetooth/BluetoothHeadset;

.field mHfpResult:I

.field mHidResult:I

.field mInput:Landroid/bluetooth/BluetoothInputDevice;

.field final mIsSupportHid:Z

.field final mLock:Ljava/lang/Object;

.field final mName:Ljava/lang/String;

.field mNeedStartTheMusic:Z

.field final mProvisioning:Z

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mRetryCount:I

.field mState:I

.field final mTransport:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;IZLcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "transport"    # I
    .param p5, "isSupportHid"    # Z
    .param p6, "callback"    # Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    .line 612
    new-instance v1, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;

    invoke-direct {v1, p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover$1;-><init>(Lcom/android/nfc/handover/BluetoothPeripheralHandover;)V

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    .line 647
    new-instance v1, Lcom/android/nfc/handover/BluetoothPeripheralHandover$2;

    invoke-direct {v1, p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover$2;-><init>(Lcom/android/nfc/handover/BluetoothPeripheralHandover;)V

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    invoke-static {}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->checkMainThread()V

    .line 128
    iput-object p1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 130
    iput-object p3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    .line 131
    iput p4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    .line 132
    iput-boolean p5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mIsSupportHid:Z

    .line 133
    iput-object p6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mCallback:Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

    .line 134
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 136
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 138
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "device_provisioned"

    .line 137
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_52

    const/4 v1, 0x1

    :goto_3e
    iput-boolean v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mProvisioning:Z

    .line 140
    iput-boolean v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mNeedStartTheMusic:Z

    .line 141
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAudioManager:Landroid/media/AudioManager;

    .line 143
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 126
    return-void

    :cond_52
    move v1, v2

    .line 137
    goto :goto_3e
.end method

.method static checkMainThread()V
    .registers 2

    .prologue
    .line 655
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_13

    .line 656
    new-instance v0, Ljava/lang/IllegalThreadStateException;

    const-string/jumbo v1, "must be called on main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalThreadStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_13
    return-void
.end method

.method private getRemoteDeviceUuids()[Landroid/os/ParcelUuid;
    .registers 3

    .prologue
    .line 513
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 514
    .local v0, "uuids":[Landroid/os/ParcelUuid;
    if-eqz v0, :cond_b

    array-length v1, v0

    if-nez v1, :cond_b

    .line 517
    :cond_b
    return-object v0
.end method

.method private getToastString(I)Ljava/lang/String;
    .registers 6
    .param p1, "resid"    # I

    .prologue
    .line 307
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    :goto_b
    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    const v0, 0x7f09006f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_b
.end method

.method private isA2dpEnabled([Landroid/os/ParcelUuid;)Z
    .registers 5
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;

    .prologue
    const/4 v2, 0x0

    .line 533
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothA2dp;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-nez v0, :cond_c

    .line 534
    return v2

    .line 536
    :cond_c
    if-eqz p1, :cond_19

    array-length v0, p1

    if-lez v0, :cond_19

    .line 537
    sget-object v0, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->A2DP_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 541
    :cond_19
    const/4 v0, 0x1

    return v0

    .line 539
    :cond_1b
    return v2
.end method

.method private isHfpEnabled([Landroid/os/ParcelUuid;)Z
    .registers 5
    .param p1, "uuids"    # [Landroid/os/ParcelUuid;

    .prologue
    const/4 v2, 0x0

    .line 521
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-nez v0, :cond_c

    .line 522
    return v2

    .line 524
    :cond_c
    if-eqz p1, :cond_19

    array-length v0, p1

    if-lez v0, :cond_19

    .line 525
    sget-object v0, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->HEADSET_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 529
    :cond_19
    const/4 v0, 0x1

    return v0

    .line 527
    :cond_1b
    return v2
.end method

.method private updateResultBySupportedProfiles()V
    .registers 4

    .prologue
    const/4 v2, 0x2

    .line 545
    invoke-direct {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getRemoteDeviceUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 546
    .local v0, "uuids":[Landroid/os/ParcelUuid;
    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-nez v1, :cond_11

    .line 547
    invoke-direct {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->isHfpEnabled([Landroid/os/ParcelUuid;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 548
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 551
    :cond_11
    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-nez v1, :cond_1d

    .line 552
    invoke-direct {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->isA2dpEnabled([Landroid/os/ParcelUuid;)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 553
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 544
    :cond_1d
    return-void
.end method


# virtual methods
.method complete(Z)V
    .registers 6
    .param p1, "connected"    # Z

    .prologue
    const/4 v2, 0x1

    .line 560
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 561
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 562
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 563
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 564
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 565
    :try_start_19
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_25

    .line 566
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 568
    :cond_25
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_31

    .line 569
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 572
    :cond_31
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v0, :cond_3d

    .line 573
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 576
    :cond_3d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 577
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;
    :try_end_46
    .catchall {:try_start_19 .. :try_end_46} :catchall_4d

    monitor-exit v1

    .line 580
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mCallback:Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;

    invoke-interface {v0, p1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;->onBluetoothPeripheralHandoverComplete(Z)V

    .line 558
    return-void

    .line 564
    :catchall_4d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getProfileProxys()Z
    .registers 6

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 312
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-eq v0, v2, :cond_b

    iget-boolean v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mIsSupportHid:Z

    if-eqz v0, :cond_17

    .line 313
    :cond_b
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    invoke-virtual {v0, v1, p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 314
    return v3

    .line 316
    :cond_17
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 317
    return v3

    .line 319
    :cond_22
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 320
    return v3

    .line 323
    :cond_2d
    return v4
.end method

.method handleIntent(Landroid/content/Intent;)V
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x3

    const/high16 v9, -0x80000000

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 445
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 448
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    return-void

    .line 450
    :cond_1c
    const-string/jumbo v4, "com.android.nfc.handover.action.ALLOW_CONNECT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 451
    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 452
    iget-object v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x4e20

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 453
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    .line 444
    :cond_3a
    :goto_3a
    return-void

    .line 454
    :cond_3b
    const-string/jumbo v4, "com.android.nfc.handover.action.DENY_CONNECT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 455
    invoke-virtual {p0, v7}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_3a

    .line 456
    :cond_48
    const-string/jumbo v4, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 457
    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_83

    .line 458
    const-string/jumbo v4, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p1, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 460
    .local v1, "bond":I
    const/16 v4, 0xc

    if-ne v1, v4, :cond_67

    .line 461
    iput v7, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    .line 462
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    goto :goto_3a

    .line 463
    :cond_67
    const/16 v4, 0xa

    if-ne v1, v4, :cond_3a

    .line 464
    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    if-ge v4, v10, :cond_75

    .line 465
    const/16 v4, 0x7d0

    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->sendRetryMessage(I)V

    goto :goto_3a

    .line 467
    :cond_75
    const v4, 0x7f090076

    invoke-direct {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getToastString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 468
    invoke-virtual {p0, v7}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_3a

    .line 471
    .end local v1    # "bond":I
    :cond_83
    const-string/jumbo v4, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    .line 472
    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_96

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_bb

    .line 473
    :cond_96
    const-string/jumbo v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 474
    .local v3, "state":I
    if-ne v3, v6, :cond_a5

    .line 475
    iput v8, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 476
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto :goto_3a

    .line 477
    :cond_a5
    if-nez v3, :cond_3a

    .line 478
    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    if-ne v4, v6, :cond_b5

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    if-ge v4, v10, :cond_b5

    .line 479
    const/16 v4, 0x1388

    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->sendRetryMessage(I)V

    goto :goto_3a

    .line 481
    :cond_b5
    iput v6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 482
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto :goto_3a

    .line 485
    .end local v3    # "state":I
    :cond_bb
    const-string/jumbo v4, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f6

    .line 486
    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_ce

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_f6

    .line 487
    :cond_ce
    const-string/jumbo v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 488
    .restart local v3    # "state":I
    if-ne v3, v6, :cond_de

    .line 489
    iput v8, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 490
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto/16 :goto_3a

    .line 491
    :cond_de
    if-nez v3, :cond_3a

    .line 492
    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    if-ne v4, v6, :cond_ef

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    if-ge v4, v10, :cond_ef

    .line 493
    const/16 v4, 0x1388

    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->sendRetryMessage(I)V

    goto/16 :goto_3a

    .line 495
    :cond_ef
    iput v6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 496
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto/16 :goto_3a

    .line 499
    .end local v3    # "state":I
    :cond_f6
    const-string/jumbo v4, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 500
    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_109

    iget v4, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_3a

    .line 501
    :cond_109
    const-string/jumbo v4, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p1, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 502
    .restart local v3    # "state":I
    if-ne v3, v6, :cond_119

    .line 503
    iput v8, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 504
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto/16 :goto_3a

    .line 505
    :cond_119
    if-nez v3, :cond_3a

    .line 506
    iput v6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 507
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto/16 :goto_3a
.end method

.method public hasStarted()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 147
    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method nextStep()V
    .registers 3

    .prologue
    .line 188
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    if-nez v0, :cond_8

    .line 189
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepInit()V

    .line 187
    :goto_7
    return-void

    .line 190
    :cond_8
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 191
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepConnect()V

    goto :goto_7

    .line 193
    :cond_11
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStepDisconnect()V

    goto :goto_7
.end method

.method nextStepConnect()V
    .registers 8

    .prologue
    const/16 v2, 0xc

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 327
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    packed-switch v0, :pswitch_data_158

    .line 326
    :cond_b
    :goto_b
    return-void

    .line 330
    :pswitch_c
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    if-eq v0, v2, :cond_1a

    .line 331
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->requestPairConfirmation()V

    .line 332
    iput v6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    goto :goto_b

    .line 336
    :cond_1a
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-ne v0, v5, :cond_33

    .line 337
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_33

    .line 338
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    .line 339
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->requestPairConfirmation()V

    .line 340
    iput v6, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    goto :goto_b

    .line 346
    :cond_33
    :pswitch_33
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    if-eq v0, v2, :cond_3f

    .line 347
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->startBonding()V

    goto :goto_b

    .line 354
    :cond_3f
    :pswitch_3f
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 355
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 356
    :try_start_45
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-eq v0, v5, :cond_4d

    iget-boolean v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mIsSupportHid:Z

    if-eqz v0, :cond_a2

    .line 357
    :cond_4d
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v5, :cond_70

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 360
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothInputDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 361
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const v2, 0x7f090026

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 362
    const/4 v2, 0x1

    .line 361
    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;I)V
    :try_end_6e
    .catchall {:try_start_45 .. :try_end_6e} :catchall_ed

    :goto_6e
    monitor-exit v1

    goto :goto_b

    .line 365
    :cond_70
    const/4 v0, 0x1

    :try_start_71
    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I
    :try_end_73
    .catchall {:try_start_71 .. :try_end_73} :catchall_ed

    :cond_73
    monitor-exit v1

    .line 395
    :pswitch_74
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-eq v0, v5, :cond_7c

    iget-boolean v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mIsSupportHid:Z

    if-eqz v0, :cond_109

    .line 396
    :cond_7c
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    if-eqz v0, :cond_b

    .line 398
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    if-ne v0, v4, :cond_f8

    .line 399
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    aput-object v2, v1, v3

    const v2, 0x7f090027

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 401
    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_b

    .line 368
    :cond_a2
    :try_start_a2
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v5, :cond_f0

    .line 370
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 371
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 375
    :goto_b6
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v5, :cond_f4

    .line 376
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 377
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 381
    :goto_ca
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eqz v0, :cond_d2

    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-nez v0, :cond_73

    .line 382
    :cond_d2
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    if-nez v0, :cond_e3

    .line 383
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const v2, 0x7f090026

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 384
    const/4 v2, 0x1

    .line 383
    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;I)V

    .line 386
    :cond_e3
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    if-ge v0, v6, :cond_73

    .line 387
    const/16 v0, 0x1388

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->sendRetryMessage(I)V
    :try_end_ec
    .catchall {:try_start_a2 .. :try_end_ec} :catchall_ed

    goto :goto_6e

    .line 355
    :catchall_ed
    move-exception v0

    monitor-exit v1

    throw v0

    .line 373
    :cond_f0
    const/4 v0, 0x1

    :try_start_f1
    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    goto :goto_b6

    .line 379
    :cond_f4
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I
    :try_end_f7
    .catchall {:try_start_f1 .. :try_end_f7} :catchall_ed

    goto :goto_ca

    .line 403
    :cond_f8
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    .line 404
    const v1, 0x7f09002c

    .line 403
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 405
    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_b

    .line 408
    :cond_109
    invoke-direct {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->updateResultBySupportedProfiles()V

    .line 409
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-eqz v0, :cond_b

    .line 413
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eq v0, v4, :cond_11c

    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-ne v0, v4, :cond_147

    .line 415
    :cond_11c
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    aput-object v2, v1, v3

    const v2, 0x7f090027

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 416
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-ne v0, v4, :cond_13b

    iget-boolean v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mNeedStartTheMusic:Z

    if-eqz v0, :cond_13b

    .line 417
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->startTheMusic()V

    .line 418
    iput-boolean v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mNeedStartTheMusic:Z

    .line 420
    :cond_13b
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 421
    invoke-virtual {p0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_b

    .line 423
    :cond_147
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    .line 424
    const v1, 0x7f09002c

    .line 423
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 425
    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_b

    .line 327
    :pswitch_data_158
    .packed-switch 0x2
        :pswitch_c
        :pswitch_33
        :pswitch_3f
        :pswitch_74
    .end packed-switch
.end method

.method nextStepDisconnect()V
    .registers 8

    .prologue
    const v6, 0x7f090029

    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 242
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    sparse-switch v0, :sswitch_data_ce

    .line 241
    :cond_b
    :goto_b
    return-void

    .line 244
    :sswitch_c
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 245
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_12
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-eq v0, v4, :cond_1a

    iget-boolean v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mIsSupportHid:Z

    if-eqz v0, :cond_60

    .line 247
    :cond_1a
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_3d

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    .line 250
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothInputDevice;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 251
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const v2, 0x7f090028

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 252
    const/4 v2, 0x1

    .line 251
    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;I)V
    :try_end_3b
    .catchall {:try_start_12 .. :try_end_3b} :catchall_9e

    :goto_3b
    monitor-exit v1

    goto :goto_b

    .line 255
    :cond_3d
    const/4 v0, 0x2

    :try_start_3e
    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I
    :try_end_40
    .catchall {:try_start_3e .. :try_end_40} :catchall_9e

    :cond_40
    monitor-exit v1

    .line 281
    :sswitch_41
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-eq v0, v4, :cond_49

    iget-boolean v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mIsSupportHid:Z

    if-eqz v0, :cond_a9

    .line 282
    :cond_49
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHidResult:I

    if-ne v0, v4, :cond_b

    .line 283
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    new-array v1, v5, [Ljava/lang/Object;

    .line 284
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 283
    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_b

    .line 258
    :cond_60
    :try_start_60
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_a1

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    .line 261
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothHeadset;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 265
    :goto_74
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eqz v0, :cond_a5

    .line 267
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    .line 268
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 272
    :goto_88
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eqz v0, :cond_90

    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-nez v0, :cond_40

    .line 273
    :cond_90
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const v2, 0x7f090028

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 274
    const/4 v2, 0x1

    .line 273
    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;I)V
    :try_end_9d
    .catchall {:try_start_60 .. :try_end_9d} :catchall_9e

    goto :goto_3b

    .line 245
    :catchall_9e
    move-exception v0

    monitor-exit v1

    throw v0

    .line 263
    :cond_a1
    const/4 v0, 0x2

    :try_start_a2
    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    goto :goto_74

    .line 270
    :cond_a5
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I
    :try_end_a8
    .catchall {:try_start_a2 .. :try_end_a8} :catchall_9e

    goto :goto_88

    .line 290
    :cond_a9
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-eqz v0, :cond_b

    .line 294
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dpResult:I

    if-ne v0, v4, :cond_c8

    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHfpResult:I

    if-ne v0, v4, :cond_c8

    .line 295
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    new-array v1, v5, [Ljava/lang/Object;

    .line 296
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 295
    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 298
    :cond_c8
    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto/16 :goto_b

    .line 242
    nop

    :sswitch_data_ce
    .sparse-switch
        0x2 -> :sswitch_c
        0x6 -> :sswitch_41
    .end sparse-switch
.end method

.method nextStepInit()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x2

    .line 201
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    packed-switch v0, :pswitch_data_124

    .line 200
    :cond_7
    :goto_7
    return-void

    .line 203
    :pswitch_8
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-nez v0, :cond_1d

    .line 204
    :cond_10
    iput v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 205
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->getProfileProxys()Z

    move-result v0

    if-nez v0, :cond_7

    .line 206
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    goto :goto_7

    .line 203
    :cond_1d
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v0, :cond_10

    .line 212
    :pswitch_21
    iput v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 214
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 215
    :try_start_26
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    if-eq v0, v2, :cond_2e

    iget-boolean v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mIsSupportHid:Z

    if-eqz v0, :cond_9d

    .line 216
    :cond_2e
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothInputDevice;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 217
    const-string/jumbo v0, "BluetoothPeripheralHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ACTION_DISCONNECT addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I
    :try_end_68
    .catchall {:try_start_26 .. :try_end_68} :catchall_9a

    :goto_68
    monitor-exit v1

    .line 236
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    goto :goto_7

    .line 220
    :cond_6d
    :try_start_6d
    const-string/jumbo v0, "BluetoothPeripheralHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ACTION_CONNECT addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I
    :try_end_99
    .catchall {:try_start_6d .. :try_end_99} :catchall_9a

    goto :goto_68

    .line 214
    :catchall_9a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 224
    :cond_9d
    :try_start_9d
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    .line 225
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 224
    if-eqz v0, :cond_e6

    .line 226
    :cond_b9
    const-string/jumbo v0, "BluetoothPeripheralHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ACTION_DISCONNECT addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    goto :goto_68

    .line 229
    :cond_e6
    const-string/jumbo v0, "BluetoothPeripheralHandover"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ACTION_CONNECT addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    .line 231
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    .line 232
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    .line 231
    and-int/2addr v0, v2

    iput-boolean v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mNeedStartTheMusic:Z
    :try_end_121
    .catchall {:try_start_9d .. :try_end_121} :catchall_9a

    goto/16 :goto_68

    .line 201
    nop

    :pswitch_data_124
    .packed-switch 0x0
        :pswitch_8
        :pswitch_21
    .end packed-switch
.end method

.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 6
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 662
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 663
    packed-switch p1, :pswitch_data_38

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :cond_6
    :goto_6
    :pswitch_6
    monitor-exit v1

    .line 661
    return-void

    .line 665
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :pswitch_8
    :try_start_8
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 666
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_6

    .line 667
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_16
    .catchall {:try_start_8 .. :try_end_16} :catchall_17

    goto :goto_6

    .line 662
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0

    .line 671
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :pswitch_1a
    :try_start_1a
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 672
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_6

    .line 673
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6

    .line 677
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :pswitch_29
    check-cast p2, Landroid/bluetooth/BluetoothInputDevice;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    iput-object p2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    .line 678
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v0, :cond_6

    .line 679
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_17

    goto :goto_6

    .line 663
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_8
        :pswitch_1a
        :pswitch_6
        :pswitch_29
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .registers 2
    .param p1, "profile"    # I

    .prologue
    .line 687
    return-void
.end method

.method requestPairConfirmation()V
    .registers 4

    .prologue
    .line 604
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/handover/ConfirmConnectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 605
    .local v0, "dialogIntent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 606
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 607
    const-string/jumbo v1, "android.bluetooth.device.extra.NAME"

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 603
    return-void
.end method

.method sendRetryMessage(I)V
    .registers 6
    .param p1, "waitTime"    # I

    .prologue
    const/4 v2, 0x3

    .line 692
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_15

    .line 693
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 691
    :cond_15
    return-void
.end method

.method public start()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 155
    invoke-static {}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->checkMainThread()V

    .line 156
    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_e

    .line 159
    :cond_d
    return v3

    .line 157
    :cond_e
    iget-boolean v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mProvisioning:Z

    if-eqz v1, :cond_1b

    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1b

    .line 158
    iget-boolean v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mIsSupportHid:Z

    if-eqz v1, :cond_d

    .line 163
    :cond_1b
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 164
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string/jumbo v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    const-string/jumbo v1, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string/jumbo v1, "com.android.nfc.handover.action.ALLOW_CONNECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string/jumbo v1, "com.android.nfc.handover.action.DENY_CONNECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 174
    iget-object v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 176
    iput v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mAction:I

    .line 177
    iput v3, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    .line 179
    invoke-virtual {p0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->nextStep()V

    .line 181
    return v6
.end method

.method startBonding()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 433
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mState:I

    .line 434
    iget v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mRetryCount:I

    if-nez v0, :cond_1b

    .line 435
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mName:Ljava/lang/String;

    aput-object v2, v1, v3

    const v2, 0x7f090023

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;I)V

    .line 438
    :cond_1b
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createBond(I)Z

    move-result v0

    if-nez v0, :cond_34

    .line 439
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    const v1, 0x7f09002b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;)V

    .line 440
    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    .line 432
    :cond_34
    return-void
.end method

.method startTheMusic()V
    .registers 6

    .prologue
    const/16 v4, 0x7e

    const/4 v3, 0x0

    .line 592
    iget-object v2, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    .line 593
    .local v0, "helper":Landroid/media/session/MediaSessionLegacyHelper;
    if-eqz v0, :cond_1d

    .line 594
    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 595
    .local v1, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v0, v1, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 596
    new-instance v1, Landroid/view/KeyEvent;

    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    const/4 v2, 0x1

    invoke-direct {v1, v2, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 597
    .restart local v1    # "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v0, v1, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 591
    .end local v1    # "keyEvent":Landroid/view/KeyEvent;
    :goto_1c
    return-void

    .line 599
    :cond_1d
    const-string/jumbo v2, "BluetoothPeripheralHandover"

    const-string/jumbo v3, "Unable to send media key event"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method toast(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 584
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->toast(Ljava/lang/CharSequence;I)V

    .line 583
    return-void
.end method

.method toast(Ljava/lang/CharSequence;I)V
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "length"    # I

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/sonymobile/nfc/ToastMaster;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 587
    return-void
.end method

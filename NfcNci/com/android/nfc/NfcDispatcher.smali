.class Lcom/android/nfc/NfcDispatcher;
.super Ljava/lang/Object;
.source "NfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcDispatcher$1;,
        Lcom/android/nfc/NfcDispatcher$DispatchInfo;,
        Lcom/android/nfc/NfcDispatcher$MessageHandler;
    }
.end annotation


# static fields
.field static final ACTION_INFORM_BLUETOOTH_CLASS:Ljava/lang/String; = "com.sonymobile.playanywhere.action.INFORM_BLUETOOTH_CLASS"

.field private static final DBG:Z = false

.field static final DISPATCH_FAIL:I = 0x2

.field static final DISPATCH_SUCCESS:I = 0x1

.field static final DISPATCH_UNLOCK:I = 0x3

.field static final PLAYANYWHERE_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.playanywhere"

.field private static final TAG:Ljava/lang/String; = "NfcDispatcher"

.field private static final URL_PREFIX_MAP:[Ljava/lang/String;


# instance fields
.field private mBluetoothEnabledByNfc:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceSupportsBluetooth:Z

.field private final mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field private final mIActivityManager:Landroid/app/IActivityManager;

.field private final mMessageHandler:Landroid/os/Handler;

.field private final mMessenger:Landroid/os/Messenger;

.field private final mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

.field private mOverrideFilters:[Landroid/content/IntentFilter;

.field private mOverrideIntent:Landroid/app/PendingIntent;

.field private mOverrideTechLists:[[Ljava/lang/String;

.field private final mProvisioningMimes:[Ljava/lang/String;

.field private mProvisioningOnly:Z

.field private final mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

.field private final mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;


# direct methods
.method static synthetic -get0(Lcom/android/nfc/NfcDispatcher;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothEnabledByNfc:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 111
    const-string/jumbo v1, "http://"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 112
    const-string/jumbo v1, "https://"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 110
    sput-object v0, Lcom/android/nfc/NfcDispatcher;->URL_PREFIX_MAP:[Ljava/lang/String;

    .line 83
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;Z)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handoverDataParser"    # Lcom/android/nfc/handover/HandoverDataParser;
    .param p3, "provisionOnly"    # Z

    .prologue
    const/4 v4, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v3, Lcom/android/nfc/NfcDispatcher$MessageHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/nfc/NfcDispatcher$MessageHandler;-><init>(Lcom/android/nfc/NfcDispatcher;Lcom/android/nfc/NfcDispatcher$MessageHandler;)V

    iput-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mMessageHandler:Landroid/os/Handler;

    .line 101
    new-instance v3, Landroid/os/Messenger;

    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mMessageHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mMessenger:Landroid/os/Messenger;

    .line 102
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothEnabledByNfc:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 895
    new-instance v3, Lcom/android/nfc/NfcDispatcher$1;

    invoke-direct {v3, p0}, Lcom/android/nfc/NfcDispatcher$1;-><init>(Lcom/android/nfc/NfcDispatcher;)V

    iput-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    .line 123
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mIActivityManager:Landroid/app/IActivityManager;

    .line 124
    new-instance v3, Lcom/android/nfc/RegisteredComponentCache;

    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    .line 125
    const-string/jumbo v5, "android.nfc.action.TECH_DISCOVERED"

    const-string/jumbo v6, "android.nfc.action.TECH_DISCOVERED"

    .line 124
    invoke-direct {v3, v4, v5, v6}, Lcom/android/nfc/RegisteredComponentCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mContentResolver:Landroid/content/ContentResolver;

    .line 127
    iput-object p2, p0, Lcom/android/nfc/NfcDispatcher;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 128
    new-instance v3, Lcom/android/nfc/ScreenStateHelper;

    invoke-direct {v3, p1}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 129
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 130
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    if-eqz v3, :cond_7b

    const/4 v3, 0x1

    :goto_55
    iput-boolean v3, p0, Lcom/android/nfc/NfcDispatcher;->mDeviceSupportsBluetooth:Z

    .line 132
    monitor-enter p0

    .line 133
    :try_start_58
    iput-boolean p3, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z
    :try_end_5a
    .catchall {:try_start_58 .. :try_end_5a} :catchall_7d

    monitor-exit p0

    .line 135
    const/4 v2, 0x0

    .line 136
    .local v2, "provisionMimes":[Ljava/lang/String;
    if-eqz p3, :cond_69

    .line 139
    :try_start_5e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 140
    const v4, 0x7f0c000c

    .line 139
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_68
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5e .. :try_end_68} :catch_80

    move-result-object v2

    .line 145
    .end local v2    # "provisionMimes":[Ljava/lang/String;
    :cond_69
    :goto_69
    iput-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    .line 147
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    return-void

    .line 130
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_7b
    const/4 v3, 0x0

    goto :goto_55

    .line 132
    :catchall_7d
    move-exception v3

    monitor-exit p0

    throw v3

    .line 141
    .restart local v2    # "provisionMimes":[Ljava/lang/String;
    :catch_80
    move-exception v0

    .line 142
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v2, 0x0

    goto :goto_69
.end method

.method static checkForAar(Landroid/nfc/NdefRecord;)Ljava/lang/String;
    .registers 4
    .param p0, "record"    # Landroid/nfc/NdefRecord;

    .prologue
    .line 809
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1f

    .line 810
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v0

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_ANDROID_APP:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 809
    if-eqz v0, :cond_1f

    .line 811
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    .line 813
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method private checkForUri(Landroid/nfc/NdefRecord;)Z
    .registers 4
    .param p1, "record"    # Landroid/nfc/NdefRecord;

    .prologue
    .line 832
    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 833
    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v0

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_SMART_POSTER:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 834
    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v0

    sget-object v1, Landroid/nfc/NdefRecord;->RTD_URI:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 833
    if-eqz v0, :cond_28

    .line 835
    :cond_1f
    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->toUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/nfc/NfcDispatcher;->checkUrlPrefix(Landroid/net/Uri;)Z

    move-result v0

    return v0

    .line 838
    :cond_28
    const/4 v0, 0x0

    return v0
.end method

.method private checkUrlPrefix(Landroid/net/Uri;)Z
    .registers 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 817
    if-eqz p1, :cond_24

    .line 818
    invoke-virtual {p1}, Landroid/net/Uri;->normalizeScheme()Landroid/net/Uri;

    move-result-object p1

    .line 819
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 820
    .local v1, "uriString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_24

    .line 821
    sget-object v4, Lcom/android/nfc/NfcDispatcher;->URL_PREFIX_MAP:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_15
    if-ge v2, v5, :cond_24

    aget-object v0, v4, v2

    .line 822
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 823
    const/4 v2, 0x1

    return v2

    .line 821
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 828
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "uriString":Ljava/lang/String;
    :cond_24
    return v3
.end method

.method private decodeNfcBarcodeUri(Landroid/nfc/tech/NfcBarcode;)Landroid/nfc/NdefMessage;
    .registers 16
    .param p1, "nfcBarcode"    # Landroid/nfc/tech/NfcBarcode;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 425
    const/4 v3, 0x1

    .line 426
    .local v3, "URI_PREFIX_HTTP_WWW":B
    const/4 v2, 0x2

    .line 427
    .local v2, "URI_PREFIX_HTTPS_WWW":B
    const/4 v0, 0x3

    .line 428
    .local v0, "URI_PREFIX_HTTP":B
    const/4 v1, 0x4

    .line 430
    .local v1, "URI_PREFIX_HTTPS":B
    const/4 v5, 0x0

    .line 431
    .local v5, "message":Landroid/nfc/NdefMessage;
    invoke-virtual {p1}, Landroid/nfc/tech/NfcBarcode;->getTag()Landroid/nfc/Tag;

    move-result-object v9

    invoke-virtual {v9}, Landroid/nfc/Tag;->getId()[B

    move-result-object v7

    .line 433
    .local v7, "tagId":[B
    array-length v9, v7

    if-lt v9, v13, :cond_3d

    .line 434
    aget-byte v9, v7, v11

    if-eq v9, v11, :cond_1c

    aget-byte v9, v7, v11

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3e

    .line 440
    :cond_1c
    :goto_1c
    const/4 v4, 0x2

    .line 441
    .local v4, "end":I
    :goto_1d
    array-length v9, v7

    add-int/lit8 v9, v9, -0x2

    if-ge v4, v9, :cond_27

    .line 442
    aget-byte v9, v7, v4

    const/4 v10, -0x2

    if-ne v9, v10, :cond_48

    .line 446
    :cond_27
    add-int/lit8 v9, v4, -0x1

    new-array v6, v9, [B

    .line 447
    .local v6, "payload":[B
    array-length v9, v6

    invoke-static {v7, v11, v6, v12, v9}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 448
    new-instance v8, Landroid/nfc/NdefRecord;

    .line 449
    sget-object v9, Landroid/nfc/NdefRecord;->RTD_URI:[B

    .line 448
    invoke-direct {v8, v11, v9, v7, v6}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 450
    .local v8, "uriRecord":Landroid/nfc/NdefRecord;
    new-instance v5, Landroid/nfc/NdefMessage;

    .end local v5    # "message":Landroid/nfc/NdefMessage;
    new-array v9, v12, [Landroid/nfc/NdefRecord;

    invoke-direct {v5, v8, v9}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 452
    .end local v4    # "end":I
    .end local v6    # "payload":[B
    .end local v8    # "uriRecord":Landroid/nfc/NdefRecord;
    :cond_3d
    return-object v5

    .line 435
    .restart local v5    # "message":Landroid/nfc/NdefMessage;
    :cond_3e
    aget-byte v9, v7, v11

    const/4 v10, 0x3

    if-eq v9, v10, :cond_1c

    aget-byte v9, v7, v11

    if-ne v9, v13, :cond_3d

    goto :goto_1c

    .line 441
    .restart local v4    # "end":I
    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d
.end method

.method private doOppHandover(Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Z
    .registers 6
    .param p1, "handover"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    .prologue
    const/4 v3, 0x0

    .line 769
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService;->getUrisToSend(Z)[Landroid/net/Uri;

    move-result-object v1

    .line 770
    .local v1, "uris":[Landroid/net/Uri;
    if-nez v1, :cond_c

    return v3

    .line 772
    :cond_c
    invoke-static {}, Lcom/android/nfc/beam/BeamManager;->getInstance()Lcom/android/nfc/beam/BeamManager;

    move-result-object v0

    .line 774
    .local v0, "beamManager":Lcom/android/nfc/beam/BeamManager;
    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamManager;->isBeamInProgress()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 775
    return v3

    .line 778
    :cond_17
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, p1, v1, v3}, Lcom/android/nfc/beam/BeamManager;->startBeamSend(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;[Landroid/net/Uri;Landroid/os/UserHandle;)Z

    .line 779
    const/4 v2, 0x1

    return v2
.end method

.method private doPeripheralHandover(Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;Z)Z
    .registers 8
    .param p1, "handover"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .param p2, "isSupportHid"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 748
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/handover/PeripheralHandoverService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 749
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "device"

    iget-object v2, p1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 750
    const-string/jumbo v1, "headsetname"

    iget-object v2, p1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 751
    const-string/jumbo v1, "transporttype"

    iget v2, p1, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->transport:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 752
    const-string/jumbo v1, "hid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 753
    const-string/jumbo v1, "bt_enabled"

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothEnabledByNfc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 754
    const-string/jumbo v1, "client"

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 756
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonymobile/nfc/cta/CtaUtils;->isCtaSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 757
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 763
    :cond_4f
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 765
    return v3

    .line 758
    :cond_57
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    .line 759
    const/4 v2, 0x0

    .line 758
    invoke-static {v1, v4, v2, v4, v0}, Lcom/sonymobile/nfc/cta/CtaUtils;->showCtaDialogWithMessage(Landroid/content/Context;Landroid/os/Messenger;ILandroid/os/Message;Landroid/content/Intent;)V

    .line 760
    return v3
.end method

.method static extractAarPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;
    .registers 7
    .param p0, "message"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/nfc/NdefMessage;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 603
    .local v0, "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    const/4 v3, 0x0

    array-length v5, v4

    :goto_b
    if-ge v3, v5, :cond_1b

    aget-object v2, v4, v3

    .line 604
    .local v2, "record":Landroid/nfc/NdefRecord;
    invoke-static {v2}, Lcom/android/nfc/NfcDispatcher;->checkForAar(Landroid/nfc/NdefRecord;)Ljava/lang/String;

    move-result-object v1

    .line 605
    .local v1, "pkg":Ljava/lang/String;
    if-eqz v1, :cond_18

    .line 606
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 609
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "record":Landroid/nfc/NdefRecord;
    :cond_1b
    return-object v0
.end method

.method static getAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 846
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 847
    .local v0, "market":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "market://details?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 848
    return-object v0
.end method

.method private handleNfcUnlock(Landroid/nfc/Tag;)Z
    .registers 3
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/NfcUnlockManager;->tryUnlock(Landroid/nfc/Tag;)Z

    move-result v0

    return v0
.end method

.method static isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z
    .registers 8
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 852
    const/4 v2, 0x0

    .line 853
    .local v2, "enabled":Z
    new-instance v0, Landroid/content/ComponentName;

    .line 854
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 853
    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    .local v0, "compname":Landroid/content/ComponentName;
    const/4 v3, 0x0

    :try_start_f
    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_12} :catch_33

    move-result-object v3

    if-eqz v3, :cond_16

    .line 860
    const/4 v2, 0x1

    .line 865
    :cond_16
    :goto_16
    if-nez v2, :cond_32

    .line 866
    const-string/jumbo v3, "NfcDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Component not enabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_32
    return v2

    .line 862
    :catch_33
    move-exception v1

    .line 863
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_16
.end method


# virtual methods
.method public declared-synchronized disableProvisioningMode()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 166
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 165
    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispatchTag(Landroid/nfc/Tag;)I
    .registers 16
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v13, 0x2

    const/4 v11, 0x3

    const/4 v12, 0x1

    .line 304
    monitor-enter p0

    .line 305
    :try_start_4
    iget-object v5, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    .line 306
    .local v5, "overrideFilters":[Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    .line 307
    .local v4, "overrideIntent":Landroid/app/PendingIntent;
    iget-object v6, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    .line 308
    .local v6, "overrideTechLists":[[Ljava/lang/String;
    iget-boolean v9, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningOnly:Z
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1f

    .local v9, "provisioningOnly":Z
    monitor-exit p0

    .line 311
    const/4 v10, 0x0

    .line 312
    .local v10, "screenUnlocked":Z
    if-nez v9, :cond_22

    .line 313
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v0}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    if-ne v0, v13, :cond_22

    .line 314
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcDispatcher;->handleNfcUnlock(Landroid/nfc/Tag;)Z

    move-result v10

    .line 315
    .local v10, "screenUnlocked":Z
    if-nez v10, :cond_22

    .line 316
    return v13

    .line 304
    .end local v4    # "overrideIntent":Landroid/app/PendingIntent;
    .end local v5    # "overrideFilters":[Landroid/content/IntentFilter;
    .end local v6    # "overrideTechLists":[[Ljava/lang/String;
    .end local v9    # "provisioningOnly":Z
    .end local v10    # "screenUnlocked":Z
    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 320
    .restart local v4    # "overrideIntent":Landroid/app/PendingIntent;
    .restart local v5    # "overrideFilters":[Landroid/content/IntentFilter;
    .restart local v6    # "overrideTechLists":[[Ljava/lang/String;
    .restart local v9    # "provisioningOnly":Z
    :cond_22
    const/4 v3, 0x0

    .line 321
    .local v3, "message":Landroid/nfc/NdefMessage;
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v7

    .line 322
    .local v7, "ndef":Landroid/nfc/tech/Ndef;
    if-eqz v7, :cond_43

    .line 323
    invoke-virtual {v7}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 333
    .end local v3    # "message":Landroid/nfc/NdefMessage;
    :cond_2d
    :goto_2d
    new-instance v1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;

    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, p1, v3}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;-><init>(Landroid/content/Context;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;)V

    .line 335
    .local v1, "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    invoke-virtual {p0}, Lcom/android/nfc/NfcDispatcher;->resumeAppSwitches()V

    move-object v0, p0

    move-object v2, p1

    .line 337
    invoke-virtual/range {v0 .. v6}, Lcom/android/nfc/NfcDispatcher;->tryOverrides(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 339
    if-eqz v10, :cond_54

    move v0, v11

    :goto_42
    return v0

    .line 325
    .end local v1    # "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .restart local v3    # "message":Landroid/nfc/NdefMessage;
    :cond_43
    invoke-static {p1}, Landroid/nfc/tech/NfcBarcode;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcBarcode;

    move-result-object v8

    .line 326
    .local v8, "nfcBarcode":Landroid/nfc/tech/NfcBarcode;
    if-eqz v8, :cond_2d

    invoke-virtual {v8}, Landroid/nfc/tech/NfcBarcode;->getType()I

    move-result v0

    if-ne v0, v12, :cond_2d

    .line 327
    invoke-direct {p0, v8}, Lcom/android/nfc/NfcDispatcher;->decodeNfcBarcodeUri(Landroid/nfc/tech/NfcBarcode;)Landroid/nfc/NdefMessage;

    move-result-object v3

    .local v3, "message":Landroid/nfc/NdefMessage;
    goto :goto_2d

    .end local v3    # "message":Landroid/nfc/NdefMessage;
    .end local v8    # "nfcBarcode":Landroid/nfc/tech/NfcBarcode;
    .restart local v1    # "dispatch":Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    :cond_54
    move v0, v12

    .line 339
    goto :goto_42

    .line 342
    :cond_56
    invoke-virtual {p0, v3}, Lcom/android/nfc/NfcDispatcher;->tryBluetoothHandover(Landroid/nfc/NdefMessage;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 344
    if-eqz v10, :cond_5f

    :goto_5e
    return v11

    :cond_5f
    move v11, v12

    goto :goto_5e

    .line 347
    :cond_61
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/android/nfc/NfcWifiProtectedSetup;->tryNfcWifiSetup(Landroid/nfc/tech/Ndef;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 349
    if-eqz v10, :cond_6c

    :goto_6b
    return v11

    :cond_6c
    move v11, v12

    goto :goto_6b

    .line 353
    :cond_6e
    if-nez v9, :cond_7d

    .line 354
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0, v3, p1}, Lcom/sonymobile/nfc/handover/NfcWifiDisplayHandover;->tryHandoverWifiDisplay(Landroid/content/Context;Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z

    move-result v0

    .line 353
    if-eqz v0, :cond_7d

    .line 356
    if-eqz v10, :cond_7b

    :goto_7a
    return v11

    :cond_7b
    move v11, v12

    goto :goto_7a

    .line 359
    :cond_7d
    invoke-virtual {p0, v1, v3, v9}, Lcom/android/nfc/NfcDispatcher;->tryNdef(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;Z)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 360
    if-eqz v10, :cond_86

    :goto_85
    return v11

    :cond_86
    move v11, v12

    goto :goto_85

    .line 363
    :cond_88
    if-eqz v10, :cond_8b

    .line 365
    return v11

    .line 368
    :cond_8b
    if-eqz v9, :cond_8e

    .line 370
    return v13

    .line 374
    :cond_8e
    invoke-virtual {p0, v1, p1}, Lcom/android/nfc/NfcDispatcher;->tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 375
    return v12

    .line 378
    :cond_95
    invoke-virtual {v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    .line 379
    invoke-virtual {v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v0

    if-eqz v0, :cond_9f

    .line 381
    return v12

    .line 385
    :cond_9f
    return v13
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 872
    monitor-enter p0

    .line 873
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOverrideIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOverrideFilters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 875
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOverrideTechLists="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4e

    monitor-exit p0

    .line 871
    return-void

    .line 872
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p1, "tagTechs"    # [Ljava/lang/String;
    .param p2, "filterTechs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 798
    if-eqz p2, :cond_6

    array-length v1, p2

    if-nez v1, :cond_7

    :cond_6
    return v2

    .line 800
    :cond_7
    array-length v3, p2

    move v1, v2

    :goto_9
    if-ge v1, v3, :cond_17

    aget-object v0, p2, v1

    .line 801
    .local v0, "tech":Ljava/lang/String;
    invoke-static {p1, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gez v4, :cond_14

    .line 802
    return v2

    .line 800
    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 805
    .end local v0    # "tech":Ljava/lang/String;
    :cond_17
    const/4 v1, 0x1

    return v1
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 154
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 152
    return-void
.end method

.method isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "hasTechFilter"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 504
    if-eqz p2, :cond_19

    .line 505
    array-length v3, p2

    move v1, v2

    :goto_6
    if-ge v1, v3, :cond_1c

    aget-object v0, p2, v1

    .line 506
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "NfcDispatcher"

    invoke-virtual {v0, v4, p1, v2, v5}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_16

    .line 507
    return v6

    .line 505
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 510
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_19
    if-nez p3, :cond_1c

    .line 511
    return v6

    .line 513
    :cond_1c
    return v2
.end method

.method isTechMatch(Landroid/nfc/Tag;[[Ljava/lang/String;)Z
    .registers 9
    .param p1, "tag"    # Landroid/nfc/Tag;
    .param p2, "techLists"    # [[Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 517
    if-nez p2, :cond_4

    .line 518
    return v3

    .line 521
    :cond_4
    invoke-virtual {p1}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v1

    .line 522
    .local v1, "tagTechs":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 523
    array-length v4, p2

    move v2, v3

    :goto_d
    if-ge v2, v4, :cond_1c

    aget-object v0, p2, v2

    .line 524
    .local v0, "filterTechs":[Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 525
    const/4 v2, 0x1

    return v2

    .line 523
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 528
    .end local v0    # "filterTechs":[Ljava/lang/String;
    :cond_1c
    return v3
.end method

.method resumeAppSwitches()V
    .registers 3

    .prologue
    .line 792
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 790
    :goto_5
    return-void

    .line 793
    :catch_6
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_5
.end method

.method public declared-synchronized setForegroundDispatch(Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V
    .registers 5
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "filters"    # [Landroid/content/IntentFilter;
    .param p3, "techLists"    # [[Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 160
    :try_start_1
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideIntent:Landroid/app/PendingIntent;

    .line 161
    iput-object p2, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideFilters:[Landroid/content/IntentFilter;

    .line 162
    iput-object p3, p0, Lcom/android/nfc/NfcDispatcher;->mOverrideTechLists:[[Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 158
    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public tryBluetoothHandover(Landroid/nfc/NdefMessage;)Z
    .registers 10
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v7, 0x0

    .line 704
    if-eqz p1, :cond_2b

    iget-boolean v4, p0, Lcom/android/nfc/NfcDispatcher;->mDeviceSupportsBluetooth:Z

    if-eqz v4, :cond_2b

    .line 708
    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v4, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    .line 709
    .local v0, "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v0, :cond_2c

    iget-boolean v4, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v4, :cond_2c

    .line 711
    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 712
    const-string/jumbo v5, "no_config_bluetooth"

    .line 714
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 711
    invoke-virtual {v4, v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 715
    return v7

    .line 704
    .end local v0    # "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    :cond_2b
    return v7

    .line 709
    .restart local v0    # "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    :cond_2c
    return v7

    .line 719
    :cond_2d
    iget-object v4, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->uuids:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->bluetoothClass:Landroid/bluetooth/BluetoothClass;

    invoke-static {v4, v5}, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->getSupportedProfiles(Ljava/util/ArrayList;Landroid/bluetooth/BluetoothClass;)Ljava/util/ArrayList;

    move-result-object v3

    .line 720
    .local v3, "supportedProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 722
    .local v2, "result":Z
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_80

    .line 735
    .end local v2    # "result":Z
    :goto_43
    if-eqz v2, :cond_6e

    iget-object v4, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->bluetoothClass:Landroid/bluetooth/BluetoothClass;

    if-eqz v4, :cond_6e

    .line 736
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "com.sonymobile.playanywhere.action.INFORM_BLUETOOTH_CLASS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 737
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "android.bluetooth.device.extra.DEVICE"

    iget-object v5, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 738
    const-string/jumbo v4, "android.bluetooth.device.extra.CLASS"

    iget-object v5, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->bluetoothClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 739
    const-string/jumbo v4, "com.sonymobile.playanywhere"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 740
    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 743
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_6e
    return v2

    .line 725
    .restart local v2    # "result":Z
    :pswitch_6f
    invoke-direct {p0, v0, v7}, Lcom/android/nfc/NfcDispatcher;->doPeripheralHandover(Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;Z)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_43

    .line 728
    .local v2, "result":Z
    :pswitch_74
    invoke-direct {p0, v0}, Lcom/android/nfc/NfcDispatcher;->doOppHandover(Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_43

    .line 731
    .local v2, "result":Z
    :pswitch_79
    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lcom/android/nfc/NfcDispatcher;->doPeripheralHandover(Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;Z)Z

    move-result v2

    .local v2, "result":Z
    goto :goto_43

    .line 722
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_6f
        :pswitch_6f
        :pswitch_74
        :pswitch_79
    .end packed-switch
.end method

.method tryNdef(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/NdefMessage;Z)Z
    .registers 17
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "message"    # Landroid/nfc/NdefMessage;
    .param p3, "provisioningOnly"    # Z

    .prologue
    .line 532
    if-nez p2, :cond_4

    .line 533
    const/4 v10, 0x0

    return v10

    .line 535
    :cond_4
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v5

    .line 538
    .local v5, "intent":Landroid/content/Intent;
    if-nez v5, :cond_c

    const/4 v10, 0x0

    return v10

    .line 540
    :cond_c
    if-eqz p3, :cond_22

    .line 541
    iget-object v10, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    if-eqz v10, :cond_43

    .line 542
    iget-object v10, p0, Lcom/android/nfc/NfcDispatcher;->mProvisioningMimes:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v5}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_43

    .line 549
    :cond_22
    invoke-static {p2}, Lcom/android/nfc/NfcDispatcher;->extractAarPackages(Landroid/nfc/NdefMessage;)Ljava/util/List;

    move-result-object v0

    .line 550
    .local v0, "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "pkg$iterator":Ljava/util/Iterator;
    :cond_2a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 551
    .local v7, "pkg":Ljava/lang/String;
    iget-object v10, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 552
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v10

    if-eqz v10, :cond_2a

    .line 554
    const/4 v10, 0x1

    return v10

    .line 543
    .end local v0    # "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "pkg$iterator":Ljava/util/Iterator;
    :cond_43
    const-string/jumbo v10, "NfcDispatcher"

    const-string/jumbo v11, "Dropping NFC intent in provisioning mode."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    const/4 v10, 0x0

    return v10

    .line 559
    .restart local v0    # "aarPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "pkg$iterator":Ljava/util/Iterator;
    :cond_4e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_9a

    .line 560
    const/4 v10, 0x0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 563
    .local v4, "firstPackage":Ljava/lang/String;
    :try_start_5b
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v10

    invoke-direct {v2, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 564
    .local v2, "currentUser":Landroid/os/UserHandle;
    iget-object v10, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "android"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_71
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5b .. :try_end_71} :catch_80

    move-result-object v9

    .line 570
    .local v9, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v9, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 571
    .local v1, "appLaunchIntent":Landroid/content/Intent;
    if-eqz v1, :cond_8c

    invoke-virtual {p1, v1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_8c

    .line 573
    const/4 v10, 0x1

    return v10

    .line 566
    .end local v1    # "appLaunchIntent":Landroid/content/Intent;
    .end local v2    # "currentUser":Landroid/os/UserHandle;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :catch_80
    move-exception v3

    .line 567
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v10, "NfcDispatcher"

    const-string/jumbo v11, "Could not create user package context"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/4 v10, 0x0

    return v10

    .line 576
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "appLaunchIntent":Landroid/content/Intent;
    .restart local v2    # "currentUser":Landroid/os/UserHandle;
    .restart local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_8c
    invoke-static {v4}, Lcom/android/nfc/NfcDispatcher;->getAppSearchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 577
    .local v6, "marketIntent":Landroid/content/Intent;
    if-eqz v6, :cond_9a

    invoke-virtual {p1, v6}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v10

    if-eqz v10, :cond_9a

    .line 579
    const/4 v10, 0x1

    return v10

    .line 583
    .end local v1    # "appLaunchIntent":Landroid/content/Intent;
    .end local v2    # "currentUser":Landroid/os/UserHandle;
    .end local v4    # "firstPackage":Ljava/lang/String;
    .end local v6    # "marketIntent":Landroid/content/Intent;
    .end local v9    # "pm":Landroid/content/pm/PackageManager;
    :cond_9a
    iget-object v10, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0005

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_be

    .line 584
    invoke-virtual {p2}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    invoke-direct {p0, v10}, Lcom/android/nfc/NfcDispatcher;->checkForUri(Landroid/nfc/NdefRecord;)Z

    move-result v10

    if-eqz v10, :cond_be

    .line 585
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartUrlConfirmActivity()Z

    move-result v10

    if-eqz v10, :cond_be

    .line 586
    const/4 v10, 0x1

    return v10

    .line 592
    :cond_be
    iget-object v10, p1, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 593
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v10

    if-eqz v10, :cond_cc

    .line 595
    const/4 v10, 0x1

    return v10

    .line 598
    :cond_cc
    const/4 v10, 0x0

    return v10
.end method

.method tryOverrides(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)Z
    .registers 13
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;
    .param p3, "message"    # Landroid/nfc/NdefMessage;
    .param p4, "overrideIntent"    # Landroid/app/PendingIntent;
    .param p5, "overrideFilters"    # [Landroid/content/IntentFilter;
    .param p6, "overrideTechLists"    # [[Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 457
    if-nez p4, :cond_5

    .line 458
    return v4

    .line 463
    :cond_5
    if-eqz p3, :cond_21

    .line 464
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setNdefIntent()Landroid/content/Intent;

    move-result-object v1

    .line 465
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_21

    .line 466
    if-eqz p6, :cond_1d

    move v2, v3

    :goto_10
    invoke-virtual {p0, v1, p5, v2}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v2

    .line 465
    if-eqz v2, :cond_21

    .line 468
    :try_start_16
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-virtual {p4, v2, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_16 .. :try_end_1c} :catch_1f

    .line 470
    return v3

    :cond_1d
    move v2, v4

    .line 466
    goto :goto_10

    .line 471
    :catch_1f
    move-exception v0

    .line 472
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    return v4

    .line 478
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_21
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    move-result-object v1

    .line 479
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, p2, p6}, Lcom/android/nfc/NfcDispatcher;->isTechMatch(Landroid/nfc/Tag;[[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 481
    :try_start_2b
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-virtual {p4, v2, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_31
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2b .. :try_end_31} :catch_32

    .line 483
    return v3

    .line 484
    :catch_32
    move-exception v0

    .line 485
    .restart local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    return v4

    .line 490
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_34
    invoke-virtual {p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTagIntent()Landroid/content/Intent;

    move-result-object v1

    .line 491
    if-eqz p6, :cond_48

    move v2, v3

    :goto_3b
    invoke-virtual {p0, v1, p5, v2}, Lcom/android/nfc/NfcDispatcher;->isFilterMatch(Landroid/content/Intent;[Landroid/content/IntentFilter;Z)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 493
    :try_start_41
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const/4 v5, -0x1

    invoke-virtual {p4, v2, v5, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_47
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_41 .. :try_end_47} :catch_4a

    .line 495
    return v3

    :cond_48
    move v2, v4

    .line 491
    goto :goto_3b

    .line 496
    :catch_4a
    move-exception v0

    .line 497
    .restart local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    return v4

    .line 500
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :cond_4c
    return v4
.end method

.method public tryPeripheralHandover(Landroid/nfc/NdefMessage;)Z
    .registers 8
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x0

    .line 679
    if-eqz p1, :cond_2b

    iget-boolean v2, p0, Lcom/android/nfc/NfcDispatcher;->mDeviceSupportsBluetooth:Z

    if-eqz v2, :cond_2b

    .line 683
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v2, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    .line 684
    .local v0, "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v0, :cond_2c

    iget-boolean v2, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v2, :cond_2c

    .line 685
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    .line 686
    const-string/jumbo v3, "no_config_bluetooth"

    .line 688
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 685
    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 689
    return v5

    .line 679
    .end local v0    # "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    :cond_2b
    return v5

    .line 684
    .restart local v0    # "handover":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    :cond_2c
    return v5

    .line 692
    :cond_2d
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/nfc/handover/PeripheralHandoverService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 693
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "device"

    iget-object v3, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 694
    const-string/jumbo v2, "headsetname"

    iget-object v3, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    const-string/jumbo v2, "transporttype"

    iget v3, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->transport:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 696
    const-string/jumbo v2, "bt_enabled"

    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mBluetoothEnabledByNfc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 697
    const-string/jumbo v2, "client"

    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 698
    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 700
    const/4 v2, 0x1

    return v2
.end method

.method tryTech(Lcom/android/nfc/NfcDispatcher$DispatchInfo;Landroid/nfc/Tag;)Z
    .registers 19
    .param p1, "dispatch"    # Lcom/android/nfc/NfcDispatcher$DispatchInfo;
    .param p2, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 613
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->setTechIntent()Landroid/content/Intent;

    .line 615
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v12

    .line 616
    .local v12, "tagTechs":[Ljava/lang/String;
    invoke-static {v12}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 619
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v7, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/NfcDispatcher;->mTechListFilters:Lcom/android/nfc/RegisteredComponentCache;

    invoke-virtual {v13}, Lcom/android/nfc/RegisteredComponentCache;->getComponents()Ljava/util/ArrayList;

    move-result-object v11

    .line 624
    .local v11, "registered":Ljava/util/List;, "Ljava/util/List<Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;>;"
    :try_start_17
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v13

    invoke-direct {v1, v13}, Landroid/os/UserHandle;-><init>(I)V

    .line 625
    .local v1, "currentUser":Landroid/os/UserHandle;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "android"

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_2f} :catch_9a

    move-result-object v10

    .line 632
    .local v10, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "info$iterator":Ljava/util/Iterator;
    :cond_34
    :goto_34
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_75

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;

    .line 634
    .local v4, "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    iget-object v13, v4, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->techs:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/nfc/NfcDispatcher;->filterMatch([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_34

    .line 635
    iget-object v13, v4, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-static {v10, v13}, Lcom/android/nfc/NfcDispatcher;->isComponentEnabled(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z

    move-result v13

    .line 634
    if-eqz v13, :cond_34

    .line 638
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v9, "outFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .local v8, "outActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    iget-object v13, v4, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 640
    invoke-virtual {v10, v9, v8, v13}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 642
    if-eqz v8, :cond_a6

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_a6

    .line 643
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 644
    iget-object v13, v4, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    .end local v4    # "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    .end local v8    # "outActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v9    # "outFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    :cond_75
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_be

    .line 657
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 658
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    iget-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v15, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    invoke-virtual/range {p1 .. p1}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity()Z

    move-result v13

    if-eqz v13, :cond_b4

    .line 661
    const/4 v13, 0x1

    return v13

    .line 627
    .end local v1    # "currentUser":Landroid/os/UserHandle;
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v5    # "info$iterator":Ljava/util/Iterator;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    :catch_9a
    move-exception v2

    .line 628
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v13, "NfcDispatcher"

    const-string/jumbo v14, "Could not create user package context"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v13, 0x0

    return v13

    .line 649
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "currentUser":Landroid/os/UserHandle;
    .restart local v4    # "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    .restart local v5    # "info$iterator":Ljava/util/Iterator;
    .restart local v8    # "outActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .restart local v9    # "outFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .restart local v10    # "pm":Landroid/content/pm/PackageManager;
    :cond_a6
    iget-object v13, v4, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_34

    .line 650
    iget-object v13, v4, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_34

    .line 663
    .end local v4    # "info":Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
    .end local v8    # "outActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    .end local v9    # "outFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .restart local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_b4
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 675
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    :cond_bc
    const/4 v13, 0x0

    return v13

    .line 664
    :cond_be
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_bc

    .line 666
    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/nfc/NfcDispatcher;->mContext:Landroid/content/Context;

    const-class v14, Lcom/android/nfc/TechListChooserActivity;

    invoke-direct {v6, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 667
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v13, "android.intent.extra.INTENT"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v6, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 668
    const-string/jumbo v13, "rlist"

    invoke-virtual {v6, v13, v7}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 670
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->tryStartActivity(Landroid/content/Intent;)Z

    move-result v13

    if-eqz v13, :cond_bc

    .line 672
    const/4 v13, 0x1

    return v13
.end method

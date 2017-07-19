.class public Lcom/android/nfc/dhimpl/NativeNfcManager;
.super Ljava/lang/Object;
.source "NativeNfcManager.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/dhimpl/NativeNfcManager$1;,
        Lcom/android/nfc/dhimpl/NativeNfcManager$2;,
        Lcom/android/nfc/dhimpl/NativeNfcManager$ModemStatusMonitorThread;,
        Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;,
        Lcom/android/nfc/dhimpl/NativeNfcManager$ShutdownChipTask;,
        Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;
    }
.end annotation


# static fields
.field private static final BATTERY_INTENT_REG_TIMEOUT:I = 0x7d0

.field private static final DBG:Z

.field static final DEFAULT_LLCP_RWSIZE:I = 0x2

.field static final DEV_CONFIG_NXP_NCI:Ljava/lang/String; = "nxp.nci"

.field static final DRIVER_NAME:Ljava/lang/String; = "android-nci"

.field private static final FIRMWARE_MODTIME_DEFAULT:J = -0x1L

.field private static final FWDL_CHIP_FW_TYPE_C2:I = 0x8

.field private static final FWDL_RET_DEGRADED_MODE:I = 0x4

.field private static final FWDL_RET_NEEDED:I = 0x1

.field private static final FWDL_RET_NOT_NEEDED:I = 0x2

.field private static final FWDL_RET_RETRY_COUNT_EXCEEDED:I = 0x5

.field private static final FWDL_RET_UNRECOVERABLE_ERROR:I = 0x3

.field private static final INTENT_NFC_CHIP_READY:Ljava/lang/String; = "com.sonymobile.nfc.NFC_CHIP_READY"

.field public static final INTERNAL_TARGET_DESELECTED_ACTION:Ljava/lang/String; = "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

.field private static final NFC_CONTROLLER_FIRMWARE_FILE_NAME:Ljava/lang/String; = "/vendor/firmware/libpn547_fw.so"

.field private static final NFC_LOCK_PACKAGE:Ljava/lang/String; = "com.sonymobile.nfclock"

.field private static final NFC_LOCK_SERVICE:Ljava/lang/String; = "com.sonymobile.nfclock.NfcLockService"

.field static final PREF:Ljava/lang/String; = "NciDeviceHost"

.field private static final PREF_FIRMWARE_MODTIME:Ljava/lang/String; = "firmware_modtime"

.field private static final PREF_NEED_RF_LA_DISABLED:Ljava/lang/String; = "need_rf_la_disabled"

.field static final PREF_NFC_IS_RECOVERABLE:Ljava/lang/String; = "nfc_is_recoverable"

.field private static final TAG:Ljava/lang/String; = "NativeNfcManager"


# instance fields
.field final DEFAULT_LLCP_MIU:I

.field final DEV_CONFIG_NAME:Ljava/lang/String;

.field private final EXTENDED_SERVICE_NAME:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;

.field private volatile mIsChipReady:Z

.field private volatile mIsFirmwareUpdateRunning:Z

.field private final mIsModemRestarting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile mIsShutdownReceived:Z

.field private final mListenTypeReceiver:Landroid/content/BroadcastReceiver;

.field private final mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

.field private final mLock:Ljava/lang/Object;

.field private mNative:J

.field private mProperty:Lcom/android/nfc/DeviceHost$NfcProperty;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mT3tIdentifiers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/nfc/dhimpl/NativeNfcManager;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/nfc/dhimpl/NativeNfcManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsFirmwareUpdateRunning:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/nfc/dhimpl/NativeNfcManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsModemRestarting:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/nfc/dhimpl/NativeNfcManager;)Lcom/android/nfc/DeviceHost$NfcProperty;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mProperty:Lcom/android/nfc/DeviceHost$NfcProperty;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/nfc/dhimpl/NativeNfcManager;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsShutdownReceived:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/nfc/dhimpl/NativeNfcManager;I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doHostShutdownSequence(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/nfc/dhimpl/NativeNfcManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doMonitorModemStatus()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/nfc/dhimpl/NativeNfcManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doShutdownChip()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 87
    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v1, "user"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    .line 86
    :goto_14
    sput-boolean v0, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    .line 127
    const-string/jumbo v0, "nfc_nci_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 82
    return-void

    .line 87
    :cond_1d
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;Lcom/android/nfc/DeviceHost$NfcProperty;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/nfc/DeviceHost$DeviceHostListener;
    .param p3, "prop"    # Lcom/android/nfc/DeviceHost$NfcProperty;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-boolean v9, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsChipReady:Z

    .line 117
    iput-boolean v9, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsFirmwareUpdateRunning:Z

    .line 119
    iput-boolean v9, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsShutdownReceived:Z

    .line 120
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsModemRestarting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 140
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mLock:Ljava/lang/Object;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    .line 142
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;

    invoke-direct {v0, p0, v5}, Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;-><init>(Lcom/android/nfc/dhimpl/NativeNfcManager;Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;)V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mHandler:Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;

    .line 714
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcManager$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/dhimpl/NativeNfcManager$1;-><init>(Lcom/android/nfc/dhimpl/NativeNfcManager;)V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 748
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcManager$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/dhimpl/NativeNfcManager$2;-><init>(Lcom/android/nfc/dhimpl/NativeNfcManager;)V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListenTypeReceiver:Landroid/content/BroadcastReceiver;

    .line 145
    iput-object p2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    .line 146
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->initializeNativeStructure()Z

    .line 147
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    .line 148
    iput-object p3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mProperty:Lcom/android/nfc/DeviceHost$NfcProperty;

    .line 149
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 150
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "com.sonymobile.nfc.action.UPDATE_LISTEN_MODE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListenTypeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 154
    const-string/jumbo v4, "com.sonymobile.nfc.permission.ACCESS_LISTEN_MODE"

    .line 153
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 155
    const v0, 0x7f09001c

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->DEV_CONFIG_NAME:Ljava/lang/String;

    .line 156
    new-instance v6, Lcom/android/nfc/dhimpl/NativeNfcManager$ModemStatusMonitorThread;

    invoke-direct {v6, p0, v5}, Lcom/android/nfc/dhimpl/NativeNfcManager$ModemStatusMonitorThread;-><init>(Lcom/android/nfc/dhimpl/NativeNfcManager;Lcom/android/nfc/dhimpl/NativeNfcManager$ModemStatusMonitorThread;)V

    .line 157
    .local v6, "monitor":Lcom/android/nfc/dhimpl/NativeNfcManager$ModemStatusMonitorThread;
    invoke-virtual {v6}, Lcom/android/nfc/dhimpl/NativeNfcManager$ModemStatusMonitorThread;->start()V

    .line 159
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "NciDeviceHost"

    invoke-virtual {v0, v1, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 160
    .local v8, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v0, "need_rf_la_disabled"

    invoke-interface {v8, v0, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 161
    .local v7, "needRfLaDisabled":Z
    invoke-direct {p0, v7}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetNeedRfLaDisabled(Z)V

    .line 162
    sget-boolean v0, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    if-eqz v0, :cond_a6

    const-string/jumbo v0, "NativeNfcManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "default needRfLaDisabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_a6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->DEFAULT_LLCP_MIU:I

    .line 165
    const v0, 0x7f090018

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->EXTENDED_SERVICE_NAME:Ljava/lang/String;

    .line 144
    return-void
.end method

.method private checkFirmwareDownloadExecutable()Z
    .registers 8

    .prologue
    const/4 v4, -0x1

    const/4 v6, 0x0

    .line 813
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->getBatteryIntent()Landroid/content/Intent;

    move-result-object v0

    .line 814
    .local v0, "batteryIntent":Landroid/content/Intent;
    if-nez v0, :cond_12

    .line 815
    const-string/jumbo v3, "NativeNfcManager"

    const-string/jumbo v4, "FW update: Cancel (Battery Intent is NULL)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    return v6

    .line 818
    :cond_12
    const-string/jumbo v3, "scale"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 819
    .local v2, "scale":I
    const-string/jumbo v3, "level"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 820
    .local v1, "level":I
    if-lez v2, :cond_28

    mul-int/lit8 v3, v1, 0x64

    div-int/2addr v3, v2

    const/4 v4, 0x5

    if-ge v3, v4, :cond_4a

    .line 821
    :cond_28
    const-string/jumbo v3, "NativeNfcManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FW update: Cancel (low battery - level "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    return v6

    .line 825
    :cond_4a
    const/4 v3, 0x1

    return v3
.end method

.method private dismissFwdlDialog(I[B)V
    .registers 5
    .param p1, "result"    # I
    .param p2, "resultCode"    # [B

    .prologue
    .line 895
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mHandler:Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 896
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 897
    invoke-static {p2}, Lcom/sonymobile/nfc/MiscTaClient;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 898
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 899
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mHandler:Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;->sendMessage(Landroid/os/Message;)Z

    .line 894
    return-void
.end method

.method private native doCheckDownloadNeeded([B)I
.end method

.method private native doCreateLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;
.end method

.method private native doCreateLlcpServiceSocket(ILjava/lang/String;III)Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;
.end method

.method private native doCreateLlcpSocket(IIII)Lcom/android/nfc/dhimpl/NativeLlcpSocket;
.end method

.method private native doCustomConfig(I)V
.end method

.method private native doDeinitialize()Z
.end method

.method private native doDisableScreenOffSuspend()V
.end method

.method private native doDownload(Z)Z
.end method

.method private native doDump()Ljava/lang/String;
.end method

.method private native doEnableDiscovery(IZZZZZ)V
.end method

.method private native doEnableScreenOffSuspend()V
.end method

.method private doFwdl(IZ)I
    .registers 7
    .param p1, "numberOfTries"    # I
    .param p2, "isFwdlRecovery"    # Z

    .prologue
    .line 878
    sget-boolean v1, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    if-eqz v1, :cond_d

    const-string/jumbo v1, "NativeNfcManager"

    const-string/jumbo v2, "FW update: Start to update"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_d
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_e
    if-gt v0, p1, :cond_58

    .line 880
    invoke-direct {p0, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDownload(Z)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 881
    sget-boolean v1, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    if-eqz v1, :cond_23

    const-string/jumbo v1, "NativeNfcManager"

    const-string/jumbo v2, "FW update: Successfully done. Checking the chip status"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_23
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCheckDownloadNeeded([B)I

    move-result v1

    return v1

    .line 884
    :cond_29
    const-string/jumbo v1, "NativeNfcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FW update: Failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 886
    :cond_58
    const-string/jumbo v1, "NativeNfcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FW update: Failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " times"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const/4 v1, 0x5

    return v1
.end method

.method private native doGetChipFwVersion()[B
.end method

.method private native doGetTimeout(I)I
.end method

.method private native doHostShutdownSequence()V
.end method

.method private native doHostShutdownSequence(I)V
.end method

.method private native doInitialize()Z
.end method

.method private native doMonitorModemStatus()V
.end method

.method private native doResetTimeouts()V
.end method

.method private native doSetChipFwType(I)V
.end method

.method private native doSetNeedRfLaDisabled(Z)V
.end method

.method private native doSetP2pInitiatorModes(I)V
.end method

.method private native doSetP2pTargetModes(I)V
.end method

.method private native doSetTimeout(II)Z
.end method

.method private native doShutdownChip()V
.end method

.method private executeFirmwareDownload(ZZ)[B
    .registers 9
    .param p1, "isDegradeMode"    # Z
    .param p2, "isFwdlRecovery"    # Z

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 830
    sget-boolean v2, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    if-eqz v2, :cond_f

    const-string/jumbo v2, "NativeNfcManager"

    const-string/jumbo v3, "executeFirmwareDownload start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_f
    const/4 v1, 0x4

    .line 832
    .local v1, "result":I
    const/4 v0, 0x0

    .line 834
    .local v0, "miscTaValue":[B
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->showFwdlDialog()V

    .line 836
    if-eqz p1, :cond_55

    .line 837
    const/16 v2, 0x8

    invoke-direct {p0, v2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetChipFwType(I)V

    .line 838
    invoke-direct {p0, v4, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doFwdl(IZ)I

    move-result v1

    .line 839
    if-ne v1, v5, :cond_2c

    .line 840
    const-string/jumbo v2, "NativeNfcManager"

    const-string/jumbo v3, "FW update: Failure (retry count exceeded)"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    sget-object v0, Lcom/sonymobile/nfc/MiscTaClient;->NFC_FW_VAL_ERR_FIRST_DEGRADE_MODE:[B

    .line 851
    .end local v0    # "miscTaValue":[B
    :cond_2c
    :goto_2c
    if-nez v0, :cond_33

    .line 852
    packed-switch v1, :pswitch_data_72

    .line 866
    sget-object v0, Lcom/sonymobile/nfc/MiscTaClient;->NFC_FW_VAL_ERR_UNRECOVERABLE:[B

    .line 870
    :cond_33
    :goto_33
    sget-boolean v2, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    if-eqz v2, :cond_51

    const-string/jumbo v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "FW update: result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_51
    invoke-direct {p0, v1, v0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->dismissFwdlDialog(I[B)V

    .line 874
    return-object v0

    .line 844
    .restart local v0    # "miscTaValue":[B
    :cond_55
    invoke-direct {p0, v5, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doFwdl(IZ)I

    move-result v1

    .line 845
    if-ne v1, v4, :cond_2c

    .line 846
    const-string/jumbo v2, "NativeNfcManager"

    const-string/jumbo v3, "FW update: The chip was not updated. Retry to recover the chip"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    invoke-direct {p0, v4, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doFwdl(IZ)I

    move-result v1

    goto :goto_2c

    .line 854
    .end local v0    # "miscTaValue":[B
    :pswitch_69
    sget-object v0, Lcom/sonymobile/nfc/MiscTaClient;->NFC_FW_VAL_SUCCESS:[B

    .local v0, "miscTaValue":[B
    goto :goto_33

    .line 858
    .end local v0    # "miscTaValue":[B
    :pswitch_6c
    sget-object v0, Lcom/sonymobile/nfc/MiscTaClient;->NFC_FW_VAL_ERR_DEGRADE_MODE:[B

    .restart local v0    # "miscTaValue":[B
    goto :goto_33

    .line 862
    .end local v0    # "miscTaValue":[B
    :pswitch_6f
    sget-object v0, Lcom/sonymobile/nfc/MiscTaClient;->NFC_FW_VAL_ERR_CHIP_BROKEN_AFTER:[B

    .restart local v0    # "miscTaValue":[B
    goto :goto_33

    .line 852
    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_6c
        :pswitch_69
        :pswitch_6f
    .end packed-switch
.end method

.method private getBatteryIntent()Landroid/content/Intent;
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 793
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 794
    .local v1, "filter":Landroid/content/IntentFilter;
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 795
    .local v0, "cond":Landroid/os/ConditionVariable;
    new-instance v3, Lcom/android/nfc/dhimpl/NativeNfcManager$3;

    invoke-direct {v3, p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcManager$3;-><init>(Lcom/android/nfc/dhimpl/NativeNfcManager;Landroid/os/ConditionVariable;)V

    .line 801
    .local v3, "receiver":Landroid/content/BroadcastReceiver;
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 802
    .local v2, "intent":Landroid/content/Intent;
    if-nez v2, :cond_2f

    .line 803
    const-string/jumbo v4, "NativeNfcManager"

    const-string/jumbo v5, "FW update: Retry (Battery Intent is NULL)"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    .line 805
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 807
    :cond_2f
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 808
    return-object v2
.end method

.method private isFwdlForced()Z
    .registers 5

    .prologue
    .line 782
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 783
    const-string/jumbo v1, "debug.nfc.force.fwdl"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 785
    sget-boolean v1, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    if-eqz v1, :cond_45

    const-string/jumbo v1, "NativeNfcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FW update: Forced to be performed ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_45
    const/4 v1, 0x1

    return v1

    .line 789
    .end local v0    # "path":Ljava/lang/String;
    :cond_47
    const/4 v1, 0x0

    return v1
.end method

.method private notifyAidRoutingTableFull()V
    .registers 2

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onAidRoutingTableFull()V

    .line 1027
    return-void
.end method

.method private notifyConnectivityListeners(I)V
    .registers 2
    .param p1, "evtSrc"    # I

    .prologue
    .line 947
    return-void
.end method

.method private notifyEmvcoMultiCardDetectedListeners()V
    .registers 1

    .prologue
    .line 953
    return-void
.end method

.method private notifyHostEmuActivated(I)V
    .registers 3
    .param p1, "technology"    # I

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationActivated(I)V

    .line 1015
    return-void
.end method

.method private notifyHostEmuData(I[B)V
    .registers 4
    .param p1, "technology"    # I
    .param p2, "data"    # [B

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationData(I[B)V

    .line 1019
    return-void
.end method

.method private notifyHostEmuDeactivated(I)V
    .registers 3
    .param p1, "technology"    # I

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onHostCardEmulationDeactivated(I)V

    .line 1023
    return-void
.end method

.method private notifyLlcpLinkActivation(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .registers 3
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 959
    return-void
.end method

.method private notifyLlcpLinkDeactivated(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .registers 3
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .prologue
    .line 967
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 966
    return-void
.end method

.method private notifyLlcpLinkFirstPacketReceived(Lcom/android/nfc/dhimpl/NativeP2pDevice;)V
    .registers 3
    .param p1, "device"    # Lcom/android/nfc/dhimpl/NativeP2pDevice;

    .prologue
    .line 974
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onLlcpFirstPacketReceived(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V

    .line 973
    return-void
.end method

.method private notifyNdefMessageListeners(Lcom/android/nfc/dhimpl/NativeNfcTag;)V
    .registers 3
    .param p1, "tag"    # Lcom/android/nfc/dhimpl/NativeNfcTag;

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V

    .line 920
    return-void
.end method

.method private notifyNfceeDiscoveryReqNtfListeners()V
    .registers 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onNfceeDiscoveryReqNtf()V

    .line 777
    return-void
.end method

.method private notifyOnRequestedToServiceExtension([B)V
    .registers 3
    .param p1, "data"    # [B

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRequestedToServiceExtension([B)V

    .line 773
    return-void
.end method

.method private notifyRfFieldActivated()V
    .registers 2

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldActivated()V

    .line 1031
    return-void
.end method

.method private notifyRfFieldDeactivated()V
    .registers 2

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldDeactivated()V

    .line 1035
    return-void
.end method

.method private notifySWPReaderActivated()V
    .registers 1

    .prologue
    .line 989
    return-void
.end method

.method private notifySWPReaderRequested(ZZ)V
    .registers 3
    .param p1, "istechA"    # Z
    .param p2, "istechB"    # Z

    .prologue
    .line 986
    return-void
.end method

.method private notifySeApduReceived([B)V
    .registers 3
    .param p1, "apdu"    # [B

    .prologue
    .line 1004
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeApduReceived([B)V

    .line 1003
    return-void
.end method

.method private notifySeEmvCardRemoval()V
    .registers 2

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeEmvCardRemoval()V

    .line 1007
    return-void
.end method

.method private notifySeFieldActivated()V
    .registers 2

    .prologue
    .line 978
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldActivated()V

    .line 977
    return-void
.end method

.method private notifySeFieldDeactivated()V
    .registers 2

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onRemoteFieldDeactivated()V

    .line 981
    return-void
.end method

.method private notifySeListenActivated()V
    .registers 2

    .prologue
    .line 996
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeListenActivated()V

    .line 995
    return-void
.end method

.method private notifySeListenDeactivated()V
    .registers 2

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeListenDeactivated()V

    .line 999
    return-void
.end method

.method private notifySeMifareAccess([B)V
    .registers 3
    .param p1, "block"    # [B

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onSeMifareAccess([B)V

    .line 1011
    return-void
.end method

.method private notifyTargetDeselected()V
    .registers 2

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onCardEmulationDeselected()V

    .line 927
    return-void
.end method

.method private notifyTransactionListeners([B)V
    .registers 2
    .param p1, "aid"    # [B

    .prologue
    .line 934
    return-void
.end method

.method private notifyTransactionListeners([B[BI)V
    .registers 5
    .param p1, "aid"    # [B
    .param p2, "data"    # [B
    .param p3, "evtSrc"    # I

    .prologue
    .line 941
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onCardEmulationAidSelected([B[BI)V

    .line 940
    return-void
.end method

.method private notifyUiccStatusEvent(I)V
    .registers 3
    .param p1, "uiccStat"    # I

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mListener:Lcom/android/nfc/DeviceHost$DeviceHostListener;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$DeviceHostListener;->onUiccStatusEvent(I)V

    .line 1039
    return-void
.end method

.method private notifyonSWPReaderDeActivated()V
    .registers 1

    .prologue
    .line 992
    return-void
.end method

.method private onModemStatusChanged(Z)V
    .registers 7
    .param p1, "isShutdown"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1098
    sget-boolean v1, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    if-eqz v1, :cond_1f

    const-string/jumbo v1, "NativeNfcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onModemStatusChanged - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_1f
    iget-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsShutdownReceived:Z

    if-eqz v1, :cond_31

    .line 1101
    sget-boolean v1, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    if-eqz v1, :cond_30

    const-string/jumbo v1, "NativeNfcManager"

    const-string/jumbo v2, "Ingore modem event after shutdown"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_30
    return-void

    .line 1105
    :cond_31
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsModemRestarting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 1106
    .local v0, "isModemRestarting":Z
    if-ne v0, p1, :cond_47

    .line 1107
    sget-boolean v1, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    if-eqz v1, :cond_46

    const-string/jumbo v1, "NativeNfcManager"

    const-string/jumbo v2, "Ingore duplicated modem event"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_46
    return-void

    .line 1111
    :cond_47
    if-eqz p1, :cond_64

    .line 1112
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mHandler:Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;

    .line 1113
    const-wide/32 v2, 0xea60

    .line 1112
    invoke-virtual {v1, v4, v2, v3}, Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1117
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/nfc/NfcService;->enableDisableNfc(Z)V

    .line 1118
    new-instance v1, Lcom/android/nfc/dhimpl/NativeNfcManager$ShutdownChipTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/nfc/dhimpl/NativeNfcManager$ShutdownChipTask;-><init>(Lcom/android/nfc/dhimpl/NativeNfcManager;Lcom/android/nfc/dhimpl/NativeNfcManager$ShutdownChipTask;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/nfc/dhimpl/NativeNfcManager$ShutdownChipTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1097
    :goto_63
    return-void

    .line 1120
    :cond_64
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mHandler:Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;

    invoke-virtual {v1, v4}, Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;->removeMessages(I)V

    .line 1123
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->enableDisableNfc(Z)V

    goto :goto_63
.end method

.method private showFwdlDialog()V
    .registers 3

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mHandler:Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcManager$NciDeviceHostHandler;->sendEmptyMessage(I)Z

    .line 890
    return-void
.end method


# virtual methods
.method public canMakeReadOnly(I)Z
    .registers 4
    .param p1, "ndefType"    # I

    .prologue
    const/4 v0, 0x1

    .line 577
    if-eq p1, v0, :cond_6

    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    :cond_6
    :goto_6
    return v0

    .line 578
    :cond_7
    const/16 v1, 0x65

    if-eq p1, v1, :cond_6

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public native changeDiscovery(IIIIZZZI)I
.end method

.method public checkFirmware()V
    .registers 16

    .prologue
    const/16 v13, 0x1359

    const/4 v10, 0x1

    const/4 v14, 0x0

    .line 186
    sget-boolean v11, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    if-eqz v11, :cond_11

    const-string/jumbo v11, "NativeNfcManager"

    const-string/jumbo v12, "checkFirmware() start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_11
    iput-boolean v10, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsFirmwareUpdateRunning:Z

    .line 189
    new-instance v3, Lcom/sonymobile/nfc/MiscTaClient;

    iget-object v11, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    invoke-direct {v3, v11}, Lcom/sonymobile/nfc/MiscTaClient;-><init>(Landroid/content/Context;)V

    .line 191
    .local v3, "miscTa":Lcom/sonymobile/nfc/MiscTaClient;
    if-eqz v3, :cond_11e

    invoke-virtual {v3}, Lcom/sonymobile/nfc/MiscTaClient;->open()Z

    move-result v11

    if-eqz v11, :cond_11e

    .line 198
    iget-object v11, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "power"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/PowerManager;

    .line 200
    .local v7, "pm":Landroid/os/PowerManager;
    const-string/jumbo v11, "nfc"

    const/16 v12, 0xa

    invoke-virtual {v7, v12, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v9

    .line 202
    .local v9, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const/4 v4, 0x0

    .line 203
    .local v4, "miscTaValue":[B
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->isFwdlForced()Z

    move-result v2

    .line 205
    .local v2, "isForced":Z
    if-nez v2, :cond_43

    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->checkFirmwareDownloadExecutable()Z

    move-result v11

    if-eqz v11, :cond_12c

    .line 209
    .end local v4    # "miscTaValue":[B
    :cond_43
    :goto_43
    const/4 v5, 0x2

    .line 210
    .local v5, "needOfFwdl":I
    invoke-virtual {v3, v13}, Lcom/sonymobile/nfc/MiscTaClient;->readUnit(I)[B

    move-result-object v0

    .line 211
    .local v0, "currentVersion":[B
    if-nez v4, :cond_d0

    .line 212
    if-eqz v2, :cond_130

    move v5, v10

    .line 213
    :goto_4d
    packed-switch v5, :pswitch_data_1b0

    .line 240
    :pswitch_50
    const-string/jumbo v11, "NativeNfcManager"

    const-string/jumbo v12, "FW update: Failure (chip is already broken)"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-object v4, Lcom/sonymobile/nfc/MiscTaClient;->NFC_FW_VAL_ERR_CHIP_BROKEN_BEFORE:[B

    .line 245
    .local v4, "miscTaValue":[B
    :goto_5b
    if-nez v4, :cond_68

    .line 247
    const-string/jumbo v11, "NativeNfcManager"

    const-string/jumbo v12, "FW update: Failure (exception occurred)"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v4, Lcom/sonymobile/nfc/MiscTaClient;->NFC_FW_VAL_ERR_UNRECOVERABLE:[B

    .line 252
    :cond_68
    sget-object v11, Lcom/sonymobile/nfc/MiscTaClient;->NFC_FW_VAL_ERR_CHIP_BROKEN_BEFORE:[B

    if-eq v4, v11, :cond_70

    .line 253
    sget-object v11, Lcom/sonymobile/nfc/MiscTaClient;->NFC_FW_VAL_ERR_UNRECOVERABLE:[B

    if-ne v4, v11, :cond_d0

    .line 255
    :cond_70
    iget-object v11, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "NciDeviceHost"

    invoke-virtual {v11, v12, v14}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 256
    .local v8, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 258
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    sget-boolean v11, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    if-eqz v11, :cond_8a

    const-string/jumbo v11, "NativeNfcManager"

    const-string/jumbo v12, "FW update: might be degraded mode"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_8a
    const-string/jumbo v11, "nfc_is_recoverable"

    invoke-interface {v8, v11, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_d0

    .line 260
    sget-boolean v11, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    if-eqz v11, :cond_a0

    const-string/jumbo v11, "NativeNfcManager"

    const-string/jumbo v12, "FW update: try fwdl recovery"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_a0
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 262
    const-string/jumbo v11, "nfc_is_recoverable"

    invoke-interface {v1, v11, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 263
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 265
    const/4 v11, 0x1

    const/4 v12, 0x1

    :try_start_ae
    invoke-direct {p0, v11, v12}, Lcom/android/nfc/dhimpl/NativeNfcManager;->executeFirmwareDownload(ZZ)[B

    move-result-object v4

    .line 266
    sget-object v11, Lcom/sonymobile/nfc/MiscTaClient;->NFC_FW_VAL_SUCCESS:[B

    if-ne v4, v11, :cond_187

    .line 267
    sget-boolean v11, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    if-eqz v11, :cond_c3

    const-string/jumbo v11, "NativeNfcManager"

    const-string/jumbo v12, "FW update: fwdl recovery=success"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_c3
    const-string/jumbo v11, "nfc_is_recoverable"

    const/4 v12, 0x1

    invoke-interface {v1, v11, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 269
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_cd
    .catchall {:try_start_ae .. :try_end_cd} :catchall_196

    .line 274
    :cond_cd
    :goto_cd
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 281
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "miscTaValue":[B
    .end local v8    # "prefs":Landroid/content/SharedPreferences;
    :cond_d0
    sget-object v11, Lcom/sonymobile/nfc/MiscTaClient;->NFC_FW_VAL_SUCCESS:[B

    if-ne v4, v11, :cond_106

    .line 282
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetChipFwVersion()[B

    move-result-object v6

    .line 283
    .local v6, "newVersion":[B
    if-eqz v6, :cond_e0

    invoke-static {v0, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_19b

    .line 287
    :cond_e0
    :goto_e0
    if-eqz v6, :cond_1a4

    .line 288
    sget-boolean v11, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    if-eqz v11, :cond_104

    const-string/jumbo v11, "NativeNfcManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "FWDL: new Version = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 289
    invoke-static {v6}, Lcom/sonymobile/nfc/MiscTaClient;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    .line 288
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_104
    :goto_104
    iput-boolean v10, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsChipReady:Z

    .line 296
    .end local v6    # "newVersion":[B
    :cond_106
    const/16 v10, 0x1358

    invoke-virtual {v3, v10, v4}, Lcom/sonymobile/nfc/MiscTaClient;->writeUnit(I[B)Z

    .line 297
    invoke-virtual {v3}, Lcom/sonymobile/nfc/MiscTaClient;->close()V

    .line 298
    iput-boolean v14, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsFirmwareUpdateRunning:Z

    .line 300
    sget-boolean v10, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    if-eqz v10, :cond_11d

    const-string/jumbo v10, "NativeNfcManager"

    const-string/jumbo v11, "checkFirmware() end."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_11d
    return-void

    .line 192
    .end local v0    # "currentVersion":[B
    .end local v2    # "isForced":Z
    .end local v5    # "needOfFwdl":I
    .end local v7    # "pm":Landroid/os/PowerManager;
    .end local v9    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :cond_11e
    const-string/jumbo v10, "NativeNfcManager"

    const-string/jumbo v11, "FW update: Failed to bind Misc TA service"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iput-boolean v14, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsChipReady:Z

    .line 194
    iput-boolean v14, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsFirmwareUpdateRunning:Z

    .line 195
    return-void

    .line 206
    .restart local v2    # "isForced":Z
    .local v4, "miscTaValue":[B
    .restart local v7    # "pm":Landroid/os/PowerManager;
    .restart local v9    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :cond_12c
    sget-object v4, Lcom/sonymobile/nfc/MiscTaClient;->NFC_FW_VAL_ERR_LOW_BATTERY:[B

    .local v4, "miscTaValue":[B
    goto/16 :goto_43

    .line 212
    .end local v4    # "miscTaValue":[B
    .restart local v0    # "currentVersion":[B
    .restart local v5    # "needOfFwdl":I
    :cond_130
    invoke-direct {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCheckDownloadNeeded([B)I

    move-result v5

    goto/16 :goto_4d

    .line 215
    :pswitch_136
    sget-boolean v11, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    if-eqz v11, :cond_143

    const-string/jumbo v11, "NativeNfcManager"

    const-string/jumbo v12, "FW update: Needed"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_143
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 218
    const/4 v11, 0x0

    const/4 v12, 0x0

    :try_start_148
    invoke-direct {p0, v11, v12}, Lcom/android/nfc/dhimpl/NativeNfcManager;->executeFirmwareDownload(ZZ)[B
    :try_end_14b
    .catchall {:try_start_148 .. :try_end_14b} :catchall_151

    move-result-object v4

    .line 220
    .restart local v4    # "miscTaValue":[B
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_5b

    .line 219
    .end local v4    # "miscTaValue":[B
    :catchall_151
    move-exception v10

    .line 220
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 219
    throw v10

    .line 225
    :pswitch_156
    sget-boolean v11, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    if-eqz v11, :cond_163

    const-string/jumbo v11, "NativeNfcManager"

    const-string/jumbo v12, "FW update: Not needed"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :cond_163
    sget-object v4, Lcom/sonymobile/nfc/MiscTaClient;->NFC_FW_VAL_SUCCESS:[B

    .restart local v4    # "miscTaValue":[B
    goto/16 :goto_5b

    .line 230
    .end local v4    # "miscTaValue":[B
    :pswitch_167
    sget-boolean v11, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    if-eqz v11, :cond_174

    const-string/jumbo v11, "NativeNfcManager"

    const-string/jumbo v12, "FW update: degraded mode"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_174
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 233
    const/4 v11, 0x1

    const/4 v12, 0x0

    :try_start_179
    invoke-direct {p0, v11, v12}, Lcom/android/nfc/dhimpl/NativeNfcManager;->executeFirmwareDownload(ZZ)[B
    :try_end_17c
    .catchall {:try_start_179 .. :try_end_17c} :catchall_182

    move-result-object v4

    .line 235
    .restart local v4    # "miscTaValue":[B
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_5b

    .line 234
    .end local v4    # "miscTaValue":[B
    :catchall_182
    move-exception v10

    .line 235
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 234
    throw v10

    .line 271
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v4    # "miscTaValue":[B
    .restart local v8    # "prefs":Landroid/content/SharedPreferences;
    :cond_187
    :try_start_187
    sget-boolean v11, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    if-eqz v11, :cond_cd

    const-string/jumbo v11, "NativeNfcManager"

    const-string/jumbo v12, "FW update: fwdl recovery=failure"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_194
    .catchall {:try_start_187 .. :try_end_194} :catchall_196

    goto/16 :goto_cd

    .line 273
    :catchall_196
    move-exception v10

    .line 274
    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 273
    throw v10

    .line 284
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "miscTaValue":[B
    .end local v8    # "prefs":Landroid/content/SharedPreferences;
    .restart local v6    # "newVersion":[B
    :cond_19b
    array-length v11, v6

    const/4 v12, 0x3

    if-ne v11, v12, :cond_e0

    .line 285
    invoke-virtual {v3, v13, v6}, Lcom/sonymobile/nfc/MiscTaClient;->writeUnit(I[B)Z

    goto/16 :goto_e0

    .line 291
    :cond_1a4
    const-string/jumbo v11, "NativeNfcManager"

    const-string/jumbo v12, "checkFirmware newVersion is NULL."

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_104

    .line 213
    nop

    :pswitch_data_1b0
    .packed-switch 0x1
        :pswitch_136
        :pswitch_156
        :pswitch_50
        :pswitch_167
    .end packed-switch
.end method

.method public native clearProtoRouting(I)I
.end method

.method public native clearRouting()V
.end method

.method public clearT3tIdentifiersCache()V
    .registers 3

    .prologue
    .line 701
    const-string/jumbo v0, "NativeNfcManager"

    const-string/jumbo v1, "clearT3tIdentifiersCache entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 703
    :try_start_c
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_11
    .catchall {:try_start_c .. :try_end_11} :catchall_1c

    monitor-exit v1

    .line 705
    const-string/jumbo v0, "NativeNfcManager"

    const-string/jumbo v1, "clearT3tIdentifiersCache exit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    return-void

    .line 702
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public native clearTechRouting(I)I
.end method

.method public native commitRouting()Z
.end method

.method public createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .registers 8
    .param p1, "nSap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 479
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/dhimpl/NativeLlcpConnectionlessSocket;

    move-result-object v1

    .line 480
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    if-eqz v1, :cond_7

    .line 481
    return-object v1

    .line 484
    :cond_7
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v0

    .line 486
    .local v0, "error":I
    const-string/jumbo v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to create llcp socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    packed-switch v0, :pswitch_data_3a

    .line 493
    :pswitch_2c
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 491
    :pswitch_34
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v0}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 488
    :pswitch_data_3a
    .packed-switch -0xc
        :pswitch_34
        :pswitch_2c
        :pswitch_2c
        :pswitch_34
    .end packed-switch
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .registers 11
    .param p1, "nSap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .param p3, "miu"    # I
    .param p4, "rw"    # I
    .param p5, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 503
    invoke-direct/range {p0 .. p5}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpServiceSocket(ILjava/lang/String;III)Lcom/android/nfc/dhimpl/NativeLlcpServiceSocket;

    move-result-object v1

    .line 504
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    if-eqz v1, :cond_7

    .line 505
    return-object v1

    .line 508
    :cond_7
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v0

    .line 510
    .local v0, "error":I
    const-string/jumbo v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to create llcp socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    packed-switch v0, :pswitch_data_3a

    .line 517
    :pswitch_2c
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 515
    :pswitch_34
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v0}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 512
    :pswitch_data_3a
    .packed-switch -0xc
        :pswitch_34
        :pswitch_2c
        :pswitch_2c
        :pswitch_34
    .end packed-switch
.end method

.method public createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .registers 10
    .param p1, "sap"    # I
    .param p2, "miu"    # I
    .param p3, "rw"    # I
    .param p4, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 527
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doCreateLlcpSocket(IIII)Lcom/android/nfc/dhimpl/NativeLlcpSocket;

    move-result-object v1

    .line 528
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-eqz v1, :cond_7

    .line 529
    return-object v1

    .line 532
    :cond_7
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetLastError()I

    move-result v0

    .line 534
    .local v0, "error":I
    const-string/jumbo v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "failed to create llcp socket: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Landroid/nfc/ErrorCodes;->asString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    packed-switch v0, :pswitch_data_3a

    .line 541
    :pswitch_2c
    new-instance v2, Lcom/android/nfc/LlcpException;

    const/16 v3, -0xa

    invoke-direct {v2, v3}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 539
    :pswitch_34
    new-instance v2, Lcom/android/nfc/LlcpException;

    invoke-direct {v2, v0}, Lcom/android/nfc/LlcpException;-><init>(I)V

    throw v2

    .line 536
    :pswitch_data_3a
    .packed-switch -0xc
        :pswitch_34
        :pswitch_2c
        :pswitch_2c
        :pswitch_34
    .end packed-switch
.end method

.method public deinitialize()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 329
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "NciDeviceHost"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 330
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 332
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "se_wired"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 333
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 335
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDeinitialize()Z

    move-result v2

    return v2
.end method

.method public deregisterT3tIdentifier([B)V
    .registers 8
    .param p1, "t3tIdentifier"    # [B

    .prologue
    .line 683
    const-string/jumbo v3, "NativeNfcManager"

    const-string/jumbo v4, "deregisterT3tIdentifier entry"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 685
    :try_start_c
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 686
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 687
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 688
    .local v0, "handle":I
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 689
    .local v2, "value":[B
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 690
    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDeregisterT3tIdentifier(I)V

    .line 691
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_c .. :try_end_44} :catchall_4f

    .end local v0    # "handle":I
    .end local v2    # "value":[B
    :cond_44
    monitor-exit v4

    .line 696
    const-string/jumbo v3, "NativeNfcManager"

    const-string/jumbo v4, "deregisterT3tIdentifier exit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    return-void

    .line 684
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_4f
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public native disableDiscovery()V
.end method

.method public disableScreenOffSuspend()Z
    .registers 2

    .prologue
    .line 661
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDisableScreenOffSuspend()V

    .line 662
    const/4 v0, 0x1

    return v0
.end method

.method public native doAbort()V
.end method

.method public native doActivateLlcp()Z
.end method

.method public native doCheckLlcp()Z
.end method

.method public native doDeregisterT3tIdentifier(I)V
.end method

.method public native doDeselectSecureElement(I)V
.end method

.method public native doEnablep2p(Z)V
.end method

.method public native doGetActiveSecureElementList()[I
.end method

.method public native doGetLastError()I
.end method

.method public native doGetLmrtStatus()[I
.end method

.method public native doRegisterT3tIdentifier([B)I
.end method

.method public native doRouteAid([BIIZ)Z
.end method

.method public native doSelectSecureElement(I)V
.end method

.method public native doSetProvisionMode(Z)V
.end method

.method public native doSetScreenState(I)V
.end method

.method public dump()Ljava/lang/String;
    .registers 2

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doDump()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V
    .registers 10
    .param p1, "params"    # Lcom/android/nfc/NfcDiscoveryParameters;
    .param p2, "restart"    # Z

    .prologue
    .line 432
    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->getTechMask()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableLowPowerDiscovery()Z

    move-result v2

    .line 433
    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableReaderMode()Z

    move-result v3

    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableHostRouting()Z

    move-result v4

    .line 434
    invoke-virtual {p1}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableP2p()Z

    move-result v5

    move-object v0, p0

    move v6, p2

    .line 432
    invoke-direct/range {v0 .. v6}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doEnableDiscovery(IZZZZZ)V

    .line 431
    return-void
.end method

.method public enableScreenOffSuspend()Z
    .registers 2

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doEnableScreenOffSuspend()V

    .line 655
    const/4 v0, 0x1

    return v0
.end method

.method public endDisable()V
    .registers 1

    .prologue
    .line 1053
    return-void
.end method

.method public native getDefaultAidPowerState()I
.end method

.method public native getDefaultAidRoute()I
.end method

.method public native getDefaultDesfirePowerState()I
.end method

.method public native getDefaultDesfireRoute()I
.end method

.method public getDefaultLlcpMiu()I
    .registers 2

    .prologue
    .line 637
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->DEFAULT_LLCP_MIU:I

    return v0
.end method

.method public getDefaultLlcpRwSize()I
    .registers 2

    .prologue
    .line 642
    const/4 v0, 0x2

    return v0
.end method

.method public native getDefaultMifareCLTPowerState()I
.end method

.method public native getDefaultMifareCLTRoute()I
.end method

.method public getExtendedLengthApdusSupported()Z
    .registers 3

    .prologue
    .line 628
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->DEV_CONFIG_NAME:Ljava/lang/String;

    const-string/jumbo v1, "nxp.nci"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 629
    const/4 v0, 0x1

    return v0

    .line 631
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public native getFwFileName()[B
.end method

.method public native getLfT3tMax()I
.end method

.method public getMaxTransceiveLength(I)I
    .registers 3
    .param p1, "technology"    # I

    .prologue
    const/16 v0, 0xfd

    .line 583
    packed-switch p1, :pswitch_data_1a

    .line 609
    :pswitch_5
    const/4 v0, 0x0

    return v0

    .line 587
    :pswitch_7
    return v0

    .line 592
    :pswitch_8
    return v0

    .line 594
    :pswitch_9
    return v0

    .line 596
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->getExtendedLengthApdusSupported()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 597
    const v0, 0xfeff

    return v0

    .line 604
    :cond_14
    const/16 v0, 0x105

    return v0

    .line 607
    :pswitch_17
    const/16 v0, 0xfc

    return v0

    .line 583
    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_17
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 340
    const-string/jumbo v0, "android-nci"

    return-object v0
.end method

.method public getTimeout(I)I
    .registers 3
    .param p1, "tech"    # I

    .prologue
    .line 571
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doGetTimeout(I)I

    move-result v0

    return v0
.end method

.method public initialize()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 307
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsModemRestarting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 308
    const-string/jumbo v3, "NativeNfcManager"

    const-string/jumbo v4, "Now modem is restarting. NFC cannot be enable."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return v5

    .line 312
    :cond_13
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "NciDeviceHost"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 313
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 315
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "se_wired"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 317
    const-wide/16 v4, 0x2ee0

    :try_start_2b
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 318
    const-string/jumbo v3, "se_wired"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 319
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_2b .. :try_end_38} :catch_3d

    .line 323
    :cond_38
    :goto_38
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doInitialize()Z

    move-result v3

    return v3

    .line 320
    :catch_3d
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_38
.end method

.method public native initializeNativeStructure()Z
.end method

.method public native isActivated()Z
.end method

.method public isChipReady()Z
    .registers 4

    .prologue
    .line 904
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->DEV_CONFIG_NAME:Ljava/lang/String;

    const-string/jumbo v2, "nxp.nci"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 905
    iget-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsChipReady:Z

    return v1

    .line 909
    :cond_e
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 910
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonymobile.nfclock"

    const-string/jumbo v2, "com.sonymobile.nfclock.NfcLockService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 911
    const-string/jumbo v1, "com.sonymobile.nfc.NFC_CHIP_READY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 913
    iget-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mIsChipReady:Z

    return v1
.end method

.method public isRouteAidExtended()Z
    .registers 3

    .prologue
    .line 405
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->DEV_CONFIG_NAME:Ljava/lang/String;

    const-string/jumbo v1, "nxp.nci"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 406
    const/4 v0, 0x1

    return v0

    .line 408
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public onSimConfigurationUpdated()V
    .registers 7

    .prologue
    .line 1144
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 1145
    .local v1, "needRfLaDisabled":Z
    sget-boolean v3, Lcom/android/nfc/dhimpl/NativeNfcManager;->DBG:Z

    if-eqz v3, :cond_2b

    const-string/jumbo v3, "NativeNfcManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSimConfigurationUpdated: needRfLaDisabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    :cond_2b
    invoke-direct {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetNeedRfLaDisabled(Z)V

    .line 1149
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "NciDeviceHost"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1150
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1151
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v3, "need_rf_la_disabled"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1152
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1143
    return-void
.end method

.method public prepareEnable()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1045
    invoke-static {}, Lcom/sonymobile/nfc/OsaifuConfig;->getInstance()Lcom/sonymobile/nfc/OsaifuConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/nfc/OsaifuConfig;->readListenTypeSetting()I

    move-result v0

    .line 1046
    .local v0, "listenMode":I
    if-eqz v0, :cond_24

    .line 1047
    new-instance v1, Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;-><init>(Lcom/android/nfc/dhimpl/NativeNfcManager;Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    .line 1048
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 1047
    invoke-virtual {v1, v2}, Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1044
    :cond_24
    return-void
.end method

.method public registerT3tIdentifier([B)V
    .registers 6
    .param p1, "t3tIdentifier"    # [B

    .prologue
    .line 669
    const-string/jumbo v1, "NativeNfcManager"

    const-string/jumbo v2, " registerT3tIdentifier entry"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 671
    :try_start_c
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doRegisterT3tIdentifier([B)I

    move-result v0

    .line 672
    .local v0, "handle":I
    const v1, 0xffff

    if-eq v0, v1, :cond_1e

    .line 673
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->mT3tIdentifiers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_29

    :cond_1e
    monitor-exit v2

    .line 676
    const-string/jumbo v1, "NativeNfcManager"

    const-string/jumbo v2, "registerT3tIdentifier exit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    return-void

    .line 670
    .end local v0    # "handle":I
    :catchall_29
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public resetTimeouts()V
    .registers 1

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doResetTimeouts()V

    .line 555
    return-void
.end method

.method public native routeAid([BI)Z
.end method

.method public routeAid([BIIZ)Z
    .registers 8
    .param p1, "aid"    # [B
    .param p2, "route"    # I
    .param p3, "powerState"    # I
    .param p4, "isprefix"    # Z

    .prologue
    .line 352
    const/4 v0, 0x1

    .line 353
    .local v0, "status":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager;->DEV_CONFIG_NAME:Ljava/lang/String;

    const-string/jumbo v2, "nxp.nci"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 354
    const-string/jumbo v1, "NativeNfcManager"

    const-string/jumbo v2, "routeAid with power state is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/4 v0, 0x0

    .line 356
    return v0

    .line 362
    :cond_17
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doRouteAid([BIIZ)Z

    move-result v0

    .line 365
    .local v0, "status":Z
    return v0
.end method

.method public native sendRawFrame([B)Z
.end method

.method public native setDefaultRoute(III)Z
.end method

.method public setP2pInitiatorModes(I)V
    .registers 2
    .param p1, "modes"    # I

    .prologue
    .line 617
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetP2pInitiatorModes(I)V

    .line 616
    return-void
.end method

.method public setP2pTargetModes(I)V
    .registers 2
    .param p1, "modes"    # I

    .prologue
    .line 623
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetP2pTargetModes(I)V

    .line 622
    return-void
.end method

.method public native setProtoRouting(IIII)I
.end method

.method public native setTechRouting(IIII)I
.end method

.method public setTimeout(II)Z
    .registers 4
    .param p1, "tech"    # I
    .param p2, "timeout"    # I

    .prologue
    .line 565
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->doSetTimeout(II)Z

    move-result v0

    return v0
.end method

.method public native unrouteAid([B)Z
.end method

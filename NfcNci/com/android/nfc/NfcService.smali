.class public Lcom/android/nfc/NfcService;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$DeviceHostListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcService$1;,
        Lcom/android/nfc/NfcService$2;,
        Lcom/android/nfc/NfcService$3;,
        Lcom/android/nfc/NfcService$4;,
        Lcom/android/nfc/NfcService$5;,
        Lcom/android/nfc/NfcService$ApplyRoutingTask;,
        Lcom/android/nfc/NfcService$EnableDisableTask;,
        Lcom/android/nfc/NfcService$LockUnlockTask;,
        Lcom/android/nfc/NfcService$NfcAdapterExtrasService;,
        Lcom/android/nfc/NfcService$NfcAdapterService;,
        Lcom/android/nfc/NfcService$NfcLockExtension;,
        Lcom/android/nfc/NfcService$NfcServiceEx;,
        Lcom/android/nfc/NfcService$NfcServiceGsma;,
        Lcom/android/nfc/NfcService$NfcServiceHandler;,
        Lcom/android/nfc/NfcService$OpenSecureElement;,
        Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;,
        Lcom/android/nfc/NfcService$ReaderModeParams;,
        Lcom/android/nfc/NfcService$TagService;,
        Lcom/android/nfc/NfcService$WatchDogThread;
    }
.end annotation


# static fields
.field public static final ACTION_AID_SELECTED:Ljava/lang/String; = "com.android.nfc_extras.action.AID_SELECTED"

.field public static final ACTION_APDU_RECEIVED:Ljava/lang/String; = "com.android.nfc_extras.action.APDU_RECEIVED"

.field public static final ACTION_EMV_CARD_REMOVAL:Ljava/lang/String; = "com.android.nfc_extras.action.EMV_CARD_REMOVAL"

.field public static final ACTION_LLCP_DOWN:Ljava/lang/String; = "com.android.nfc.action.LLCP_DOWN"

.field public static final ACTION_LLCP_UP:Ljava/lang/String; = "com.android.nfc.action.LLCP_UP"

.field private static final ACTION_MASTER_CLEAR_NOTIFICATION:Ljava/lang/String; = "android.intent.action.MASTER_CLEAR_NOTIFICATION"

.field private static final ACTION_MASTER_RESET:Ljava/lang/String; = "com.sonyericsson.settings.MASTERRESET"

.field public static final ACTION_MIFARE_ACCESS_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.MIFARE_ACCESS_DETECTED"

.field private static final ACTION_NDEF_PUSH_STATE_CHANGED:Ljava/lang/String; = "com.sonymobile.nfc.NDEF_PUSH_STATE_CHANGED"

.field public static final ACTION_NFC_LOCK_STATE_NOTIFY:Ljava/lang/String; = "com.sonymobile.nfclock.NFCLOCK"

.field public static final ACTION_NFC_NEW_CONFIRMATION_DIALOG:Ljava/lang/String; = "com.sonymobile.intent.action.NFC_NEW_CONFIRMATION_DIALOG"

.field public static final ACTION_RF_FIELD_OFF_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

.field public static final ACTION_RF_FIELD_ON_DETECTED:Ljava/lang/String; = "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

.field public static final ACTION_SE_LISTEN_ACTIVATED:Ljava/lang/String; = "com.android.nfc_extras.action.SE_LISTEN_ACTIVATED"

.field public static final ACTION_SE_LISTEN_DEACTIVATED:Ljava/lang/String; = "com.android.nfc_extras.action.SE_LISTEN_DEACTIVATED"

.field public static final ACTION_UICC_STATUS_RECEIVED:Ljava/lang/String; = "com.nxp.action.UICC_STATUS_RECEIVED"

.field private static final APPLY_RESOURCE_DELAY_MS:I = 0x14

.field private static final APPLY_ROUTING_RETRY_TIMEOUT_MS:I = 0x1388

.field private static final CHARGE_LIMITATION_SUPPORT:Z

.field static final DBG:Z

.field static final DEFAULT_PRESENCE_CHECK_DELAY:I = 0x7d

.field static final EE_ERROR_ALREADY_OPEN:I = -0x2

.field static final EE_ERROR_EXT_FIELD:I = -0x5

.field static final EE_ERROR_INIT:I = -0x3

.field static final EE_ERROR_IO:I = -0x1

.field static final EE_ERROR_LISTEN_MODE:I = -0x4

.field static final EE_ERROR_NFC_DISABLED:I = -0x6

.field public static final EXTRA_AID:Ljava/lang/String; = "com.android.nfc_extras.extra.AID"

.field public static final EXTRA_APDU_BYTES:Ljava/lang/String; = "com.android.nfc_extras.extra.APDU_BYTES"

.field public static final EXTRA_MIFARE_BLOCK:Ljava/lang/String; = "com.android.nfc_extras.extra.MIFARE_BLOCK"

.field public static final EXTRA_NFC_NEW_CONFIRMATION_DIALOG_NAME:Ljava/lang/String; = "class.name"

.field public static final EXTRA_PREF:Ljava/lang/String; = "NfcServiceExtraPrefs"

.field public static final EXTRA_UICC_STATUS:Ljava/lang/String; = "com.nxp.extra.UICC_STATUS"

.field static final INIT_WATCHDOG_MS:I = 0x15f90

.field private static final INTENT_NFC_CHIP_READY:Ljava/lang/String; = "com.sonymobile.nfc.NFC_CHIP_READY"

.field static final INVOKE_BEAM_DELAY_MS:I = 0x3e8

.field static final MAX_POLLING_PAUSE_TIMEOUT:J = 0x9c40L

.field static final MSG_CARD_EMULATION:I = 0x1

.field static final MSG_CHANGE_DEFAULT_ROUTE:I = 0x34

.field static final MSG_CLEAR_ROUTING:I = 0x11

.field static final MSG_COMMIT_ROUTING:I = 0x12

.field static final MSG_DEREGISTER_T3T_IDENTIFIER:I = 0x37

.field static final MSG_INVOKE_BEAM:I = 0x13

.field static final MSG_LLCP_LINK_ACTIVATION:I = 0x2

.field static final MSG_LLCP_LINK_DEACTIVATED:I = 0x3

.field static final MSG_LLCP_LINK_FIRST_PACKET:I = 0xf

.field static final MSG_MOCK_NDEF:I = 0x7

.field static final MSG_NDEF_TAG:I = 0x0

.field static final MSG_REGISTER_T3T_IDENTIFIER:I = 0x36

.field static final MSG_RESUME_POLLING:I = 0x1c

.field static final MSG_RF_FIELD_ACTIVATED:I = 0x1a

.field static final MSG_RF_FIELD_DEACTIVATED:I = 0x1b

.field static final MSG_ROUTE_AID:I = 0x10

.field static final MSG_SE_APDU_RECEIVED:I = 0xa

.field static final MSG_SE_DELIVER_INTENT:I = 0x35

.field static final MSG_SE_EMV_CARD_REMOVAL:I = 0xb

.field static final MSG_SE_EVENT_TRANSACTION:I = 0x28

.field static final MSG_SE_FIELD_ACTIVATED:I = 0x8

.field static final MSG_SE_FIELD_DEACTIVATED:I = 0x9

.field static final MSG_SE_LISTEN_ACTIVATED:I = 0xd

.field static final MSG_SE_LISTEN_DEACTIVATED:I = 0xe

.field static final MSG_SE_MIFARE_ACCESS:I = 0xc

.field static final MSG_SIM_STATE_CHANGED:I = 0x32

.field static final MSG_TAG_DEBOUNCE:I = 0x38

.field static final MSG_TARGET_DESELECTED:I = 0x4

.field static final MSG_UNROUTE_AID:I = 0x6

.field static final MSG_USER_SWITCH_COMPLETE:I = 0x29

.field static final NDEF_PUSH_ON_DEFAULT:Z = true

.field private static final NDEF_PUSH_STATE_CHANGED_PERMISSION:Ljava/lang/String; = "com.sonymobile.nfc.permission.NDEF_PUSH_STATE_CHANGED"

.field static final NFC_F_TRANSCEIVE_PRESENCE_CHECK_DELAY:I = 0x1f4

.field private static final NFC_LOCK_NONE:I = 0x0

.field public static final NFC_LOCK_PERMISSION:Ljava/lang/String; = "com.sonyericsson.android.felica.permission.ACCESS_FELICA_LOCK"

.field private static final NFC_LOCK_UIM:I = 0x3

.field static final NFC_ON_DEFAULT:Z

.field static final NFC_POLLING_MODE:I = 0x1

.field static final NFC_POLL_A:I = 0x1

.field static final NFC_POLL_B:I = 0x2

.field static final NFC_POLL_B_PRIME:I = 0x10

.field static final NFC_POLL_F:I = 0x4

.field static final NFC_POLL_ISO15693:I = 0x8

.field static final NFC_POLL_KOVIO:I = 0x20

.field public static final NXP_PREF:Ljava/lang/String; = "NfcServiceNxpPrefs"

.field public static final PREF:Ljava/lang/String; = "NfcServicePrefs"

.field static final PREF_FIRST_BEAM:Ljava/lang/String; = "first_beam"

.field static final PREF_FIRST_BOOT:Ljava/lang/String; = "first_boot"

.field public static final PREF_HANDOVER:Ljava/lang/String; = "NfcHandoverPrefs"

.field private static final PREF_HAS_OVERFLOWN_ONCE:Ljava/lang/String; = "has_overflown_once"

.field private static final PREF_MIFARE_CLT_ROUTE_ID:Ljava/lang/String; = "mifare_clt_route"

.field private static final PREF_MIFARE_DESFIRE_PROTO_ROUTE_ID:Ljava/lang/String; = "mifare_desfire_proto_route"

.field static final PREF_NDEF_PUSH_ON:Ljava/lang/String; = "ndef_push_on"

.field static final PREF_NFC_ON:Ljava/lang/String; = "nfc_on"

.field private static final PREF_RELOCATED:Ljava/lang/String; = "relocated_prefs"

.field private static final PREF_SET_DEFAULT_ROUTE_ID:Ljava/lang/String; = "set_default_route"

.field public static final PREF_WIFI_P2P_MAC_ADDRESS:Ljava/lang/String; = "wifi_p2p_mac_address"

.field private static final PROP_GSMA_MULTIEVT_TRANSACTION:Ljava/lang/String; = "nfc.gsma.multievt.transaction"

.field private static final ROUTE_HOST:Ljava/lang/String; = "Host"

.field public static final ROUTE_LOC_MASK:I = 0x3

.field static final ROUTE_OFF:I = 0x1

.field static final ROUTE_ON_WHEN_SCREEN_ON:I = 0x2

.field private static final ROUTE_UICC:Ljava/lang/String; = "UICC"

.field static final ROUTING_WATCHDOG_MS:I = 0x2710

.field public static final SERVICE_NAME:Ljava/lang/String; = "nfc"

.field private static final SETTINGS_DEFAULT_ROUTE:Ljava/lang/String; = "nfc_default_route"

.field static final SE_BROADCASTS_WITH_HCE:Z = true

.field public static final SOUND_END:I = 0x1

.field public static final SOUND_ERROR:I = 0x2

.field public static final SOUND_START:I = 0x0

.field static final TAG:Ljava/lang/String; = "NfcService"

.field static final TASK_BOOT:I = 0x3

.field static final TASK_DISABLE:I = 0x2

.field static final TASK_ENABLE:I = 0x1

.field public static final TECH_TYPE_MASK:I = 0x5

.field static final WAIT_FOR_NFCEE_OPERATIONS_MS:I = 0x1388

.field static final WAIT_FOR_NFCEE_POLL_MS:I = 0x64

.field private static sConfig:Lcom/sonymobile/nfc/ConstConfig;

.field private static sService:Lcom/android/nfc/NfcService;


# instance fields
.field private final IS_CE_ENABLED_ONLY_FOR_OWNER:Z

.field private final IS_NFC_LOCK_SUPPORTED:Z

.field private final LLCP_MIU_MAX:I

.field private final RF_POWER_CONFIG_SUPPORT:Z

.field private ROUTE_BATT_OFF:I

.field private ROUTE_ID_HOST:I

.field private ROUTE_ID_SMX:I

.field private ROUTE_ID_UICC:I

.field private ROUTE_SWITCH_OFF:I

.field private ROUTE_SWITCH_ON:I

.field isDeviceShuttingDown:Z

.field private mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mAvailableCameras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCameraCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

.field private final mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

.field private mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

.field mDebounceTagDebounceMs:I

.field mDebounceTagRemovedCallback:Landroid/nfc/ITagRemovedCallback;

.field mDebounceTagUid:[B

.field private mDeviceHost:Lcom/android/nfc/DeviceHost;

.field private mDiscoveryManager:Lcom/android/nfc/DiscoveryManager;

.field private mEeRoutingState:I

.field private mEeWakeLock:Landroid/os/PowerManager$WakeLock;

.field mEndSound:I

.field mErrorSound:I

.field private mExtraPrefs:Landroid/content/SharedPreferences;

.field private mExtraPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field mExtrasService:Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

.field private mForceUpdateRoutingTable:Z

.field private mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field private mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

.field private mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field private mHandoverPrefs:Landroid/content/SharedPreferences;

.field private mHandoverPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private mHceExtension:Lcom/android/nfc/HceExtension;

.field mHostRouteEnabled:Z

.field mInProvisionMode:Z

.field mInstalledPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCameraCallbackRegistered:Z

.field private volatile mIsChargeLimitationEnabled:Z

.field mIsDebugBuild:Z

.field private mIsDynamicSwitchSupported:Z

.field mIsHceCapable:Z

.field mIsHceFCapable:Z

.field private volatile mIsInitialized:Z

.field private mIsInterruptedByCamera:Z

.field mIsNdefPushEnabled:Z

.field private volatile mIsNfcLocked:Z

.field private mIsOffHostCardEmulationUnlocked:Z

.field private mIsOverflowDetected:Z

.field private mIsOverflowDetectedOnOtherNfcee:Z

.field mIsOverridingNdefPushSetting:Z

.field mIsRouteForced:Z

.field mIsRoutingTableDirty:Z

.field private mIsSimStateDetermined:Z

.field private volatile mIsTestMode:Z

.field private mKeyguard:Landroid/app/KeyguardManager;

.field private mLastCommitDiscoveryResult:I

.field private mLlcpActivated:Z

.field private final mLlcpActivatedIntentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private final mLlcpDeactivatedIntentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mLockScreenHeadsetHandover:Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;

.field mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

.field private mNfcAdapterEx:Lcom/android/nfc/NfcService$NfcServiceEx;

.field private mNfcAdapterGsma:Lcom/android/nfc/NfcService$NfcServiceGsma;

.field private mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

.field private mNfcLockExtension:Lcom/android/nfc/NfcService$NfcLockExtension;

.field private volatile mNfcLockType:I

.field mNfcPollingEnabled:Z

.field private mNfcSecureElementState:Z

.field mNfcTagService:Lcom/android/nfc/NfcService$TagService;

.field private mNfcTransactionDispatcher:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcher;

.field private final mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

.field mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

.field mNfceeRouteEnabled:Z

.field private mNxpPrefs:Landroid/content/SharedPreferences;

.field private mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field final mObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

.field private final mOwnerReceiver:Landroid/content/BroadcastReceiver;

.field mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

.field private final mPolicyReceiver:Landroid/content/BroadcastReceiver;

.field mPollingPaused:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private mProperty:Lcom/android/nfc/DeviceHost$NfcProperty;

.field private final mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

.field mReaderModeEnabled:Z

.field mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

.field mScreenState:I

.field private mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

.field mSePackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

.field private mServiceConnectionManager:Lcom/android/nfc/NfcServiceConnectionManager;

.field private mServiceExtension:Lcom/android/nfc/ServiceExtension;

.field private mSimMccMnc:Ljava/lang/String;

.field private final mSocketMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mSoundPool:Landroid/media/SoundPool;

.field mStartSound:I

.field mState:I

.field private mUserId:I

.field private final mUserManager:Landroid/os/UserManager;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mWifiP2pReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/nfc/NfcService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->IS_CE_ENABLED_ONLY_FOR_OWNER:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/nfc/NfcService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->IS_NFC_LOCK_SUPPORTED:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/nfc/NfcService;)I
    .registers 2

    iget v0, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ForegroundUtils;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceHandler;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandoverPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/nfc/NfcService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsDynamicSwitchSupported:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/nfc/NfcService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsInterruptedByCamera:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/nfc/NfcService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsNfcLocked:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/nfc/NfcService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsOffHostCardEmulationUnlocked:Z

    return v0
.end method

.method static synthetic -get18(Lcom/android/nfc/NfcService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsTestMode:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/nfc/NfcService;)Landroid/app/KeyguardManager;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/nfc/NfcService;)I
    .registers 2

    iget v0, p0, Lcom/android/nfc/NfcService;->LLCP_MIU_MAX:I

    return v0
.end method

.method static synthetic -get20(Lcom/android/nfc/NfcService;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mLlcpActivated:Z

    return v0
.end method

.method static synthetic -get21(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mLlcpActivatedIntentMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mLlcpDeactivatedIntentMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get23(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$NfcServiceGsma;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcAdapterGsma:Lcom/android/nfc/NfcService$NfcServiceGsma;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcDispatcher;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/nfc/NfcService;)I
    .registers 2

    iget v0, p0, Lcom/android/nfc/NfcService;->mNfcLockType:I

    return v0
.end method

.method static synthetic -get26(Lcom/android/nfc/NfcService;)Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcher;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcTransactionDispatcher:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcher;

    return-object v0
.end method

.method static synthetic -get27(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcUnlockManager;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    return-object v0
.end method

.method static synthetic -get28(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$OpenSecureElement;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    return-object v0
.end method

.method static synthetic -get29(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/nfc/NfcService;)I
    .registers 2

    iget v0, p0, Lcom/android/nfc/NfcService;->ROUTE_ID_SMX:I

    return v0
.end method

.method static synthetic -get30(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -get31(Lcom/android/nfc/NfcService;)Landroid/content/SharedPreferences$Editor;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic -get32(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost$NfcProperty;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mProperty:Lcom/android/nfc/DeviceHost$NfcProperty;

    return-object v0
.end method

.method static synthetic -get33(Lcom/android/nfc/NfcService;)Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    return-object v0
.end method

.method static synthetic -get34(Lcom/android/nfc/NfcService;)Landroid/os/PowerManager$WakeLock;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -get35(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ScreenStateHelper;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    return-object v0
.end method

.method static synthetic -get36(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ServiceExtension;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mServiceExtension:Lcom/android/nfc/ServiceExtension;

    return-object v0
.end method

.method static synthetic -get37(Lcom/android/nfc/NfcService;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSimMccMnc:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get38(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSocketMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get39(Lcom/android/nfc/NfcService;)I
    .registers 2

    iget v0, p0, Lcom/android/nfc/NfcService;->mUserId:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/nfc/NfcService;)I
    .registers 2

    iget v0, p0, Lcom/android/nfc/NfcService;->ROUTE_ID_UICC:I

    return v0
.end method

.method static synthetic -get40(Lcom/android/nfc/NfcService;)Landroid/os/UserManager;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic -get41(Lcom/android/nfc/NfcService;)Landroid/os/Vibrator;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic -get42(Lcom/android/nfc/NfcService;)Landroid/content/BroadcastReceiver;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/nfc/NfcService;)Landroid/media/AudioManager;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/nfc/NfcService;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAvailableCameras:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DiscoveryManager;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDiscoveryManager:Lcom/android/nfc/DiscoveryManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/nfc/NfcService;I)I
    .registers 2

    iput p1, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/nfc/NfcService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mForceUpdateRoutingTable:Z

    return p1
.end method

.method static synthetic -set10(Lcom/android/nfc/NfcService;Lcom/android/nfc/NfcService$OpenSecureElement;)Lcom/android/nfc/NfcService$OpenSecureElement;
    .registers 2

    iput-object p1, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    return-object p1
.end method

.method static synthetic -set11(Lcom/android/nfc/NfcService;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/nfc/NfcService;->mSimMccMnc:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set12(Lcom/android/nfc/NfcService;I)I
    .registers 2

    iput p1, p0, Lcom/android/nfc/NfcService;->mUserId:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/nfc/NfcService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mIsChargeLimitationEnabled:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/nfc/NfcService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mIsInitialized:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/nfc/NfcService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mIsInterruptedByCamera:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/nfc/NfcService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mIsNfcLocked:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/nfc/NfcService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mIsOffHostCardEmulationUnlocked:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/nfc/NfcService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mIsTestMode:Z

    return p1
.end method

.method static synthetic -set8(Lcom/android/nfc/NfcService;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/nfc/NfcService;->mLlcpActivated:Z

    return p1
.end method

.method static synthetic -set9(Lcom/android/nfc/NfcService;I)I
    .registers 2

    iput p1, p0, Lcom/android/nfc/NfcService;->mNfcLockType:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/nfc/NfcService;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->isInterruptedByCamera()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/nfc/NfcService;Z)Z
    .registers 3
    .param p1, "setNotification"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->isNfcPolicyDisabled(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/nfc/NfcService;Ljava/util/HashMap;)V
    .registers 2
    .param p1, "map"    # Ljava/util/HashMap;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->sendLlcpLinkEvent(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/nfc/NfcService;I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->setNfcWifiTetheringDisabled(I)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/nfc/NfcService;I)V
    .registers 2
    .param p1, "screenState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->tryUnlockUiccCardEmulation(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/nfc/NfcService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->unregisterCameraAvailabilityCallback()V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/nfc/NfcService;Ljava/lang/String;)V
    .registers 2
    .param p1, "mccMnc"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->updateSimAndScreenState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .registers 3
    .param p1, "handle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->findServerSocket(I)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .registers 3
    .param p1, "handle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->findSocket(I)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/NfcDiscoveryParameters;
    .registers 3
    .param p1, "screenState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/nfc/NfcService;Ljava/lang/Object;)I
    .registers 3
    .param p1, "socket"    # Ljava/lang/Object;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->addSocket(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/nfc/NfcService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->executeMasterReset()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/nfc/NfcService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->registerCameraAvailabilityCallback()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/nfc/NfcService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->removeAllSockets()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/nfc/NfcService;I)V
    .registers 2
    .param p1, "handle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->removeSocket(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 184
    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v3, "user"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    move v0, v1

    :goto_16
    sput-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    .line 197
    const-string/jumbo v0, "ro.nfc.on.default"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/NfcService;->NFC_ON_DEFAULT:Z

    .line 388
    const-string/jumbo v0, "ro.nfc.limitation.charge"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 389
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 387
    :cond_3e
    :goto_3e
    sput-boolean v2, Lcom/android/nfc/NfcService;->CHARGE_LIMITATION_SUPPORT:Z

    .line 177
    return-void

    :cond_41
    move v0, v2

    .line 184
    goto :goto_16

    :cond_43
    move v2, v1

    .line 388
    goto :goto_3e
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .registers 28
    .param p1, "nfcApplication"    # Landroid/app/Application;

    .prologue
    .line 791
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->ROUTE_ID_HOST:I

    .line 213
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->ROUTE_ID_SMX:I

    .line 214
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->ROUTE_ID_UICC:I

    .line 216
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_ON:I

    .line 217
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_OFF:I

    .line 218
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->ROUTE_BATT_OFF:I

    .line 403
    new-instance v2, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;-><init>(Lcom/android/nfc/NfcService;)V

    .line 402
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mReaderModeDeathRecipient:Lcom/android/nfc/NfcService$ReaderModeDeathRecipient;

    .line 414
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    .line 417
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mSePackages:Ljava/util/HashSet;

    .line 426
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->getNfcOffParameters()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v2

    .line 425
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    .line 434
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsOverridingNdefPushSetting:Z

    .line 440
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->isDeviceShuttingDown:Z

    .line 494
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsChargeLimitationEnabled:Z

    .line 501
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsNfcLocked:Z

    .line 502
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->mNfcLockType:I

    .line 504
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mSocketMap:Ljava/util/HashMap;

    .line 506
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 505
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mLlcpActivatedIntentMap:Ljava/util/HashMap;

    .line 508
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 507
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mLlcpDeactivatedIntentMap:Ljava/util/HashMap;

    .line 509
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mLlcpActivated:Z

    .line 515
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsTestMode:Z

    .line 517
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsOffHostCardEmulationUnlocked:Z

    .line 522
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsInitialized:Z

    .line 524
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsSimStateDetermined:Z

    .line 525
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsOverflowDetected:Z

    .line 526
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsOverflowDetectedOnOtherNfcee:Z

    .line 527
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsDynamicSwitchSupported:Z

    .line 528
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mForceUpdateRoutingTable:Z

    .line 535
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mAvailableCameras:Ljava/util/Map;

    .line 536
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsInterruptedByCamera:Z

    .line 537
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsCameraCallbackRegistered:Z

    .line 4737
    new-instance v2, Lcom/android/nfc/NfcService$NfcServiceHandler;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    .line 4788
    new-instance v2, Lcom/android/nfc/NfcService$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$1;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 4902
    new-instance v2, Lcom/android/nfc/NfcService$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$2;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    .line 4928
    new-instance v2, Lcom/android/nfc/NfcService$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$3;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 4948
    new-instance v2, Lcom/android/nfc/NfcService$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$4;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

    .line 5624
    new-instance v2, Lcom/android/nfc/NfcService$5;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$5;-><init>(Lcom/android/nfc/NfcService;)V

    .line 5623
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mCameraCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 792
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->mUserId:I

    .line 793
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 796
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 795
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->IS_NFC_LOCK_SUPPORTED:Z

    .line 797
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/NfcService;->IS_NFC_LOCK_SUPPORTED:Z

    if-eqz v2, :cond_135

    .line 798
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsNfcLocked:Z

    .line 799
    new-instance v2, Lcom/android/nfc/NfcService$NfcLockExtension;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/nfc/NfcService$NfcLockExtension;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mNfcLockExtension:Lcom/android/nfc/NfcService$NfcLockExtension;

    .line 803
    :cond_135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 802
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->IS_CE_ENABLED_ONLY_FOR_OWNER:Z

    .line 805
    new-instance v2, Lcom/android/nfc/NfcService$TagService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$TagService;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mNfcTagService:Lcom/android/nfc/NfcService$TagService;

    .line 806
    new-instance v2, Lcom/android/nfc/NfcService$NfcAdapterService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$NfcAdapterService;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    .line 807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1ad

    .line 808
    new-instance v2, Lcom/android/nfc/NfcService$NfcServiceGsma;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$NfcServiceGsma;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mNfcAdapterGsma:Lcom/android/nfc/NfcService$NfcServiceGsma;

    .line 809
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcServiceConnectionManager;->getInstance(Landroid/content/Context;)Lcom/android/nfc/NfcServiceConnectionManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mServiceConnectionManager:Lcom/android/nfc/NfcServiceConnectionManager;

    .line 810
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mServiceConnectionManager:Lcom/android/nfc/NfcServiceConnectionManager;

    const-class v3, Lcom/gsma/services/INfcAdapterGsma;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/NfcService;->mNfcAdapterGsma:Lcom/android/nfc/NfcService$NfcServiceGsma;

    .line 811
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    .line 810
    invoke-virtual {v2, v3, v4, v6}, Lcom/android/nfc/NfcServiceConnectionManager;->add(Ljava/lang/String;Landroid/os/IBinder;Z)V

    .line 812
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mServiceConnectionManager:Lcom/android/nfc/NfcServiceConnectionManager;

    invoke-virtual {v2}, Lcom/android/nfc/NfcServiceConnectionManager;->start()V

    .line 814
    :cond_1ad
    new-instance v2, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mExtrasService:Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

    .line 817
    new-instance v2, Lcom/android/nfc/NfcService$NfcServiceEx;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$NfcServiceEx;-><init>(Lcom/android/nfc/NfcService;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mNfcAdapterEx:Lcom/android/nfc/NfcService$NfcServiceEx;

    .line 819
    const-string/jumbo v2, "NfcService"

    const-string/jumbo v3, "Starting NFC service"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    sput-object p0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    .line 822
    new-instance v2, Lcom/sonymobile/nfc/ConstConfig;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/sonymobile/nfc/ConstConfig;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/nfc/NfcService;->sConfig:Lcom/sonymobile/nfc/ConstConfig;

    .line 824
    new-instance v2, Lcom/android/nfc/ScreenStateHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/nfc/ScreenStateHelper;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    .line 825
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "NfcServicePrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    .line 826
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "NfcServiceNxpPrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    .line 828
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 829
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "NfcServiceExtraPrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mExtraPrefs:Landroid/content/SharedPreferences;

    .line 830
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mExtraPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mExtraPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 832
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "NfcHandoverPrefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mHandoverPrefs:Landroid/content/SharedPreferences;

    .line 833
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mHandoverPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mHandoverPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 835
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/NfcService;->relocatePrefsIfNeeded()V

    .line 837
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mExtraPrefs:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->getInstance(Landroid/content/SharedPreferences;)Lcom/android/nfc/dhimpl/NativeNfcProperty;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mProperty:Lcom/android/nfc/DeviceHost$NfcProperty;

    .line 839
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 840
    new-instance v2, Lcom/android/nfc/dhimpl/NativeNfcManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/NfcService;->mProperty:Lcom/android/nfc/DeviceHost$NfcProperty;

    move-object/from16 v0, p0

    invoke-direct {v2, v3, v0, v4}, Lcom/android/nfc/dhimpl/NativeNfcManager;-><init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$DeviceHostListener;Lcom/android/nfc/DeviceHost$NfcProperty;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 842
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/NfcService;->setupServiceExtension()Lcom/android/nfc/ServiceExtension;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mServiceExtension:Lcom/android/nfc/ServiceExtension;

    .line 843
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_2af

    const-string/jumbo v3, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mServiceExtension  : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mServiceExtension:Lcom/android/nfc/ServiceExtension;

    if-eqz v2, :cond_76b

    const/4 v2, 0x1

    :goto_2a4
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    :cond_2af
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    .line 847
    new-instance v2, Lcom/android/nfc/handover/HandoverDataParser;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/nfc/handover/HandoverDataParser;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 848
    const/16 v21, 0x0

    .line 850
    .local v21, "isNfcProvisioningEnabled":Z
    :try_start_2c6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 851
    const v3, 0x7f0a0001

    .line 850
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_2d4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2c6 .. :try_end_2d4} :catch_7fe

    move-result v21

    .line 855
    .end local v21    # "isNfcProvisioningEnabled":Z
    :goto_2d5
    if-eqz v21, :cond_771

    .line 856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 857
    const-string/jumbo v3, "device_provisioned"

    const/4 v4, 0x0

    .line 856
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_76e

    const/4 v2, 0x1

    :goto_2e6
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 862
    :goto_2ea
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v2, :cond_2fb

    .line 865
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost;->doSetProvisionMode(Z)V

    .line 868
    :cond_2fb
    new-instance v2, Lcom/android/nfc/NfcDispatcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    invoke-direct {v2, v3, v4, v6}, Lcom/android/nfc/NfcDispatcher;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;Z)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    .line 869
    new-instance v2, Lcom/android/nfc/P2pLinkManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/NfcService;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 870
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpMiu()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost;->getDefaultLlcpRwSize()I

    move-result v7

    .line 869
    invoke-direct {v2, v3, v4, v6, v7}, Lcom/android/nfc/P2pLinkManager;-><init>(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    .line 872
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    .line 873
    new-instance v2, Lcom/android/nfc/NfceeAccessControl;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/nfc/NfceeAccessControl;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    .line 876
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mProperty:Lcom/android/nfc/DeviceHost$NfcProperty;

    const-string/jumbo v3, "se.smx.enable"

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost$NfcProperty;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 875
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_778

    .line 877
    new-instance v2, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$NfcAdapterExtrasService;-><init>(Lcom/android/nfc/NfcService;)V

    .line 875
    :goto_35b
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mExtrasService:Lcom/android/nfc/NfcService$NfcAdapterExtrasService;

    .line 880
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mProperty:Lcom/android/nfc/DeviceHost$NfcProperty;

    const-string/jumbo v3, "se.smx.enable"

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost$NfcProperty;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 879
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_77b

    .line 881
    new-instance v2, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;-><init>(Landroid/content/Context;)V

    .line 879
    :goto_379
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    .line 883
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mNfcTransactionDispatcher:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcher;

    .line 884
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/NfcService;->createTransactionDispatcherIfNeeded()V

    .line 886
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->mState:I

    .line 887
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "ndef_push_on"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 888
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->setBeamShareActivityState(Z)V

    .line 890
    const-string/jumbo v2, "userdebug"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77e

    const-string/jumbo v2, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_3b7
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsDebugBuild:Z

    .line 892
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    .line 894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    .line 895
    const-string/jumbo v3, "NfcService:mRoutingWakeLock"

    const/4 v4, 0x1

    .line 894
    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mRoutingWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 896
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mPowerManager:Landroid/os/PowerManager;

    .line 897
    const-string/jumbo v3, "NfcService:mEeWakeLock"

    const/4 v4, 0x1

    .line 896
    invoke-virtual {v2, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mKeyguard:Landroid/app/KeyguardManager;

    .line 900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mUserManager:Landroid/os/UserManager;

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v2}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 904
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mVibrator:Landroid/os/Vibrator;

    .line 905
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mAudioManager:Landroid/media/AudioManager;

    .line 907
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonymobile/nfc/ToastMaster;->init(Landroid/content/Context;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    .line 911
    .local v23, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v2, "android.hardware.nfc.hce"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_781

    .line 912
    const-string/jumbo v2, "android.hardware.nfc.hcef"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 910
    :goto_45f
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    .line 914
    const-string/jumbo v2, "android.hardware.nfc.hcef"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 913
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsHceFCapable:Z

    .line 915
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v2, :cond_4de

    .line 916
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v3, 0x7f09001d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 917
    .local v17, "className":Ljava/lang/String;
    const/16 v16, 0x0

    .line 918
    .local v16, "builder":Lcom/android/nfc/cardemulation/CeSubsystemBuilder;
    if-eqz v17, :cond_48b

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_784

    .line 922
    .end local v16    # "builder":Lcom/android/nfc/cardemulation/CeSubsystemBuilder;
    :cond_48b
    :goto_48b
    if-eqz v16, :cond_7b2

    .line 923
    invoke-interface/range {v16 .. v16}, Lcom/android/nfc/cardemulation/CeSubsystemBuilder;->createAidRoutingManager()Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 924
    new-instance v2, Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    move-object/from16 v0, v16

    invoke-direct {v2, v3, v4, v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;Lcom/android/nfc/cardemulation/CeSubsystemBuilder;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    .line 933
    :goto_4a8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->updateAidMatchingPlatform(Landroid/content/Context;)V

    .line 935
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/NfcService;->setupHceExtension()Lcom/android/nfc/HceExtension;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mHceExtension:Lcom/android/nfc/HceExtension;

    .line 936
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_4de

    const-string/jumbo v3, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mHceExtension  : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mHceExtension:Lcom/android/nfc/HceExtension;

    if-eqz v2, :cond_7db

    const/4 v2, 0x1

    :goto_4d3
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    .end local v17    # "className":Ljava/lang/String;
    :cond_4de
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 941
    const-string/jumbo v2, "nfc"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mNfcAdapter:Lcom/android/nfc/NfcService$NfcAdapterService;

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 944
    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.android.nfc.action.INTERNAL_TARGET_DESELECTED"

    invoke-direct {v5, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 945
    .local v5, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF_DISABLED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 946
    const-string/jumbo v2, "android.intent.action.SCREEN_ON_DISABLED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 947
    const-string/jumbo v2, "android.intent.action.USER_PRESENT_DISABLED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 948
    const-string/jumbo v2, "android.intent.action.USER_SWITCHED_DISABLED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 949
    const-string/jumbo v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 950
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 953
    new-instance v22, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 954
    .local v22, "ownerFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 955
    const-string/jumbo v2, "com.sonyericsson.settings.MASTERRESET"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 956
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 958
    new-instance v22, Landroid/content/IntentFilter;

    .end local v22    # "ownerFilter":Landroid/content/IntentFilter;
    invoke-direct/range {v22 .. v22}, Landroid/content/IntentFilter;-><init>()V

    .line 959
    .restart local v22    # "ownerFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 960
    const-string/jumbo v2, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 961
    const-string/jumbo v2, "package"

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 962
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mOwnerReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 964
    invoke-static {}, Lcom/sonymobile/nfc/InstalledPackageCache;->getInstance()Lcom/sonymobile/nfc/InstalledPackageCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/nfc/InstalledPackageCache;->update()V

    .line 966
    new-instance v9, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-direct {v9, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 967
    .local v9, "policyFilter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/nfc/NfcService;->mPolicyReceiver:Landroid/content/BroadcastReceiver;

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 970
    :try_start_59a
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    .line 971
    new-instance v3, Lcom/android/nfc/NfcService$6;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/nfc/NfcService$6;-><init>(Lcom/android/nfc/NfcService;)V

    .line 970
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_5a8
    .catch Landroid/os/RemoteException; {:try_start_59a .. :try_end_5a8} :catch_7de

    .line 989
    :goto_5a8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v2, :cond_5b5

    .line 990
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->initialize()V

    .line 993
    :cond_5b5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/NfcService;->IS_NFC_LOCK_SUPPORTED:Z

    if-eqz v2, :cond_5dd

    .line 994
    new-instance v5, Landroid/content/IntentFilter;

    .end local v5    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 995
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.sonymobile.nfclock.NFCLOCK"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 996
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 997
    const-string/jumbo v6, "com.sonyericsson.android.felica.permission.ACCESS_FELICA_LOCK"

    const/4 v7, 0x0

    .line 996
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 998
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->setBeamShareActivityState(Z)V

    .line 1000
    :cond_5dd
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_5ff

    const-string/jumbo v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isNfclockSupported : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/nfc/NfcService;->IS_NFC_LOCK_SUPPORTED:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    :cond_5ff
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_621

    const-string/jumbo v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsNfcLocked       : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/nfc/NfcService;->mIsNfcLocked:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    :cond_621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 1003
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->RF_POWER_CONFIG_SUPPORT:Z

    .line 1005
    sget-boolean v2, Lcom/android/nfc/NfcService;->CHARGE_LIMITATION_SUPPORT:Z

    if-nez v2, :cond_63e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/NfcService;->RF_POWER_CONFIG_SUPPORT:Z

    if-eqz v2, :cond_69e

    .line 1006
    :cond_63e
    new-instance v5, Landroid/content/IntentFilter;

    .end local v5    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1007
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1008
    const-string/jumbo v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1011
    new-instance v5, Landroid/content/IntentFilter;

    .end local v5    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    .line 1012
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v20

    .line 1015
    .local v20, "intentPowerConnection":Landroid/content/Intent;
    if-eqz v20, :cond_69e

    .line 1016
    const-string/jumbo v2, "plugged"

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v24

    .line 1017
    .local v24, "status":I
    const/4 v2, 0x2

    move/from16 v0, v24

    if-eq v0, v2, :cond_68c

    .line 1018
    const/4 v2, 0x1

    move/from16 v0, v24

    if-ne v0, v2, :cond_7ea

    .line 1019
    :cond_68c
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsChargeLimitationEnabled:Z

    .line 1020
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_69e

    const-string/jumbo v2, "NfcService"

    const-string/jumbo v3, "Power is connected on startup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    .end local v20    # "intentPowerConnection":Landroid/content/Intent;
    .end local v24    # "status":I
    :cond_69e
    :goto_69e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/nfc/NfcService;->tryUnlockUiccCardEmulation(I)V

    .line 1030
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_6e3

    .line 1031
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mHandoverPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "wifi_p2p_mac_address"

    const-string/jumbo v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    .line 1030
    if-eqz v2, :cond_6e3

    .line 1032
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/nfc/NfcService;->mWifiP2pReceiver:Landroid/content/BroadcastReceiver;

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1033
    new-instance v13, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-direct {v13, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1034
    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 1032
    invoke-virtual/range {v10 .. v15}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1038
    :cond_6e3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/telephony/TelephonyManager;

    .line 1040
    .local v25, "tm":Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_70c

    .line 1041
    invoke-virtual/range {v25 .. v25}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/nfc/NfcService;->onSimConfigurationUpdated(Ljava/lang/String;)V

    .line 1042
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/nfc/NfcService;->mScreenState:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/nfc/NfcService;->tryUnlockUiccCardEmulation(I)V

    .line 1045
    :cond_70c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/nfc/NfcService;->LLCP_MIU_MAX:I

    .line 1047
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/NfcService;->setupDiscoveryManager()Lcom/android/nfc/DiscoveryManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mDiscoveryManager:Lcom/android/nfc/DiscoveryManager;

    .line 1049
    new-instance v2, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mLockScreenHeadsetHandover:Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;

    .line 1051
    new-instance v2, Lcom/sonymobile/nfc/NfcNotificationManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/sonymobile/nfc/NfcNotificationManager;-><init>(Landroid/content/Context;)V

    .line 1052
    const/4 v3, 0x1

    .line 1051
    invoke-virtual {v2, v3}, Lcom/sonymobile/nfc/NfcNotificationManager;->showNotification(I)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "camera"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CameraManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 1055
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/NfcService;->initCameraAvailabilityCallback()V

    .line 1057
    new-instance v2, Lcom/android/nfc/NfcService$EnableDisableTask;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 791
    return-void

    .line 843
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "policyFilter":Landroid/content/IntentFilter;
    .end local v22    # "ownerFilter":Landroid/content/IntentFilter;
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .end local v25    # "tm":Landroid/telephony/TelephonyManager;
    :cond_76b
    const/4 v2, 0x0

    goto/16 :goto_2a4

    .line 856
    :cond_76e
    const/4 v2, 0x0

    goto/16 :goto_2e6

    .line 859
    :cond_771
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    goto/16 :goto_2ea

    .line 877
    :cond_778
    const/4 v2, 0x0

    goto/16 :goto_35b

    .line 881
    :cond_77b
    const/4 v2, 0x0

    goto/16 :goto_379

    .line 890
    :cond_77e
    const/4 v2, 0x1

    goto/16 :goto_3b7

    .line 911
    .restart local v23    # "pm":Landroid/content/pm/PackageManager;
    :cond_781
    const/4 v2, 0x1

    goto/16 :goto_45f

    .line 919
    .restart local v16    # "builder":Lcom/android/nfc/cardemulation/CeSubsystemBuilder;
    .restart local v17    # "className":Ljava/lang/String;
    :cond_784
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_7a4

    const-string/jumbo v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "HCE builder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    :cond_7a4
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/nfc/NfcService;->getNewInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    .end local v16    # "builder":Lcom/android/nfc/cardemulation/CeSubsystemBuilder;
    check-cast v16, Lcom/android/nfc/cardemulation/CeSubsystemBuilder;

    .local v16, "builder":Lcom/android/nfc/cardemulation/CeSubsystemBuilder;
    goto/16 :goto_48b

    .line 927
    .end local v16    # "builder":Lcom/android/nfc/cardemulation/CeSubsystemBuilder;
    :cond_7b2
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_7bf

    const-string/jumbo v2, "NfcService"

    const-string/jumbo v3, "No HCE builder or failed to instantiate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_7bf
    new-instance v2, Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-direct {v2}, Lcom/android/nfc/cardemulation/AidRoutingManager;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    .line 929
    new-instance v2, Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-direct {v2, v3, v4}, Lcom/android/nfc/cardemulation/CardEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    goto/16 :goto_4a8

    .line 936
    :cond_7db
    const/4 v2, 0x0

    goto/16 :goto_4d3

    .line 985
    .end local v17    # "className":Ljava/lang/String;
    .restart local v5    # "filter":Landroid/content/IntentFilter;
    .restart local v9    # "policyFilter":Landroid/content/IntentFilter;
    .restart local v22    # "ownerFilter":Landroid/content/IntentFilter;
    :catch_7de
    move-exception v19

    .line 986
    .local v19, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "NfcService"

    const-string/jumbo v3, "Couldn\'t send user switch complete message."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a8

    .line 1022
    .end local v19    # "e":Landroid/os/RemoteException;
    .restart local v20    # "intentPowerConnection":Landroid/content/Intent;
    .restart local v24    # "status":I
    :cond_7ea
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsChargeLimitationEnabled:Z

    .line 1023
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_69e

    const-string/jumbo v2, "NfcService"

    const-string/jumbo v3, "Power is disconnected on startup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_69e

    .line 852
    .end local v5    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "policyFilter":Landroid/content/IntentFilter;
    .end local v20    # "intentPowerConnection":Landroid/content/Intent;
    .end local v22    # "ownerFilter":Landroid/content/IntentFilter;
    .end local v23    # "pm":Landroid/content/pm/PackageManager;
    .end local v24    # "status":I
    .restart local v21    # "isNfcProvisioningEnabled":Z
    :catch_7fe
    move-exception v18

    .local v18, "e":Landroid/content/res/Resources$NotFoundException;
    goto/16 :goto_2d5
.end method

.method private GetDefaultMifareDesfireRouteEntry()I
    .registers 4

    .prologue
    .line 4097
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_24

    const-string/jumbo v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "GetDefaultMifareDesfireRouteEntry :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->getDefaultDesfireRoute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4098
    :cond_24
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDefaultDesfireRoute()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_ON:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_OFF:I

    or-int/2addr v0, v1

    return v0
.end method

.method private GetDefaultMifateCLTRouteEntry()I
    .registers 4

    .prologue
    .line 4118
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_24

    const-string/jumbo v0, "NfcService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getDefaultMifareCLTRoute :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->getDefaultMifareCLTRoute()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4119
    :cond_24
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getDefaultMifareCLTRoute()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_ON:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_OFF:I

    or-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    return v0
.end method

.method private GetDefaultRouteEntry()I
    .registers 5

    .prologue
    .line 4107
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->getDefaultRouteFromResource()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    iget v2, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_ON:I

    or-int/2addr v1, v2

    iget v2, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_OFF:I

    or-int v0, v1, v2

    .line 4108
    .local v0, "defaultAidRoute":I
    const-string/jumbo v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GetDefaultRouteEntry :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4109
    return v0
.end method

.method private addSocket(Ljava/lang/Object;)I
    .registers 5
    .param p1, "socket"    # Ljava/lang/Object;

    .prologue
    .line 3945
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 3946
    .local v0, "handle":I
    monitor-enter p0

    .line 3947
    :try_start_5
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mSocketMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_10

    monitor-exit p0

    .line 3949
    return v0

    .line 3946
    :catchall_10
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;
    .registers 13
    .param p1, "screenState"    # I

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3692
    invoke-static {}, Lcom/android/nfc/NfcDiscoveryParameters;->newBuilder()Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    move-result-object v1

    .line 3694
    .local v1, "paramsBuilder":Lcom/android/nfc/NfcDiscoveryParameters$Builder;
    const/4 v5, 0x3

    if-lt p1, v5, :cond_13

    .line 3695
    iget-boolean v5, p0, Lcom/android/nfc/NfcService;->mIsChargeLimitationEnabled:Z

    if-eqz v5, :cond_ea

    sget-boolean v5, Lcom/android/nfc/NfcService;->CHARGE_LIMITATION_SUPPORT:Z

    if-eqz v5, :cond_ea

    .line 3724
    :cond_13
    if-ne p1, v9, :cond_14d

    iget-boolean v5, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v5, :cond_14d

    .line 3725
    invoke-virtual {v1, v10}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 3727
    invoke-virtual {v1, v7}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 3736
    :cond_1f
    :goto_1f
    iget-boolean v5, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v5, :cond_2a

    iget v5, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-lt v5, v9, :cond_2a

    .line 3738
    invoke-virtual {v1, v7}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableHostRouting(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 3741
    :cond_2a
    iget-boolean v5, p0, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    if-eqz v5, :cond_d3

    .line 3742
    iput-boolean v8, p0, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    .line 3743
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "PREF_MIFARE_DESFIRE_PROTO_ROUTE_ID"

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->GetDefaultMifareDesfireRouteEntry()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 3744
    .local v2, "protoRoute":I
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "PREF_SET_DEFAULT_ROUTE_ID"

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->GetDefaultRouteEntry()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3745
    .local v0, "defaultRoute":I
    sget-boolean v5, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v5, :cond_6c

    const-string/jumbo v5, "NfcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "GetDefaultRouteLoc: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultRouteLoc()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3746
    :cond_6c
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v6, "PREF_MIFARE_CLT_ROUTE_ID"

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->GetDefaultMifateCLTRouteEntry()I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 3747
    .local v4, "techRoute":I
    sget-boolean v5, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v5, :cond_86

    const-string/jumbo v5, "NfcService"

    const-string/jumbo v6, "Set default Route Entry"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    :cond_86
    iget-boolean v5, p0, Lcom/android/nfc/NfcService;->mIsOffHostCardEmulationUnlocked:Z

    if-nez v5, :cond_a1

    .line 3750
    sget-boolean v5, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v5, :cond_97

    const-string/jumbo v5, "NfcService"

    const-string/jumbo v6, "Device has not been unlocked by owner. Disabling off host"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3752
    :cond_97
    iget v5, p0, Lcom/android/nfc/NfcService;->ROUTE_ID_HOST:I

    shl-int/lit8 v5, v5, 0x3

    iget v6, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_ON:I

    or-int v4, v5, v6

    .line 3751
    move v0, v4

    move v2, v4

    .line 3755
    :cond_a1
    invoke-static {}, Lcom/sonymobile/nfc/NfcCertDebugModeUtil;->isHceDebugMode()Z

    move-result v5

    if-eqz v5, :cond_16c

    .line 3756
    iget v5, p0, Lcom/android/nfc/NfcService;->ROUTE_ID_HOST:I

    shl-int/lit8 v5, v5, 0x3

    iget v6, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_ON:I

    or-int/2addr v5, v6

    iget v6, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_OFF:I

    or-int v0, v5, v6

    .line 3757
    sget-boolean v5, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v5, :cond_d0

    const-string/jumbo v5, "NfcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "HCE Debug mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3763
    :cond_d0
    :goto_d0
    invoke-virtual {p0, v0, v2, v4}, Lcom/android/nfc/NfcService;->setDefaultRoute(III)Z

    .line 3766
    .end local v0    # "defaultRoute":I
    .end local v2    # "protoRoute":I
    .end local v4    # "techRoute":I
    :cond_d3
    invoke-static {}, Lcom/sonymobile/nfc/NfcCertDebugModeUtil;->isHceDebugMode()Z

    move-result v5

    if-nez v5, :cond_df

    invoke-static {}, Lcom/sonymobile/nfc/NfcCertDebugModeUtil;->isUiccDebugMode()Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 3769
    :cond_df
    invoke-virtual {v1, v8}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 3770
    invoke-virtual {v1, v8}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 3773
    :cond_e5
    invoke-virtual {v1}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->build()Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v5

    return-object v5

    .line 3696
    :cond_ea
    iget-boolean v5, p0, Lcom/android/nfc/NfcService;->mIsInterruptedByCamera:Z

    if-nez v5, :cond_13

    .line 3697
    iget-boolean v5, p0, Lcom/android/nfc/NfcService;->RF_POWER_CONFIG_SUPPORT:Z

    if-eqz v5, :cond_fe

    .line 3698
    iget-boolean v5, p0, Lcom/android/nfc/NfcService;->mIsChargeLimitationEnabled:Z

    if-eqz v5, :cond_13c

    .line 3699
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mProperty:Lcom/android/nfc/DeviceHost$NfcProperty;

    const-string/jumbo v6, "apply.rf.powered"

    invoke-interface {v5, v6}, Lcom/android/nfc/DeviceHost$NfcProperty;->applyProperty(Ljava/lang/String;)V

    .line 3705
    :cond_fe
    :goto_fe
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz v5, :cond_145

    .line 3706
    const/4 v3, 0x0

    .line 3707
    .local v3, "techMask":I
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v5, v5, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_10c

    .line 3708
    const/4 v3, 0x1

    .line 3709
    :cond_10c
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v5, v5, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_116

    .line 3710
    or-int/lit8 v3, v3, 0x2

    .line 3711
    :cond_116
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v5, v5, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_120

    .line 3712
    or-int/lit8 v3, v3, 0x4

    .line 3713
    :cond_120
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v5, v5, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_12a

    .line 3714
    or-int/lit8 v3, v3, 0x8

    .line 3715
    :cond_12a
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    iget v5, v5, Lcom/android/nfc/NfcService$ReaderModeParams;->flags:I

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_134

    .line 3716
    or-int/lit8 v3, v3, 0x20

    .line 3718
    :cond_134
    invoke-virtual {v1, v3}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 3719
    invoke-virtual {v1, v7}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableReaderMode(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto/16 :goto_1f

    .line 3701
    .end local v3    # "techMask":I
    :cond_13c
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mProperty:Lcom/android/nfc/DeviceHost$NfcProperty;

    const-string/jumbo v6, "apply.rf.normal"

    invoke-interface {v5, v6}, Lcom/android/nfc/DeviceHost$NfcProperty;->applyProperty(Ljava/lang/String;)V

    goto :goto_fe

    .line 3721
    :cond_145
    invoke-virtual {v1, v10}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 3722
    invoke-virtual {v1, v7}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto/16 :goto_1f

    .line 3728
    :cond_14d
    if-ne p1, v9, :cond_1f

    .line 3729
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v5}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v5

    .line 3728
    if-eqz v5, :cond_1f

    .line 3729
    iget-boolean v5, p0, Lcom/android/nfc/NfcService;->mIsInterruptedByCamera:Z

    if-nez v5, :cond_1f

    .line 3731
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mNfcUnlockManager:Lcom/android/nfc/NfcUnlockManager;

    invoke-virtual {v5}, Lcom/android/nfc/NfcUnlockManager;->getLockscreenPollMask()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setTechMask(I)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 3732
    invoke-virtual {v1, v8}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableLowPowerDiscovery(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    .line 3733
    invoke-virtual {v1, v8}, Lcom/android/nfc/NfcDiscoveryParameters$Builder;->setEnableP2p(Z)Lcom/android/nfc/NfcDiscoveryParameters$Builder;

    goto/16 :goto_1f

    .line 3758
    .restart local v0    # "defaultRoute":I
    .restart local v2    # "protoRoute":I
    .restart local v4    # "techRoute":I
    :cond_16c
    invoke-static {}, Lcom/sonymobile/nfc/NfcCertDebugModeUtil;->isUiccDebugMode()Z

    move-result v5

    if-eqz v5, :cond_d0

    .line 3759
    iget v5, p0, Lcom/android/nfc/NfcService;->ROUTE_ID_UICC:I

    shl-int/lit8 v5, v5, 0x3

    iget v6, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_ON:I

    or-int/2addr v5, v6

    iget v6, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_OFF:I

    or-int v0, v5, v6

    .line 3760
    sget-boolean v5, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v5, :cond_d0

    const-string/jumbo v5, "NfcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "UICC Debug mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d0
.end method

.method private convertToAnotherRoute(I)I
    .registers 3
    .param p1, "route"    # I

    .prologue
    .line 5087
    iget v0, p0, Lcom/android/nfc/NfcService;->ROUTE_ID_HOST:I

    if-ne p1, v0, :cond_7

    iget v0, p0, Lcom/android/nfc/NfcService;->ROUTE_ID_UICC:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/android/nfc/NfcService;->ROUTE_ID_HOST:I

    goto :goto_6
.end method

.method private createTransactionDispatcherIfNeeded()V
    .registers 6

    .prologue
    .line 4998
    monitor-enter p0

    .line 4999
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcTransactionDispatcher:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcher;

    if-nez v2, :cond_8e

    .line 5000
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 5001
    const v3, 0x7f090021

    .line 5000
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5001
    const-string/jumbo v3, "kddi"

    .line 5000
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 5002
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 5003
    const v3, 0x7f09001c

    .line 5002
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5003
    const-string/jumbo v3, "nxp.nci"

    .line 5002
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 5000
    if-eqz v2, :cond_75

    .line 5005
    :cond_31
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 5006
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 5007
    .local v0, "simOperator":Ljava/lang/String;
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_57

    .line 5008
    :cond_48
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_55

    const-string/jumbo v2, "NfcService"

    .line 5009
    const-string/jumbo v3, "simOperator not yet available, don\'t create dispatcher yet"

    .line 5008
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_55
    .catchall {:try_start_1 .. :try_end_55} :catchall_90

    :cond_55
    monitor-exit p0

    .line 5010
    return-void

    .line 5013
    :cond_57
    :try_start_57
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_75

    const-string/jumbo v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "simOperator is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5016
    .end local v0    # "simOperator":Ljava/lang/String;
    .end local v1    # "tm":Landroid/telephony/TelephonyManager;
    :cond_75
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/nfc/NfcService;->mProperty:Lcom/android/nfc/DeviceHost$NfcProperty;

    invoke-static {v2, v3}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->newInstance(Landroid/content/Context;Lcom/android/nfc/DeviceHost$NfcProperty;)Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcher;

    move-result-object v2

    .line 5015
    iput-object v2, p0, Lcom/android/nfc/NfcService;->mNfcTransactionDispatcher:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcher;

    .line 5017
    const-string/jumbo v2, "nfc.gsma.multievt.transaction"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 5018
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mNfcTransactionDispatcher:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcher;

    invoke-interface {v2}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcher;->setEnableMultiEvtTransaction()V
    :try_end_8e
    .catchall {:try_start_57 .. :try_end_8e} :catchall_90

    :cond_8e
    monitor-exit p0

    .line 4997
    return-void

    .line 4998
    :catchall_90
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private executeMasterReset()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5247
    sget-boolean v0, Lcom/android/nfc/NfcService;->NFC_ON_DEFAULT:Z

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->saveNfcOnSetting(Z)V

    .line 5249
    monitor-enter p0

    .line 5250
    :try_start_8
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mProperty:Lcom/android/nfc/DeviceHost$NfcProperty;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$NfcProperty;->executeMasterReset()V

    .line 5251
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "ndef_push_on"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5252
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5253
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "PREF_SET_DEFAULT_ROUTE_ID"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5254
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_64

    monitor-exit p0

    .line 5257
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->executeMasterReset()V

    .line 5259
    sget-boolean v0, Lcom/android/nfc/NfcService;->NFC_ON_DEFAULT:Z

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 5264
    :cond_37
    sget-boolean v0, Lcom/android/nfc/NfcService;->NFC_ON_DEFAULT:Z

    if-nez v0, :cond_63

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 5265
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_4e

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "NFC is reset to off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5266
    :cond_4e
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsNfcLocked:Z

    if-nez v0, :cond_63

    .line 5267
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v1, v2, [Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5245
    :cond_63
    :goto_63
    return-void

    .line 5249
    :catchall_64
    move-exception v0

    monitor-exit p0

    throw v0

    .line 5260
    :cond_67
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_74

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "NFC is reset to on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5261
    :cond_74
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsNfcLocked:Z

    if-nez v0, :cond_63

    .line 5262
    new-instance v0, Lcom/android/nfc/NfcService$EnableDisableTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v1, v2, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_63
.end method

.method private findServerSocket(I)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .registers 5
    .param p1, "handle"    # I

    .prologue
    .line 3935
    monitor-enter p0

    .line 3936
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mSocketMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    move-result-object v0

    .local v0, "socket":Ljava/lang/Object;
    monitor-exit p0

    .line 3938
    instance-of v1, v0, Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-nez v1, :cond_15

    .line 3939
    const/4 v1, 0x0

    return-object v1

    .line 3935
    .end local v0    # "socket":Ljava/lang/Object;
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1

    .line 3941
    .restart local v0    # "socket":Ljava/lang/Object;
    :cond_15
    check-cast v0, Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .end local v0    # "socket":Ljava/lang/Object;
    return-object v0
.end method

.method private findSocket(I)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .registers 5
    .param p1, "handle"    # I

    .prologue
    .line 3924
    monitor-enter p0

    .line 3925
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mSocketMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    move-result-object v0

    .local v0, "socket":Ljava/lang/Object;
    monitor-exit p0

    .line 3927
    instance-of v1, v0, Lcom/android/nfc/DeviceHost$LlcpSocket;

    if-nez v1, :cond_15

    .line 3928
    const/4 v1, 0x0

    return-object v1

    .line 3924
    .end local v0    # "socket":Ljava/lang/Object;
    :catchall_12
    move-exception v1

    monitor-exit p0

    throw v1

    .line 3930
    .restart local v0    # "socket":Ljava/lang/Object;
    :cond_15
    check-cast v0, Lcom/android/nfc/DeviceHost$LlcpSocket;

    .end local v0    # "socket":Ljava/lang/Object;
    return-object v0
.end method

.method public static getConstConfig()Lcom/sonymobile/nfc/ConstConfig;
    .registers 1

    .prologue
    .line 558
    sget-object v0, Lcom/android/nfc/NfcService;->sConfig:Lcom/sonymobile/nfc/ConstConfig;

    return-object v0
.end method

.method private getDefaultRouteFromResource()I
    .registers 4

    .prologue
    .line 5140
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5141
    .local v0, "route":Ljava/lang/String;
    const-string/jumbo v1, "Host"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 5142
    iget v1, p0, Lcom/android/nfc/NfcService;->ROUTE_ID_HOST:I

    return v1

    .line 5143
    :cond_15
    const-string/jumbo v1, "UICC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 5144
    iget v1, p0, Lcom/android/nfc/NfcService;->ROUTE_ID_UICC:I

    return v1

    .line 5146
    :cond_21
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost;->getDefaultAidRoute()I

    move-result v1

    return v1
.end method

.method public static getInstance()Lcom/android/nfc/NfcService;
    .registers 1

    .prologue
    .line 554
    sget-object v0, Lcom/android/nfc/NfcService;->sService:Lcom/android/nfc/NfcService;

    return-object v0
.end method

.method private getNewInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16
    .param p1, "className"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 5387
    .local p2, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    .line 5390
    .local v8, "instance":Ljava/lang/Object;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 5391
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_12

    if-eqz p3, :cond_12

    .line 5392
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 5393
    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 5411
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v8    # "instance":Ljava/lang/Object;
    :goto_11
    return-object v8

    .line 5395
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "instance":Ljava/lang/Object;
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_15} :catch_bd
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_15} :catch_9c
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_15} :catch_7b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_15} :catch_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_15} :catch_3b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_15} :catch_17

    move-result-object v8

    goto :goto_11

    .line 5407
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_17
    move-exception v7

    .line 5408
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v9, "NfcService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "An error occurred: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 5405
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3b
    move-exception v4

    .line 5406
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v9, "NfcService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "An error occurred: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 5403
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5b
    move-exception v3

    .line 5404
    .local v3, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v9, "NfcService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "An error occurred: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .line 5401
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_7b
    move-exception v5

    .line 5402
    .local v5, "e":Ljava/lang/InstantiationException;
    const-string/jumbo v9, "NfcService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "An error occurred: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 5399
    .end local v5    # "e":Ljava/lang/InstantiationException;
    :catch_9c
    move-exception v2

    .line 5400
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v9, "NfcService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Not found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    .line 5397
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_bd
    move-exception v6

    .line 5398
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v9, "NfcService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Not found: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11
.end method

.method private getT3tIdentifierBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6
    .param p1, "systemCode"    # Ljava/lang/String;
    .param p2, "nfcId2"    # Ljava/lang/String;

    .prologue
    .line 4054
    const/16 v2, 0xa

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 4055
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {p1}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 4056
    invoke-static {p2}, Lcom/android/nfc/NfcService;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 4058
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    new-array v1, v2, [B

    .line 4059
    .local v1, "t3tIdBytes":[B
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4060
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 4061
    return-object v1
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .registers 8
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x10

    .line 3591
    if-eqz p0, :cond_b

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_c

    :cond_b
    return-object v4

    .line 3592
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 3593
    .local v2, "len":I
    rem-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_29

    .line 3594
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3595
    add-int/lit8 v2, v2, 0x1

    .line 3597
    :cond_29
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 3598
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    if-ge v1, v2, :cond_4d

    .line 3599
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    .line 3600
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    .line 3599
    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 3598
    add-int/lit8 v1, v1, 0x2

    goto :goto_2e

    .line 3602
    :cond_4d
    return-object v0
.end method

.method private initCameraAvailabilityCallback()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 5585
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_11

    .line 5586
    return-void

    .line 5590
    :cond_11
    :try_start_11
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    :goto_18
    if-ge v2, v4, :cond_44

    aget-object v1, v3, v2

    .line 5591
    .local v1, "id":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mAvailableCameras:Ljava/util/Map;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_11 .. :try_end_26} :catch_29

    .line 5590
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 5593
    .end local v1    # "id":Ljava/lang/String;
    :catch_29
    move-exception v0

    .line 5594
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    const-string/jumbo v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to get CameraIdList : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5584
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_44
    return-void
.end method

.method private isCameraInUse()Z
    .registers 4

    .prologue
    .line 5615
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mAvailableCameras:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "isAvailable$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 5616
    .local v0, "isAvailable":Z
    if-nez v0, :cond_a

    .line 5617
    const/4 v2, 0x1

    return v2

    .line 5620
    .end local v0    # "isAvailable":Z
    :cond_1e
    const/4 v2, 0x0

    return v2
.end method

.method private isInterruptedByCamera()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 5599
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 5600
    const-string/jumbo v2, "device_policy"

    .line 5599
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 5601
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 5602
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_20

    const-string/jumbo v1, "NfcService"

    const-string/jumbo v2, "Camera is disabled by DPM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5603
    :cond_20
    return v3

    .line 5606
    :cond_21
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->isCameraInUse()Z

    move-result v1

    if-nez v1, :cond_28

    .line 5607
    return v3

    .line 5610
    :cond_28
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_35

    const-string/jumbo v1, "NfcService"

    const-string/jumbo v2, "Camera is in use"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5611
    :cond_35
    const/4 v1, 0x1

    return v1
.end method

.method private isNfcPolicyDisabled(Z)Z
    .registers 8
    .param p1, "setNotification"    # Z

    .prologue
    .line 1712
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 1713
    const-string/jumbo v5, "somc_device_policy"

    .line 1712
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/enterprise/admin/SomcDevicePolicyManager;

    .line 1714
    .local v2, "sdpm":Lcom/sonymobile/enterprise/admin/SomcDevicePolicyManager;
    if-eqz v2, :cond_34

    const-string/jumbo v4, "somc_disable-nfc"

    invoke-virtual {v2, v4}, Lcom/sonymobile/enterprise/admin/SomcDevicePolicyManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1715
    if-eqz p1, :cond_32

    .line 1716
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 1717
    const v5, 0x1040149

    .line 1716
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1718
    .local v3, "title":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 1719
    const v5, 0x104014a

    .line 1718
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1720
    .local v1, "info":Ljava/lang/String;
    const v0, 0x10807c6

    .line 1721
    .local v0, "iconId":I
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v4, v3, v1, v0}, Lcom/sonymobile/enterprise/admin/PolicyNotification;->showPolicyNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1723
    .end local v0    # "iconId":I
    .end local v1    # "info":Ljava/lang/String;
    .end local v3    # "title":Ljava/lang/String;
    :cond_32
    const/4 v4, 0x1

    return v4

    .line 1725
    :cond_34
    const/4 v4, 0x0

    return v4
.end method

.method private isTagPresent()Z
    .registers 4

    .prologue
    .line 3777
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "object$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 3778
    .local v0, "object":Ljava/lang/Object;
    instance-of v2, v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v2, :cond_a

    .line 3779
    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .end local v0    # "object":Ljava/lang/Object;
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v2

    return v2

    .line 3782
    :cond_1f
    const/4 v2, 0x0

    return v2
.end method

.method private onSimConfigurationUpdated(Ljava/lang/String;)V
    .registers 9
    .param p1, "mccMnc"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 5151
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mSimMccMnc:Ljava/lang/String;

    if-eqz v2, :cond_7

    .line 5152
    return-void

    .line 5156
    :cond_7
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 5158
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 5159
    .local v0, "simState":I
    if-eq v0, v5, :cond_23

    .line 5161
    if-eqz p1, :cond_20

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 5162
    :cond_20
    return-void

    .line 5164
    :cond_21
    iput-object p1, p0, Lcom/android/nfc/NfcService;->mSimMccMnc:Ljava/lang/String;

    .line 5167
    :cond_23
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_4a

    const-string/jumbo v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SIM information ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mSimMccMnc:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5169
    :cond_4a
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost;->onSimConfigurationUpdated()V

    .line 5173
    iput-boolean v5, p0, Lcom/android/nfc/NfcService;->mIsSimStateDetermined:Z

    .line 5174
    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v2, :cond_8b

    .line 5176
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 5175
    iput-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsDynamicSwitchSupported:Z

    .line 5177
    invoke-static {}, Lcom/sonymobile/nfc/NfcCertDebugModeUtil;->isHceDebugMode()Z

    move-result v2

    if-nez v2, :cond_70

    invoke-static {}, Lcom/sonymobile/nfc/NfcCertDebugModeUtil;->isUiccDebugMode()Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 5178
    :cond_70
    iput-boolean v6, p0, Lcom/android/nfc/NfcService;->mIsDynamicSwitchSupported:Z

    .line 5179
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_7f

    const-string/jumbo v2, "NfcService"

    const-string/jumbo v3, "Disable dynamic switch on debug mode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5183
    :cond_7f
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->restoreCurrentDefaultRoute()V

    .line 5184
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->updateDefaultRouteIfNeeded()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 5185
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->scheduleRebuildingRoutingTable()V

    .line 5191
    :cond_8b
    :goto_8b
    iput-boolean v5, p0, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    .line 5192
    new-instance v2, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    invoke-direct {v2, p0}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v3, v6, [Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5150
    return-void

    .line 5187
    :cond_98
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/NfcService;->detectOverflow(I)Z

    goto :goto_8b
.end method

.method private declared-synchronized registerCameraAvailabilityCallback()V
    .registers 5

    .prologue
    monitor-enter p0

    .line 5568
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mAvailableCameras:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_29

    .line 5569
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mCameraCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    .line 5570
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5569
    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    .line 5571
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsCameraCallbackRegistered:Z

    .line 5572
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_29

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "CameraAvailabilityCallback has been registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    :cond_29
    monitor-exit p0

    .line 5567
    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private relocatePrefsIfNeeded()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 5499
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mExtraPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "relocated_prefs"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 5500
    return-void

    .line 5503
    :cond_e
    new-array v0, v8, [Ljava/lang/String;

    .line 5504
    const-string/jumbo v3, "show_url_dialog"

    aput-object v3, v0, v4

    .line 5507
    .local v0, "BOOL_EXTRA_PREF_KEYS":[Ljava/lang/String;
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    .line 5508
    const-string/jumbo v3, "PREF_MIFARE_DESFIRE_PROTO_ROUTE_ID"

    aput-object v3, v1, v4

    .line 5509
    const-string/jumbo v3, "PREF_SET_DEFAULT_ROUTE_ID"

    aput-object v3, v1, v8

    .line 5510
    const-string/jumbo v3, "PREF_MIFARE_CLT_ROUTE_ID"

    const/4 v5, 0x2

    aput-object v3, v1, v5

    .line 5513
    .local v1, "INT_NXP_PREF_KEYS":[Ljava/lang/String;
    array-length v5, v0

    move v3, v4

    :goto_2a
    if-ge v3, v5, :cond_49

    aget-object v2, v0, v3

    .line 5514
    .local v2, "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 5515
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mExtraPrefsEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v7, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-interface {v6, v2, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5516
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5513
    :cond_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    .line 5520
    .end local v2    # "key":Ljava/lang/String;
    :cond_49
    array-length v5, v1

    move v3, v4

    :goto_4b
    if-ge v3, v5, :cond_6a

    aget-object v2, v1, v3

    .line 5521
    .restart local v2    # "key":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v6, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_67

    .line 5522
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v7, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-interface {v6, v2, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5523
    iget-object v6, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5520
    :cond_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 5527
    .end local v2    # "key":Ljava/lang/String;
    :cond_6a
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mExtraPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "relocated_prefs"

    invoke-interface {v3, v4, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5528
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mExtraPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5529
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5530
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5498
    return-void
.end method

.method private removeAllSockets()V
    .registers 12

    .prologue
    .line 3960
    monitor-enter p0

    .line 3961
    :try_start_1
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mSocketMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 3962
    .local v3, "objectValues":[Ljava/lang/Object;
    array-length v7, v3

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    .line 3963
    .local v4, "objectsToClose":[Ljava/lang/Object;
    iget-object v7, p0, Lcom/android/nfc/NfcService;->mSocketMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_2a

    monitor-exit p0

    .line 3965
    const/4 v7, 0x0

    array-length v8, v4

    :goto_18
    if-ge v7, v8, :cond_4e

    aget-object v2, v4, v7

    .line 3967
    .local v2, "o":Ljava/lang/Object;
    :try_start_1c
    instance-of v9, v2, Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v9, :cond_2d

    .line 3968
    move-object v0, v2

    check-cast v0, Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-object v5, v0

    .line 3969
    .local v5, "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    invoke-interface {v5}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_27} :catch_39

    .line 3965
    .end local v5    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :goto_27
    add-int/lit8 v7, v7, 0x1

    goto :goto_18

    .line 3960
    .end local v2    # "o":Ljava/lang/Object;
    .end local v3    # "objectValues":[Ljava/lang/Object;
    .end local v4    # "objectsToClose":[Ljava/lang/Object;
    :catchall_2a
    move-exception v7

    monitor-exit p0

    throw v7

    .line 3970
    .restart local v2    # "o":Ljava/lang/Object;
    .restart local v3    # "objectValues":[Ljava/lang/Object;
    .restart local v4    # "objectsToClose":[Ljava/lang/Object;
    :cond_2d
    :try_start_2d
    instance-of v9, v2, Lcom/android/nfc/DeviceHost$LlcpSocket;

    if-eqz v9, :cond_44

    .line 3971
    move-object v0, v2

    check-cast v0, Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object v6, v0

    .line 3972
    .local v6, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_38} :catch_39

    goto :goto_27

    .line 3976
    .end local v6    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :catch_39
    move-exception v1

    .line 3977
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v9, "NfcService"

    const-string/jumbo v10, "socket close failed"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 3974
    .end local v1    # "e":Ljava/io/IOException;
    :cond_44
    :try_start_44
    const-string/jumbo v9, "NfcService"

    const-string/jumbo v10, "Not a llcp socket or server socket"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4d} :catch_39

    goto :goto_27

    .line 3958
    .end local v2    # "o":Ljava/lang/Object;
    :cond_4e
    return-void
.end method

.method private removeSocket(I)V
    .registers 4
    .param p1, "handle"    # I

    .prologue
    .line 3953
    monitor-enter p0

    .line 3954
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSocketMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    .line 3952
    return-void

    .line 3953
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized resolveDynamicDefaultRoute()I
    .registers 6

    .prologue
    monitor-enter p0

    .line 5093
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mExtraPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "has_overflown_once"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 5094
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultRouteLoc()I

    move-result v0

    .line 5099
    .local v0, "curDefaultRoute":I
    :goto_11
    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsOverflowDetected:Z
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_72

    if-nez v2, :cond_1c

    monitor-exit p0

    .line 5100
    return v0

    .line 5096
    .end local v0    # "curDefaultRoute":I
    :cond_17
    :try_start_17
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->getDefaultRouteFromResource()I

    move-result v0

    .restart local v0    # "curDefaultRoute":I
    goto :goto_11

    .line 5103
    :cond_1c
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mExtraPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v3, "has_overflown_once"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5104
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mExtraPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5106
    iget-boolean v2, p0, Lcom/android/nfc/NfcService;->mIsOverflowDetectedOnOtherNfcee:Z

    if-eqz v2, :cond_60

    .line 5107
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_3b

    const-string/jumbo v2, "NfcService"

    const-string/jumbo v3, "Overflow was detected on both EEs"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5111
    :cond_3b
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isDefaultPaymentOverflow(I)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 5113
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultPaymentService(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v1

    .line 5114
    .local v1, "defaultService":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v1, :cond_5b

    .line 5115
    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v2

    if-eqz v2, :cond_5d

    iget v0, p0, Lcom/android/nfc/NfcService;->ROUTE_ID_HOST:I
    :try_end_5b
    .catchall {:try_start_17 .. :try_end_5b} :catchall_72

    .end local v1    # "defaultService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_5b
    :goto_5b
    monitor-exit p0

    .line 5122
    return v0

    .line 5115
    .restart local v1    # "defaultService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_5d
    :try_start_5d
    iget v0, p0, Lcom/android/nfc/NfcService;->ROUTE_ID_UICC:I

    goto :goto_5b

    .line 5119
    .end local v1    # "defaultService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_60
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_6d

    const-string/jumbo v2, "NfcService"

    const-string/jumbo v3, "Overflow was detected on the one of EEs."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5120
    :cond_6d
    invoke-direct {p0, v0}, Lcom/android/nfc/NfcService;->convertToAnotherRoute(I)I
    :try_end_70
    .catchall {:try_start_5d .. :try_end_70} :catchall_72

    move-result v0

    goto :goto_5b

    .end local v0    # "curDefaultRoute":I
    :catchall_72
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private restoreCurrentDefaultRoute()V
    .registers 8

    .prologue
    .line 5058
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultRouteLoc()I

    move-result v0

    .line 5059
    .local v0, "routeFromPref":I
    const/4 v1, 0x0

    .line 5060
    .local v1, "routeFromSettings":I
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "nfc_default_route"

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5061
    .local v2, "routeString":Ljava/lang/String;
    if-eqz v2, :cond_33

    const-string/jumbo v3, "UICC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 5062
    iget v1, p0, Lcom/android/nfc/NfcService;->ROUTE_ID_UICC:I

    .line 5069
    :goto_1b
    if-eq v0, v1, :cond_32

    .line 5070
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "PREF_SET_DEFAULT_ROUTE_ID"

    .line 5071
    shl-int/lit8 v5, v1, 0x3

    iget v6, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_ON:I

    or-int/2addr v5, v6

    iget v6, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_OFF:I

    or-int/2addr v5, v6

    .line 5070
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5072
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5057
    :cond_32
    return-void

    .line 5063
    :cond_33
    if-eqz v2, :cond_41

    const-string/jumbo v3, "Host"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 5064
    iget v1, p0, Lcom/android/nfc/NfcService;->ROUTE_ID_HOST:I

    goto :goto_1b

    .line 5066
    :cond_41
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->getDefaultRouteFromResource()I

    move-result v1

    goto :goto_1b
.end method

.method private scheduleRebuildingRoutingTable()V
    .registers 3

    .prologue
    .line 5126
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    new-instance v1, Lcom/android/nfc/NfcService$8;

    invoke-direct {v1, p0}, Lcom/android/nfc/NfcService$8;-><init>(Lcom/android/nfc/NfcService;)V

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->post(Ljava/lang/Runnable;)Z

    .line 5125
    return-void
.end method

.method private sendLlcpLinkEvent(Ljava/util/HashMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3983
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/app/PendingIntent;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3984
    return-void

    .line 3987
    :cond_7
    monitor-enter p0

    .line 3988
    :try_start_8
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    .line 3989
    .local v4, "objectValues":[Ljava/lang/Object;
    array-length v6, v4

    invoke-static {v4, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_26

    move-result-object v5

    .local v5, "objectsToSend":[Ljava/lang/Object;
    monitor-exit p0

    .line 3991
    const/4 v6, 0x0

    array-length v7, v5

    :goto_18
    if-ge v6, v7, :cond_34

    aget-object v3, v5, v6

    .line 3993
    .local v3, "o":Ljava/lang/Object;
    :try_start_1c
    move-object v0, v3

    check-cast v0, Landroid/app/PendingIntent;

    move-object v2, v0

    .line 3994
    .local v2, "intent":Landroid/app/PendingIntent;
    invoke-virtual {v2}, Landroid/app/PendingIntent;->send()V
    :try_end_23
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1c .. :try_end_23} :catch_29

    .line 3991
    .end local v2    # "intent":Landroid/app/PendingIntent;
    :goto_23
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    .line 3987
    .end local v3    # "o":Ljava/lang/Object;
    .end local v4    # "objectValues":[Ljava/lang/Object;
    .end local v5    # "objectsToSend":[Ljava/lang/Object;
    :catchall_26
    move-exception v6

    monitor-exit p0

    throw v6

    .line 3995
    .restart local v3    # "o":Ljava/lang/Object;
    .restart local v4    # "objectValues":[Ljava/lang/Object;
    .restart local v5    # "objectsToSend":[Ljava/lang/Object;
    :catch_29
    move-exception v1

    .line 3996
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    const-string/jumbo v8, "NfcService"

    const-string/jumbo v9, "pending intent canceled"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 3982
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    .end local v3    # "o":Ljava/lang/Object;
    :cond_34
    return-void
.end method

.method private setNfcWifiTetheringDisabled(I)V
    .registers 10
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 5418
    :try_start_2
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "android"

    .line 5419
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 5418
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_14} :catch_2e

    move-result-object v1

    .line 5426
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5425
    invoke-virtual {v1, v2, v7, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 5431
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-class v4, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringWidgetProvider;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5430
    invoke-virtual {v1, v2, v7, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 5414
    return-void

    .line 5420
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    :catch_2e
    move-exception v0

    .line 5421
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "NfcService"

    const-string/jumbo v3, "Could not create other user package context"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5422
    return-void
.end method

.method private setupDiscoveryManager()Lcom/android/nfc/DiscoveryManager;
    .registers 22

    .prologue
    .line 5273
    const/4 v11, 0x0

    .line 5274
    .local v11, "manager":Lcom/android/nfc/DiscoveryManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f09001f

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 5275
    .local v4, "className":Ljava/lang/String;
    if-eqz v4, :cond_1b

    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_20

    .line 5283
    .end local v11    # "manager":Lcom/android/nfc/DiscoveryManager;
    :cond_1b
    :goto_1b
    if-nez v11, :cond_75

    .line 5284
    const/16 v17, 0x0

    return-object v17

    .line 5277
    .restart local v11    # "manager":Lcom/android/nfc/DiscoveryManager;
    :cond_20
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v17, v0

    const-class v18, Lcom/android/nfc/NfcService;

    const/16 v19, 0x0

    aput-object v18, v17, v19

    const-class v18, Lcom/android/nfc/DeviceHost;

    const/16 v19, 0x1

    aput-object v18, v17, v19

    .line 5278
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p0, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aput-object v19, v18, v20

    .line 5276
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Lcom/android/nfc/NfcService;->getNewInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "manager":Lcom/android/nfc/DiscoveryManager;
    check-cast v11, Lcom/android/nfc/DiscoveryManager;

    .line 5279
    .local v11, "manager":Lcom/android/nfc/DiscoveryManager;
    if-nez v11, :cond_1b

    .line 5280
    const-string/jumbo v17, "NfcService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Couldn\'t instantiate "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 5287
    .end local v11    # "manager":Lcom/android/nfc/DiscoveryManager;
    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mProperty:Lcom/android/nfc/DeviceHost$NfcProperty;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/nfc/DeviceHost$NfcProperty;->getNfcConfig()Lcom/sonymobile/nfc/INfcConfig$Stub;

    move-result-object v5

    .line 5288
    .local v5, "config":Lcom/sonymobile/nfc/INfcConfig$Stub;
    const/4 v14, 0x7

    .line 5291
    .local v14, "polling":I
    const/4 v13, 0x1

    .line 5292
    .local v13, "p2p_listen":I
    const/4 v10, 0x7

    .line 5296
    .local v10, "listen":I
    :try_start_82
    const-string/jumbo v17, "polling"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sonymobile/nfc/INfcConfig$Stub;->getDefaultValue(Ljava/lang/String;)I

    move-result v14

    .line 5297
    const-string/jumbo v17, "p2p_listen"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sonymobile/nfc/INfcConfig$Stub;->getDefaultValue(Ljava/lang/String;)I

    move-result v13

    .line 5298
    const-string/jumbo v17, "uicc_listen"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/sonymobile/nfc/INfcConfig$Stub;->getDefaultValue(Ljava/lang/String;)I
    :try_end_9c
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_9c} :catch_160

    move-result v10

    .line 5303
    :goto_9d
    const/16 v15, 0xa

    .line 5304
    .local v15, "seMask":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a9

    .line 5305
    const/16 v15, 0xb

    .line 5309
    :cond_a9
    const/16 v17, 0x0

    .line 5308
    move/from16 v0, v17

    invoke-static {v0, v14, v13, v10, v15}, Lcom/android/nfc/DiscoveryManager;->createOverridingParams(IIIII)Lcom/android/nfc/DiscoveryManager$Params;

    move-result-object v12

    .line 5311
    .local v12, "p":Lcom/android/nfc/DiscoveryManager$Params;
    const/16 v17, 0x2

    .line 5312
    const/16 v18, 0x3

    .line 5314
    const/16 v19, 0x3

    .line 5315
    const/16 v20, 0x0

    .line 5311
    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/nfc/DiscoveryManager$Params;->addTechRouting(IIII)V

    .line 5316
    const/16 v17, 0x8

    .line 5317
    const/16 v18, 0x4

    .line 5318
    const/16 v19, 0x4

    const/16 v20, 0x0

    .line 5316
    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/nfc/DiscoveryManager$Params;->addTechRouting(IIII)V

    .line 5321
    const/4 v6, 0x0

    .line 5322
    .local v6, "dhProtocol":I
    const/16 v16, 0x0

    .line 5323
    .local v16, "simProtocol":I
    const/4 v8, 0x0

    .line 5324
    .local v8, "eseProtocol":I
    const/4 v9, 0x0

    .line 5326
    .local v9, "isSoftbankVariant":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    .line 5327
    const v18, 0x7f090021

    .line 5326
    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 5327
    const-string/jumbo v18, "softbank"

    .line 5326
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 5329
    .local v9, "isSoftbankVariant":Z
    const/16 v6, 0x10

    .line 5330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/nfc/DeviceHost;->getDefaultAidRoute()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_16c

    .line 5331
    const/16 v16, 0x8

    .line 5335
    :goto_10a
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/NfcService;->hasServiceExtension()Z

    move-result v17

    if-eqz v17, :cond_113

    .line 5337
    or-int/lit8 v6, v6, 0x4

    .line 5338
    const/4 v8, 0x4

    .line 5340
    :cond_113
    if-eqz v6, :cond_12f

    .line 5343
    if-eqz v9, :cond_16f

    const/16 v17, 0x8

    .line 5342
    :goto_119
    or-int/lit8 v17, v17, 0x10

    move/from16 v0, v17

    not-int v0, v0

    move/from16 v17, v0

    and-int v17, v17, v6

    .line 5341
    const/16 v18, 0x4

    .line 5344
    const/16 v19, 0x0

    .line 5341
    move/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v12, v0, v6, v1, v2}, Lcom/android/nfc/DiscoveryManager$Params;->addProtoRouting(IIII)V

    .line 5345
    :cond_12f
    if-eqz v16, :cond_140

    .line 5346
    const/16 v17, 0x2

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v16

    move/from16 v3, v18

    invoke-virtual {v12, v0, v1, v2, v3}, Lcom/android/nfc/DiscoveryManager$Params;->addProtoRouting(IIII)V

    .line 5347
    :cond_140
    if-eqz v8, :cond_14d

    .line 5348
    const/16 v17, 0x8

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v12, v0, v8, v8, v1}, Lcom/android/nfc/DiscoveryManager$Params;->addProtoRouting(IIII)V

    .line 5350
    :cond_14d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/nfc/DeviceHost;->getDefaultAidRoute()I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/nfc/DiscoveryManager;->notifyDefaultRouteChanged(I)V

    .line 5351
    invoke-virtual {v11, v12}, Lcom/android/nfc/DiscoveryManager;->pushDiscovery(Lcom/android/nfc/DiscoveryManager$Params;)I

    .line 5353
    return-object v11

    .line 5299
    .end local v6    # "dhProtocol":I
    .end local v8    # "eseProtocol":I
    .end local v9    # "isSoftbankVariant":Z
    .end local v12    # "p":Lcom/android/nfc/DiscoveryManager$Params;
    .end local v15    # "seMask":I
    .end local v16    # "simProtocol":I
    :catch_160
    move-exception v7

    .line 5300
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v17, "NfcService"

    const-string/jumbo v18, "Couldn\'t retrieve default values."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9d

    .line 5333
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v6    # "dhProtocol":I
    .restart local v8    # "eseProtocol":I
    .restart local v9    # "isSoftbankVariant":Z
    .restart local v12    # "p":Lcom/android/nfc/DiscoveryManager$Params;
    .restart local v15    # "seMask":I
    .restart local v16    # "simProtocol":I
    :cond_16c
    const/16 v6, 0x18

    goto :goto_10a

    .line 5343
    :cond_16f
    const/16 v17, 0x0

    goto :goto_119
.end method

.method private setupHceExtension()Lcom/android/nfc/HceExtension;
    .registers 9

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5372
    const/4 v1, 0x0

    .line 5373
    .local v1, "extension":Lcom/android/nfc/HceExtension;
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v3, 0x7f090020

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5374
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_19

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 5383
    .end local v1    # "extension":Lcom/android/nfc/HceExtension;
    :cond_19
    :goto_19
    return-object v1

    .line 5376
    .restart local v1    # "extension":Lcom/android/nfc/HceExtension;
    :cond_1a
    new-array v2, v4, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v5

    const-class v3, Lcom/android/nfc/DeviceHost;

    aput-object v3, v2, v6

    const-class v3, Lcom/android/nfc/cardemulation/CardEmulationManager;

    aput-object v3, v2, v7

    .line 5377
    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    aput-object v4, v3, v7

    .line 5375
    invoke-direct {p0, v0, v2, v3}, Lcom/android/nfc/NfcService;->getNewInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "extension":Lcom/android/nfc/HceExtension;
    check-cast v1, Lcom/android/nfc/HceExtension;

    .line 5378
    .local v1, "extension":Lcom/android/nfc/HceExtension;
    if-nez v1, :cond_19

    .line 5379
    const-string/jumbo v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t instantiate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19
.end method

.method private setupServiceExtension()Lcom/android/nfc/ServiceExtension;
    .registers 8

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 5357
    const/4 v1, 0x0

    .line 5358
    .local v1, "extension":Lcom/android/nfc/ServiceExtension;
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v3, 0x7f090018

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5359
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_18

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 5368
    .end local v1    # "extension":Lcom/android/nfc/ServiceExtension;
    :cond_18
    :goto_18
    return-object v1

    .line 5361
    .restart local v1    # "extension":Lcom/android/nfc/ServiceExtension;
    :cond_19
    new-array v2, v4, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v2, v5

    const-class v3, Lcom/android/nfc/DeviceHost;

    aput-object v3, v2, v6

    .line 5362
    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    aput-object v4, v3, v6

    .line 5360
    invoke-direct {p0, v0, v2, v3}, Lcom/android/nfc/NfcService;->getNewInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "extension":Lcom/android/nfc/ServiceExtension;
    check-cast v1, Lcom/android/nfc/ServiceExtension;

    .line 5363
    .local v1, "extension":Lcom/android/nfc/ServiceExtension;
    if-nez v1, :cond_18

    .line 5364
    const-string/jumbo v2, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t instantiate "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18
.end method

.method static stateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .prologue
    .line 5199
    packed-switch p0, :pswitch_data_18

    .line 5209
    const-string/jumbo v0, "<error>"

    return-object v0

    .line 5201
    :pswitch_7
    const-string/jumbo v0, "off"

    return-object v0

    .line 5203
    :pswitch_b
    const-string/jumbo v0, "turning on"

    return-object v0

    .line 5205
    :pswitch_f
    const-string/jumbo v0, "on"

    return-object v0

    .line 5207
    :pswitch_13
    const-string/jumbo v0, "turning off"

    return-object v0

    .line 5199
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method

.method private tryUnlockUiccCardEmulation(I)V
    .registers 6
    .param p1, "screenState"    # I

    .prologue
    const/4 v3, 0x1

    .line 5441
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsOffHostCardEmulationUnlocked:Z

    if-eqz v1, :cond_6

    .line 5442
    return-void

    .line 5445
    :cond_6
    const/4 v1, 0x3

    if-eq p1, v1, :cond_a

    .line 5446
    return-void

    .line 5449
    :cond_a
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v1

    if-eqz v1, :cond_11

    .line 5450
    return-void

    .line 5454
    :cond_11
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 5455
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_24

    .line 5456
    return-void

    .line 5459
    :cond_24
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_31

    const-string/jumbo v1, "NfcService"

    const-string/jumbo v2, "The device has been unlocked by owner"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5462
    :cond_31
    iput-boolean v3, p0, Lcom/android/nfc/NfcService;->mIsOffHostCardEmulationUnlocked:Z

    .line 5463
    iput-boolean v3, p0, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    .line 5464
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v1, :cond_48

    .line 5465
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsDynamicSwitchSupported:Z

    if-eqz v1, :cond_3f

    .line 5466
    iput-boolean v3, p0, Lcom/android/nfc/NfcService;->mForceUpdateRoutingTable:Z

    .line 5468
    :cond_3f
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onUserSwitched(I)V

    .line 5440
    :cond_48
    return-void
.end method

.method private declared-synchronized unregisterCameraAvailabilityCallback()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 5577
    :try_start_1
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsCameraCallbackRegistered:Z

    if-eqz v0, :cond_1c

    .line 5578
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mCameraCallback:Landroid/hardware/camera2/CameraManager$AvailabilityCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->unregisterAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;)V

    .line 5579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsCameraCallbackRegistered:Z

    .line 5580
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_1c

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "CameraAvailabilityCallback has been unregistered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    :cond_1c
    monitor-exit p0

    .line 5576
    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateDefaultRouteForTemporary(Z)V
    .registers 7
    .param p1, "isOnHost"    # Z

    .prologue
    .line 5078
    if-eqz p1, :cond_27

    iget v0, p0, Lcom/android/nfc/NfcService;->ROUTE_ID_HOST:I

    .line 5079
    .local v0, "temporaryRoute":I
    :goto_4
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_11

    const-string/jumbo v1, "NfcService"

    const-string/jumbo v2, "update default route temporary by foreground service changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5081
    :cond_11
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "PREF_SET_DEFAULT_ROUTE_ID"

    .line 5082
    shl-int/lit8 v3, v0, 0x3

    iget v4, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_ON:I

    or-int/2addr v3, v4

    iget v4, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_OFF:I

    or-int/2addr v3, v4

    .line 5081
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5083
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5077
    return-void

    .line 5078
    .end local v0    # "temporaryRoute":I
    :cond_27
    iget v0, p0, Lcom/android/nfc/NfcService;->ROUTE_ID_UICC:I

    .restart local v0    # "temporaryRoute":I
    goto :goto_4
.end method

.method private updateDefaultRouteIfNeeded()Z
    .registers 8

    .prologue
    .line 5025
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultRouteLoc()I

    move-result v1

    .line 5026
    .local v1, "preDefaultRoute":I
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->getDefaultRouteFromResource()I

    move-result v0

    .line 5028
    .local v0, "curDefaultRoute":I
    iget-boolean v3, p0, Lcom/android/nfc/NfcService;->mIsDynamicSwitchSupported:Z

    if-eqz v3, :cond_10

    .line 5029
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->resolveDynamicDefaultRoute()I

    move-result v0

    .line 5033
    :cond_10
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "PREF_SET_DEFAULT_ROUTE_ID"

    .line 5034
    shl-int/lit8 v5, v0, 0x3

    iget v6, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_ON:I

    or-int/2addr v5, v6

    iget v6, p0, Lcom/android/nfc/NfcService;->ROUTE_SWITCH_OFF:I

    or-int/2addr v5, v6

    .line 5033
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5035
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNxpPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5037
    iget v3, p0, Lcom/android/nfc/NfcService;->ROUTE_ID_UICC:I

    if-ne v0, v3, :cond_56

    const-string/jumbo v2, "UICC"

    .line 5038
    .local v2, "routeAsString":Ljava/lang/String;
    :goto_2c
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "nfc_default_route"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 5040
    if-eq v1, v0, :cond_5a

    .line 5041
    sget-boolean v3, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v3, :cond_54

    const-string/jumbo v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update default route to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5042
    :cond_54
    const/4 v3, 0x1

    return v3

    .line 5037
    .end local v2    # "routeAsString":Ljava/lang/String;
    :cond_56
    const-string/jumbo v2, "Host"

    .restart local v2    # "routeAsString":Ljava/lang/String;
    goto :goto_2c

    .line 5044
    :cond_5a
    const/4 v3, 0x0

    return v3
.end method

.method private updateSimAndScreenState(Ljava/lang/String;)V
    .registers 7
    .param p1, "mccMnc"    # Ljava/lang/String;

    .prologue
    .line 4766
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mScreenStateHelper:Lcom/android/nfc/ScreenStateHelper;

    invoke-virtual {v1}, Lcom/android/nfc/ScreenStateHelper;->checkScreenState()I

    move-result v0

    .line 4767
    .local v0, "screenState":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_10

    .line 4768
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isInputSimPinCodeDone()Z

    move-result v1

    if-nez v1, :cond_10

    .line 4769
    const/4 v0, 0x2

    .line 4772
    :cond_10
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->createTransactionDispatcherIfNeeded()V

    .line 4773
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/nfc/NfcService;->updateAidMatchingPlatform(Landroid/content/Context;)V

    .line 4774
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService;->onSimConfigurationUpdated(Ljava/lang/String;)V

    .line 4775
    invoke-direct {p0, v0}, Lcom/android/nfc/NfcService;->tryUnlockUiccCardEmulation(I)V

    .line 4776
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_3c

    const-string/jumbo v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Screen State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4777
    :cond_3c
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v1, :cond_45

    .line 4778
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v1, v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setScreenState(I)V

    .line 4780
    :cond_45
    monitor-enter p0

    .line 4781
    :try_start_46
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDiscoveryManager:Lcom/android/nfc/DiscoveryManager;

    if-eqz v1, :cond_4f

    .line 4782
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDiscoveryManager:Lcom/android/nfc/DiscoveryManager;

    invoke-virtual {v1}, Lcom/android/nfc/DiscoveryManager;->notifySimStateChanged()V
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_63

    :cond_4f
    monitor-exit p0

    .line 4785
    new-instance v1, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    invoke-direct {v1, p0}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4765
    return-void

    .line 4780
    :catchall_63
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public GetDefaultRouteLoc()I
    .registers 5

    .prologue
    .line 4087
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mNxpPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "PREF_SET_DEFAULT_ROUTE_ID"

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->GetDefaultRouteEntry()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    shr-int/lit8 v0, v1, 0x3

    .line 4088
    .local v0, "defaultRouteLoc":I
    const-string/jumbo v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "GetDefaultRouteLoc  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4089
    return v0
.end method

.method _nfcEeClose(ILandroid/os/IBinder;)V
    .registers 5
    .param p1, "callingPid"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3284
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mProperty:Lcom/android/nfc/DeviceHost$NfcProperty;

    const-string/jumbo v1, "se.smx.enable"

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$NfcProperty;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3283
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 3285
    return-void

    .line 3288
    :cond_10
    monitor-enter p0

    .line 3289
    :try_start_11
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v0

    if-nez v0, :cond_23

    .line 3290
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "NFC adapter is disabled"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_20

    .line 3288
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3292
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    if-nez v0, :cond_30

    .line 3293
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "NFC EE closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3295
    :cond_30
    const/4 v0, -0x1

    if-eq p1, v0, :cond_42

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    iget v0, v0, Lcom/android/nfc/NfcService$OpenSecureElement;->pid:I

    if-eq p1, v0, :cond_42

    .line 3296
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Wrong PID"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3298
    :cond_42
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    iget-object v0, v0, Lcom/android/nfc/NfcService$OpenSecureElement;->binder:Landroid/os/IBinder;

    if-eq v0, p2, :cond_51

    .line 3299
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "Wrong binder handle"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3302
    :cond_51
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3303
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->resetTimeouts()V

    .line 3304
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    iget v0, v0, Lcom/android/nfc/NfcService$OpenSecureElement;->handle:I

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->doDisconnect(I)V

    .line 3305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    .line 3306
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->applyRouting(Z)V
    :try_end_6a
    .catchall {:try_start_23 .. :try_end_6a} :catchall_20

    monitor-exit p0

    .line 3278
    return-void
.end method

.method applyRouting(Z)V
    .registers 10
    .param p1, "force"    # Z

    .prologue
    const/4 v3, 0x0

    .line 3615
    sget-boolean v4, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v4, :cond_1f

    const-string/jumbo v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "applyRouting start: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    :cond_1f
    monitor-enter p0

    .line 3617
    :try_start_20
    iget-boolean v4, p0, Lcom/android/nfc/NfcService;->IS_NFC_LOCK_SUPPORTED:Z

    if-eqz v4, :cond_28

    iget-boolean v4, p0, Lcom/android/nfc/NfcService;->mIsInitialized:Z

    if-eqz v4, :cond_38

    .line 3622
    :cond_28
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mServiceExtension:Lcom/android/nfc/ServiceExtension;

    if-nez v4, :cond_59

    .line 3623
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v4

    if-eqz v4, :cond_36

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;
    :try_end_34
    .catchall {:try_start_20 .. :try_end_34} :catchall_c1

    if-eqz v4, :cond_59

    :cond_36
    monitor-exit p0

    .line 3625
    return-void

    .line 3618
    :cond_38
    :try_start_38
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v5, 0x7f09001c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "sony.nci"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 3617
    if-eqz v4, :cond_28

    .line 3619
    sget-boolean v3, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v3, :cond_57

    const-string/jumbo v3, "NfcService"

    const-string/jumbo v4, "enableInternal does not finish, ignored"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catchall {:try_start_38 .. :try_end_57} :catchall_c1

    :cond_57
    monitor-exit p0

    .line 3620
    return-void

    .line 3629
    :cond_59
    :try_start_59
    iget-boolean v4, p0, Lcom/android/nfc/NfcService;->mIsNfcLocked:Z

    if-eqz v4, :cond_68

    .line 3630
    const-string/jumbo v3, "NfcService"

    const-string/jumbo v4, "denying applyRouting() request (nfc lock)"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_59 .. :try_end_66} :catchall_c1

    monitor-exit p0

    .line 3631
    return-void

    .line 3634
    :cond_68
    :try_start_68
    new-instance v2, Lcom/android/nfc/NfcService$WatchDogThread;

    const-string/jumbo v4, "applyRouting"

    const/16 v5, 0x2710

    invoke-direct {v2, p0, v4, v5}, Lcom/android/nfc/NfcService$WatchDogThread;-><init>(Lcom/android/nfc/NfcService;Ljava/lang/String;I)V

    .line 3635
    .local v2, "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    iget-boolean v4, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v4, :cond_8e

    .line 3636
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContentResolver:Landroid/content/ContentResolver;

    .line 3637
    const-string/jumbo v5, "device_provisioned"

    const/4 v6, 0x0

    .line 3636
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_83

    const/4 v3, 0x1

    :cond_83
    iput-boolean v3, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    .line 3638
    iget-boolean v3, p0, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-nez v3, :cond_8e

    .line 3641
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v3}, Lcom/android/nfc/NfcDispatcher;->disableProvisioningMode()V

    .line 3646
    :cond_8e
    iget v3, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_c4

    invoke-direct {p0}, Lcom/android/nfc/NfcService;->isTagPresent()Z

    move-result v3

    if-eqz v3, :cond_c4

    .line 3647
    const-string/jumbo v3, "NfcService"

    const-string/jumbo v4, "Not updating discovery parameters, tag connected."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    iget-object v4, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v5, 0x1c

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 3649
    const-wide/16 v6, 0x1388

    .line 3648
    invoke-virtual {v3, v4, v6, v7}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_b1
    .catchall {:try_start_68 .. :try_end_b1} :catchall_c1

    .line 3651
    :try_start_b1
    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 3652
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->setScreenState()V
    :try_end_b7
    .catchall {:try_start_b1 .. :try_end_b7} :catchall_bc

    .line 3654
    :try_start_b7
    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_c1

    monitor-exit p0

    .line 3656
    return-void

    .line 3653
    :catchall_bc
    move-exception v3

    .line 3654
    :try_start_bd
    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 3653
    throw v3
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_c1

    .line 3616
    .end local v2    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :catchall_c1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 3660
    .restart local v2    # "watchDog":Lcom/android/nfc/NfcService$WatchDogThread;
    :cond_c4
    :try_start_c4
    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->start()V

    .line 3661
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->setScreenState()V

    .line 3663
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mDiscoveryManager:Lcom/android/nfc/DiscoveryManager;

    if-eqz v3, :cond_106

    .line 3664
    sget-boolean v3, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v3, :cond_ec

    const-string/jumbo v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "DiscoveryManager is enabled: applyRouting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3665
    :cond_ec
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mDiscoveryManager:Lcom/android/nfc/DiscoveryManager;

    invoke-virtual {v3, p1}, Lcom/android/nfc/DiscoveryManager;->commitDiscovery(Z)I

    move-result v3

    iput v3, p0, Lcom/android/nfc/NfcService;->mLastCommitDiscoveryResult:I

    .line 3666
    sget-boolean v3, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v3, :cond_101

    const-string/jumbo v3, "NfcService"

    const-string/jumbo v4, "applyRouting end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_101
    .catchall {:try_start_c4 .. :try_end_101} :catchall_145

    .line 3684
    :cond_101
    :try_start_101
    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V
    :try_end_104
    .catchall {:try_start_101 .. :try_end_104} :catchall_c1

    monitor-exit p0

    .line 3667
    return-void

    .line 3671
    :cond_106
    :try_start_106
    iget v3, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-direct {p0, v3}, Lcom/android/nfc/NfcService;->computeDiscoveryParameters(I)Lcom/android/nfc/NfcDiscoveryParameters;

    move-result-object v0

    .line 3672
    .local v0, "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    if-nez p1, :cond_131

    iget-object v3, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcDiscoveryParameters;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_131

    .line 3681
    const-string/jumbo v3, "NfcService"

    const-string/jumbo v4, "Discovery configuration equal, not updating."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catchall {:try_start_106 .. :try_end_11f} :catchall_145

    .line 3684
    :goto_11f
    :try_start_11f
    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V
    :try_end_122
    .catchall {:try_start_11f .. :try_end_122} :catchall_c1

    monitor-exit p0

    .line 3687
    sget-boolean v3, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v3, :cond_130

    const-string/jumbo v3, "NfcService"

    const-string/jumbo v4, "applyRouting end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    :cond_130
    return-void

    .line 3673
    :cond_131
    :try_start_131
    invoke-virtual {v0}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v3

    if-eqz v3, :cond_14a

    .line 3674
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {v3}, Lcom/android/nfc/NfcDiscoveryParameters;->shouldEnableDiscovery()Z

    move-result v1

    .line 3675
    .local v1, "shouldRestart":Z
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v3, v0, v1}, Lcom/android/nfc/DeviceHost;->enableDiscovery(Lcom/android/nfc/NfcDiscoveryParameters;Z)V

    .line 3679
    .end local v1    # "shouldRestart":Z
    :goto_142
    iput-object v0, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;
    :try_end_144
    .catchall {:try_start_131 .. :try_end_144} :catchall_145

    goto :goto_11f

    .line 3683
    .end local v0    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    :catchall_145
    move-exception v3

    .line 3684
    :try_start_146
    invoke-virtual {v2}, Lcom/android/nfc/NfcService$WatchDogThread;->cancel()V

    .line 3683
    throw v3
    :try_end_14a
    .catchall {:try_start_146 .. :try_end_14a} :catchall_c1

    .line 3677
    .restart local v0    # "newParams":Lcom/android/nfc/NfcDiscoveryParameters;
    :cond_14a
    :try_start_14a
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost;->disableDiscovery()V
    :try_end_14f
    .catchall {:try_start_14a .. :try_end_14f} :catchall_145

    goto :goto_142
.end method

.method public applyRoutingNow()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 761
    sget-boolean v3, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v3, :cond_e

    const-string/jumbo v3, "NfcService"

    const-string/jumbo v4, "applyRoutingNow() start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_e
    new-instance v0, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    .line 763
    .local v0, "applyRoutingTask":Lcom/android/nfc/NfcService$ApplyRoutingTask;
    new-array v3, v5, [Ljava/lang/Integer;

    invoke-virtual {v0, v3}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 765
    :try_start_18
    invoke-virtual {v0}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->get()Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_18 .. :try_end_1b} :catch_34
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1b} :catch_29

    .line 771
    :goto_1b
    sget-boolean v3, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v3, :cond_28

    const-string/jumbo v3, "NfcService"

    const-string/jumbo v4, "applyRoutingNow() end"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_28
    return v5

    .line 768
    :catch_29
    move-exception v1

    .line 769
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "NfcService"

    const-string/jumbo v4, "ApplyRoutingTask has been interrupted"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 766
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_34
    move-exception v2

    .line 767
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    const-string/jumbo v3, "NfcService"

    const-string/jumbo v4, "Failed to execute ApplyRoutingTask"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public applyRoutingWithResult(Z)I
    .registers 3
    .param p1, "force"    # Z

    .prologue
    .line 3607
    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 3608
    iget v0, p0, Lcom/android/nfc/NfcService;->mLastCommitDiscoveryResult:I

    return v0
.end method

.method public clearRouting()V
    .registers 3

    .prologue
    .line 4128
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 4127
    return-void
.end method

.method public clearT3tIdentifiersCache()V
    .registers 2

    .prologue
    .line 4075
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->clearT3tIdentifiersCache()V

    .line 4074
    return-void
.end method

.method public commitRouting()V
    .registers 3

    .prologue
    .line 4051
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendEmptyMessage(I)Z

    .line 4050
    return-void
.end method

.method public createLlcpConnectionLessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;
    .registers 4
    .param p1, "sap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/nfc/LlcpException;
        }
    .end annotation

    .prologue
    .line 4014
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost;->createLlcpConnectionlessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    move-result-object v0

    return-object v0
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    .registers 12
    .param p1, "sap"    # I
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
    .line 4022
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/nfc/DeviceHost;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    .registers 6
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
    .line 4006
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/nfc/DeviceHost;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    return-object v0
.end method

.method public deregisterT3tIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "systemCode"    # Ljava/lang/String;
    .param p2, "nfcId2"    # Ljava/lang/String;

    .prologue
    .line 4070
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/NfcService;->getT3tIdentifierBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 4071
    .local v0, "t3tIdentifier":[B
    const/16 v1, 0x37

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 4069
    return-void
.end method

.method public detectOverflow(I)Z
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 4178
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/nfc/NfcService;->detectOverflow(IZ)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized detectOverflow(IZ)Z
    .registers 11
    .param p1, "userId"    # I
    .param p2, "isPaymentDefaultChange"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    monitor-enter p0

    .line 4132
    :try_start_3
    iget-boolean v4, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_79

    if-nez v4, :cond_9

    monitor-exit p0

    .line 4133
    return v6

    .line 4136
    :cond_9
    :try_start_9
    iget-boolean v4, p0, Lcom/android/nfc/NfcService;->mIsSimStateDetermined:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_79

    if-nez v4, :cond_f

    monitor-exit p0

    .line 4137
    return v6

    .line 4141
    :cond_f
    :try_start_f
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 4142
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_79

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_24

    monitor-exit p0

    .line 4143
    return v6

    .line 4146
    :cond_24
    :try_start_24
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v4, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->detectOverflow(I)Z

    move-result v1

    .line 4147
    .local v1, "isOverflowDetected":Z
    iget-boolean v4, p0, Lcom/android/nfc/NfcService;->mIsDynamicSwitchSupported:Z

    if-eqz v4, :cond_53

    .line 4148
    iput-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsOverflowDetected:Z

    .line 4149
    iget-boolean v4, p0, Lcom/android/nfc/NfcService;->mIsOverflowDetected:Z

    iput-boolean v4, p0, Lcom/android/nfc/NfcService;->mForceUpdateRoutingTable:Z

    .line 4151
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v4, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->checkOverflowWithDisabledService(I)Z

    move-result v0

    .line 4153
    .local v0, "hasPossiblityToOverflow":Z
    iget-boolean v4, p0, Lcom/android/nfc/NfcService;->mIsOverflowDetected:Z

    if-nez v4, :cond_40

    if-eqz v0, :cond_53

    .line 4155
    :cond_40
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->GetDefaultRouteLoc()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/nfc/NfcService;->convertToAnotherRoute(I)I

    move-result v2

    .line 4157
    .local v2, "temporaryRoute":I
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v4, v2, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->detectOverflow(II)Z

    move-result v4

    .line 4156
    iput-boolean v4, p0, Lcom/android/nfc/NfcService;->mIsOverflowDetectedOnOtherNfcee:Z

    .line 4158
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/nfc/NfcService;->mIsOverflowDetected:Z

    .line 4162
    .end local v0    # "hasPossiblityToOverflow":Z
    .end local v2    # "temporaryRoute":I
    :cond_53
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->updateDefaultRouteIfNeeded()Z

    move-result v4

    if-eqz v4, :cond_77

    .line 4165
    if-eqz p2, :cond_65

    iget-boolean v4, p0, Lcom/android/nfc/NfcService;->mIsOverflowDetected:Z

    if-eqz v4, :cond_65

    iget-boolean v4, p0, Lcom/android/nfc/NfcService;->mIsOverflowDetectedOnOtherNfcee:Z
    :try_end_61
    .catchall {:try_start_24 .. :try_end_61} :catchall_79

    if-eqz v4, :cond_65

    monitor-exit p0

    .line 4166
    return v7

    .line 4168
    :cond_65
    :try_start_65
    sget-boolean v4, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v4, :cond_72

    const-string/jumbo v4, "NfcService"

    const-string/jumbo v5, "Ignore the result of checking overflow"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4169
    :cond_72
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->scheduleRebuildingRoutingTable()V
    :try_end_75
    .catchall {:try_start_65 .. :try_end_75} :catchall_79

    monitor-exit p0

    .line 4170
    return v6

    :cond_77
    monitor-exit p0

    .line 4174
    return v1

    .end local v1    # "isOverflowDetected":Z
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :catchall_79
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method doDisconnect(I)V
    .registers 4
    .param p1, "handle"    # I

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1131
    :try_start_5
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doDisconnect(I)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    .line 1133
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1128
    return-void

    .line 1132
    :catchall_10
    move-exception v0

    .line 1133
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1132
    throw v0
.end method

.method doOpenSecureElementConnection()I
    .registers 3

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1109
    :try_start_5
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doOpenSecureElementConnection()I
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    move-result v0

    .line 1111
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1109
    return v0

    .line 1110
    :catchall_11
    move-exception v0

    .line 1111
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1110
    throw v0
.end method

.method doTransceive(I[B)[B
    .registers 5
    .param p1, "handle"    # I
    .param p2, "cmd"    # [B

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1118
    :try_start_5
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/NfcService;->doTransceiveNoLock(I[B)[B
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    move-result-object v0

    .line 1120
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1118
    return-object v0

    .line 1119
    :catchall_f
    move-exception v0

    .line 1120
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mEeWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1119
    throw v0
.end method

.method doTransceiveNoLock(I[B)[B
    .registers 4
    .param p1, "handle"    # I
    .param p2, "cmd"    # [B

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSecureElement:Lcom/android/nfc/dhimpl/NativeNfcSecureElement;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doTransceive(I[B)[B

    move-result-object v0

    return-object v0
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 5214
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_44

    .line 5216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Permission Denial: can\'t dump nfc from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5217
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 5216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5217
    const-string/jumbo v1, ", uid="

    .line 5216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5217
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5218
    const-string/jumbo v1, " without permission "

    .line 5216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5218
    const-string/jumbo v1, "android.permission.DUMP"

    .line 5216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5219
    return-void

    .line 5222
    :cond_44
    monitor-enter p0

    .line 5223
    :try_start_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/NfcService;->mState:I

    invoke-static {v1}, Lcom/android/nfc/NfcService;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsZeroClickRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mScreenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    invoke-static {v1}, Lcom/android/nfc/ScreenStateHelper;->screenStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNfcPollingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNfceeRouteEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mOpenEe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mOpenEe:Lcom/android/nfc/NfcService$OpenSecureElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5229
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCurrentDiscoveryParameters:Lcom/android/nfc/NfcDiscoveryParameters;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5230
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/P2pLinkManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5231
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_f6

    .line 5232
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5234
    :cond_f6
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/NfceeAccessControl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5235
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->IS_NFC_LOCK_SUPPORTED:Z

    if-eqz v0, :cond_118

    .line 5236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsNfcLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsNfcLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5238
    :cond_118
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcDispatcher:Lcom/android/nfc/NfcDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/NfcDispatcher;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5239
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->dump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5241
    invoke-static {}, Lcom/sonymobile/nfc/InstalledPackageCache;->getInstance()Lcom/sonymobile/nfc/InstalledPackageCache;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonymobile/nfc/InstalledPackageCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_12d
    .catchall {:try_start_45 .. :try_end_12d} :catchall_12f

    monitor-exit p0

    .line 5213
    return-void

    .line 5222
    :catchall_12f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableDisableNfc(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x1

    .line 4966
    if-eqz p1, :cond_21

    .line 4968
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "nfc_on"

    sget-boolean v3, Lcom/android/nfc/NfcService;->NFC_ON_DEFAULT:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_11

    .line 4970
    return-void

    .line 4973
    :cond_11
    invoke-direct {p0, v4}, Lcom/android/nfc/NfcService;->isNfcPolicyDisabled(Z)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 4974
    const-string/jumbo v1, "NfcService"

    const-string/jumbo v2, "denying enable() request (NFC policy)"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4975
    return-void

    .line 4979
    :cond_21
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsNfcLocked:Z

    if-nez v1, :cond_39

    .line 4980
    if-eqz p1, :cond_3a

    const/4 v0, 0x1

    .line 4981
    .local v0, "task":I
    :goto_28
    new-instance v1, Lcom/android/nfc/NfcService$EnableDisableTask;

    invoke-direct {v1, p0}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    new-array v2, v4, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService$EnableDisableTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4965
    .end local v0    # "task":I
    :cond_39
    return-void

    .line 4980
    :cond_3a
    const/4 v0, 0x2

    .restart local v0    # "task":I
    goto :goto_28
.end method

.method public enableSwitchedOffDiscovery()V
    .registers 3

    .prologue
    .line 750
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "enableSwitchedOffDiscovery() start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_d
    monitor-enter p0

    .line 752
    :try_start_e
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDiscoveryManager:Lcom/android/nfc/DiscoveryManager;

    if-eqz v0, :cond_1b

    .line 753
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDiscoveryManager:Lcom/android/nfc/DiscoveryManager;

    invoke-virtual {v0}, Lcom/android/nfc/DiscoveryManager;->enableSwitchedOffDiscovery()V

    .line 754
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->applyRouting(Z)V
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_2a

    :cond_1b
    monitor-exit p0

    .line 757
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_29

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "enableSwitchedOffDiscovery() end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_29
    return-void

    .line 751
    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;Z)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uh"    # Landroid/os/UserHandle;
    .param p3, "isGlobalEnabled"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1685
    const-string/jumbo v5, "user"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1686
    .local v3, "um":Landroid/os/UserManager;
    const-string/jumbo v5, "package"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 1688
    .local v2, "mIpm":Landroid/content/pm/IPackageManager;
    const-string/jumbo v5, "no_outgoing_beam"

    invoke-virtual {v3, v5, p2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_64

    .line 1689
    move v1, p3

    .line 1690
    :goto_1f
    sget-boolean v5, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v5, :cond_48

    .line 1691
    const-string/jumbo v5, "NfcService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Enforcing a policy change on user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1692
    const-string/jumbo v7, ", isActiveForUser = "

    .line 1691
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :cond_48
    :try_start_48
    new-instance v5, Landroid/content/ComponentName;

    .line 1696
    const-class v6, Lcom/android/nfc/BeamShareActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getPackageName$()Ljava/lang/String;

    move-result-object v6

    .line 1697
    const-class v7, Lcom/android/nfc/BeamShareActivity;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 1695
    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    if-eqz v1, :cond_66

    .line 1702
    :goto_5b
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 1701
    const/4 v7, 0x1

    .line 1695
    invoke-interface {v2, v5, v4, v7, v6}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_63} :catch_68

    .line 1684
    :goto_63
    return-void

    .line 1688
    :cond_64
    const/4 v1, 0x0

    .local v1, "isActiveForUser":Z
    goto :goto_1f

    .line 1700
    .end local v1    # "isActiveForUser":Z
    :cond_66
    const/4 v4, 0x2

    goto :goto_5b

    .line 1703
    :catch_68
    move-exception v0

    .line 1704
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to change Beam status for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63
.end method

.method public enforceNfceeAdminPerm(Ljava/lang/String;)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 540
    if-nez p1, :cond_b

    .line 541
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "caller must pass a package name"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 543
    :cond_b
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 544
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/nfc/NfceeAccessControl;->check(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 545
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/etc/nfcee_access.xml denies NFCEE access to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 548
    :cond_36
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eqz v0, :cond_45

    .line 549
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "only the owner is allowed to call SE APIs"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_45
    return-void
.end method

.method public excludeInvalidPrefs()V
    .registers 13

    .prologue
    .line 5535
    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/String;

    .line 5536
    const-string/jumbo v10, "nfc_on"

    const/4 v11, 0x0

    aput-object v10, v9, v11

    .line 5537
    const-string/jumbo v10, "ndef_push_on"

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 5538
    const-string/jumbo v10, "first_beam"

    const/4 v11, 0x2

    aput-object v10, v9, v11

    .line 5539
    const-string/jumbo v10, "first_boot"

    const/4 v11, 0x3

    aput-object v10, v9, v11

    .line 5535
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 5541
    .local v0, "BOOL_PREF_KEYS":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 5542
    .local v6, "invalid":Z
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5544
    .local v1, "boolMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v9, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 5545
    .local v2, "currentMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "entry$iterator":Ljava/util/Iterator;
    :cond_33
    :goto_33
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_79

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 5546
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 5547
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_59

    .line 5548
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 5549
    .local v8, "value":Ljava/lang/Object;
    instance-of v9, v8, Ljava/lang/Boolean;

    if-eqz v9, :cond_33

    .line 5550
    check-cast v8, Ljava/lang/Boolean;

    .end local v8    # "value":Ljava/lang/Object;
    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    .line 5553
    :cond_59
    sget-boolean v9, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v9, :cond_77

    const-string/jumbo v9, "NfcService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "found unknown key in prefs: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5554
    :cond_77
    const/4 v6, 0x1

    goto :goto_33

    .line 5558
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v7    # "key":Ljava/lang/String;
    :cond_79
    if-eqz v6, :cond_af

    .line 5559
    iget-object v9, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 5560
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_88
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_aa

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5561
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v11, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-interface {v11, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_88

    .line 5563
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :cond_aa
    iget-object v9, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 5533
    :cond_af
    return-void
.end method

.method findAndRemoveObject(I)Ljava/lang/Object;
    .registers 5
    .param p1, "handle"    # I

    .prologue
    .line 3899
    monitor-enter p0

    .line 3900
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3901
    .local v0, "device":Ljava/lang/Object;
    if-nez v0, :cond_18

    .line 3902
    const-string/jumbo v1, "NfcService"

    const-string/jumbo v2, "Handle not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_22

    :goto_16
    monitor-exit p0

    .line 3906
    return-object v0

    .line 3904
    :cond_18
    :try_start_18
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_22

    goto :goto_16

    .line 3899
    .end local v0    # "device":Ljava/lang/Object;
    :catchall_22
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method findObject(I)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # I

    .prologue
    .line 3889
    monitor-enter p0

    .line 3890
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3891
    .local v0, "device":Ljava/lang/Object;
    if-nez v0, :cond_16

    .line 3892
    const-string/jumbo v1, "NfcService"

    const-string/jumbo v2, "Handle not found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    :cond_16
    monitor-exit p0

    .line 3894
    return-object v0

    .line 3889
    .end local v0    # "device":Ljava/lang/Object;
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getHceExtension()Lcom/android/nfc/HceExtension;
    .registers 3

    .prologue
    .line 5473
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHceExtension:Lcom/android/nfc/HceExtension;

    if-nez v0, :cond_d

    .line 5474
    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "mHceExtension has not instantiated."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5476
    :cond_d
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mHceExtension:Lcom/android/nfc/HceExtension;

    return-object v0
.end method

.method public getLfT3tMax()I
    .registers 2

    .prologue
    .line 4079
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getLfT3tMax()I

    move-result v0

    return v0
.end method

.method public getNfcAdapterExInterface()Lcom/sonymobile/nfc/INfcAdapterEx$Stub;
    .registers 2

    .prologue
    .line 2523
    monitor-enter p0

    .line 2524
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcAdapterEx:Lcom/android/nfc/NfcService$NfcServiceEx;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 2523
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNfcAdapterGsmaInterface()Lcom/gsma/services/INfcAdapterGsma$Stub;
    .registers 2

    .prologue
    .line 2157
    monitor-enter p0

    .line 2158
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mNfcAdapterGsma:Lcom/android/nfc/NfcService$NfcServiceGsma;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    .line 2157
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNfcConfigInterface()Lcom/sonymobile/nfc/INfcConfig$Stub;
    .registers 2

    .prologue
    .line 2939
    monitor-enter p0

    .line 2940
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mProperty:Lcom/android/nfc/DeviceHost$NfcProperty;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$NfcProperty;->getNfcConfig()Lcom/sonymobile/nfc/INfcConfig$Stub;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 2939
    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUrisToSend(Z)[Landroid/net/Uri;
    .registers 3
    .param p1, "generatePlayLink"    # Z

    .prologue
    .line 4941
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/P2pLinkManager;->getUrisToSend(Z)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getUserId()I
    .registers 2

    .prologue
    monitor-enter p0

    .line 1654
    :try_start_1
    iget v0, p0, Lcom/android/nfc/NfcService;->mUserId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasDiscoveryManager()Z
    .registers 2

    .prologue
    .line 728
    monitor-enter p0

    .line 729
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDiscoveryManager:Lcom/android/nfc/DiscoveryManager;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    .line 728
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public hasServiceExtension()Z
    .registers 2

    .prologue
    .line 722
    monitor-enter p0

    .line 723
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mServiceExtension:Lcom/android/nfc/ServiceExtension;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    .line 722
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method initSoundPool()V
    .registers 5

    .prologue
    .line 1061
    monitor-enter p0

    .line 1062
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_38

    .line 1063
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    .line 1064
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f050002

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    .line 1065
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const/high16 v2, 0x7f050000

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    .line 1066
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v2, 0x7f050001

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/nfc/NfcService;->mErrorSound:I
    :try_end_38
    .catchall {:try_start_1 .. :try_end_38} :catchall_3a

    :cond_38
    monitor-exit p0

    .line 1060
    return-void

    .line 1061
    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isDynamicSwitchSupported()Z
    .registers 2

    .prologue
    .line 5485
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsDynamicSwitchSupported:Z

    return v0
.end method

.method public isForceUpdateRoutingTable()Z
    .registers 2

    .prologue
    .line 5489
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mForceUpdateRoutingTable:Z

    return v0
.end method

.method public isInitialized()Z
    .registers 2

    .prologue
    .line 5493
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsInitialized:Z

    return v0
.end method

.method isInputSimPinCodeDone()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 4988
    iget-object v3, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 4989
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 4990
    .local v0, "currentState":I
    const-string/jumbo v3, "NfcService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isInputSimPinCodeDone(): SIM state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4991
    const/4 v3, 0x2

    if-eq v0, v3, :cond_34

    .line 4992
    const/4 v3, 0x3

    if-eq v0, v3, :cond_34

    .line 4993
    const/4 v3, 0x4

    if-eq v0, v3, :cond_34

    const/4 v2, 0x1

    .line 4991
    :cond_34
    return v2
.end method

.method public isNfcDisabled()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 3533
    monitor-enter p0

    .line 3534
    :try_start_2
    iget v1, p0, Lcom/android/nfc/NfcService;->mState:I

    if-eq v1, v0, :cond_b

    iget v1, p0, Lcom/android/nfc/NfcService;->mState:I
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_f

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    :cond_b
    :goto_b
    monitor-exit p0

    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    .line 3533
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isNfcEnabled()Z
    .registers 3

    .prologue
    .line 3527
    monitor-enter p0

    .line 3528
    :try_start_1
    iget v0, p0, Lcom/android/nfc/NfcService;->mState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_b

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_7
    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    .line 3527
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isNfcEnabledOrShuttingDown()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 3521
    monitor-enter p0

    .line 3522
    :try_start_2
    iget v1, p0, Lcom/android/nfc/NfcService;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_c

    iget v1, p0, Lcom/android/nfc/NfcService;->mState:I
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_10

    const/4 v2, 0x4

    if-ne v1, v2, :cond_e

    :cond_c
    :goto_c
    monitor-exit p0

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 3521
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isNfcLocked()Z
    .registers 2

    .prologue
    .line 5481
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsNfcLocked:Z

    return v0
.end method

.method public isOffHostLocked()Z
    .registers 2

    .prologue
    .line 5437
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsOffHostCardEmulationUnlocked:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method isPollingAllowed()Z
    .registers 4

    .prologue
    .line 3840
    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1e

    .line 3841
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsChargeLimitationEnabled:Z

    if-eqz v1, :cond_1c

    sget-boolean v1, Lcom/android/nfc/NfcService;->CHARGE_LIMITATION_SUPPORT:Z

    if-eqz v1, :cond_1c

    const/4 v0, 0x0

    .line 3843
    .local v0, "allowed":Z
    :goto_e
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->IS_NFC_LOCK_SUPPORTED:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mServiceExtension:Lcom/android/nfc/ServiceExtension;

    if-eqz v1, :cond_1b

    .line 3844
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    and-int/2addr v0, v1

    .line 3843
    .end local v0    # "allowed":Z
    :cond_1b
    return v0

    .line 3841
    :cond_1c
    const/4 v0, 0x1

    .restart local v0    # "allowed":Z
    goto :goto_e

    .line 3840
    .end local v0    # "allowed":Z
    :cond_1e
    const/4 v0, 0x0

    .restart local v0    # "allowed":Z
    goto :goto_e
.end method

.method isSeAllowedToBeEnabled(IIZ)Z
    .registers 9
    .param p1, "seId"    # I
    .param p2, "listenMode"    # I
    .param p3, "force"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3786
    if-ne p1, v3, :cond_28

    iget-object v0, p0, Lcom/android/nfc/NfcService;->mProperty:Lcom/android/nfc/DeviceHost$NfcProperty;

    .line 3787
    const-string/jumbo v1, "se.active"

    .line 3786
    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$NfcProperty;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3787
    const-string/jumbo v1, "SMX"

    .line 3786
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3788
    iget v0, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-lt v0, v4, :cond_27

    .line 3789
    iget v0, p0, Lcom/android/nfc/NfcService;->mEeRoutingState:I

    if-ne v0, v4, :cond_27

    .line 3790
    if-nez p3, :cond_26

    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    if-eqz v0, :cond_26

    .line 3793
    return v2

    .line 3791
    :cond_26
    return v3

    .line 3796
    :cond_27
    return v2

    .line 3799
    :cond_28
    const/16 v0, 0x8

    if-eq p1, v0, :cond_2e

    if-ne p1, v4, :cond_34

    .line 3800
    :cond_2e
    iget v0, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    if-lt v0, p2, :cond_33

    .line 3801
    return v3

    .line 3803
    :cond_33
    return v2

    .line 3806
    :cond_34
    return v2
.end method

.method isSeLinkCapable(I)Z
    .registers 11
    .param p1, "seId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3810
    if-ne p1, v8, :cond_5

    .line 3811
    return v8

    .line 3813
    :cond_5
    const/4 v2, -0x1

    .line 3814
    .local v2, "handle":I
    const/4 v3, 0x0

    .line 3815
    .local v3, "seName":Ljava/lang/String;
    const/16 v4, 0x8

    if-ne p1, v4, :cond_41

    .line 3816
    sget-object v4, Lcom/android/nfc/NfcService;->sConfig:Lcom/sonymobile/nfc/ConstConfig;

    iget v2, v4, Lcom/sonymobile/nfc/ConstConfig;->SE_HANDLE_ESE_FN:I

    .line 3817
    const-string/jumbo v3, "ESE FN"

    .line 3822
    .end local v3    # "seName":Ljava/lang/String;
    :cond_12
    :goto_12
    if-eqz v3, :cond_69

    .line 3823
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mProperty:Lcom/android/nfc/DeviceHost$NfcProperty;

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$NfcProperty;->getNfcConfig()Lcom/sonymobile/nfc/INfcConfig$Stub;

    move-result-object v0

    .line 3825
    .local v0, "config":Lcom/sonymobile/nfc/INfcConfig$Stub;
    if-eqz v0, :cond_4c

    :try_start_1c
    invoke-virtual {v0, v2}, Lcom/sonymobile/nfc/INfcConfig$Stub;->swpTest(I)I

    move-result v4

    if-nez v4, :cond_4c

    .line 3826
    sget-boolean v4, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v4, :cond_40

    const-string/jumbo v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is available"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_40} :catch_67

    .line 3827
    :cond_40
    return v8

    .line 3818
    .end local v0    # "config":Lcom/sonymobile/nfc/INfcConfig$Stub;
    .restart local v3    # "seName":Ljava/lang/String;
    :cond_41
    const/4 v4, 0x2

    if-ne p1, v4, :cond_12

    .line 3819
    sget-object v4, Lcom/android/nfc/NfcService;->sConfig:Lcom/sonymobile/nfc/ConstConfig;

    iget v2, v4, Lcom/sonymobile/nfc/ConstConfig;->SE_HANDLE_UICC:I

    .line 3820
    const-string/jumbo v3, "UICC"

    .local v3, "seName":Ljava/lang/String;
    goto :goto_12

    .line 3829
    .end local v3    # "seName":Ljava/lang/String;
    .restart local v0    # "config":Lcom/sonymobile/nfc/INfcConfig$Stub;
    :cond_4c
    :try_start_4c
    const-string/jumbo v4, "NfcService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " is not available."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_4c .. :try_end_66} :catch_67

    .line 3830
    return v7

    .line 3832
    :catch_67
    move-exception v1

    .line 3833
    .local v1, "e":Landroid/os/RemoteException;
    return v7

    .line 3836
    .end local v0    # "config":Lcom/sonymobile/nfc/INfcConfig$Stub;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_69
    return v7
.end method

.method maybeDisconnectTarget()V
    .registers 12

    .prologue
    const/4 v6, 0x0

    .line 3851
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabledOrShuttingDown()Z

    move-result v5

    if-nez v5, :cond_8

    .line 3852
    return-void

    .line 3855
    :cond_8
    monitor-enter p0

    .line 3856
    :try_start_9
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 3859
    .local v2, "objectValues":[Ljava/lang/Object;
    array-length v5, v2

    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 3860
    .local v3, "objectsToDisconnect":[Ljava/lang/Object;
    iget-object v5, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_57

    monitor-exit p0

    .line 3862
    array-length v7, v3

    move v5, v6

    :goto_20
    if-ge v5, v7, :cond_7b

    aget-object v1, v3, v5

    .line 3863
    .local v1, "o":Ljava/lang/Object;
    sget-boolean v8, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v8, :cond_4a

    const-string/jumbo v8, "NfcService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "disconnecting "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3864
    :cond_4a
    instance-of v8, v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    if-eqz v8, :cond_5a

    move-object v4, v1

    .line 3866
    check-cast v4, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3867
    .local v4, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$TagEndpoint;->disconnect()Z

    .line 3862
    .end local v4    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    :cond_54
    :goto_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    .line 3855
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "objectValues":[Ljava/lang/Object;
    .end local v3    # "objectsToDisconnect":[Ljava/lang/Object;
    :catchall_57
    move-exception v5

    monitor-exit p0

    throw v5

    .line 3868
    .restart local v1    # "o":Ljava/lang/Object;
    .restart local v2    # "objectValues":[Ljava/lang/Object;
    .restart local v3    # "objectsToDisconnect":[Ljava/lang/Object;
    :cond_5a
    instance-of v8, v1, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    if-eqz v8, :cond_54

    move-object v0, v1

    .line 3870
    check-cast v0, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .line 3871
    .local v0, "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->getMode()I

    move-result v8

    if-nez v8, :cond_54

    .line 3873
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$NfcDepEndpoint;->disconnect()Z

    .line 3875
    iget-boolean v8, p0, Lcom/android/nfc/NfcService;->mLlcpActivated:Z

    if-eqz v8, :cond_54

    .line 3876
    iput-boolean v6, p0, Lcom/android/nfc/NfcService;->mLlcpActivated:Z

    .line 3877
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v8}, Lcom/android/nfc/P2pLinkManager;->onLlcpDeactivated()V

    .line 3878
    iget-object v8, p0, Lcom/android/nfc/NfcService;->mLlcpDeactivatedIntentMap:Ljava/util/HashMap;

    invoke-direct {p0, v8}, Lcom/android/nfc/NfcService;->sendLlcpLinkEvent(Ljava/util/HashMap;)V

    goto :goto_54

    .line 3850
    .end local v0    # "device":Lcom/android/nfc/DeviceHost$NfcDepEndpoint;
    .end local v1    # "o":Ljava/lang/Object;
    :cond_7b
    return-void
.end method

.method public onAidRoutingTableFull()V
    .registers 3

    .prologue
    .line 637
    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "NxpNci: onAidRoutingTableFull: AID Routing Table is FULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-void
.end method

.method public onCardEmulationAidSelected([B[BI)V
    .registers 6
    .param p1, "aid"    # [B
    .param p2, "data"    # [B
    .param p3, "evtSrc"    # I

    .prologue
    .line 629
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v1, :cond_4

    .line 630
    :cond_4
    const/4 v1, 0x2

    new-array v0, v1, [[B

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 631
    .local v0, "transaction":[[B
    const/16 v1, 0x28

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 628
    return-void
.end method

.method public onCardEmulationDeselected()V
    .registers 3

    .prologue
    .line 619
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_4

    .line 620
    :cond_4
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 618
    return-void
.end method

.method public onHostCardEmulationActivated(I)V
    .registers 3
    .param p1, "technology"    # I

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_9

    .line 572
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationActivated(I)V

    .line 570
    :cond_9
    return-void
.end method

.method public onHostCardEmulationData(I[B)V
    .registers 4
    .param p1, "technology"    # I
    .param p2, "data"    # [B

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_9

    .line 579
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationData(I[B)V

    .line 577
    :cond_9
    return-void
.end method

.method public onHostCardEmulationDeactivated(I)V
    .registers 3
    .param p1, "technology"    # I

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    if-eqz v0, :cond_9

    .line 586
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationDeactivated(I)V

    .line 584
    :cond_9
    return-void
.end method

.method public onLlcpFirstPacketReceived(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .registers 3
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 611
    const/16 v0, 0xf

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 610
    return-void
.end method

.method public onLlcpLinkActivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .registers 3
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 595
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 594
    return-void
.end method

.method public onLlcpLinkDeactivated(Lcom/android/nfc/DeviceHost$NfcDepEndpoint;)V
    .registers 3
    .param p1, "device"    # Lcom/android/nfc/DeviceHost$NfcDepEndpoint;

    .prologue
    .line 603
    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 602
    return-void
.end method

.method public onNfceeDiscoveryReqNtf()V
    .registers 4

    .prologue
    .line 715
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_d

    const-string/jumbo v1, "NfcService"

    const-string/jumbo v2, "onNfceeDiscoveryReqNtf() start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_d
    new-instance v0, Lcom/android/nfc/NfcService$ApplyRoutingTask;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$ApplyRoutingTask;-><init>(Lcom/android/nfc/NfcService;)V

    .line 717
    .local v0, "applyRoutingTask":Lcom/android/nfc/NfcService$ApplyRoutingTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$ApplyRoutingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 718
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_25

    const-string/jumbo v1, "NfcService"

    const-string/jumbo v2, "onNfceeDiscoveryReqNtf() end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_25
    return-void
.end method

.method public onPreferredForegroundServiceChanged(Landroid/nfc/cardemulation/ApduServiceInfo;)V
    .registers 3
    .param p1, "foregroundService"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 5049
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mForceUpdateRoutingTable:Z

    .line 5050
    if-nez p1, :cond_9

    .line 5051
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->restoreCurrentDefaultRoute()V

    .line 5048
    :goto_8
    return-void

    .line 5053
    :cond_9
    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/nfc/NfcService;->updateDefaultRouteForTemporary(Z)V

    goto :goto_8
.end method

.method public onReceiveShutdownToServiceExtension()V
    .registers 2

    .prologue
    .line 706
    monitor-enter p0

    .line 707
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mServiceExtension:Lcom/android/nfc/ServiceExtension;

    if-eqz v0, :cond_a

    .line 708
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mServiceExtension:Lcom/android/nfc/ServiceExtension;

    invoke-interface {v0}, Lcom/android/nfc/ServiceExtension;->onReceiveShutdown()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    .line 705
    return-void

    .line 706
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onRemoteEndpointDiscovered(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .registers 3
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .prologue
    .line 563
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 562
    return-void
.end method

.method public onRemoteFieldActivated()V
    .registers 3

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_4

    .line 643
    :cond_4
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 641
    return-void
.end method

.method public onRemoteFieldDeactivated()V
    .registers 3

    .prologue
    .line 649
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_4

    .line 650
    :cond_4
    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 648
    return-void
.end method

.method public onRequestedToServiceExtension([B)V
    .registers 3
    .param p1, "data"    # [B

    .prologue
    .line 698
    monitor-enter p0

    .line 699
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mServiceExtension:Lcom/android/nfc/ServiceExtension;

    if-eqz v0, :cond_a

    .line 700
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mServiceExtension:Lcom/android/nfc/ServiceExtension;

    invoke-interface {v0, p1}, Lcom/android/nfc/ServiceExtension;->onRequested([B)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    .line 697
    return-void

    .line 698
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onSeApduReceived([B)V
    .registers 3
    .param p1, "apdu"    # [B

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_4

    .line 678
    :cond_4
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 676
    return-void
.end method

.method public onSeEmvCardRemoval()V
    .registers 3

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_4

    .line 685
    :cond_4
    const/16 v0, 0xb

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 683
    return-void
.end method

.method public onSeListenActivated()V
    .registers 3

    .prologue
    .line 656
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_4

    .line 657
    :cond_4
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 659
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_14

    .line 660
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationActivated(I)V

    .line 655
    :cond_14
    return-void
.end method

.method public onSeListenDeactivated()V
    .registers 3

    .prologue
    .line 666
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_4

    .line 667
    :cond_4
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 669
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_14

    .line 670
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onHostCardEmulationDeactivated(I)V

    .line 665
    :cond_14
    return-void
.end method

.method public onSeMifareAccess([B)V
    .registers 3
    .param p1, "block"    # [B

    .prologue
    .line 691
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v0, :cond_4

    .line 692
    :cond_4
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 690
    return-void
.end method

.method public onUiccStatusEvent(I)V
    .registers 6
    .param p1, "uiccStat"    # I

    .prologue
    .line 778
    const-string/jumbo v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Broadcasting UICC Status : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 780
    .local v0, "uiccStatusIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.nxp.action.UICC_STATUS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    const-string/jumbo v1, "com.nxp.extra.UICC_STATUS"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 782
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 776
    return-void
.end method

.method public overrideNdefPushSettingAsDisabled(Z)V
    .registers 5
    .param p1, "startOverriding"    # Z

    .prologue
    .line 3539
    monitor-enter p0

    .line 3540
    if-eqz p1, :cond_1e

    .line 3541
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsOverridingNdefPushSetting:Z

    .line 3542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    .line 3547
    :goto_9
    invoke-virtual {p0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 3548
    iget-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    invoke-virtual {p0, v0}, Lcom/android/nfc/NfcService;->setBeamShareActivityState(Z)V

    .line 3549
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mP2pLinkManager:Lcom/android/nfc/P2pLinkManager;

    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/P2pLinkManager;->enableDisable(ZZ)V
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_2e

    :cond_1c
    monitor-exit p0

    .line 3538
    return-void

    .line 3544
    :cond_1e
    const/4 v0, 0x0

    :try_start_1f
    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsOverridingNdefPushSetting:Z

    .line 3545
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "ndef_push_on"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService;->mIsNdefPushEnabled:Z
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_2e

    goto :goto_9

    .line 3539
    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public playSound(I)V
    .registers 4
    .param p1, "sound"    # I

    .prologue
    .line 1624
    move v0, p1

    .line 1625
    .local v0, "soundId":I
    new-instance v1, Lcom/android/nfc/NfcService$7;

    invoke-direct {v1, p0, p1}, Lcom/android/nfc/NfcService$7;-><init>(Lcom/android/nfc/NfcService;I)V

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$7;->start()V

    .line 1623
    return-void
.end method

.method public playSoundSync(I)V
    .registers 9
    .param p1, "sound"    # I

    .prologue
    .line 1634
    monitor-enter p0

    .line 1635
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_10

    .line 1636
    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "Not playing sound when NFC is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_25

    monitor-exit p0

    .line 1637
    return-void

    .line 1639
    :cond_10
    packed-switch p1, :pswitch_data_48

    :goto_13
    monitor-exit p0

    .line 1633
    return-void

    .line 1641
    :pswitch_15
    :try_start_15
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/NfcService;->mStartSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_24
    .catchall {:try_start_15 .. :try_end_24} :catchall_25

    goto :goto_13

    .line 1634
    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1644
    :pswitch_28
    :try_start_28
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/NfcService;->mEndSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_13

    .line 1647
    :pswitch_38
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/nfc/NfcService;->mErrorSound:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_47
    .catchall {:try_start_28 .. :try_end_47} :catchall_25

    goto :goto_13

    .line 1639
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_15
        :pswitch_28
        :pswitch_38
    .end packed-switch
.end method

.method public popDiscovery(I)V
    .registers 3
    .param p1, "priority"    # I

    .prologue
    .line 742
    monitor-enter p0

    .line 743
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDiscoveryManager:Lcom/android/nfc/DiscoveryManager;

    if-eqz v0, :cond_a

    .line 744
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDiscoveryManager:Lcom/android/nfc/DiscoveryManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/DiscoveryManager;->popDiscovery(I)I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    .line 741
    return-void

    .line 742
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public pushDiscovery(Lcom/android/nfc/DiscoveryManager$Params;)V
    .registers 3
    .param p1, "p"    # Lcom/android/nfc/DiscoveryManager$Params;

    .prologue
    .line 734
    monitor-enter p0

    .line 735
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDiscoveryManager:Lcom/android/nfc/DiscoveryManager;

    if-eqz v0, :cond_a

    .line 736
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDiscoveryManager:Lcom/android/nfc/DiscoveryManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/DiscoveryManager;->pushDiscovery(Lcom/android/nfc/DiscoveryManager$Params;)I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    .line 733
    return-void

    .line 734
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerT3tIdentifier(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "systemCode"    # Ljava/lang/String;
    .param p2, "nfcId2"    # Ljava/lang/String;

    .prologue
    .line 4065
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/NfcService;->getT3tIdentifierBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 4066
    .local v0, "t3tIdentifier":[B
    const/16 v1, 0x36

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 4064
    return-void
.end method

.method registerTagObject(Lcom/android/nfc/DeviceHost$TagEndpoint;)V
    .registers 4
    .param p1, "tag"    # Lcom/android/nfc/DeviceHost$TagEndpoint;

    .prologue
    .line 3911
    monitor-enter p0

    .line 3912
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    .line 3910
    return-void

    .line 3911
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method releaseSoundPool()V
    .registers 2

    .prologue
    .line 1072
    monitor-enter p0

    .line 1073
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_d

    .line 1074
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 1075
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService;->mSoundPool:Landroid/media/SoundPool;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    .line 1071
    return-void

    .line 1072
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public routeAids(Ljava/lang/String;I)V
    .registers 5
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "route"    # I

    .prologue
    .line 4030
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4031
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4032
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 4033
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4034
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4029
    return-void
.end method

.method public routeAids(Ljava/lang/String;II)V
    .registers 6
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "route"    # I
    .param p3, "powerState"    # I

    .prologue
    .line 4038
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4039
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4040
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 4041
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 4042
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4043
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4037
    return-void
.end method

.method saveNfcOnSetting(Z)V
    .registers 4
    .param p1, "on"    # Z

    .prologue
    .line 1617
    monitor-enter p0

    .line 1618
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "nfc_on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1619
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    .line 1616
    return-void

    .line 1617
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendData([B)Z
    .registers 3
    .param p1, "data"    # [B

    .prologue
    .line 4182
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->sendRawFrame([B)Z

    move-result v0

    return v0
.end method

.method sendMessage(ILjava/lang/Object;)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4186
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService$NfcServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 4187
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 4188
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4189
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mHandler:Lcom/android/nfc/NfcService$NfcServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/nfc/NfcService$NfcServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 4185
    return-void
.end method

.method public sendMockNdefTag(Landroid/nfc/NdefMessage;)V
    .registers 3
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 4026
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 4025
    return-void
.end method

.method setBeamShareActivityState(Z)V
    .registers 8
    .param p1, "enabled"    # Z

    .prologue
    .line 1673
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "user"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1677
    .local v3, "um":Landroid/os/UserManager;
    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 1678
    .local v0, "luh":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "uh$iterator":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 1679
    .local v1, "uh":Landroid/os/UserHandle;
    iget-object v4, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v4, v1, p1}, Lcom/android/nfc/NfcService;->enforceBeamShareActivityPolicy(Landroid/content/Context;Landroid/os/UserHandle;Z)V

    goto :goto_13

    .line 1672
    .end local v1    # "uh":Landroid/os/UserHandle;
    :cond_25
    return-void
.end method

.method public setDefaultRoute(III)Z
    .registers 6
    .param p1, "defaultRouteEntry"    # I
    .param p2, "defaultProtoRouteEntry"    # I
    .param p3, "defaultTechRouteEntry"    # I

    .prologue
    .line 4124
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/nfc/DeviceHost;->setDefaultRoute(III)Z

    move-result v0

    .line 4125
    .local v0, "ret":Z
    return v0
.end method

.method setScreenState()V
    .registers 3

    .prologue
    .line 1090
    iget v1, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    packed-switch v1, :pswitch_data_18

    .line 1097
    const/4 v0, 0x1

    .line 1100
    .local v0, "screenState":I
    :goto_6
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    invoke-interface {v1, v0}, Lcom/android/nfc/DeviceHost;->doSetScreenState(I)V

    .line 1101
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v1, :cond_14

    .line 1102
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mCardEmulationManager:Lcom/android/nfc/cardemulation/CardEmulationManager;

    invoke-virtual {v1, v0}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setScreenState(I)V

    .line 1088
    :cond_14
    return-void

    .line 1094
    .end local v0    # "screenState":I
    :pswitch_15
    iget v0, p0, Lcom/android/nfc/NfcService;->mScreenState:I

    .restart local v0    # "screenState":I
    goto :goto_6

    .line 1090
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method unregisterObject(I)V
    .registers 4
    .param p1, "handle"    # I

    .prologue
    .line 3917
    monitor-enter p0

    .line 3918
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService;->mObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    .line 3916
    return-void

    .line 3917
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unrouteAids(Ljava/lang/String;)V
    .registers 3
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 4047
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/NfcService;->sendMessage(ILjava/lang/Object;)V

    .line 4046
    return-void
.end method

.method public updateAidMatchingPlatform(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1658
    iget-boolean v1, p0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-nez v1, :cond_5

    .line 1659
    return-void

    .line 1663
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1664
    .local v0, "supportAlwaysPrefix":Z
    if-eqz v0, :cond_27

    iget-object v1, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    if-eqz v1, :cond_27

    .line 1665
    iget-object v1, p0, Lcom/android/nfc/NfcService;->mAidRoutingManager:Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/AidRoutingManager;->supportAlwaysPrefixMatching()Z

    move-result v1

    .line 1664
    if-eqz v1, :cond_27

    .line 1666
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->updateDefaultRouteIfNeeded()Z

    move-result v1

    if-nez v1, :cond_27

    .line 1667
    invoke-direct {p0}, Lcom/android/nfc/NfcService;->scheduleRebuildingRoutingTable()V

    .line 1657
    :cond_27
    return-void
.end method

.method updatePackageCache()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1081
    iget-object v2, p0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1082
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v1, v3, v3}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v0

    .line 1083
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    monitor-enter p0

    .line 1084
    :try_start_c
    iput-object v0, p0, Lcom/android/nfc/NfcService;->mInstalledPackages:Ljava/util/List;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_10

    monitor-exit p0

    .line 1080
    return-void

    .line 1083
    :catchall_10
    move-exception v2

    monitor-exit p0

    throw v2
.end method

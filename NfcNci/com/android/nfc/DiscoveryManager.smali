.class public Lcom/android/nfc/DiscoveryManager;
.super Ljava/lang/Object;
.source "DiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/DiscoveryManager$Params;,
        Lcom/android/nfc/DiscoveryManager$Routing;,
        Lcom/android/nfc/DiscoveryManager$RoutingSettings;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field public static final DISCOVERY_ERROR:I = -0x2

.field public static final FAILURE:I = -0x1

.field public static final POWER_STATE_OFF:I = 0x0

.field public static final POWER_STATE_ON:I = 0x1

.field public static final POWER_STATE_TURNING_OFF:I = 0x2

.field public static final PRI_BASE_CONFIG:I = 0x0

.field public static final PRI_DEBUG:I = 0x2

.field public static final PRI_DEBUG_EXCLUSIVE:I = 0x6

.field public static final PRI_DEFAULT:I = 0x1

.field public static final PRI_FN_SPECIFIC:I = 0x4

.field public static final PRI_FN_SPECIFIC_CONNECT:I = 0x5

.field public static final PRI_LISTEN_SETTING:I = 0x1

.field public static final PRI_MAX:I = 0x7

.field public static final PRI_READER_MODE:I = 0x3

.field private static final SE_MASK_TO_ID:[I

.field private static final SE_MASK_TO_NAME:[Ljava/lang/String;

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DiscoveryManager"


# instance fields
.field private mAvailableSeMask:I

.field private mCurrentRouting:Lcom/android/nfc/DiscoveryManager$RoutingSettings;

.field private mDefaultRoute:I

.field private mDeviceHost:Lcom/android/nfc/DeviceHost;

.field private mForceCommitRouting:Z

.field private mIsDirty:Z

.field private mIsHceAllowed:Z

.field private mIsInit:Z

.field private mListenMask:I

.field private mListenMode:I

.field private mMaxPriority:I

.field private mP2pListenMask:I

.field private mParams:[Lcom/android/nfc/DiscoveryManager$Params;

.field private mPollMask:I

.field private mPowerState:I

.field private mSeMask:I

.field private mService:Lcom/android/nfc/NfcService;

.field private mUncheckedSeMask:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 74
    const/16 v0, 0x8

    .line 72
    filled-new-array {v1, v4, v3, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    .line 75
    new-array v0, v1, [Ljava/lang/String;

    const-string/jumbo v1, "DH"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "UICC"

    aput-object v1, v0, v3

    const-string/jumbo v1, "SMX"

    aput-object v1, v0, v4

    const-string/jumbo v1, "ESE_FN"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_NAME:[Ljava/lang/String;

    .line 78
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/android/nfc/NfcService;Lcom/android/nfc/DeviceHost;)V
    .registers 5
    .param p1, "service"    # Lcom/android/nfc/NfcService;
    .param p2, "dh"    # Lcom/android/nfc/DeviceHost;

    .prologue
    .line 428
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/DiscoveryManager;->mIsInit:Z

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/DiscoveryManager;->mMaxPriority:I

    .line 95
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/nfc/DiscoveryManager$Params;

    iput-object v0, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    .line 98
    new-instance v0, Lcom/android/nfc/DiscoveryManager$RoutingSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/nfc/DiscoveryManager$RoutingSettings;-><init>(Lcom/android/nfc/DiscoveryManager$RoutingSettings;)V

    iput-object v0, p0, Lcom/android/nfc/DiscoveryManager;->mCurrentRouting:Lcom/android/nfc/DiscoveryManager$RoutingSettings;

    .line 429
    iput-object p1, p0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    .line 430
    iput-object p2, p0, Lcom/android/nfc/DiscoveryManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 431
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/DiscoveryManager;->mDefaultRoute:I

    .line 428
    return-void
.end method

.method public static createAndCompositionParams(IIII)Lcom/android/nfc/DiscoveryManager$Params;
    .registers 7
    .param p0, "priority"    # I
    .param p1, "pollTech"    # I
    .param p2, "p2pListenTech"    # I
    .param p3, "listenTech"    # I

    .prologue
    .line 400
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 402
    .local v0, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v1, "pollMask"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string/jumbo v1, "p2pListenMask"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string/jumbo v1, "listenMask"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string/jumbo v1, "compositionMode"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    new-instance v1, Lcom/android/nfc/DiscoveryManager$Params;

    invoke-direct {v1, p0, v0}, Lcom/android/nfc/DiscoveryManager$Params;-><init>(ILjava/util/HashMap;)V

    return-object v1
.end method

.method public static createAndCompositionParams(IIIII)Lcom/android/nfc/DiscoveryManager$Params;
    .registers 9
    .param p0, "priority"    # I
    .param p1, "pollTech"    # I
    .param p2, "p2pListenTech"    # I
    .param p3, "listenTech"    # I
    .param p4, "seMask"    # I

    .prologue
    const/4 v2, 0x0

    .line 416
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 418
    .local v0, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v1, "pollMask"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string/jumbo v1, "p2pListenMask"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string/jumbo v1, "listenMask"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string/jumbo v1, "seMask"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const-string/jumbo v3, "isHceAllowed"

    and-int/lit8 v1, p4, 0x1

    if-eqz v1, :cond_4d

    const/4 v1, 0x1

    :goto_36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string/jumbo v1, "compositionMode"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    new-instance v1, Lcom/android/nfc/DiscoveryManager$Params;

    invoke-direct {v1, p0, v0}, Lcom/android/nfc/DiscoveryManager$Params;-><init>(ILjava/util/HashMap;)V

    return-object v1

    :cond_4d
    move v1, v2

    .line 422
    goto :goto_36
.end method

.method public static createDiscoveryCtrlDisablingParams(I)Lcom/android/nfc/DiscoveryManager$Params;
    .registers 5
    .param p0, "priority"    # I

    .prologue
    const/4 v3, 0x1

    .line 387
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 389
    .local v0, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v1, "isDiscCtrlDisabled"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    const-string/jumbo v1, "compositionMode"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    new-instance v1, Lcom/android/nfc/DiscoveryManager$Params;

    invoke-direct {v1, p0, v0}, Lcom/android/nfc/DiscoveryManager$Params;-><init>(ILjava/util/HashMap;)V

    return-object v1
.end method

.method public static createOverridingParams(IIII)Lcom/android/nfc/DiscoveryManager$Params;
    .registers 7
    .param p0, "priority"    # I
    .param p1, "pollTech"    # I
    .param p2, "p2pListenTech"    # I
    .param p3, "listenTech"    # I

    .prologue
    .line 355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 357
    .local v0, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v1, "pollMask"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string/jumbo v1, "p2pListenMask"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string/jumbo v1, "listenMask"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string/jumbo v1, "compositionMode"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    new-instance v1, Lcom/android/nfc/DiscoveryManager$Params;

    invoke-direct {v1, p0, v0}, Lcom/android/nfc/DiscoveryManager$Params;-><init>(ILjava/util/HashMap;)V

    return-object v1
.end method

.method public static createOverridingParams(IIIII)Lcom/android/nfc/DiscoveryManager$Params;
    .registers 10
    .param p0, "priority"    # I
    .param p1, "pollTech"    # I
    .param p2, "p2pListenTech"    # I
    .param p3, "listenTech"    # I
    .param p4, "seMask"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 371
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 373
    .local v0, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string/jumbo v3, "pollMask"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    const-string/jumbo v3, "p2pListenMask"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    const-string/jumbo v3, "listenMask"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string/jumbo v3, "seMask"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string/jumbo v3, "isHceAllowed"

    and-int/lit8 v4, p4, 0x1

    if-eqz v4, :cond_37

    move v1, v2

    :cond_37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string/jumbo v1, "compositionMode"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    new-instance v1, Lcom/android/nfc/DiscoveryManager$Params;

    invoke-direct {v1, p0, v0}, Lcom/android/nfc/DiscoveryManager$Params;-><init>(ILjava/util/HashMap;)V

    return-object v1
.end method


# virtual methods
.method commitDiscovery(Z)I
    .registers 28
    .param p1, "force"    # Z

    .prologue
    .line 926
    const/16 v16, 0x0

    .line 927
    .local v16, "needsRediscover":Z
    const/16 v23, 0x0

    .line 928
    .local v23, "reconfig":Z
    const/16 v24, 0x0

    .line 929
    .local v24, "reroute":Z
    const/4 v11, 0x0

    .line 930
    .local v11, "enableP2p":Z
    const/16 v25, 0x0

    .line 932
    .local v25, "ret":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/nfc/DiscoveryManager;->mMaxPriority:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1b

    .line 933
    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "No valid discovery parameters. finished."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/4 v4, -0x1

    return v4

    .line 937
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/nfc/DiscoveryManager;->mIsInit:Z

    if-nez v4, :cond_2c

    .line 938
    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "DiscoveryManager is not initialized. Ignored."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    const/4 v4, -0x1

    return v4

    .line 942
    :cond_2c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/nfc/DiscoveryManager;->mPowerState:I

    if-nez v4, :cond_3d

    .line 943
    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "Shutdown procedure is proceeding. Ignored."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    const/4 v4, -0x1

    return v4

    .line 947
    :cond_3d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/nfc/DiscoveryManager;->mPowerState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_46

    .line 949
    const/16 v24, 0x1

    .line 952
    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/nfc/DiscoveryManager;->mMaxPriority:I

    aget-object v22, v4, v5

    .line 954
    .local v22, "p":Lcom/android/nfc/DiscoveryManager$Params;
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager$Params;->isDiscCtrlDisabled:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 955
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_67

    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "Changing discovery is disabled. Skipped."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_67
    const/4 v4, 0x0

    return v4

    .line 959
    :cond_69
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/nfc/DiscoveryManager;->mIsDirty:Z

    if-eqz v4, :cond_83

    .line 960
    const/16 v23, 0x1

    .line 961
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/nfc/DiscoveryManager;->mIsDirty:Z

    .line 962
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_83

    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "Poll/Listen/Se configuration has been changed."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_83
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager$Params;->isEffectiveOnPollingDisabled:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_9c

    .line 966
    const/16 v23, 0x1

    .line 967
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_9c

    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "Poll/Listen/Se has been changed by isEffectiveOnPollingDisabled."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_9c
    monitor-enter p0

    .line 970
    :try_start_9d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/nfc/DiscoveryManager;->mForceCommitRouting:Z

    if-eqz v4, :cond_b9

    .line 971
    const/16 v24, 0x1

    .line 972
    const/16 v16, 0x1

    .line 973
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/nfc/DiscoveryManager;->mForceCommitRouting:Z

    .line 974
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_b9

    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "AID routing table should be commited, force rerouting."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catchall {:try_start_9d .. :try_end_b9} :catchall_350

    :cond_b9
    monitor-exit p0

    .line 978
    if-eqz v23, :cond_353

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/DiscoveryManager;->getSeMask()I

    move-result v20

    .line 979
    .local v20, "newSeMask":I
    :goto_c0
    if-eqz v23, :cond_35b

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/DiscoveryManager;->getListenMode()I

    move-result v17

    .line 983
    .local v17, "newListenMode":I
    :goto_c6
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v17

    move/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/nfc/DiscoveryManager;->getSeMaskToBeEnabled(IIZ)I

    move-result v20

    .line 985
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/nfc/DiscoveryManager;->mSeMask:I

    xor-int v4, v4, v20

    and-int v14, v4, v20

    .line 987
    .local v14, "enableSeMask":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/nfc/DiscoveryManager;->mSeMask:I

    xor-int v4, v4, v20

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/nfc/DiscoveryManager;->mSeMask:I

    and-int v13, v4, v5

    .line 988
    .local v13, "disableSeMask":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/nfc/DiscoveryManager;->mSeMask:I

    move/from16 v0, v20

    if-eq v0, v4, :cond_189

    .line 989
    if-eqz v14, :cond_148

    .line 990
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_116

    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "NFC-EE ON: %x to %x"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/nfc/DiscoveryManager;->mSeMask:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_116
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/nfc/DiscoveryManager;->enableSecureElement(I)I

    move-result v14

    .line 995
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/nfc/DiscoveryManager;->mSeMask:I

    and-int v4, v4, v20

    or-int v20, v4, v14

    .line 996
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_146

    const-string/jumbo v4, "DiscoveryManager"

    .line 997
    const-string/jumbo v5, "NFC-EE ON: enabled: %x, new: %x"

    .line 996
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 997
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    .line 996
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    :cond_146
    const/16 v16, 0x1

    .line 1000
    :cond_148
    if-eqz v13, :cond_16c

    .line 1001
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_165

    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "NFC-EE OFF: disabled: %x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_165
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/nfc/DiscoveryManager;->disableSecureElement(I)V

    .line 1003
    const/16 v16, 0x1

    .line 1005
    :cond_16c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/nfc/DiscoveryManager;->mSeMask:I

    move/from16 v0, v20

    if-eq v4, v0, :cond_189

    .line 1007
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_181

    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "Active SEs changed. needs rerouting."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_181
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/DiscoveryManager;->mSeMask:I

    .line 1009
    const/16 v24, 0x1

    .line 1012
    :cond_189
    if-nez v24, :cond_193

    .line 1013
    or-int/lit8 v4, v20, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/nfc/DiscoveryManager;->isRoutingChanged(I)Z

    move-result v24

    .line 1015
    .end local v24    # "reroute":Z
    :cond_193
    if-eqz v24, :cond_1e9

    .line 1016
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mCurrentRouting:Lcom/android/nfc/DiscoveryManager$RoutingSettings;

    invoke-static {v4}, Lcom/android/nfc/DiscoveryManager$RoutingSettings;->-wrap2(Lcom/android/nfc/DiscoveryManager$RoutingSettings;)V

    .line 1018
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_1b7

    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "Enable routing: new: %x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    :cond_1b7
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/nfc/DiscoveryManager;->enableRouting(I)I

    .line 1020
    if-eqz v13, :cond_1d2

    .line 1021
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_1cd

    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "Some of SEs are deactivated, rerouting."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_1cd
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/nfc/DiscoveryManager;->disableRouting(I)I

    .line 1024
    :cond_1d2
    if-nez v14, :cond_1d6

    if-eqz v13, :cond_1e1

    .line 1025
    :cond_1d6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    .line 1026
    and-int/lit8 v4, v20, 0x4

    if-eqz v4, :cond_363

    const/4 v4, 0x1

    .line 1025
    :goto_1df
    iput-boolean v4, v5, Lcom/android/nfc/NfcService;->mNfceeRouteEnabled:Z

    .line 1029
    :cond_1e1
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/nfc/DiscoveryManager;->enableRouting(I)I

    .line 1030
    const/16 v16, 0x1

    .line 1033
    :cond_1e9
    if-eqz v23, :cond_366

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/DiscoveryManager;->isHceAllowed()Z

    move-result v15

    .line 1034
    .local v15, "isHceAllowed":Z
    :goto_1ef
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/nfc/DiscoveryManager;->mIsHceAllowed:Z

    .line 1035
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-eqz v4, :cond_36c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 1036
    const/4 v5, 0x2

    .line 1035
    if-lt v4, v5, :cond_36c

    .line 1036
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/nfc/DiscoveryManager;->mPowerState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_36c

    .line 1035
    if-eqz v15, :cond_36c

    .line 1038
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mHostRouteEnabled:Z

    if-eqz v4, :cond_217

    if-eqz p1, :cond_22d

    .line 1039
    :cond_217
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_224

    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "Enabling HCE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_224
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/nfc/NfcService;->mHostRouteEnabled:Z

    .line 1041
    const/16 v16, 0x1

    .line 1051
    :cond_22d
    :goto_22d
    if-eqz v23, :cond_38e

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/DiscoveryManager;->getListenMask()I

    move-result v7

    .line 1052
    .local v7, "newListenMask":I
    :goto_233
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/nfc/DiscoveryManager;->mListenMask:I

    if-eq v4, v7, :cond_268

    .line 1053
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_266

    const-string/jumbo v4, "DiscoveryManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The listen tech mask has been changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1054
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/nfc/DiscoveryManager;->mListenMask:I

    .line 1053
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1054
    const-string/jumbo v6, " to "

    .line 1053
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_266
    const/16 v16, 0x1

    .line 1057
    :cond_268
    if-eqz v23, :cond_394

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/DiscoveryManager;->getPollMask()I

    move-result v19

    .line 1058
    .local v19, "newPollMask":I
    :goto_26e
    if-eqz v23, :cond_39c

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/DiscoveryManager;->getP2pListenMask()I

    move-result v18

    .line 1059
    .local v18, "newP2pListenMask":I
    :goto_274
    invoke-static {}, Lcom/android/nfc/NfcUnlockManager;->getInstance()Lcom/android/nfc/NfcUnlockManager;

    move-result-object v21

    .line 1060
    .local v21, "nfcUnlockManager":Lcom/android/nfc/NfcUnlockManager;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/nfc/DiscoveryManager;->mPollMask:I

    move/from16 v0, v19

    if-ne v4, v0, :cond_288

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/nfc/DiscoveryManager;->mP2pListenMask:I

    move/from16 v0, v18

    if-eq v4, v0, :cond_28a

    .line 1061
    :cond_288
    const/16 v16, 0x1

    .line 1063
    :cond_28a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->isPollingAllowed()Z

    move-result v4

    if-eqz v4, :cond_3e5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/nfc/DiscoveryManager;->mPowerState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3e5

    .line 1064
    if-nez p1, :cond_3a4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    if-eqz v4, :cond_3a4

    .line 1069
    :goto_2a5
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager$Params;->readerModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz v4, :cond_2bb

    .line 1070
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-eqz v4, :cond_2bb

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    if-eqz v4, :cond_3ca

    .line 1075
    :cond_2bb
    :goto_2bb
    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager$Params;->readerModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-nez v4, :cond_2c9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    if-nez v4, :cond_2d9

    .line 1076
    :cond_2c9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mReaderModeParams:Lcom/android/nfc/NfcService$ReaderModeParams;

    if-nez v4, :cond_2ef

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    .line 1075
    if-eqz v4, :cond_2ef

    .line 1077
    :cond_2d9
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_2e6

    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "Disabling reader mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_2e6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    .line 1079
    const/16 v16, 0x1

    .line 1081
    :cond_2ef
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    if-eqz v4, :cond_3e2

    const/4 v11, 0x0

    .line 1111
    :cond_2f8
    :goto_2f8
    if-eqz v16, :cond_343

    .line 1112
    invoke-static {}, Lcom/sonymobile/nfc/NfcCertDebugModeUtil;->isHceDebugMode()Z

    move-result v4

    if-eqz v4, :cond_4cc

    .line 1115
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 1116
    if-eqz v24, :cond_4c8

    const/high16 v5, -0x80000000

    or-int v8, v5, v20

    .line 1117
    :goto_30a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-boolean v9, v5, Lcom/android/nfc/NfcService;->mHostRouteEnabled:Z

    .line 1118
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-boolean v10, v5, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    .line 1115
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1119
    const/4 v11, 0x0

    .line 1120
    const/4 v12, 0x0

    .line 1115
    invoke-interface/range {v4 .. v12}, Lcom/android/nfc/DeviceHost;->changeDiscovery(IIIIZZZI)I

    .end local v11    # "enableP2p":Z
    move-result v25

    .line 1132
    :goto_31e
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/DiscoveryManager;->mPollMask:I

    .line 1133
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/DiscoveryManager;->mP2pListenMask:I

    .line 1134
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/nfc/DiscoveryManager;->mListenMask:I

    .line 1135
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/nfc/DiscoveryManager;->mListenMode:I

    .line 1137
    if-eqz v25, :cond_343

    .line 1138
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/nfc/DiscoveryManager;->mIsDirty:Z

    .line 1139
    monitor-enter p0

    .line 1140
    :try_start_33c
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/nfc/DiscoveryManager;->mForceCommitRouting:Z
    :try_end_342
    .catchall {:try_start_33c .. :try_end_342} :catchall_507

    monitor-exit p0

    .line 1145
    :cond_343
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/nfc/DiscoveryManager;->mPowerState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_34f

    .line 1146
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/nfc/DiscoveryManager;->mPowerState:I

    .line 1149
    :cond_34f
    return v25

    .line 969
    .end local v7    # "newListenMask":I
    .end local v13    # "disableSeMask":I
    .end local v14    # "enableSeMask":I
    .end local v15    # "isHceAllowed":Z
    .end local v17    # "newListenMode":I
    .end local v18    # "newP2pListenMask":I
    .end local v19    # "newPollMask":I
    .end local v20    # "newSeMask":I
    .end local v21    # "nfcUnlockManager":Lcom/android/nfc/NfcUnlockManager;
    .restart local v11    # "enableP2p":Z
    .restart local v24    # "reroute":Z
    :catchall_350
    move-exception v4

    monitor-exit p0

    throw v4

    .line 978
    :cond_353
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/DiscoveryManager;->mSeMask:I

    move/from16 v20, v0

    .restart local v20    # "newSeMask":I
    goto/16 :goto_c0

    .line 979
    :cond_35b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/DiscoveryManager;->mListenMode:I

    move/from16 v17, v0

    goto/16 :goto_c6

    .line 1026
    .end local v24    # "reroute":Z
    .restart local v13    # "disableSeMask":I
    .restart local v14    # "enableSeMask":I
    .restart local v17    # "newListenMode":I
    :cond_363
    const/4 v4, 0x0

    goto/16 :goto_1df

    .line 1033
    :cond_366
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/nfc/DiscoveryManager;->mIsHceAllowed:Z

    goto/16 :goto_1ef

    .line 1044
    .restart local v15    # "isHceAllowed":Z
    :cond_36c
    if-nez p1, :cond_376

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mHostRouteEnabled:Z

    if-eqz v4, :cond_22d

    .line 1045
    :cond_376
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_383

    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "Disabling HCE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    :cond_383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/nfc/NfcService;->mHostRouteEnabled:Z

    .line 1047
    const/16 v16, 0x1

    goto/16 :goto_22d

    .line 1051
    :cond_38e
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/nfc/DiscoveryManager;->mListenMask:I

    .restart local v7    # "newListenMask":I
    goto/16 :goto_233

    .line 1057
    :cond_394
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/DiscoveryManager;->mPollMask:I

    move/from16 v19, v0

    .restart local v19    # "newPollMask":I
    goto/16 :goto_26e

    .line 1058
    :cond_39c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/nfc/DiscoveryManager;->mP2pListenMask:I

    move/from16 v18, v0

    .restart local v18    # "newP2pListenMask":I
    goto/16 :goto_274

    .line 1065
    .restart local v21    # "nfcUnlockManager":Lcom/android/nfc/NfcUnlockManager;
    :cond_3a4
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_3bf

    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "NFC-C ON: %x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_3bf
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    .line 1067
    const/16 v16, 0x1

    goto/16 :goto_2a5

    .line 1071
    :cond_3ca
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_3d7

    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "Enabling reader mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_3d7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    .line 1073
    const/16 v16, 0x1

    goto/16 :goto_2bb

    .line 1081
    :cond_3e2
    const/4 v11, 0x1

    goto/16 :goto_2f8

    .line 1082
    :cond_3e5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mInProvisionMode:Z

    if-eqz v4, :cond_437

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mScreenState:I

    .line 1083
    const/4 v5, 0x2

    .line 1082
    if-lt v4, v5, :cond_437

    .line 1083
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/nfc/DiscoveryManager;->mPowerState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_437

    .line 1084
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    if-nez v4, :cond_429

    .line 1085
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_420

    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "NFC-C ON: %x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_420
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    .line 1087
    const/16 v16, 0x1

    .line 1089
    :cond_429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    if-eqz v4, :cond_434

    const/4 v11, 0x0

    goto/16 :goto_2f8

    :cond_434
    const/4 v11, 0x1

    goto/16 :goto_2f8

    .line 1090
    :cond_437
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget v4, v4, Lcom/android/nfc/NfcService;->mScreenState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_48a

    .line 1091
    invoke-virtual/range {v21 .. v21}, Lcom/android/nfc/NfcUnlockManager;->isLockscreenPollingEnabled()Z

    move-result v4

    .line 1090
    if-eqz v4, :cond_48a

    .line 1091
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v4

    .line 1090
    if-eqz v4, :cond_48a

    .line 1092
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/nfc/DiscoveryManager;->mPowerState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_48a

    .line 1093
    invoke-virtual/range {v21 .. v21}, Lcom/android/nfc/NfcUnlockManager;->getLockscreenPollMask()I

    move-result v4

    and-int v19, v19, v4

    .line 1094
    const/16 v18, 0x0

    .line 1095
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_47a

    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "NFC-C ON: %x"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_47a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    .line 1097
    const/16 v16, 0x1

    .line 1098
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/nfc/DiscoveryManager;->mIsDirty:Z

    goto/16 :goto_2f8

    .line 1100
    :cond_48a
    if-nez p1, :cond_494

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    if-eqz v4, :cond_2f8

    .line 1101
    :cond_494
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_4a1

    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "NFC-C OFF"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :cond_4a1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-boolean v4, v4, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    if-eqz v4, :cond_4bd

    .line 1103
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_4b6

    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "Disabling reader mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    :cond_4b6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    .line 1106
    :cond_4bd
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    .line 1107
    const/16 v16, 0x1

    goto/16 :goto_2f8

    :cond_4c8
    move/from16 v8, v20

    .line 1116
    goto/16 :goto_30a

    .line 1122
    :cond_4cc
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/nfc/DiscoveryManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 1123
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-boolean v5, v5, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    if-eqz v5, :cond_500

    move/from16 v5, v19

    .line 1124
    :goto_4da
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-boolean v6, v6, Lcom/android/nfc/NfcService;->mNfcPollingEnabled:Z

    if-eqz v6, :cond_502

    move/from16 v6, v18

    .line 1126
    :goto_4e4
    if-eqz v24, :cond_504

    const/high16 v8, -0x80000000

    or-int v8, v8, v20

    .line 1127
    :goto_4ea
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-boolean v9, v9, Lcom/android/nfc/NfcService;->mHostRouteEnabled:Z

    .line 1128
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-boolean v10, v10, Lcom/android/nfc/NfcService;->mReaderModeEnabled:Z

    .line 1130
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/nfc/DiscoveryManager;->mDefaultRoute:I

    .line 1122
    invoke-interface/range {v4 .. v12}, Lcom/android/nfc/DeviceHost;->changeDiscovery(IIIIZZZI)I

    move-result v25

    goto/16 :goto_31e

    .line 1123
    :cond_500
    const/4 v5, 0x0

    goto :goto_4da

    .line 1124
    :cond_502
    const/4 v6, 0x0

    goto :goto_4e4

    :cond_504
    move/from16 v8, v20

    .line 1126
    goto :goto_4ea

    .line 1139
    .end local v11    # "enableP2p":Z
    :catchall_507
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public deinitialize()V
    .registers 2

    .prologue
    .line 450
    invoke-virtual {p0}, Lcom/android/nfc/DiscoveryManager;->popDiscoveryExceptDefault()I

    .line 451
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/DiscoveryManager;->mIsInit:Z

    .line 452
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/android/nfc/DiscoveryManager;->disableSecureElement(I)V

    .line 449
    return-void
.end method

.method disableRouting(I)I
    .registers 11
    .param p1, "mask"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 847
    const/4 v2, 0x0

    .line 848
    .local v2, "ret":I
    sget-boolean v3, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v3, :cond_1c

    const-string/jumbo v3, "DiscoveryManager"

    const-string/jumbo v4, "enableRouting: %x"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_1c
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    sget-object v3, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    array-length v3, v3

    if-ge v0, v3, :cond_54

    .line 850
    shl-int v1, v8, v0

    .line 851
    .local v1, "idMask":I
    and-int v3, v1, p1

    if-ne v3, v1, :cond_7c

    sget-object v3, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v3, v3, v0

    if-eqz v3, :cond_7c

    .line 852
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    sget-object v4, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v4, v4, v0

    invoke-interface {v3, v4}, Lcom/android/nfc/DeviceHost;->clearTechRouting(I)I

    move-result v2

    .line 853
    if-eqz v2, :cond_55

    .line 854
    const-string/jumbo v3, "DiscoveryManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to clear tech routing, ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    .end local v1    # "idMask":I
    :cond_54
    :goto_54
    return v2

    .line 857
    .restart local v1    # "idMask":I
    :cond_55
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    sget-object v4, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v4, v4, v0

    invoke-interface {v3, v4}, Lcom/android/nfc/DeviceHost;->clearProtoRouting(I)I

    move-result v2

    .line 858
    if-eqz v2, :cond_7c

    .line 859
    const-string/jumbo v3, "DiscoveryManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to clear proto routing, ret="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 849
    :cond_7c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d
.end method

.method protected disableSecureElement(I)V
    .registers 10
    .param p1, "mask"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 761
    sget-boolean v2, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v2, :cond_1b

    const-string/jumbo v2, "DiscoveryManager"

    const-string/jumbo v3, "disableSecureElement: %x"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_1b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1c
    sget-object v2, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    array-length v2, v2

    if-ge v0, v2, :cond_40

    .line 763
    shl-int v1, v7, v0

    .line 764
    .local v1, "idMask":I
    and-int v2, v1, p1

    if-ne v2, v1, :cond_3d

    .line 765
    sget-object v2, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v2, v2, v0

    if-eqz v2, :cond_3d

    .line 766
    sget-object v2, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v2, v2, v0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3d

    .line 767
    iget-object v2, p0, Lcom/android/nfc/DiscoveryManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    sget-object v3, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v3, v3, v0

    invoke-interface {v2, v3}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 762
    :cond_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 760
    .end local v1    # "idMask":I
    :cond_40
    return-void
.end method

.method enableRouting(I)I
    .registers 12
    .param p1, "mask"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 811
    const/4 v3, 0x0

    .line 812
    .local v3, "ret":I
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_1c

    const-string/jumbo v4, "DiscoveryManager"

    const-string/jumbo v5, "enableRouting: %x"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :cond_1c
    const/4 v2, 0x0

    .line 814
    .local v2, "r":Lcom/android/nfc/DiscoveryManager$Routing;
    const/4 v0, 0x0

    .end local v2    # "r":Lcom/android/nfc/DiscoveryManager$Routing;
    .local v0, "i":I
    :goto_1e
    sget-object v4, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    array-length v4, v4

    if-ge v0, v4, :cond_9a

    .line 815
    shl-int v1, v9, v0

    .line 816
    .local v1, "idMask":I
    and-int v4, v1, p1

    if-ne v4, v1, :cond_7d

    sget-object v4, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v4, v4, v0

    if-eqz v4, :cond_7d

    .line 817
    sget-object v4, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/android/nfc/DiscoveryManager;->getTechRouting(I)Lcom/android/nfc/DiscoveryManager$Routing;

    move-result-object v2

    .line 818
    .local v2, "r":Lcom/android/nfc/DiscoveryManager$Routing;
    if-eqz v2, :cond_56

    .line 819
    iget-object v4, p0, Lcom/android/nfc/DiscoveryManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 820
    iget v5, v2, Lcom/android/nfc/DiscoveryManager$Routing;->seId:I

    iget v6, v2, Lcom/android/nfc/DiscoveryManager$Routing;->switchOn:I

    iget v7, v2, Lcom/android/nfc/DiscoveryManager$Routing;->switchOff:I

    iget v8, v2, Lcom/android/nfc/DiscoveryManager$Routing;->batteryOff:I

    .line 819
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/nfc/DeviceHost;->setTechRouting(IIII)I

    move-result v3

    .line 821
    if-nez v3, :cond_80

    .line 822
    iget-object v4, p0, Lcom/android/nfc/DiscoveryManager;->mCurrentRouting:Lcom/android/nfc/DiscoveryManager$RoutingSettings;

    .line 823
    iget v5, v2, Lcom/android/nfc/DiscoveryManager$Routing;->seId:I

    iget v6, v2, Lcom/android/nfc/DiscoveryManager$Routing;->switchOn:I

    iget v7, v2, Lcom/android/nfc/DiscoveryManager$Routing;->switchOff:I

    iget v8, v2, Lcom/android/nfc/DiscoveryManager$Routing;->batteryOff:I

    .line 822
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/nfc/DiscoveryManager$RoutingSettings;->-wrap4(Lcom/android/nfc/DiscoveryManager$RoutingSettings;IIII)V

    .line 829
    :cond_56
    sget-object v4, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/android/nfc/DiscoveryManager;->getProtoRouting(I)Lcom/android/nfc/DiscoveryManager$Routing;

    move-result-object v2

    .line 830
    if-eqz v2, :cond_7d

    .line 831
    iget-object v4, p0, Lcom/android/nfc/DiscoveryManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    .line 832
    iget v5, v2, Lcom/android/nfc/DiscoveryManager$Routing;->seId:I

    iget v6, v2, Lcom/android/nfc/DiscoveryManager$Routing;->switchOn:I

    iget v7, v2, Lcom/android/nfc/DiscoveryManager$Routing;->switchOff:I

    iget v8, v2, Lcom/android/nfc/DiscoveryManager$Routing;->batteryOff:I

    .line 831
    invoke-interface {v4, v5, v6, v7, v8}, Lcom/android/nfc/DeviceHost;->setProtoRouting(IIII)I

    move-result v3

    .line 833
    if-nez v3, :cond_9b

    .line 834
    iget-object v4, p0, Lcom/android/nfc/DiscoveryManager;->mCurrentRouting:Lcom/android/nfc/DiscoveryManager$RoutingSettings;

    .line 835
    iget v5, v2, Lcom/android/nfc/DiscoveryManager$Routing;->seId:I

    iget v6, v2, Lcom/android/nfc/DiscoveryManager$Routing;->switchOn:I

    iget v7, v2, Lcom/android/nfc/DiscoveryManager$Routing;->switchOff:I

    iget v8, v2, Lcom/android/nfc/DiscoveryManager$Routing;->batteryOff:I

    .line 834
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/nfc/DiscoveryManager$RoutingSettings;->-wrap3(Lcom/android/nfc/DiscoveryManager$RoutingSettings;IIII)V

    .line 814
    .end local v2    # "r":Lcom/android/nfc/DiscoveryManager$Routing;
    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 825
    .restart local v2    # "r":Lcom/android/nfc/DiscoveryManager$Routing;
    :cond_80
    const-string/jumbo v4, "DiscoveryManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to set tech routing, ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    .end local v1    # "idMask":I
    .end local v2    # "r":Lcom/android/nfc/DiscoveryManager$Routing;
    :cond_9a
    :goto_9a
    return v3

    .line 837
    .restart local v1    # "idMask":I
    .restart local v2    # "r":Lcom/android/nfc/DiscoveryManager$Routing;
    :cond_9b
    const-string/jumbo v4, "DiscoveryManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to set proto routing, ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9a
.end method

.method protected enableSecureElement(I)I
    .registers 15
    .param p1, "mask"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 694
    sget-boolean v6, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v6, :cond_1c

    const-string/jumbo v6, "DiscoveryManager"

    const-string/jumbo v7, "enableSecureElement: %x"

    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_1c
    sget-boolean v6, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v6, :cond_37

    const-string/jumbo v6, "DiscoveryManager"

    const-string/jumbo v7, "OnEnter: Unchecked SEs: %x"

    new-array v8, v11, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/nfc/DiscoveryManager;->mUncheckedSeMask:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_37
    sget-boolean v6, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v6, :cond_52

    const-string/jumbo v6, "DiscoveryManager"

    const-string/jumbo v7, "OnEnter: Available SEs: %x"

    new-array v8, v11, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/nfc/DiscoveryManager;->mAvailableSeMask:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_52
    const/4 v0, 0x0

    .line 698
    .local v0, "enabled":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_54
    sget-object v6, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    array-length v6, v6

    if-ge v1, v6, :cond_13f

    .line 699
    shl-int v2, v11, v1

    .line 700
    .local v2, "idMask":I
    and-int v6, v2, p1

    if-ne v6, v2, :cond_c0

    .line 701
    sget-object v6, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v6, v6, v1

    if-eqz v6, :cond_c0

    .line 702
    sget-object v6, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v6, v6, v1

    const/4 v7, 0x4

    if-eq v6, v7, :cond_c0

    .line 704
    invoke-virtual {p0}, Lcom/android/nfc/DiscoveryManager;->isSimAbsent()Z

    move-result v3

    .line 705
    .local v3, "isSimAbsent":Z
    iget v6, p0, Lcom/android/nfc/DiscoveryManager;->mUncheckedSeMask:I

    and-int/2addr v6, v2

    if-nez v6, :cond_7a

    iget v6, p0, Lcom/android/nfc/DiscoveryManager;->mAvailableSeMask:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_c3

    :cond_7a
    const/4 v5, 0x1

    .line 706
    .local v5, "tryEnableSe":Z
    :goto_7b
    sget-object v6, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v6, v6, v1

    if-ne v6, v12, :cond_84

    if-eqz v3, :cond_84

    .line 707
    const/4 v5, 0x0

    .line 709
    :cond_84
    if-eqz v5, :cond_8f

    .line 711
    iget-object v6, p0, Lcom/android/nfc/DiscoveryManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    sget-object v7, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v7, v7, v1

    invoke-interface {v6, v7}, Lcom/android/nfc/DeviceHost;->doSelectSecureElement(I)V

    .line 713
    :cond_8f
    iget v6, p0, Lcom/android/nfc/DiscoveryManager;->mUncheckedSeMask:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_bc

    .line 714
    const/4 v4, 0x0

    .line 715
    .local v4, "needsDeselect":Z
    sget-object v6, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v6, v6, v1

    if-ne v6, v12, :cond_d9

    .line 716
    if-eqz v3, :cond_c5

    .line 717
    sget-boolean v6, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v6, :cond_aa

    const-string/jumbo v6, "DiscoveryManager"

    const-string/jumbo v7, "UICC is absent. taken as unavailable for SWP"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    :cond_aa
    iget v6, p0, Lcom/android/nfc/DiscoveryManager;->mAvailableSeMask:I

    not-int v7, v2

    and-int/2addr v6, v7

    iput v6, p0, Lcom/android/nfc/DiscoveryManager;->mAvailableSeMask:I

    .line 719
    const/4 v4, 0x1

    .line 742
    :goto_b1
    if-eqz v4, :cond_bc

    .line 746
    iget-object v6, p0, Lcom/android/nfc/DiscoveryManager;->mDeviceHost:Lcom/android/nfc/DeviceHost;

    sget-object v7, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v7, v7, v1

    invoke-interface {v6, v7}, Lcom/android/nfc/DeviceHost;->doDeselectSecureElement(I)V

    .line 749
    .end local v4    # "needsDeselect":Z
    :cond_bc
    iget v6, p0, Lcom/android/nfc/DiscoveryManager;->mAvailableSeMask:I

    and-int/2addr v6, v2

    or-int/2addr v0, v6

    .line 698
    .end local v3    # "isSimAbsent":Z
    .end local v5    # "tryEnableSe":Z
    :cond_c0
    add-int/lit8 v1, v1, 0x1

    goto :goto_54

    .line 705
    .restart local v3    # "isSimAbsent":Z
    :cond_c3
    const/4 v5, 0x0

    .restart local v5    # "tryEnableSe":Z
    goto :goto_7b

    .line 721
    .restart local v4    # "needsDeselect":Z
    :cond_c5
    sget-boolean v6, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v6, :cond_d2

    const-string/jumbo v6, "DiscoveryManager"

    const-string/jumbo v7, "UICC is not absent. taken as available for SWP"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_d2
    iget v6, p0, Lcom/android/nfc/DiscoveryManager;->mAvailableSeMask:I

    or-int/2addr v6, v2

    iput v6, p0, Lcom/android/nfc/DiscoveryManager;->mAvailableSeMask:I

    .line 723
    const/4 v4, 0x0

    goto :goto_b1

    .line 725
    :cond_d9
    iget-object v6, p0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    sget-object v7, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v7, v7, v1

    invoke-virtual {v6, v7}, Lcom/android/nfc/NfcService;->isSeLinkCapable(I)Z

    move-result v6

    if-eqz v6, :cond_114

    .line 730
    sget-boolean v6, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v6, :cond_107

    const-string/jumbo v6, "DiscoveryManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_NAME:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is available"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_107
    iget v6, p0, Lcom/android/nfc/DiscoveryManager;->mAvailableSeMask:I

    or-int/2addr v6, v2

    iput v6, p0, Lcom/android/nfc/DiscoveryManager;->mAvailableSeMask:I

    .line 735
    iget v6, p0, Lcom/android/nfc/DiscoveryManager;->mUncheckedSeMask:I

    not-int v7, v2

    and-int/2addr v6, v7

    iput v6, p0, Lcom/android/nfc/DiscoveryManager;->mUncheckedSeMask:I

    .line 736
    const/4 v4, 0x0

    goto :goto_b1

    .line 738
    :cond_114
    sget-boolean v6, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v6, :cond_136

    const-string/jumbo v6, "DiscoveryManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_NAME:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is unavailable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_136
    iget v6, p0, Lcom/android/nfc/DiscoveryManager;->mUncheckedSeMask:I

    not-int v7, v2

    and-int/2addr v6, v7

    iput v6, p0, Lcom/android/nfc/DiscoveryManager;->mUncheckedSeMask:I

    .line 740
    const/4 v4, 0x1

    goto/16 :goto_b1

    .line 752
    .end local v2    # "idMask":I
    .end local v3    # "isSimAbsent":Z
    .end local v4    # "needsDeselect":Z
    .end local v5    # "tryEnableSe":Z
    :cond_13f
    sget-boolean v6, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v6, :cond_15a

    const-string/jumbo v6, "DiscoveryManager"

    const-string/jumbo v7, "OnExit: Unchecked SEs: %x"

    new-array v8, v11, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/nfc/DiscoveryManager;->mUncheckedSeMask:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    :cond_15a
    sget-boolean v6, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v6, :cond_175

    const-string/jumbo v6, "DiscoveryManager"

    const-string/jumbo v7, "OnExit: Available SEs: %x"

    new-array v8, v11, [Ljava/lang/Object;

    iget v9, p0, Lcom/android/nfc/DiscoveryManager;->mAvailableSeMask:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_175
    return v0
.end method

.method enableSwitchedOffDiscovery()V
    .registers 2

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/android/nfc/DiscoveryManager;->popDiscoveryExceptDefault()I

    .line 661
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/nfc/DiscoveryManager;->mPowerState:I

    .line 659
    return-void
.end method

.method getListenMask()I
    .registers 6

    .prologue
    .line 514
    const/4 v2, -0x1

    .line 515
    .local v2, "listenMask":I
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->isPollingAllowed()Z

    move-result v1

    .line 516
    .local v1, "isPollingAllowed":Z
    iget v0, p0, Lcom/android/nfc/DiscoveryManager;->mMaxPriority:I

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_5a

    .line 517
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->listenMask:Ljava/lang/Integer;

    if-eqz v3, :cond_3e

    .line 518
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->isEffectiveOnPollingDisabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_27

    if-eqz v1, :cond_3e

    .line 519
    :cond_27
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->compositionMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_41

    .line 520
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->listenMask:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v2, v3

    .line 516
    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 521
    :cond_41
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->compositionMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3e

    .line 522
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->listenMask:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v3, v2

    return v3

    .line 527
    :cond_5a
    and-int/lit8 v3, v2, 0x7

    return v3
.end method

.method getListenMode()I
    .registers 4

    .prologue
    .line 587
    iget-object v2, p0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isPollingAllowed()Z

    move-result v1

    .line 588
    .local v1, "isPollingAllowed":Z
    iget v0, p0, Lcom/android/nfc/DiscoveryManager;->mMaxPriority:I

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_34

    .line 589
    iget-object v2, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v2, v2, v0

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/nfc/DiscoveryManager$Params;->listenMode:Ljava/lang/Integer;

    if-eqz v2, :cond_31

    .line 590
    iget-object v2, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/nfc/DiscoveryManager$Params;->isEffectiveOnPollingDisabled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_26

    if-eqz v1, :cond_31

    .line 591
    :cond_26
    iget-object v2, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/android/nfc/DiscoveryManager$Params;->listenMode:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 588
    :cond_31
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 595
    :cond_34
    const/4 v2, 0x1

    return v2
.end method

.method getP2pListenMask()I
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 489
    const/4 v2, -0x1

    .line 490
    .local v2, "p2pListenMask":I
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->isPollingAllowed()Z

    move-result v1

    .line 491
    .local v1, "isPollingAllowed":Z
    iget v0, p0, Lcom/android/nfc/DiscoveryManager;->mMaxPriority:I

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_5a

    .line 492
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3f

    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->p2pListenMask:Ljava/lang/Integer;

    if-eqz v3, :cond_3f

    .line 493
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->isEffectiveOnPollingDisabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_28

    if-eqz v1, :cond_3f

    .line 494
    :cond_28
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->compositionMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_42

    .line 495
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->p2pListenMask:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v2, v3

    .line 491
    :cond_3f
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 496
    :cond_42
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->compositionMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v4, :cond_3f

    .line 497
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->p2pListenMask:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v3, v2

    return v3

    .line 502
    :cond_5a
    and-int/lit8 v3, v2, 0x1

    return v3
.end method

.method getPollMask()I
    .registers 6

    .prologue
    .line 464
    const/4 v2, -0x1

    .line 465
    .local v2, "pollMask":I
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->isPollingAllowed()Z

    move-result v1

    .line 466
    .local v1, "isPollingAllowed":Z
    iget v0, p0, Lcom/android/nfc/DiscoveryManager;->mMaxPriority:I

    .local v0, "i":I
    :goto_9
    if-ltz v0, :cond_5a

    .line 467
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    if-eqz v3, :cond_3e

    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->pollMask:Ljava/lang/Integer;

    if-eqz v3, :cond_3e

    .line 468
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->isEffectiveOnPollingDisabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_27

    if-eqz v1, :cond_3e

    .line 469
    :cond_27
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->compositionMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_41

    .line 470
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->pollMask:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v2, v3

    .line 466
    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 471
    :cond_41
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->compositionMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3e

    .line 472
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->pollMask:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v3, v2

    return v3

    .line 477
    :cond_5a
    and-int/lit8 v3, v2, 0x7

    return v3
.end method

.method getProtoRouting(I)Lcom/android/nfc/DiscoveryManager$Routing;
    .registers 9
    .param p1, "seId"    # I

    .prologue
    const/4 v6, 0x0

    .line 799
    const/4 v1, 0x0

    .line 800
    .local v1, "r":Lcom/android/nfc/DiscoveryManager$Routing;
    iget v0, p0, Lcom/android/nfc/DiscoveryManager;->mMaxPriority:I

    .end local v1    # "r":Lcom/android/nfc/DiscoveryManager$Routing;
    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_3b

    .line 801
    iget-object v2, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v2, v2, v0

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/android/nfc/DiscoveryManager$Params;->getProtoRouting(I)Lcom/android/nfc/DiscoveryManager$Routing;

    move-result-object v1

    .local v1, "r":Lcom/android/nfc/DiscoveryManager$Routing;
    if-eqz v1, :cond_38

    .line 802
    sget-boolean v2, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v2, :cond_37

    const-string/jumbo v2, "DiscoveryManager"

    .line 803
    const-string/jumbo v3, "Found proto routing for priority: %d, SE %x"

    .line 802
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 803
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 802
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    :cond_37
    return-object v1

    .line 800
    .end local v1    # "r":Lcom/android/nfc/DiscoveryManager$Routing;
    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 807
    :cond_3b
    return-object v1
.end method

.method getSeMask()I
    .registers 7

    .prologue
    .line 539
    const/16 v2, 0xf

    .line 540
    .local v2, "seMask":I
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->isPollingAllowed()Z

    move-result v1

    .line 541
    .local v1, "isPollingAllowed":Z
    iget v0, p0, Lcom/android/nfc/DiscoveryManager;->mMaxPriority:I

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_8a

    .line 542
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    if-eqz v3, :cond_6e

    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->seMask:Ljava/lang/Integer;

    if-eqz v3, :cond_6e

    .line 543
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->isEffectiveOnPollingDisabled:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_28

    if-eqz v1, :cond_6e

    .line 544
    :cond_28
    sget-boolean v3, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v3, :cond_57

    const-string/jumbo v3, "DiscoveryManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SeMask for priority: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/android/nfc/DiscoveryManager$Params;->seMask:Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_57
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->compositionMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_71

    .line 546
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->seMask:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v2, v3

    .line 541
    :cond_6e
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 547
    :cond_71
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->compositionMode:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6e

    .line 548
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->seMask:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/2addr v3, v2

    return v3

    .line 553
    :cond_8a
    return v2
.end method

.method protected getSeMaskToBeEnabled(IIZ)I
    .registers 13
    .param p1, "mask"    # I
    .param p2, "listenMode"    # I
    .param p3, "force"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 665
    sget-boolean v3, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v3, :cond_1b

    const-string/jumbo v3, "DiscoveryManager"

    const-string/jumbo v4, "enter: getSeMaskToBeEnabled: %x"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_1b
    const/4 v0, 0x0

    .line 667
    .local v0, "enable":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    sget-object v3, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    array-length v3, v3

    if-ge v1, v3, :cond_45

    .line 668
    shl-int v2, v8, v1

    .line 669
    .local v2, "idMask":I
    and-int v3, v2, p1

    if-ne v3, v2, :cond_42

    .line 670
    sget-object v3, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v3, v3, v1

    if-eqz v3, :cond_42

    .line 671
    sget-object v3, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v3, v3, v1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_42

    .line 672
    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    sget-object v4, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4, p2, p3}, Lcom/android/nfc/NfcService;->isSeAllowedToBeEnabled(IIZ)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 673
    or-int/2addr v0, v2

    .line 667
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 677
    .end local v2    # "idMask":I
    :cond_45
    sget-boolean v3, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v3, :cond_5e

    const-string/jumbo v3, "DiscoveryManager"

    const-string/jumbo v4, "exit: getSeMaskToBeEnabled: %x"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_5e
    return v0
.end method

.method getTechRouting(I)Lcom/android/nfc/DiscoveryManager$Routing;
    .registers 9
    .param p1, "seId"    # I

    .prologue
    const/4 v6, 0x0

    .line 780
    const/4 v1, 0x0

    .line 781
    .local v1, "r":Lcom/android/nfc/DiscoveryManager$Routing;
    iget v0, p0, Lcom/android/nfc/DiscoveryManager;->mMaxPriority:I

    .end local v1    # "r":Lcom/android/nfc/DiscoveryManager$Routing;
    .local v0, "i":I
    :goto_4
    if-ltz v0, :cond_3b

    .line 782
    iget-object v2, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v2, v2, v0

    if-eqz v2, :cond_38

    iget-object v2, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lcom/android/nfc/DiscoveryManager$Params;->getTechRouting(I)Lcom/android/nfc/DiscoveryManager$Routing;

    move-result-object v1

    .local v1, "r":Lcom/android/nfc/DiscoveryManager$Routing;
    if-eqz v1, :cond_38

    .line 783
    sget-boolean v2, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v2, :cond_37

    const-string/jumbo v2, "DiscoveryManager"

    .line 784
    const-string/jumbo v3, "Found tech routing for priority: %d, SE %d"

    .line 783
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 784
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 783
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_37
    return-object v1

    .line 781
    .end local v1    # "r":Lcom/android/nfc/DiscoveryManager$Routing;
    :cond_38
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 788
    :cond_3b
    return-object v1
.end method

.method public initialize()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 435
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/DiscoveryManager;->mUncheckedSeMask:I

    .line 436
    iput v1, p0, Lcom/android/nfc/DiscoveryManager;->mAvailableSeMask:I

    .line 437
    iput v1, p0, Lcom/android/nfc/DiscoveryManager;->mPollMask:I

    .line 438
    iput v1, p0, Lcom/android/nfc/DiscoveryManager;->mP2pListenMask:I

    .line 439
    iput v1, p0, Lcom/android/nfc/DiscoveryManager;->mListenMask:I

    .line 440
    iput v1, p0, Lcom/android/nfc/DiscoveryManager;->mSeMask:I

    .line 441
    iput v1, p0, Lcom/android/nfc/DiscoveryManager;->mListenMode:I

    .line 442
    iput-boolean v2, p0, Lcom/android/nfc/DiscoveryManager;->mIsHceAllowed:Z

    .line 443
    iput-boolean v2, p0, Lcom/android/nfc/DiscoveryManager;->mIsDirty:Z

    .line 444
    iput-boolean v2, p0, Lcom/android/nfc/DiscoveryManager;->mIsInit:Z

    .line 445
    iput-boolean v2, p0, Lcom/android/nfc/DiscoveryManager;->mForceCommitRouting:Z

    .line 446
    iput v2, p0, Lcom/android/nfc/DiscoveryManager;->mPowerState:I

    .line 434
    return-void
.end method

.method isHceAllowed()Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 564
    iget-object v4, p0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-boolean v1, v4, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    .line 565
    .local v1, "isHceAllowed":Z
    iget-object v4, p0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->isPollingAllowed()Z

    move-result v2

    .line 566
    .local v2, "isPollingAllowed":Z
    iget v0, p0, Lcom/android/nfc/DiscoveryManager;->mMaxPriority:I

    .end local v1    # "isHceAllowed":Z
    .local v0, "i":I
    :goto_d
    if-ltz v0, :cond_62

    .line 567
    iget-object v4, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v4, v4, v0

    if-eqz v4, :cond_43

    iget-object v4, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/nfc/DiscoveryManager$Params;->isHceAllowed:Ljava/lang/Boolean;

    if-eqz v4, :cond_43

    .line 568
    iget-object v4, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/nfc/DiscoveryManager$Params;->isEffectiveOnPollingDisabled:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2b

    if-eqz v2, :cond_43

    .line 569
    :cond_2b
    iget-object v4, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/nfc/DiscoveryManager$Params;->compositionMode:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_48

    .line 570
    if-eqz v1, :cond_46

    iget-object v4, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/nfc/DiscoveryManager$Params;->isHceAllowed:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 566
    :cond_43
    :goto_43
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 570
    :cond_46
    const/4 v1, 0x0

    .local v1, "isHceAllowed":Z
    goto :goto_43

    .line 571
    .end local v1    # "isHceAllowed":Z
    :cond_48
    iget-object v4, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/android/nfc/DiscoveryManager$Params;->compositionMode:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_43

    .line 572
    if-eqz v1, :cond_61

    iget-object v3, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/android/nfc/DiscoveryManager$Params;->isHceAllowed:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    :cond_61
    return v3

    .line 577
    :cond_62
    return v1
.end method

.method isRoutingChanged(I)Z
    .registers 9
    .param p1, "mask"    # I

    .prologue
    .line 890
    const/4 v3, 0x0

    .line 891
    .local v3, "ret":Z
    const/4 v2, 0x0

    .line 892
    .local v2, "r":Lcom/android/nfc/DiscoveryManager$Routing;
    const/4 v0, 0x0

    .end local v2    # "r":Lcom/android/nfc/DiscoveryManager$Routing;
    .local v0, "i":I
    :goto_3
    sget-object v4, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    array-length v4, v4

    if-ge v0, v4, :cond_2a

    .line 893
    const/4 v4, 0x1

    shl-int v1, v4, v0

    .line 894
    .local v1, "idMask":I
    and-int v4, v1, p1

    if-ne v4, v1, :cond_5f

    sget-object v4, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v4, v4, v0

    if-eqz v4, :cond_5f

    .line 895
    sget-object v4, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/android/nfc/DiscoveryManager;->getTechRouting(I)Lcom/android/nfc/DiscoveryManager$Routing;

    move-result-object v2

    .line 896
    .local v2, "r":Lcom/android/nfc/DiscoveryManager$Routing;
    iget-object v4, p0, Lcom/android/nfc/DiscoveryManager;->mCurrentRouting:Lcom/android/nfc/DiscoveryManager$RoutingSettings;

    sget-object v5, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v5, v5, v0

    invoke-static {v4, v5, v2}, Lcom/android/nfc/DiscoveryManager$RoutingSettings;->-wrap1(Lcom/android/nfc/DiscoveryManager$RoutingSettings;ILcom/android/nfc/DiscoveryManager$Routing;)Z

    move-result v4

    if-nez v4, :cond_49

    .line 897
    const/4 v3, 0x1

    .line 908
    .end local v1    # "idMask":I
    .end local v2    # "r":Lcom/android/nfc/DiscoveryManager$Routing;
    :cond_2a
    :goto_2a
    sget-boolean v4, Lcom/android/nfc/DiscoveryManager;->DBG:Z

    if-eqz v4, :cond_48

    const-string/jumbo v4, "DiscoveryManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isRoutingChanged: ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_48
    return v3

    .line 901
    .restart local v1    # "idMask":I
    .restart local v2    # "r":Lcom/android/nfc/DiscoveryManager$Routing;
    :cond_49
    sget-object v4, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v4, v4, v0

    invoke-virtual {p0, v4}, Lcom/android/nfc/DiscoveryManager;->getProtoRouting(I)Lcom/android/nfc/DiscoveryManager$Routing;

    move-result-object v2

    .line 902
    iget-object v4, p0, Lcom/android/nfc/DiscoveryManager;->mCurrentRouting:Lcom/android/nfc/DiscoveryManager$RoutingSettings;

    sget-object v5, Lcom/android/nfc/DiscoveryManager;->SE_MASK_TO_ID:[I

    aget v5, v5, v0

    invoke-static {v4, v5, v2}, Lcom/android/nfc/DiscoveryManager$RoutingSettings;->-wrap0(Lcom/android/nfc/DiscoveryManager$RoutingSettings;ILcom/android/nfc/DiscoveryManager$Routing;)Z

    move-result v4

    if-nez v4, :cond_5f

    .line 903
    const/4 v3, 0x1

    .line 904
    goto :goto_2a

    .line 892
    .end local v2    # "r":Lcom/android/nfc/DiscoveryManager$Routing;
    :cond_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method protected isSimAbsent()Z
    .registers 5

    .prologue
    .line 683
    iget-object v2, p0, Lcom/android/nfc/DiscoveryManager;->mService:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    .line 684
    const-string/jumbo v3, "phone"

    .line 683
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 685
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 687
    .local v0, "simState":I
    const/4 v2, 0x0

    return v2
.end method

.method notifyCommitRouting()V
    .registers 2

    .prologue
    .line 872
    monitor-enter p0

    .line 873
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/nfc/DiscoveryManager;->mForceCommitRouting:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    monitor-exit p0

    .line 871
    return-void

    .line 872
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method notifyDefaultRouteChanged(I)V
    .registers 3
    .param p1, "seId"    # I

    .prologue
    .line 881
    iget v0, p0, Lcom/android/nfc/DiscoveryManager;->mDefaultRoute:I

    if-eq p1, v0, :cond_b

    .line 882
    iput p1, p0, Lcom/android/nfc/DiscoveryManager;->mDefaultRoute:I

    .line 883
    monitor-enter p0

    .line 884
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lcom/android/nfc/DiscoveryManager;->mForceCommitRouting:Z
    :try_end_a
    .catchall {:try_start_8 .. :try_end_a} :catchall_c

    monitor-exit p0

    .line 880
    :cond_b
    return-void

    .line 883
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method notifySimStateChanged()V
    .registers 2

    .prologue
    .line 916
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/DiscoveryManager;->mIsDirty:Z

    .line 915
    return-void
.end method

.method popDiscovery(I)I
    .registers 7
    .param p1, "priority"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 629
    iget v1, p0, Lcom/android/nfc/DiscoveryManager;->mMaxPriority:I

    if-le p1, v1, :cond_8

    .line 630
    return v4

    .line 632
    :cond_8
    iget-object v1, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aput-object v3, v1, p1

    .line 633
    iget v1, p0, Lcom/android/nfc/DiscoveryManager;->mMaxPriority:I

    if-ne p1, v1, :cond_2e

    .line 635
    move v0, p1

    .local v0, "i":I
    :goto_11
    if-ltz v0, :cond_21

    .line 636
    iget-object v1, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2f

    .line 637
    iget-object v1, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/android/nfc/DiscoveryManager$Params;->priority:I

    iput v1, p0, Lcom/android/nfc/DiscoveryManager;->mMaxPriority:I

    .line 641
    :cond_21
    if-nez v0, :cond_2b

    iget-object v1, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    aget-object v1, v1, v0

    if-nez v1, :cond_2b

    .line 642
    iput v4, p0, Lcom/android/nfc/DiscoveryManager;->mMaxPriority:I

    .line 644
    :cond_2b
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/DiscoveryManager;->mIsDirty:Z

    .line 646
    .end local v0    # "i":I
    :cond_2e
    return v2

    .line 635
    .restart local v0    # "i":I
    :cond_2f
    add-int/lit8 v0, v0, -0x1

    goto :goto_11
.end method

.method popDiscoveryExceptDefault()I
    .registers 3

    .prologue
    .line 653
    :goto_0
    iget v0, p0, Lcom/android/nfc/DiscoveryManager;->mMaxPriority:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_b

    .line 654
    iget v0, p0, Lcom/android/nfc/DiscoveryManager;->mMaxPriority:I

    invoke-virtual {p0, v0}, Lcom/android/nfc/DiscoveryManager;->popDiscovery(I)I

    goto :goto_0

    .line 656
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method pushDiscovery(Lcom/android/nfc/DiscoveryManager$Params;)I
    .registers 4
    .param p1, "p"    # Lcom/android/nfc/DiscoveryManager$Params;

    .prologue
    .line 608
    if-eqz p1, :cond_9

    iget v0, p1, Lcom/android/nfc/DiscoveryManager$Params;->priority:I

    iget-object v1, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    array-length v1, v1

    if-lt v0, v1, :cond_b

    .line 609
    :cond_9
    const/4 v0, -0x1

    return v0

    .line 611
    :cond_b
    iget-object v0, p0, Lcom/android/nfc/DiscoveryManager;->mParams:[Lcom/android/nfc/DiscoveryManager$Params;

    iget v1, p1, Lcom/android/nfc/DiscoveryManager$Params;->priority:I

    aput-object p1, v0, v1

    .line 612
    iget v0, p1, Lcom/android/nfc/DiscoveryManager$Params;->priority:I

    iget v1, p0, Lcom/android/nfc/DiscoveryManager;->mMaxPriority:I

    if-lt v0, v1, :cond_1e

    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/DiscoveryManager;->mIsDirty:Z

    .line 614
    iget v0, p1, Lcom/android/nfc/DiscoveryManager$Params;->priority:I

    iput v0, p0, Lcom/android/nfc/DiscoveryManager;->mMaxPriority:I

    .line 616
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

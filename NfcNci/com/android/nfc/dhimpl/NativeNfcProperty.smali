.class public Lcom/android/nfc/dhimpl/NativeNfcProperty;
.super Ljava/lang/Object;
.source "NativeNfcProperty.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$NfcProperty;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final DEBUG_CE_TECHNOLOGY:Ljava/lang/String; = "ce_technology"

.field private static final DEBUG_PREFERENCE:Ljava/lang/String; = "NciNativeNfcPropertyDebugPrefs"

.field public static final DEBUG_PROTOCOL_SE:Ljava/lang/String; = "protocol_se"

.field public static final DEBUG_TECHNOLOGY_SE:Ljava/lang/String; = "technology_se"

.field static final DEV_CONFIG_NXP_NCI:Ljava/lang/String; = "nxp.nci"

.field private static final NFC_CONFIG_DEFAULT_SE:Ljava/lang/String; = "default_se"

.field private static final NFC_CONFIG_DEFAULT_SE_ID:I = 0x3

.field private static final NFC_CONFIG_P2P_LISTEN_TECH:Ljava/lang/String; = "p2p_listen"

.field private static final NFC_CONFIG_P2P_LISTEN_TECH_ID:I = 0x2

.field private static final NFC_CONFIG_POLLING_TECH:Ljava/lang/String; = "polling"

.field private static final NFC_CONFIG_POLLING_TECH_ID:I = 0x0

.field private static final NFC_CONFIG_SUPPORT_EASYCARD_ID:I = 0x4

.field private static final NFC_CONFIG_UICC_LISTEN_TECH:Ljava/lang/String; = "uicc_listen"

.field private static final NFC_CONFIG_UICC_LISTEN_TECH_ID:I = 0x1

.field private static final NFC_SE_ACTIVE_DEFAULT:Ljava/lang/String;

.field private static final PREF:Ljava/lang/String; = "NciNativeNfcPropertyPrefs"

.field private static final SE_SIM_ENABLE:Z

.field private static final SE_SMX_ENABLE:Z

.field private static final TAG:Ljava/lang/String; = "NativeNfcProperty"

.field public static final UNSET_PREFERENCE:I = -0x1

.field private static sInstance:Lcom/android/nfc/dhimpl/NativeNfcProperty;


# instance fields
.field final DEV_CONFIG_NAME:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mDebugPrefs:Landroid/content/SharedPreferences;

.field private mDebugPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field private mNfcConfig:Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;

.field private mNfcService:Lcom/android/nfc/NfcService;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrefsEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/nfc/dhimpl/NativeNfcProperty;)Lcom/android/nfc/NfcService;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mNfcService:Lcom/android/nfc/NfcService;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/nfc/dhimpl/NativeNfcProperty;[B)[B
    .registers 3
    .param p1, "param"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doAntennaTest([B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/nfc/dhimpl/NativeNfcProperty;)[B
    .registers 2

    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doGetChipVersion()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/android/nfc/dhimpl/NativeNfcProperty;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doGetSecureElement()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap11(Lcom/android/nfc/dhimpl/NativeNfcProperty;II)I
    .registers 4
    .param p1, "tech"    # I
    .param p2, "bitrate"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doPrbsTestStart(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap12(Lcom/android/nfc/dhimpl/NativeNfcProperty;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doPrbsTestStop()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap13(Lcom/android/nfc/dhimpl/NativeNfcProperty;[B[B)I
    .registers 4
    .param p1, "cmd"    # [B
    .param p2, "res"    # [B

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doSendExtCmdWithRb([B[B)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap14(Lcom/android/nfc/dhimpl/NativeNfcProperty;[B)I
    .registers 3
    .param p1, "cmd"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doSendExtCmd([B)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap15(Lcom/android/nfc/dhimpl/NativeNfcProperty;I)I
    .registers 3
    .param p1, "tech"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doSetCardEmulationType(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap16(Lcom/android/nfc/dhimpl/NativeNfcProperty;I)I
    .registers 3
    .param p1, "tech"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doSetP2pTargetMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap17(Lcom/android/nfc/dhimpl/NativeNfcProperty;I)I
    .registers 3
    .param p1, "mode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doSetPollingMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap18(Lcom/android/nfc/dhimpl/NativeNfcProperty;I)I
    .registers 3
    .param p1, "tech"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doSetPollingTech(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap19(Lcom/android/nfc/dhimpl/NativeNfcProperty;I)I
    .registers 3
    .param p1, "se"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doSetSecureElement(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/nfc/dhimpl/NativeNfcProperty;IZ)[B
    .registers 4
    .param p1, "address"    # I
    .param p2, "isExtended"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doReadParameterValue(IZ)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap20(Lcom/android/nfc/dhimpl/NativeNfcProperty;I)I
    .registers 3
    .param p1, "handle"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doSwpTest(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap21(Lcom/android/nfc/dhimpl/NativeNfcProperty;II[BZ)I
    .registers 6
    .param p1, "address"    # I
    .param p2, "length"    # I
    .param p3, "data"    # [B
    .param p4, "isExtended"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doWriteParameterValue(II[BZ)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap22(Lcom/android/nfc/dhimpl/NativeNfcProperty;[B)I
    .registers 3
    .param p1, "data"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doWriteTlvEncodedParameter([B)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap23(Lcom/android/nfc/dhimpl/NativeNfcProperty;IIIIIZ)V
    .registers 7
    .param p1, "protocolSe"    # I
    .param p2, "techSe"    # I
    .param p3, "ce"    # I
    .param p4, "pollTech"    # I
    .param p5, "listenTech"    # I
    .param p6, "isLimitTech"    # Z

    .prologue
    invoke-direct/range {p0 .. p6}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doRenewRouting(IIIIIZ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/nfc/dhimpl/NativeNfcProperty;[B)[B
    .registers 3
    .param p1, "idTlv"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doReadTlvEncodedParameter([B)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/nfc/dhimpl/NativeNfcProperty;)[I
    .registers 2

    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doGetSecureElementList()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lcom/android/nfc/dhimpl/NativeNfcProperty;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doGetCardEmulationType()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap6(Lcom/android/nfc/dhimpl/NativeNfcProperty;I)I
    .registers 3
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doGetDefaultValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap7(Lcom/android/nfc/dhimpl/NativeNfcProperty;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doGetP2pTargetMode()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap8(Lcom/android/nfc/dhimpl/NativeNfcProperty;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doGetPollingMode()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap9(Lcom/android/nfc/dhimpl/NativeNfcProperty;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doGetPollingTech()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 56
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    move v0, v1

    :goto_d
    sput-boolean v0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->DBG:Z

    .line 58
    const-string/jumbo v0, "ro.nfc.se.sim.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 57
    sput-boolean v0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->SE_SIM_ENABLE:Z

    .line 60
    const-string/jumbo v0, "ro.nfc.se.smx.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 59
    sput-boolean v0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->SE_SMX_ENABLE:Z

    .line 62
    sget-boolean v0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->SE_SIM_ENABLE:Z

    if-eqz v0, :cond_2d

    const-string/jumbo v0, "SIM"

    :goto_28
    sput-object v0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->NFC_SE_ACTIVE_DEFAULT:Ljava/lang/String;

    .line 40
    return-void

    .line 56
    :cond_2b
    const/4 v0, 0x1

    goto :goto_d

    .line 63
    :cond_2d
    sget-boolean v0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->SE_SMX_ENABLE:Z

    if-eqz v0, :cond_35

    const-string/jumbo v0, "SMX"

    goto :goto_28

    :cond_35
    const-string/jumbo v0, ""

    goto :goto_28
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 5
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mContext:Landroid/content/Context;

    .line 94
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "NciNativeNfcPropertyPrefs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mPrefs:Landroid/content/SharedPreferences;

    .line 95
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 96
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;

    invoke-direct {v0, p0}, Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;-><init>(Lcom/android/nfc/dhimpl/NativeNfcProperty;)V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mNfcConfig:Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;

    .line 97
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mNfcService:Lcom/android/nfc/NfcService;

    .line 98
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mContext:Landroid/content/Context;

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->DEV_CONFIG_NAME:Ljava/lang/String;

    .line 100
    sget-boolean v0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->DBG:Z

    if-eqz v0, :cond_4c

    .line 101
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mContext:Landroid/content/Context;

    .line 102
    const-string/jumbo v1, "NciNativeNfcPropertyDebugPrefs"

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mDebugPrefs:Landroid/content/SharedPreferences;

    .line 103
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mDebugPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mDebugPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 92
    :cond_4c
    return-void
.end method

.method private native doAntennaTest([B)[B
.end method

.method private native doApplyProperty(II)V
.end method

.method private native doGetCardEmulationType()I
.end method

.method private native doGetChipVersion()[B
.end method

.method private native doGetDefaultValue(I)I
.end method

.method private native doGetP2pTargetMode()I
.end method

.method private native doGetPollingMode()I
.end method

.method private native doGetPollingTech()I
.end method

.method private native doGetSecureElement()I
.end method

.method private native doGetSecureElementList()[I
.end method

.method private native doPrbsTestStart(II)I
.end method

.method private native doPrbsTestStop()I
.end method

.method private native doReadParameterValue(IZ)[B
.end method

.method private native doReadTlvEncodedParameter([B)[B
.end method

.method private native doRenewRouting(IIIIIZ)V
.end method

.method private native doSendExtCmd([B)I
.end method

.method private native doSendExtCmdWithRb([B[B)I
.end method

.method private native doSetCardEmulationType(I)I
.end method

.method private native doSetP2pTargetMode(I)I
.end method

.method private native doSetPollingMode(I)I
.end method

.method private native doSetPollingTech(I)I
.end method

.method private native doSetSecureElement(I)I
.end method

.method private native doSwpTest(I)I
.end method

.method private native doWriteParameterValue(II[BZ)I
.end method

.method private native doWriteTlvEncodedParameter([B)I
.end method

.method public static getInstance(Landroid/content/SharedPreferences;)Lcom/android/nfc/dhimpl/NativeNfcProperty;
    .registers 2
    .param p0, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 86
    sget-object v0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->sInstance:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    if-nez v0, :cond_b

    .line 87
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcProperty;

    invoke-direct {v0, p0}, Lcom/android/nfc/dhimpl/NativeNfcProperty;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->sInstance:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    .line 89
    :cond_b
    sget-object v0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->sInstance:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    return-object v0
.end method


# virtual methods
.method public applyProperty(Ljava/lang/String;)V
    .registers 10
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 178
    const-string/jumbo v0, "apply.rw.ce"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 179
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0a0004

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v7, 0x1

    .line 180
    .local v7, "valEasyCard":I
    :goto_1b
    const/4 v0, 0x4

    invoke-direct {p0, v0, v7}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doApplyProperty(II)V

    .line 183
    .end local v7    # "valEasyCard":I
    :cond_1f
    sget-boolean v0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->DBG:Z

    if-eqz v0, :cond_5a

    .line 184
    const-string/jumbo v0, "apply.debug.routing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 185
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mDebugPrefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_33

    .line 186
    return-void

    :cond_31
    move v7, v4

    .line 179
    goto :goto_1b

    .line 188
    :cond_33
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mDebugPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "protocol_se"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 189
    .local v1, "protocolSe":I
    if-eq v1, v6, :cond_5a

    .line 190
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mDebugPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "technology_se"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 191
    .local v2, "techSe":I
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mDebugPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "ce_technology"

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 192
    .local v3, "ce":I
    if-eq v2, v6, :cond_5a

    if-eq v3, v6, :cond_5a

    move-object v0, p0

    move v5, v4

    move v6, v4

    .line 193
    invoke-direct/range {v0 .. v6}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->doRenewRouting(IIIIIZ)V

    .line 177
    .end local v1    # "protocolSe":I
    .end local v2    # "techSe":I
    .end local v3    # "ce":I
    :cond_5a
    return-void
.end method

.method public clearEepromData()Z
    .registers 2

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public doGetSelectedUicc()I
    .registers 2

    .prologue
    .line 228
    const/4 v0, 0x0

    return v0
.end method

.method public doselectUicc(I)I
    .registers 3
    .param p1, "uiccSlot"    # I

    .prologue
    .line 223
    const/4 v0, 0x0

    return v0
.end method

.method public executeMasterReset()V
    .registers 1

    .prologue
    .line 232
    return-void
.end method

.method public getNfcConfig()Lcom/sonymobile/nfc/INfcConfig$Stub;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mNfcConfig:Lcom/android/nfc/dhimpl/NativeNfcProperty$NfcConfig;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 109
    if-nez p1, :cond_4

    .line 110
    return-object v2

    .line 113
    :cond_4
    sget-boolean v1, Lcom/android/nfc/dhimpl/NativeNfcProperty;->DBG:Z

    if-eqz v1, :cond_37

    .line 114
    const-string/jumbo v1, "protocol_se"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    const-string/jumbo v1, "technology_se"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 115
    const-string/jumbo v1, "ce_technology"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 114
    if-eqz v1, :cond_37

    .line 116
    :cond_23
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mDebugPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_37

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mDebugPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_37

    .line 117
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mDebugPrefs:Landroid/content/SharedPreferences;

    const/4 v2, -0x1

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 118
    .local v0, "res":I
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 123
    .end local v0    # "res":I
    :cond_37
    const-string/jumbo v1, "se.active"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 124
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "se.active"

    sget-object v3, Lcom/android/nfc/dhimpl/NativeNfcProperty;->NFC_SE_ACTIVE_DEFAULT:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 125
    :cond_4c
    const-string/jumbo v1, "evt.ac.enable"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 126
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->DEV_CONFIG_NAME:Ljava/lang/String;

    const-string/jumbo v2, "nxp.nci"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 127
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 129
    :cond_67
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 132
    :cond_6e
    return-object v2
.end method

.method public readEepromDataByte(I)I
    .registers 3
    .param p1, "address"    # I

    .prologue
    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x8

    const/4 v2, 0x0

    .line 137
    if-nez p1, :cond_5

    .line 138
    return v3

    .line 141
    :cond_5
    sget-boolean v1, Lcom/android/nfc/dhimpl/NativeNfcProperty;->DBG:Z

    if-eqz v1, :cond_52

    .line 142
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mDebugPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mDebugPrefsEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v1, :cond_14

    .line 143
    :cond_11
    const/16 v1, -0x11

    return v1

    .line 145
    :cond_14
    const-string/jumbo v1, "protocol_se"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    const-string/jumbo v1, "technology_se"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 146
    const-string/jumbo v1, "ce_technology"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 145
    if-eqz v1, :cond_52

    .line 147
    :cond_2f
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 148
    .local v0, "data":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mDebugPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    const/4 v1, -0x1

    if-ne v0, v1, :cond_48

    .line 149
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mDebugPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    :goto_47
    return v2

    .line 151
    :cond_48
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mDebugPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_47

    .line 157
    .end local v0    # "data":I
    :cond_52
    if-nez p2, :cond_66

    .line 158
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 159
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 161
    :cond_65
    return v2

    .line 164
    :cond_66
    const-string/jumbo v1, "se.active"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 165
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 170
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcProperty;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 171
    return v2

    .line 167
    :cond_7a
    return v3
.end method

.method public test(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 203
    const/4 v0, 0x0

    return-object v0
.end method

.method public writeEepromDataByte(IB)Z
    .registers 4
    .param p1, "address"    # I
    .param p2, "data"    # B

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method

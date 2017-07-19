.class public Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;
.super Landroid/app/Activity;
.source "NfcRoutingTestMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$1;,
        Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;,
        Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ExecuteSettingTask;
    }
.end annotation


# static fields
.field private static final CE_TYPE_A:I = 0x1

.field private static final CE_TYPE_B:I = 0x2

.field private static final CE_TYPE_F:I = 0x4

.field private static final CE_TYPE_NONE:I = 0x0

.field private static final DBG:Z = false

.field private static final DEFAULT_SE_TYPE_UICC:I = 0x2

.field private static final NFC_CONFIG_DEFAULT_SE:Ljava/lang/String; = "default_se"

.field private static final NFC_CONFIG_UICC_LISTEN_TECH:Ljava/lang/String; = "uicc_listen"

.field private static final ROUTE_HOST:I = 0x7f0d0073

.field private static final ROUTE_UICC:I = 0x7f0d0074

.field private static final SE_TYPE_HOST:I = 0x400

.field private static final SE_TYPE_UICC:I = 0x402

.field private static final TAG:Ljava/lang/String; = "NfcRoutingTestMode"

.field private static final TECH_HOST:I = 0x7f0d0076

.field private static final TECH_UICC:I = 0x7f0d0077


# instance fields
.field private mButtonApply:Landroid/widget/Button;

.field private mButtonDefault:Landroid/widget/Button;

.field private mCheckTypeA:Landroid/widget/CheckBox;

.field private mCheckTypeB:Landroid/widget/CheckBox;

.field private mCheckTypeF:Landroid/widget/CheckBox;

.field private mDefaultSe:I

.field private mDefaultUiccTech:I

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

.field private mOriginalNfcIsEnabled:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProperty:Lcom/android/nfc/dhimpl/NativeNfcProperty;

.field private mRadioRouteGroup:Landroid/widget/RadioGroup;

.field private mRadioRouteUicc:Landroid/widget/RadioButton;

.field private mRadioTechGroup:Landroid/widget/RadioGroup;

.field private mRadioTechUicc:Landroid/widget/RadioButton;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedRadioRouteGroup:I

.field private mSelectedRadioTechGroup:I

.field private mSetCurrentConfig:Z

.field private mStoredProtocolSe:I

.field private mStoredTechnologySe:I

.field private mStoredUiccTech:I

.field private mTestMode:Z

.field private mTextAid:Landroid/widget/TextView;

.field private mTextIsoDep:Landroid/widget/TextView;

.field private mTextNfcDep:Landroid/widget/TextView;

.field private mTextNote:Landroid/widget/TextView;

.field private mTextTech:Landroid/widget/TextView;

.field private mUiccSupported:Z


# direct methods
.method static synthetic -get0(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeA:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeB:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get10(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)I
    .registers 2

    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mStoredTechnologySe:I

    return v0
.end method

.method static synthetic -get11(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)I
    .registers 2

    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mStoredUiccTech:I

    return v0
.end method

.method static synthetic -get12(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTestMode:Z

    return v0
.end method

.method static synthetic -get13(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextAid:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get14(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextNfcDep:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get15(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextNote:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeF:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Landroid/nfc/NfcAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Lcom/sonymobile/nfc/NfcConfig;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mOriginalNfcIsEnabled:Z

    return v0
.end method

.method static synthetic -get6(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)I
    .registers 2

    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSelectedRadioRouteGroup:I

    return v0
.end method

.method static synthetic -get7(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)I
    .registers 2

    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSelectedRadioTechGroup:I

    return v0
.end method

.method static synthetic -get8(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSetCurrentConfig:Z

    return v0
.end method

.method static synthetic -get9(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)I
    .registers 2

    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mStoredProtocolSe:I

    return v0
.end method

.method static synthetic -set0(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;Lcom/sonymobile/nfc/NfcConfig;)Lcom/sonymobile/nfc/NfcConfig;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mOriginalNfcIsEnabled:Z

    return p1
.end method

.method static synthetic -set2(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;I)I
    .registers 2

    iput p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSelectedRadioRouteGroup:I

    return p1
.end method

.method static synthetic -set3(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;I)I
    .registers 2

    iput p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSelectedRadioTechGroup:I

    return p1
.end method

.method static synthetic -set4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSetCurrentConfig:Z

    return p1
.end method

.method static synthetic -set5(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTestMode:Z

    return p1
.end method

.method static synthetic -set6(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mUiccSupported:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getDefaultConfig()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getRoutingPreferences()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->setDefaultToView()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;III)V
    .registers 4
    .param p1, "routeSeValue"    # I
    .param p2, "techSeValue"    # I
    .param p3, "ceValue"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->setRoutingPreferences(III)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->setStoredToView()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "endFlg"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->updateView()V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    const v0, 0x7f0d0073

    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSelectedRadioRouteGroup:I

    .line 67
    const v0, 0x7f0d0076

    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSelectedRadioTechGroup:I

    .line 68
    iput-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mRadioRouteUicc:Landroid/widget/RadioButton;

    .line 69
    iput-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mRadioTechUicc:Landroid/widget/RadioButton;

    .line 70
    iput-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mRadioRouteGroup:Landroid/widget/RadioGroup;

    .line 71
    iput-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mRadioTechGroup:Landroid/widget/RadioGroup;

    .line 72
    iput-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeA:Landroid/widget/CheckBox;

    .line 73
    iput-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeB:Landroid/widget/CheckBox;

    .line 74
    iput-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeF:Landroid/widget/CheckBox;

    .line 75
    iput-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mButtonApply:Landroid/widget/Button;

    .line 76
    iput-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mButtonDefault:Landroid/widget/Button;

    .line 77
    iput-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextAid:Landroid/widget/TextView;

    .line 78
    iput-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextIsoDep:Landroid/widget/TextView;

    .line 79
    iput-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextNfcDep:Landroid/widget/TextView;

    .line 80
    iput-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextTech:Landroid/widget/TextView;

    .line 81
    iput-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextNote:Landroid/widget/TextView;

    .line 84
    iput-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    .line 86
    iput-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mProperty:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    .line 88
    iput-boolean v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mOriginalNfcIsEnabled:Z

    .line 89
    iput-boolean v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSetCurrentConfig:Z

    .line 90
    iput-boolean v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTestMode:Z

    .line 91
    iput-boolean v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mUiccSupported:Z

    .line 92
    iput v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mDefaultSe:I

    .line 93
    iput v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mDefaultUiccTech:I

    .line 94
    iput v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mStoredProtocolSe:I

    .line 95
    iput v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mStoredTechnologySe:I

    .line 96
    iput v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mStoredUiccTech:I

    .line 98
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$1;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 45
    return-void
.end method

.method private getDefaultConfig()V
    .registers 3

    .prologue
    .line 471
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    const-string/jumbo v1, "default_se"

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/NfcConfig;->getDefaultValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mDefaultSe:I

    .line 472
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    const-string/jumbo v1, "uicc_listen"

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/NfcConfig;->getDefaultValue(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mDefaultUiccTech:I

    .line 470
    return-void
.end method

.method private getRoutingPreferences()V
    .registers 4

    .prologue
    .line 415
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mProperty:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    const-string/jumbo v2, "protocol_se"

    invoke-virtual {v1, v2}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, "res":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mStoredProtocolSe:I

    .line 417
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mProperty:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    const-string/jumbo v2, "technology_se"

    invoke-virtual {v1, v2}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 418
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mStoredTechnologySe:I

    .line 419
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mProperty:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    const-string/jumbo v2, "ce_technology"

    invoke-virtual {v1, v2}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 420
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mStoredUiccTech:I

    .line 413
    return-void
.end method

.method private initializeView()V
    .registers 3

    .prologue
    .line 161
    const v0, 0x7f0d0072

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mRadioRouteGroup:Landroid/widget/RadioGroup;

    .line 162
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mRadioRouteGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$2;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 168
    const v0, 0x7f0d0074

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mRadioRouteUicc:Landroid/widget/RadioButton;

    .line 170
    const v0, 0x7f0d0075

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mRadioTechGroup:Landroid/widget/RadioGroup;

    .line 171
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mRadioTechGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$3;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 177
    const v0, 0x7f0d0077

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mRadioTechUicc:Landroid/widget/RadioButton;

    .line 179
    const v0, 0x7f0d0078

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeA:Landroid/widget/CheckBox;

    .line 180
    const v0, 0x7f0d0079

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeB:Landroid/widget/CheckBox;

    .line 181
    const v0, 0x7f0d007a

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeF:Landroid/widget/CheckBox;

    .line 183
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mButtonApply:Landroid/widget/Button;

    .line 184
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mButtonApply:Landroid/widget/Button;

    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$4;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$4;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const v0, 0x7f0d007b

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mButtonDefault:Landroid/widget/Button;

    .line 193
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mButtonDefault:Landroid/widget/Button;

    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$5;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$5;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    const v0, 0x7f0d007c

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextAid:Landroid/widget/TextView;

    .line 203
    const v0, 0x7f0d007d

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextIsoDep:Landroid/widget/TextView;

    .line 204
    const v0, 0x7f0d007e

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextNfcDep:Landroid/widget/TextView;

    .line 205
    const v0, 0x7f0d007f

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextTech:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f0d0080

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextNote:Landroid/widget/TextView;

    .line 160
    return-void
.end method

.method private setDefaultToView()V
    .registers 7

    .prologue
    const v5, 0x7f0d0076

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 478
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mRadioRouteGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f0d0073

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 480
    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mUiccSupported:Z

    if-nez v0, :cond_37

    .line 481
    iput v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSelectedRadioTechGroup:I

    .line 489
    :goto_14
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mRadioTechGroup:Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSelectedRadioTechGroup:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 491
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mDefaultUiccTech:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_44

    .line 492
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeA:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 496
    :goto_26
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mDefaultUiccTech:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v4, :cond_4a

    .line 497
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 501
    :goto_31
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeF:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 477
    return-void

    .line 483
    :cond_37
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mDefaultSe:I

    if-ne v0, v4, :cond_41

    .line 484
    const v0, 0x7f0d0077

    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSelectedRadioTechGroup:I

    goto :goto_14

    .line 486
    :cond_41
    iput v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSelectedRadioTechGroup:I

    goto :goto_14

    .line 494
    :cond_44
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeA:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_26

    .line 499
    :cond_4a
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_31
.end method

.method private setRoutingPreferences(III)V
    .registers 7
    .param p1, "routeSeValue"    # I
    .param p2, "techSeValue"    # I
    .param p3, "ceValue"    # I

    .prologue
    .line 424
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mProperty:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    if-nez v0, :cond_e

    .line 425
    const-string/jumbo v0, "NfcRoutingTestMode"

    const-string/jumbo v1, "Debug preferences could not be stored owing to invalid property."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    return-void

    .line 429
    :cond_e
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mProperty:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    const-string/jumbo v1, "protocol_se"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mProperty:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    const-string/jumbo v1, "technology_se"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mProperty:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    const-string/jumbo v1, "ce_technology"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void
.end method

.method private setStoredToView()V
    .registers 7

    .prologue
    const v5, 0x7f0d0076

    const v4, 0x7f0d0073

    const/16 v1, 0x402

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 435
    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mUiccSupported:Z

    if-nez v0, :cond_44

    .line 436
    iput v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSelectedRadioRouteGroup:I

    .line 437
    iput v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSelectedRadioTechGroup:I

    .line 450
    :goto_12
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mRadioRouteGroup:Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSelectedRadioRouteGroup:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 451
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mRadioTechGroup:Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSelectedRadioTechGroup:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 453
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mStoredUiccTech:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_5d

    .line 454
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeA:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 458
    :goto_2b
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mStoredUiccTech:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_63

    .line 459
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 463
    :goto_37
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mStoredUiccTech:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_69

    .line 464
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeF:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 434
    :goto_43
    return-void

    .line 439
    :cond_44
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mStoredProtocolSe:I

    if-ne v0, v1, :cond_57

    .line 440
    const v0, 0x7f0d0074

    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSelectedRadioRouteGroup:I

    .line 444
    :goto_4d
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mStoredTechnologySe:I

    if-ne v0, v1, :cond_5a

    .line 445
    const v0, 0x7f0d0077

    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSelectedRadioTechGroup:I

    goto :goto_12

    .line 442
    :cond_57
    iput v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSelectedRadioRouteGroup:I

    goto :goto_4d

    .line 447
    :cond_5a
    iput v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSelectedRadioTechGroup:I

    goto :goto_12

    .line 456
    :cond_5d
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeA:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_2b

    .line 461
    :cond_63
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_37

    .line 466
    :cond_69
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeF:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_43
.end method

.method private showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 9
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "endFlg"    # Z

    .prologue
    .line 545
    move-object v1, p2

    .line 546
    .local v1, "message":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 548
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 549
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 550
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 551
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 553
    new-instance v2, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$6;

    invoke-direct {v2, p0, p4}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$6;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;Z)V

    const v3, 0x7f090103

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 561
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 544
    return-void
.end method

.method private updateView()V
    .registers 7

    .prologue
    const v5, 0x7f090183

    const v4, 0x7f09017f

    const v3, 0x7f09017e

    const/4 v2, 0x0

    .line 505
    iget-boolean v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mUiccSupported:Z

    if-nez v1, :cond_18

    .line 506
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mRadioRouteUicc:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 507
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mRadioTechUicc:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 510
    :cond_18
    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSelectedRadioRouteGroup:I

    const v2, 0x7f0d0073

    if-ne v1, v2, :cond_97

    .line 511
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextIsoDep:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    :goto_28
    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mSelectedRadioTechGroup:I

    const v2, 0x7f0d0076

    if-ne v1, v2, :cond_a1

    .line 517
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextTech:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    :goto_38
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextTech:Landroid/widget/TextView;

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, "plus":Z
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeA:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_56

    .line 525
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextTech:Landroid/widget/TextView;

    const v2, 0x7f090180

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 526
    const/4 v0, 0x1

    .line 528
    :cond_56
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 529
    if-eqz v0, :cond_69

    .line 530
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextTech:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 532
    :cond_69
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextTech:Landroid/widget/TextView;

    const v2, 0x7f090181

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 533
    const/4 v0, 0x1

    .line 535
    :cond_76
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mCheckTypeF:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_96

    .line 536
    if-eqz v0, :cond_89

    .line 537
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextTech:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 539
    :cond_89
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextTech:Landroid/widget/TextView;

    const v2, 0x7f090182

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 540
    const/4 v0, 0x1

    .line 504
    :cond_96
    return-void

    .line 513
    .end local v0    # "plus":Z
    :cond_97
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextIsoDep:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_28

    .line 519
    :cond_a1
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mTextTech:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_38
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->setContentView(I)V

    .line 113
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 114
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_2a

    .line 115
    const v0, 0x7f090090

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090106

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    const v2, 0x1080027

    .line 115
    invoke-direct {p0, v0, v1, v2, v5}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 118
    :cond_2a
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mPowerManager:Landroid/os/PowerManager;

    .line 119
    invoke-static {v3}, Lcom/android/nfc/dhimpl/NativeNfcProperty;->getInstance(Landroid/content/SharedPreferences;)Lcom/android/nfc/dhimpl/NativeNfcProperty;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mProperty:Lcom/android/nfc/dhimpl/NativeNfcProperty;

    .line 121
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->initializeView()V

    .line 125
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;

    invoke-direct {v0, p0, v3}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;)V

    sget-object v1, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    new-array v2, v5, [Ljava/lang/Integer;

    .line 126
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 108
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 154
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 156
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 152
    return-void
.end method

.method public onPause()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 136
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 137
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_f

    .line 139
    return-void

    .line 142
    :cond_f
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 143
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;)V

    sget-object v1, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    .line 144
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$ConnectNfcAdapterExTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 132
    :cond_2c
    return-void
.end method

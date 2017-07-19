.class public Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;
.super Landroid/preference/PreferenceActivity;
.source "NfcSettingTestMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$1;,
        Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$2;,
        Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;,
        Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final DEV_CONFIG_NXP_NCI:Ljava/lang/String; = "nxp.nci"

.field public static final KEY_MODE:Ljava/lang/String; = "mode"

.field private static final KEY_P2P_LISTEN_TECH:Ljava/lang/String; = "p2p_listen"

.field public static final KEY_P2P_TYPE:Ljava/lang/String; = "p2p_type"

.field private static final KEY_POLLING_TECH:Ljava/lang/String; = "polling"

.field public static final KEY_RW_TYPE:Ljava/lang/String; = "rw_type"

.field public static final KEY_SE_CE_TYPE:Ljava/lang/String; = "se_ce_type"

.field public static final MODE_CUSTOM:I = 0x7f0d0023

.field public static final MODE_NORMAL:I = 0x7f0d0022

.field static P2P_LISTEN_TECH:I = 0x0

.field static POLLING_TECH:I = 0x0

.field public static final SECE_DIALOG_CLOSE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "NfcSettingTestMode"

.field private static mEseSupported:Z

.field private static mRadioGroup:Landroid/widget/RadioGroup;

.field private static mSelectedRadioGroup:I

.field private static mTextViewP2p:[Landroid/widget/TextView;

.field private static mTextViewRw:[Landroid/widget/TextView;

.field private static mUiccSupported:Z


# instance fields
.field hasP2pCeCombLimitation:Z

.field private mButton:Landroid/widget/Button;

.field private mIsInit:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPrefP2pType:Lcom/sonymobile/nfc/debugmenu/P2pPreference;

.field private mPrefRwType:Lcom/sonymobile/nfc/debugmenu/RwPreference;

.field private mPrefScreen:Landroid/preference/PreferenceScreen;

.field private mPrefSeCeType:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

.field private final mPreferenceNotifyHandler:Landroid/os/Handler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTestMode:Z


# direct methods
.method static synthetic -get0(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mIsInit:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Landroid/nfc/NfcAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/NfcConfig;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/debugmenu/P2pPreference;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefP2pType:Lcom/sonymobile/nfc/debugmenu/P2pPreference;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/debugmenu/RwPreference;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefRwType:Lcom/sonymobile/nfc/debugmenu/RwPreference;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/debugmenu/SeCePreference;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefSeCeType:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    return-object v0
.end method

.method static synthetic -get6()Landroid/widget/RadioGroup;
    .registers 1

    sget-object v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic -get7()I
    .registers 1

    sget v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mSelectedRadioGroup:I

    return v0
.end method

.method static synthetic -get8(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTestMode:Z

    return v0
.end method

.method static synthetic -set0(Z)Z
    .registers 1

    sput-boolean p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mEseSupported:Z

    return p0
.end method

.method static synthetic -set1(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mIsInit:Z

    return p1
.end method

.method static synthetic -set2(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;Lcom/sonymobile/nfc/NfcConfig;)Lcom/sonymobile/nfc/NfcConfig;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    return-object p1
.end method

.method static synthetic -set3(I)I
    .registers 1

    sput p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mSelectedRadioGroup:I

    return p0
.end method

.method static synthetic -set4(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTestMode:Z

    return p1
.end method

.method static synthetic -set5(Z)Z
    .registers 1

    sput-boolean p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mUiccSupported:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->setPreferenceCategoryEnable(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->updatePreferences()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 64
    sput v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mSelectedRadioGroup:I

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 67
    sput v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->POLLING_TECH:I

    .line 68
    sput v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->P2P_LISTEN_TECH:I

    .line 93
    sput-boolean v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mUiccSupported:Z

    .line 94
    sput-boolean v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mEseSupported:Z

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 70
    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 71
    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefRwType:Lcom/sonymobile/nfc/debugmenu/RwPreference;

    .line 72
    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefSeCeType:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    .line 73
    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefP2pType:Lcom/sonymobile/nfc/debugmenu/P2pPreference;

    .line 81
    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mButton:Landroid/widget/Button;

    .line 84
    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTestMode:Z

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mIsInit:Z

    .line 96
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$1;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPreferenceNotifyHandler:Landroid/os/Handler;

    .line 119
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$2;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 48
    return-void
.end method

.method public static getP2pSummaryTextView()[Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 227
    sget-object v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewP2p:[Landroid/widget/TextView;

    return-object v0
.end method

.method public static getRwSummaryTextView()[Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 223
    sget-object v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewRw:[Landroid/widget/TextView;

    return-object v0
.end method

.method private initContentViews()V
    .registers 3

    .prologue
    .line 231
    const v0, 0x7f0d0021

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    sput-object v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 232
    sget-object v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$3;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 245
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/TextView;

    sput-object v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewRw:[Landroid/widget/TextView;

    .line 246
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/widget/TextView;

    sput-object v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewP2p:[Landroid/widget/TextView;

    .line 248
    const v0, 0x7f0d0024

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mButton:Landroid/widget/Button;

    .line 249
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$4;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$4;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    return-void
.end method

.method public static isCustomSetting()Z
    .registers 2

    .prologue
    .line 211
    sget-object v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const v1, 0x7f0d0023

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public static isEseSupported()Z
    .registers 1

    .prologue
    .line 219
    sget-boolean v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mEseSupported:Z

    return v0
.end method

.method public static isUiccSupported()Z
    .registers 1

    .prologue
    .line 215
    sget-boolean v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mUiccSupported:Z

    return v0
.end method

.method private setPreferenceCategoryEnable(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .prologue
    .line 560
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 561
    .local v0, "cnt":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 562
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 563
    .local v2, "p":Landroid/preference/Preference;
    invoke-virtual {v2, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 561
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 559
    .end local v2    # "p":Landroid/preference/Preference;
    :cond_15
    return-void
.end method

.method private updatePreferences()V
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefRwType:Lcom/sonymobile/nfc/debugmenu/RwPreference;

    if-eqz v0, :cond_9

    .line 263
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefRwType:Lcom/sonymobile/nfc/debugmenu/RwPreference;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/RwPreference;->setDefaultValue()V

    .line 265
    :cond_9
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefSeCeType:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    if-eqz v0, :cond_12

    .line 266
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefSeCeType:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->setDefaultValue()V

    .line 268
    :cond_12
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefP2pType:Lcom/sonymobile/nfc/debugmenu/P2pPreference;

    if-eqz v0, :cond_1b

    .line 269
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefP2pType:Lcom/sonymobile/nfc/debugmenu/P2pPreference;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->setDefaultValue()V

    .line 272
    :cond_1b
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->updateSummaryView()V

    .line 274
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    .line 259
    return-void
.end method

.method private updateSummaryView()V
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 281
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewRw:[Landroid/widget/TextView;

    const v0, 0x7f0d0049

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 282
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewRw:[Landroid/widget/TextView;

    const v0, 0x7f0d004a

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v4

    .line 283
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewRw:[Landroid/widget/TextView;

    const v0, 0x7f0d004b

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v5

    .line 284
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewRw:[Landroid/widget/TextView;

    const v0, 0x7f0d004c

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v6

    .line 285
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewRw:[Landroid/widget/TextView;

    const v0, 0x7f0d004d

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v7

    .line 286
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewRw:[Landroid/widget/TextView;

    const v0, 0x7f0d004e

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 287
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefRwType:Lcom/sonymobile/nfc/debugmenu/RwPreference;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/RwPreference;->updateRwSummary()V

    .line 289
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefSeCeType:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->updateSeCeSummary()V

    .line 291
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewP2p:[Landroid/widget/TextView;

    const v0, 0x7f0d0036

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    .line 292
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewP2p:[Landroid/widget/TextView;

    const v0, 0x7f0d0037

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v4

    .line 293
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewP2p:[Landroid/widget/TextView;

    const v0, 0x7f0d0038

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v5

    .line 294
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewP2p:[Landroid/widget/TextView;

    const v0, 0x7f0d0039

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v6

    .line 295
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewP2p:[Landroid/widget/TextView;

    const v0, 0x7f0d003a

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v7

    .line 296
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewP2p:[Landroid/widget/TextView;

    const v0, 0x7f0d003b

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 297
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewP2p:[Landroid/widget/TextView;

    const v0, 0x7f0d003c

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x6

    aput-object v0, v1, v2

    .line 298
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewP2p:[Landroid/widget/TextView;

    const v0, 0x7f0d003d

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v2, 0x7

    aput-object v0, v1, v2

    .line 299
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewP2p:[Landroid/widget/TextView;

    const v0, 0x7f0d003e

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x8

    aput-object v0, v1, v2

    .line 300
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewP2p:[Landroid/widget/TextView;

    const v0, 0x7f0d003f

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0x9

    aput-object v0, v1, v2

    .line 301
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewP2p:[Landroid/widget/TextView;

    const v0, 0x7f0d0040

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0xa

    aput-object v0, v1, v2

    .line 302
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mTextViewP2p:[Landroid/widget/TextView;

    const v0, 0x7f0d0041

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v2, 0xb

    aput-object v0, v1, v2

    .line 303
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefP2pType:Lcom/sonymobile/nfc/debugmenu/P2pPreference;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->updateP2pSummary()V

    .line 278
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 131
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->setContentView(I)V

    .line 133
    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->addPreferencesFromResource(I)V

    .line 135
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 136
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_2e

    .line 137
    const v0, 0x7f090090

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090106

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 138
    const v2, 0x1080027

    .line 137
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 141
    :cond_2e
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.USER_SWITCHED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefScreen:Landroid/preference/PreferenceScreen;

    .line 144
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPowerManager:Landroid/os/PowerManager;

    .line 146
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "rw_type"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/debugmenu/RwPreference;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefRwType:Lcom/sonymobile/nfc/debugmenu/RwPreference;

    .line 147
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "se_ce_type"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefSeCeType:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    .line 148
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefScreen:Landroid/preference/PreferenceScreen;

    const-string/jumbo v1, "p2p_type"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefP2pType:Lcom/sonymobile/nfc/debugmenu/P2pPreference;

    .line 150
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPrefSeCeType:Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPreferenceNotifyHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->setNotifyHandler(Landroid/os/Handler;)V

    .line 152
    const v0, 0x7f09001c

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nxp.nci"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 153
    iput-boolean v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->hasP2pCeCombLimitation:Z

    .line 156
    :cond_8c
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->initContentViews()V

    .line 129
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 205
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 206
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 203
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 179
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 177
    return-void
.end method

.method protected onStart()V
    .registers 6

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 164
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStart()V

    .line 166
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_a

    .line 168
    return-void

    .line 171
    :cond_a
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;)V

    sget-object v1, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    .line 172
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 171
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 162
    return-void
.end method

.method protected onStop()V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 188
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_9

    .line 190
    return-void

    .line 193
    :cond_9
    const/4 v0, 0x1

    .line 194
    .local v0, "id":I
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 195
    const/4 v0, 0x2

    .line 198
    :cond_13
    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;)V

    sget-object v2, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ConnectNfcAdapterExTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 184
    return-void
.end method

.method public showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 9
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "endFlg"    # Z

    .prologue
    .line 534
    move-object v1, p2

    .line 535
    .local v1, "message":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 537
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 538
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 539
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 540
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 541
    new-instance v2, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$5;

    invoke-direct {v2, p0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$5;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 548
    new-instance v2, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$6;

    invoke-direct {v2, p0, p4}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$6;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;Z)V

    const v3, 0x7f090103

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 556
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 533
    return-void
.end method

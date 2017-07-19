.class public Lcom/sonymobile/nfc/debugmenu/P2pPreference;
.super Landroid/preference/DialogPreference;
.source "P2pPreference.java"


# static fields
.field private static final DBG:Z = false

.field static final INITIATOR_TARGET_BIT_POS:[I

.field static final NFCPROPERTY_P2P_ACTIVE_106:I = 0x40

.field static final NFCPROPERTY_P2P_ACTIVE_212:I = 0x80

.field static final NFCPROPERTY_P2P_ACTIVE_424:I = 0x80

.field private static final NFCPROPERTY_P2P_INITIATOR_TV_COUNT:I = 0x6

.field static final NFCPROPERTY_P2P_NONE:I = 0x0

.field static final NFCPROPERTY_P2P_PASSIVE_106:I = 0x1

.field static final NFCPROPERTY_P2P_PASSIVE_212:I = 0x4

.field static final NFCPROPERTY_P2P_PASSIVE_424:I = 0x4

.field private static final PREF_INITIATOR:Ljava/lang/String; = "p2p_initiator"

.field private static final PREF_TARGET:Ljava/lang/String; = "p2p_target"

.field private static final TAG:Ljava/lang/String; = "NfcSettingTestMode.P2p"


# instance fields
.field private mCurrentPref:Ljava/lang/String;

.field private final mP2pToggles:[Landroid/widget/ToggleButton;

.field private mSelectedIntValue:I

.field private mSelectedTgtValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->INITIATOR_TARGET_BIT_POS:[I

    .line 32
    return-void

    .line 47
    :array_a
    .array-data 4
        0x1
        0x4
        0x4
        0x40
        0x80
        0x80
        0x1
        0x4
        0x4
        0x40
        0x80
        0x80
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedIntValue:I

    .line 68
    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedTgtValue:I

    .line 72
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->setDialogLayoutResource(I)V

    .line 73
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mP2pToggles:[Landroid/widget/ToggleButton;

    .line 70
    return-void
.end method

.method private getSelectedValues()[I
    .registers 6

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, "selectedInitiatorValue":I
    const/4 v2, 0x0

    .line 182
    .local v2, "selectedTargetValue":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    sget-object v3, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->INITIATOR_TARGET_BIT_POS:[I

    array-length v3, v3

    if-ge v0, v3, :cond_2d

    .line 183
    const/4 v3, 0x6

    if-ge v0, v3, :cond_1d

    .line 185
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mP2pToggles:[Landroid/widget/ToggleButton;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 186
    sget-object v3, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->INITIATOR_TARGET_BIT_POS:[I

    aget v3, v3, v0

    or-int/2addr v1, v3

    .line 182
    :cond_1a
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 190
    :cond_1d
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mP2pToggles:[Landroid/widget/ToggleButton;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 191
    sget-object v3, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->INITIATOR_TARGET_BIT_POS:[I

    aget v3, v3, v0

    or-int/2addr v2, v3

    goto :goto_1a

    .line 196
    :cond_2d
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v4, 0x1

    aput v2, v3, v4

    return-object v3
.end method

.method private loadPref()V
    .registers 5

    .prologue
    const/16 v3, 0x10

    .line 83
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isCustomSetting()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 84
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mCurrentPref:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "storedValue":Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedIntValue:I

    .line 86
    const/4 v1, 0x3

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedTgtValue:I

    .line 82
    .end local v0    # "storedValue":Ljava/lang/String;
    :goto_26
    return-void

    .line 88
    :cond_27
    sget v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->POLLING_TECH:I

    iput v1, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedIntValue:I

    .line 89
    sget v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->P2P_LISTEN_TECH:I

    iput v1, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedTgtValue:I

    goto :goto_26
.end method

.method private setValueToView(II)V
    .registers 7
    .param p1, "intValue"    # I
    .param p2, "tgtValue"    # I

    .prologue
    const/4 v3, 0x1

    .line 200
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->INITIATOR_TARGET_BIT_POS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_32

    .line 201
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1f

    .line 202
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->INITIATOR_TARGET_BIT_POS:[I

    aget v1, v1, v0

    and-int/2addr v1, p1

    sget-object v2, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->INITIATOR_TARGET_BIT_POS:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_1c

    .line 203
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mP2pToggles:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 200
    :cond_1c
    :goto_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 206
    :cond_1f
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->INITIATOR_TARGET_BIT_POS:[I

    aget v1, v1, v0

    and-int/2addr v1, p2

    sget-object v2, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->INITIATOR_TARGET_BIT_POS:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_1c

    .line 207
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mP2pToggles:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_1c

    .line 199
    :cond_32
    return-void
.end method


# virtual methods
.method protected disableP2pTech(II)V
    .registers 5
    .param p1, "initiatorTech"    # I
    .param p2, "targetTech"    # I

    .prologue
    .line 258
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedIntValue:I

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedIntValue:I

    .line 259
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedTgtValue:I

    not-int v1, p2

    and-int/2addr v0, v1

    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedTgtValue:I

    .line 257
    return-void
.end method

.method public getP2pValues()[I
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 101
    .local v0, "ret":[I
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isCustomSetting()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 102
    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedIntValue:I

    aput v1, v0, v2

    .line 103
    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedTgtValue:I

    aput v1, v0, v3

    .line 108
    :goto_13
    return-object v0

    .line 105
    :cond_14
    sget v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->POLLING_TECH:I

    aput v1, v0, v2

    .line 106
    sget v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->P2P_LISTEN_TECH:I

    aput v1, v0, v3

    goto :goto_13
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x6

    const/4 v5, 0x0

    .line 113
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 115
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mP2pToggles:[Landroid/widget/ToggleButton;

    const v2, 0x7f0d0028

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    aput-object v2, v3, v5

    .line 116
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mP2pToggles:[Landroid/widget/ToggleButton;

    const v2, 0x7f0d0029

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    aput-object v2, v3, v7

    .line 117
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mP2pToggles:[Landroid/widget/ToggleButton;

    const v2, 0x7f0d002a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    const/4 v4, 0x2

    aput-object v2, v3, v4

    .line 118
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mP2pToggles:[Landroid/widget/ToggleButton;

    const v2, 0x7f0d002b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    const/4 v4, 0x3

    aput-object v2, v3, v4

    .line 119
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mP2pToggles:[Landroid/widget/ToggleButton;

    const v2, 0x7f0d002c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    const/4 v4, 0x4

    aput-object v2, v3, v4

    .line 120
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mP2pToggles:[Landroid/widget/ToggleButton;

    const v2, 0x7f0d002d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    const/4 v4, 0x5

    aput-object v2, v3, v4

    .line 121
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mP2pToggles:[Landroid/widget/ToggleButton;

    const v2, 0x7f0d0030

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    aput-object v2, v3, v6

    .line 122
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mP2pToggles:[Landroid/widget/ToggleButton;

    const v2, 0x7f0d0031

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    const/4 v4, 0x7

    aput-object v2, v3, v4

    .line 123
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mP2pToggles:[Landroid/widget/ToggleButton;

    const v2, 0x7f0d0032

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    const/16 v4, 0x8

    aput-object v2, v3, v4

    .line 124
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mP2pToggles:[Landroid/widget/ToggleButton;

    const v2, 0x7f0d0033

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    const/16 v4, 0x9

    aput-object v2, v3, v4

    .line 125
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mP2pToggles:[Landroid/widget/ToggleButton;

    const v2, 0x7f0d0034

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    const/16 v4, 0xa

    aput-object v2, v3, v4

    .line 126
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mP2pToggles:[Landroid/widget/ToggleButton;

    const v2, 0x7f0d0035

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    const/16 v4, 0xb

    aput-object v2, v3, v4

    .line 128
    iget v2, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedIntValue:I

    iget v3, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedTgtValue:I

    invoke-direct {p0, v2, v3}, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->setValueToView(II)V

    .line 133
    const-string/jumbo v2, "se_ce_type"

    .line 132
    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    .line 134
    .local v1, "sePref":Lcom/sonymobile/nfc/debugmenu/SeCePreference;
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 135
    .local v0, "context":Landroid/content/Context;
    instance-of v2, v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    if-eqz v2, :cond_e9

    .line 136
    check-cast v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    .end local v0    # "context":Landroid/content/Context;
    iget-boolean v2, v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->hasP2pCeCombLimitation:Z

    if-eqz v2, :cond_e9

    .line 137
    invoke-virtual {v1}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->getSeValue()I

    move-result v2

    iget v3, v1, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_UICC:I

    if-ne v2, v3, :cond_e9

    .line 138
    invoke-virtual {v1}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->getCeValue()I

    move-result v2

    if-ne v2, v7, :cond_e9

    .line 141
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mP2pToggles:[Landroid/widget/ToggleButton;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 142
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mP2pToggles:[Landroid/widget/ToggleButton;

    aget-object v2, v2, v6

    invoke-virtual {v2, v5}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 112
    :cond_e9
    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 6
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 149
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 151
    if-eqz p1, :cond_5f

    .line 153
    const/4 v1, 0x2

    new-array v0, v1, [I

    sget v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->POLLING_TECH:I

    aput v1, v0, v2

    sget v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->P2P_LISTEN_TECH:I

    aput v1, v0, v3

    .line 154
    .local v0, "dialogValues":[I
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isCustomSetting()Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 155
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->getSelectedValues()[I

    move-result-object v0

    .line 156
    aget v1, v0, v2

    iput v1, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedIntValue:I

    .line 157
    aget v1, v0, v3

    iput v1, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedTgtValue:I

    .line 158
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09001c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 159
    const-string/jumbo v2, "nxp.nci"

    .line 158
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 160
    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedTgtValue:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_44

    .line 161
    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedTgtValue:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedTgtValue:I

    .line 163
    :cond_44
    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedTgtValue:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_50

    .line 164
    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedTgtValue:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedTgtValue:I

    .line 166
    :cond_50
    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedTgtValue:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_5c

    .line 167
    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedTgtValue:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mSelectedTgtValue:I

    .line 170
    :cond_5c
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->updateP2pSummary()V

    .line 148
    .end local v0    # "dialogValues":[I
    :cond_5f
    return-void
.end method

.method protected savePref()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 95
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->getP2pValues()[I

    move-result-object v0

    .line 96
    .local v0, "value":[I
    const-string/jumbo v1, "%02X:%02X"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aget v3, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->persistString(Ljava/lang/String;)Z

    .line 93
    return-void
.end method

.method public setDefaultValue()V
    .registers 5

    .prologue
    .line 77
    const-string/jumbo v0, "%02X:%02X"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 78
    sget v2, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->POLLING_TECH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget v2, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->P2P_LISTEN_TECH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 77
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mCurrentPref:Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->loadPref()V

    .line 76
    return-void
.end method

.method protected updateP2pSummary()V
    .registers 15

    .prologue
    const v13, 0x1060012

    const v12, 0x106000f

    const/16 v11, 0x10

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 214
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->getP2pSummaryTextView()[Landroid/widget/TextView;

    move-result-object v6

    .line 215
    .local v6, "tv":[Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->getP2pValues()[I

    move-result-object v4

    .line 216
    .local v4, "p2pValues":[I
    iget-object v7, p0, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->mCurrentPref:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "storedValue":Ljava/lang/String;
    const/4 v7, 0x2

    invoke-virtual {v5, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 218
    .local v2, "oldIntValue":I
    const/4 v7, 0x3

    const/4 v8, 0x5

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 219
    .local v3, "oldTgtValue":I
    const/4 v1, 0x0

    .line 226
    .local v1, "isChanged":Z
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isCustomSetting()Z

    move-result v7

    if-eqz v7, :cond_3b

    .line 227
    aget v7, v4, v9

    if-ne v2, v7, :cond_3a

    aget v7, v4, v10

    if-eq v3, v7, :cond_3b

    .line 228
    :cond_3a
    const/4 v1, 0x1

    .line 232
    :cond_3b
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3c
    array-length v7, v6

    if-ge v0, v7, :cond_98

    .line 233
    const/4 v7, 0x6

    if-ge v0, v7, :cond_6e

    .line 234
    aget v7, v4, v9

    sget-object v8, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->INITIATOR_TARGET_BIT_POS:[I

    aget v8, v8, v0

    and-int/2addr v7, v8

    sget-object v8, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->INITIATOR_TARGET_BIT_POS:[I

    aget v8, v8, v0

    if-ne v7, v8, :cond_68

    .line 235
    if-eqz v1, :cond_62

    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isCustomSetting()Z

    move-result v7

    if-eqz v7, :cond_62

    .line 236
    aget-object v7, v6, v0

    const v8, 0x1060018

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 232
    :goto_5f
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 238
    :cond_62
    aget-object v7, v6, v0

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_5f

    .line 241
    :cond_68
    aget-object v7, v6, v0

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_5f

    .line 244
    :cond_6e
    aget v7, v4, v10

    sget-object v8, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->INITIATOR_TARGET_BIT_POS:[I

    aget v8, v8, v0

    and-int/2addr v7, v8

    sget-object v8, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->INITIATOR_TARGET_BIT_POS:[I

    aget v8, v8, v0

    if-ne v7, v8, :cond_92

    .line 245
    if-eqz v1, :cond_8c

    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isCustomSetting()Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 246
    aget-object v7, v6, v0

    const v8, 0x1060018

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_5f

    .line 248
    :cond_8c
    aget-object v7, v6, v0

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_5f

    .line 251
    :cond_92
    aget-object v7, v6, v0

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_5f

    .line 213
    :cond_98
    return-void
.end method

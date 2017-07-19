.class public Lcom/sonymobile/nfc/debugmenu/RwPreference;
.super Landroid/preference/DialogPreference;
.source "RwPreference.java"


# static fields
.field private static final DBG:Z = false

.field static final NFCPROPERTY_POLLING_OFF:I = 0x0

.field static final NFCPROPERTY_POLLING_TYPE_A:I = 0x41

.field static final NFCPROPERTY_POLLING_TYPE_B:I = 0x2

.field static final NFCPROPERTY_POLLING_TYPE_B_PRIME:I = 0x2

.field static final NFCPROPERTY_POLLING_TYPE_F_212:I = 0x84

.field static final NFCPROPERTY_POLLING_TYPE_F_424:I = 0x84

.field static final NFCPROPERTY_POLLING_TYPE_ISO15693:I = 0x8

.field static final POLLING_BIT_POS:[I

.field private static final TAG:Ljava/lang/String; = "NfcSettingTestMode.Rw"

.field private static mSelectedRwValue:I


# instance fields
.field private mCurrentPref:Ljava/lang/String;

.field private final mRwToggles:[Landroid/widget/ToggleButton;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/sonymobile/nfc/debugmenu/RwPreference;->POLLING_BIT_POS:[I

    .line 55
    const/4 v0, 0x0

    sput v0, Lcom/sonymobile/nfc/debugmenu/RwPreference;->mSelectedRwValue:I

    .line 29
    return-void

    .line 42
    :array_c
    .array-data 4
        0x41
        0x2
        0x2
        0x84
        0x84
        0x8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/RwPreference;->setDialogLayoutResource(I)V

    .line 60
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/RwPreference;->mRwToggles:[Landroid/widget/ToggleButton;

    .line 57
    return-void
.end method

.method private getSelectedValue()I
    .registers 4

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, "selectedRwValue":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget-object v2, Lcom/sonymobile/nfc/debugmenu/RwPreference;->POLLING_BIT_POS:[I

    array-length v2, v2

    if-ge v0, v2, :cond_19

    .line 116
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/RwPreference;->mRwToggles:[Landroid/widget/ToggleButton;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 117
    sget-object v2, Lcom/sonymobile/nfc/debugmenu/RwPreference;->POLLING_BIT_POS:[I

    aget v2, v2, v0

    or-int/2addr v1, v2

    .line 115
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 120
    :cond_19
    return v1
.end method

.method private loadPref()V
    .registers 3

    .prologue
    .line 69
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isCustomSetting()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 70
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/RwPreference;->mCurrentPref:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/RwPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "storedValue":Ljava/lang/String;
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/sonymobile/nfc/debugmenu/RwPreference;->mSelectedRwValue:I

    .line 68
    .end local v0    # "storedValue":Ljava/lang/String;
    :goto_14
    return-void

    .line 73
    :cond_15
    sget v1, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->POLLING_TECH:I

    sput v1, Lcom/sonymobile/nfc/debugmenu/RwPreference;->mSelectedRwValue:I

    goto :goto_14
.end method

.method private setValueToView(I)V
    .registers 5
    .param p1, "rwValue"    # I

    .prologue
    .line 124
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/RwPreference;->POLLING_BIT_POS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 125
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/RwPreference;->mRwToggles:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 126
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/RwPreference;->POLLING_BIT_POS:[I

    aget v1, v1, v0

    and-int/2addr v1, p1

    sget-object v2, Lcom/sonymobile/nfc/debugmenu/RwPreference;->POLLING_BIT_POS:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_21

    .line 127
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/RwPreference;->mRwToggles:[Landroid/widget/ToggleButton;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 124
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 123
    :cond_24
    return-void
.end method


# virtual methods
.method public getRwValue()I
    .registers 2

    .prologue
    .line 83
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isCustomSetting()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 84
    sget v0, Lcom/sonymobile/nfc/debugmenu/RwPreference;->mSelectedRwValue:I

    .line 83
    :goto_8
    return v0

    .line 84
    :cond_9
    sget v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->POLLING_TECH:I

    goto :goto_8
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 91
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/RwPreference;->mRwToggles:[Landroid/widget/ToggleButton;

    const v0, 0x7f0d0043

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 92
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/RwPreference;->mRwToggles:[Landroid/widget/ToggleButton;

    const v0, 0x7f0d0044

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 93
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/RwPreference;->mRwToggles:[Landroid/widget/ToggleButton;

    const v0, 0x7f0d0045

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    .line 94
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/RwPreference;->mRwToggles:[Landroid/widget/ToggleButton;

    const v0, 0x7f0d0046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    .line 95
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/RwPreference;->mRwToggles:[Landroid/widget/ToggleButton;

    const v0, 0x7f0d0047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    const/4 v2, 0x4

    aput-object v0, v1, v2

    .line 96
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/RwPreference;->mRwToggles:[Landroid/widget/ToggleButton;

    const v0, 0x7f0d0048

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    const/4 v2, 0x5

    aput-object v0, v1, v2

    .line 98
    sget v0, Lcom/sonymobile/nfc/debugmenu/RwPreference;->mSelectedRwValue:I

    invoke-direct {p0, v0}, Lcom/sonymobile/nfc/debugmenu/RwPreference;->setValueToView(I)V

    .line 88
    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 105
    if-eqz p1, :cond_14

    .line 106
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isCustomSetting()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 107
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/RwPreference;->getSelectedValue()I

    move-result v0

    sput v0, Lcom/sonymobile/nfc/debugmenu/RwPreference;->mSelectedRwValue:I

    .line 108
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/RwPreference;->updateRwSummary()V

    .line 102
    :cond_14
    return-void
.end method

.method protected savePref()V
    .registers 5

    .prologue
    .line 79
    const-string/jumbo v0, "%02X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/RwPreference;->getRwValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/RwPreference;->persistString(Ljava/lang/String;)Z

    .line 77
    return-void
.end method

.method public setDefaultValue()V
    .registers 5

    .prologue
    .line 64
    const-string/jumbo v0, "%02X"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->POLLING_TECH:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/RwPreference;->mCurrentPref:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/RwPreference;->loadPref()V

    .line 63
    return-void
.end method

.method protected updateRwSummary()V
    .registers 8

    .prologue
    .line 133
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->getRwSummaryTextView()[Landroid/widget/TextView;

    move-result-object v4

    .line 134
    .local v4, "tv":[Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/RwPreference;->getRwValue()I

    move-result v0

    .line 135
    .local v0, "curValue":I
    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/RwPreference;->mCurrentPref:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/debugmenu/RwPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "storedValue":Ljava/lang/String;
    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 141
    .local v2, "oldValue":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    array-length v5, v4

    if-ge v1, v5, :cond_48

    .line 142
    sget-object v5, Lcom/sonymobile/nfc/debugmenu/RwPreference;->POLLING_BIT_POS:[I

    aget v5, v5, v1

    and-int/2addr v5, v0

    sget-object v6, Lcom/sonymobile/nfc/debugmenu/RwPreference;->POLLING_BIT_POS:[I

    aget v6, v6, v1

    if-ne v5, v6, :cond_3f

    .line 143
    if-eq v0, v2, :cond_36

    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isCustomSetting()Z

    move-result v5

    if-eqz v5, :cond_36

    .line 144
    aget-object v5, v4, v1

    const v6, 0x1060018

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 141
    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 146
    :cond_36
    aget-object v5, v4, v1

    const v6, 0x1060012

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_33

    .line 149
    :cond_3f
    aget-object v5, v4, v1

    const v6, 0x106000f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_33

    .line 132
    :cond_48
    return-void
.end method

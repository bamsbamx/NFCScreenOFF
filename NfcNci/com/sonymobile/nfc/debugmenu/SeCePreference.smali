.class public Lcom/sonymobile/nfc/debugmenu/SeCePreference;
.super Landroid/preference/DialogPreference;
.source "SeCePreference.java"


# static fields
.field public static final CE_TYPE_A:I = 0x1

.field public static final CE_TYPE_B:I = 0x2

.field public static final CE_TYPE_F:I = 0x4

.field public static final CE_TYPE_NONE:I = 0x0

.field private static final DBG:Z = false

.field private static final DEFAULT_CE_TYPE:I = 0x1

.field public static final SE_ALL_ACTIVATE:I = 0xff

.field private static final TAG:Ljava/lang/String; = "NfcSettingTestMode.SeCe"

.field private static mSelectedCeValue:I

.field private static mSelectedSeValue:I


# instance fields
.field private final DEFAULT_SE_TYPE:I

.field public final SE_TYPE_ESE:I

.field public final SE_TYPE_HOST:I

.field public final SE_TYPE_NONE:I

.field public final SE_TYPE_UICC:I

.field private mCheckTypeA:Landroid/widget/CheckBox;

.field private mCheckTypeB:Landroid/widget/CheckBox;

.field private mCheckTypeF:Landroid/widget/CheckBox;

.field private mCurrentPref:Ljava/lang/String;

.field private mIsCustomMode:Z

.field private mPreferenceNotifyHandler:Landroid/os/Handler;

.field private mRadioButtonSeEse:Landroid/widget/RadioButton;

.field private mRadioButtonSeUicc:Landroid/widget/RadioButton;

.field private mRadioGroupSe:Landroid/widget/RadioGroup;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mCheckTypeA:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mCheckTypeB:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)Landroid/widget/CheckBox;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mCheckTypeF:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    iput v5, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_NONE:I

    .line 67
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mPreferenceNotifyHandler:Landroid/os/Handler;

    .line 79
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_HOST:I

    .line 80
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_UICC:I

    .line 81
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 82
    .local v1, "eeHandleSmx":I
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 83
    .local v0, "eeHandleFn":I
    const/16 v2, 0xfff

    if-eq v1, v2, :cond_75

    .end local v1    # "eeHandleSmx":I
    :goto_4e
    iput v1, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_ESE:I

    .line 84
    iget v2, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_UICC:I

    iput v2, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->DEFAULT_SE_TYPE:I

    .line 85
    const v2, 0x7f03000f

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->setDialogLayoutResource(I)V

    .line 87
    const-string/jumbo v2, "%03X:%02X"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->DEFAULT_SE_TYPE:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mCurrentPref:Ljava/lang/String;

    .line 77
    return-void

    .restart local v1    # "eeHandleSmx":I
    :cond_75
    move v1, v0

    .line 83
    goto :goto_4e
.end method

.method private getSelectedCeValue()I
    .registers 3

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, "ceType":I
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mCheckTypeA:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 278
    const/4 v0, 0x1

    .line 280
    :cond_a
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mCheckTypeB:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 281
    or-int/lit8 v0, v0, 0x2

    .line 283
    :cond_14
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mCheckTypeF:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 284
    or-int/lit8 v0, v0, 0x4

    .line 286
    :cond_1e
    return v0
.end method

.method private getSelectedSeValue()I
    .registers 3

    .prologue
    .line 290
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->DEFAULT_SE_TYPE:I

    .line 292
    .local v0, "radioSe":I
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mRadioGroupSe:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    packed-switch v1, :pswitch_data_18

    .line 308
    :goto_b
    return v0

    .line 294
    :pswitch_c
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_UICC:I

    goto :goto_b

    .line 297
    :pswitch_f
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_ESE:I

    goto :goto_b

    .line 300
    :pswitch_12
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_HOST:I

    goto :goto_b

    .line 303
    :pswitch_15
    const/4 v0, 0x0

    .line 304
    goto :goto_b

    .line 292
    nop

    :pswitch_data_18
    .packed-switch 0x7f0d0050
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method

.method private loadPref()V
    .registers 6

    .prologue
    const/16 v4, 0x10

    const/4 v3, 0x1

    .line 109
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mCurrentPref:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "storedValue":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mIsCustomMode:Z

    if-eqz v1, :cond_41

    .line 112
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedSeValue:I

    .line 113
    const/4 v1, 0x4

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedCeValue:I

    .line 120
    :goto_25
    sget v1, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedSeValue:I

    iget v2, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_UICC:I

    if-ne v1, v2, :cond_31

    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isUiccSupported()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 127
    :cond_31
    sget v1, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedSeValue:I

    iget v2, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_ESE:I

    if-ne v1, v2, :cond_3d

    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isEseSupported()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 136
    :cond_3d
    :goto_3d
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->updateSummary()V

    .line 108
    return-void

    .line 116
    :cond_41
    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->DEFAULT_SE_TYPE:I

    sput v1, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedSeValue:I

    .line 117
    sput v3, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedCeValue:I

    goto :goto_25

    .line 121
    :cond_48
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isEseSupported()Z

    move-result v1

    if-eqz v1, :cond_55

    .line 122
    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_ESE:I

    sput v1, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedSeValue:I

    .line 126
    :goto_52
    sput v3, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedCeValue:I

    goto :goto_3d

    .line 124
    :cond_55
    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_HOST:I

    sput v1, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedSeValue:I

    goto :goto_52

    .line 128
    :cond_5a
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isUiccSupported()Z

    move-result v1

    if-eqz v1, :cond_67

    .line 129
    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_UICC:I

    sput v1, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedSeValue:I

    .line 133
    :goto_64
    sput v3, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedCeValue:I

    goto :goto_3d

    .line 131
    :cond_67
    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_HOST:I

    sput v1, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedSeValue:I

    goto :goto_64
.end method

.method private static declared-synchronized setSelectedCeValue(I)V
    .registers 3
    .param p0, "scv"    # I

    .prologue
    const-class v0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    monitor-enter v0

    .line 70
    :try_start_3
    sput p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedCeValue:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    .line 69
    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized setSelectedSeValue(I)V
    .registers 3
    .param p0, "ssv"    # I

    .prologue
    const-class v0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    monitor-enter v0

    .line 74
    :try_start_3
    sput p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedSeValue:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    .line 73
    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setValueToView(II)V
    .registers 7
    .param p1, "seValue"    # I
    .param p2, "ceValue"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 312
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_UICC:I

    if-ne p1, v0, :cond_2a

    .line 313
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mRadioGroupSe:Landroid/widget/RadioGroup;

    const v1, 0x7f0d0050

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 322
    :cond_e
    :goto_e
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_4f

    .line 323
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mCheckTypeA:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 327
    :goto_17
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_55

    .line 328
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mCheckTypeB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 332
    :goto_20
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_5b

    .line 333
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mCheckTypeF:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 311
    :goto_29
    return-void

    .line 314
    :cond_2a
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_ESE:I

    if-ne p1, v0, :cond_37

    .line 315
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mRadioGroupSe:Landroid/widget/RadioGroup;

    const v1, 0x7f0d0051

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_e

    .line 316
    :cond_37
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_HOST:I

    if-ne p1, v0, :cond_44

    .line 317
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mRadioGroupSe:Landroid/widget/RadioGroup;

    const v1, 0x7f0d0052

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_e

    .line 318
    :cond_44
    if-nez p1, :cond_e

    .line 319
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mRadioGroupSe:Landroid/widget/RadioGroup;

    const v1, 0x7f0d0053

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_e

    .line 325
    :cond_4f
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mCheckTypeA:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_17

    .line 330
    :cond_55
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mCheckTypeB:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_20

    .line 335
    :cond_5b
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mCheckTypeF:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_29
.end method

.method private updateSeView(ZZ)V
    .registers 6
    .param p1, "uiccSupported"    # Z
    .param p2, "eSeSupported"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 340
    if-nez p1, :cond_11

    .line 341
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mRadioButtonSeUicc:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 345
    :goto_9
    if-nez p2, :cond_17

    .line 346
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mRadioButtonSeEse:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 339
    :goto_10
    return-void

    .line 343
    :cond_11
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mRadioButtonSeUicc:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_9

    .line 348
    :cond_17
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mRadioButtonSeEse:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setEnabled(Z)V

    goto :goto_10
.end method

.method private updateSummary()V
    .registers 5

    .prologue
    .line 233
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "SE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, "sb":Ljava/lang/StringBuffer;
    sget v2, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedSeValue:I

    iget v3, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_UICC:I

    if-ne v2, v3, :cond_68

    .line 236
    const-string/jumbo v2, "UICC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    :cond_14
    :goto_14
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    const-string/jumbo v2, "CE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "isSet":Z
    sget v2, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedCeValue:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2e

    .line 250
    const-string/jumbo v2, "Type A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    const/4 v0, 0x1

    .line 253
    :cond_2e
    sget v2, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedCeValue:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_43

    .line 254
    if-eqz v0, :cond_3c

    .line 255
    const-string/jumbo v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    :cond_3c
    const-string/jumbo v2, "Type B"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    const/4 v0, 0x1

    .line 260
    :cond_43
    sget v2, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedCeValue:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_58

    .line 261
    if-eqz v0, :cond_51

    .line 262
    const-string/jumbo v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    :cond_51
    const-string/jumbo v2, "Type F"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    const/4 v0, 0x1

    .line 267
    :cond_58
    if-nez v0, :cond_60

    .line 268
    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    :cond_60
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 232
    return-void

    .line 237
    .end local v0    # "isSet":Z
    :cond_68
    sget v2, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedSeValue:I

    iget v3, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_ESE:I

    if-ne v2, v3, :cond_75

    .line 238
    const-string/jumbo v2, "eSE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14

    .line 239
    :cond_75
    sget v2, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedSeValue:I

    iget v3, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->SE_TYPE_HOST:I

    if-ne v2, v3, :cond_82

    .line 240
    const-string/jumbo v2, "HOST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14

    .line 241
    :cond_82
    sget v2, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedSeValue:I

    if-nez v2, :cond_14

    .line 242
    const-string/jumbo v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_14
.end method


# virtual methods
.method public getCeValue()I
    .registers 2

    .prologue
    .line 95
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isCustomSetting()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 96
    sget v0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedCeValue:I

    return v0

    .line 98
    :cond_9
    const/4 v0, 0x1

    return v0
.end method

.method public getSeValue()I
    .registers 2

    .prologue
    .line 102
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isCustomSetting()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 103
    sget v0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedSeValue:I

    return v0

    .line 105
    :cond_9
    iget v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->DEFAULT_SE_TYPE:I

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 147
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isCustomSetting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mIsCustomMode:Z

    .line 149
    const v0, 0x7f0d004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mRadioGroupSe:Landroid/widget/RadioGroup;

    .line 150
    const v0, 0x7f0d0054

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mCheckTypeA:Landroid/widget/CheckBox;

    .line 151
    const v0, 0x7f0d0055

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mCheckTypeB:Landroid/widget/CheckBox;

    .line 152
    const v0, 0x7f0d0056

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mCheckTypeF:Landroid/widget/CheckBox;

    .line 154
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mRadioGroupSe:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/debugmenu/SeCePreference$1;-><init>(Lcom/sonymobile/nfc/debugmenu/SeCePreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 199
    const v0, 0x7f0d0050

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mRadioButtonSeUicc:Landroid/widget/RadioButton;

    .line 200
    const v0, 0x7f0d0051

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mRadioButtonSeEse:Landroid/widget/RadioButton;

    .line 202
    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mIsCustomMode:Z

    if-eqz v0, :cond_64

    .line 203
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isUiccSupported()Z

    move-result v0

    .line 204
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isEseSupported()Z

    move-result v1

    .line 203
    invoke-direct {p0, v0, v1}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->updateSeView(ZZ)V

    .line 207
    :cond_64
    sget v0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedSeValue:I

    sget v1, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mSelectedCeValue:I

    invoke-direct {p0, v0, v1}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->setValueToView(II)V

    .line 145
    return-void
.end method

.method protected onDialogClosed(Z)V
    .registers 6
    .param p1, "isSaved"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 214
    if-eqz p1, :cond_3c

    .line 215
    const/4 v1, 0x2

    new-array v0, v1, [I

    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->DEFAULT_SE_TYPE:I

    aput v1, v0, v2

    aput v3, v0, v3

    .line 216
    .local v0, "dialogValues":[I
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isCustomSetting()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mIsCustomMode:Z

    .line 217
    iget-boolean v1, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mIsCustomMode:Z

    if-eqz v1, :cond_3c

    .line 218
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->getSelectedSeValue()I

    move-result v1

    aput v1, v0, v2

    .line 219
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->getSelectedCeValue()I

    move-result v1

    aput v1, v0, v3

    .line 220
    aget v1, v0, v2

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->setSelectedSeValue(I)V

    .line 221
    aget v1, v0, v3

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->setSelectedCeValue(I)V

    .line 222
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->updateSummary()V

    .line 224
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mPreferenceNotifyHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3c

    .line 225
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mPreferenceNotifyHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 211
    .end local v0    # "dialogValues":[I
    :cond_3c
    return-void
.end method

.method protected savePref()V
    .registers 5

    .prologue
    .line 141
    const-string/jumbo v0, "%03X:%02X"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->getSeValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->getCeValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->persistString(Ljava/lang/String;)Z

    .line 139
    return-void
.end method

.method public setDefaultValue()V
    .registers 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->loadPref()V

    .line 90
    return-void
.end method

.method protected setNotifyHandler(Landroid/os/Handler;)V
    .registers 2
    .param p1, "notifyHandler"    # Landroid/os/Handler;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mPreferenceNotifyHandler:Landroid/os/Handler;

    .line 357
    return-void
.end method

.method public updateSeCeSummary()V
    .registers 2

    .prologue
    .line 353
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isCustomSetting()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->mIsCustomMode:Z

    .line 354
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->loadPref()V

    .line 352
    return-void
.end method

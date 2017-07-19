.class public abstract Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;
.super Landroid/app/Activity;
.source "NfcDiagTestCommonBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;
    }
.end annotation


# static fields
.field private static final ACTIVITY_TIMEOUT_MS:I = 0x1b58

.field protected static final DBG:Z = false

.field private static final NFC_MODULATION_TYPE_A:Ljava/lang/String; = "Type A"

.field private static final NFC_MODULATION_TYPE_B:Ljava/lang/String; = "Type B"

.field private static final NFC_MODULATION_TYPE_OTHER:Ljava/lang/String; = "Other"

.field private static final NFC_TEXT_VIEW_NUM_BASEBAND:I = 0x0

.field private static final NFC_TEXT_VIEW_NUM_SWP:I = 0x1

.field private static final NFC_TEXT_VIEW_NUM_TAGREADING:I = 0x2

.field private static NFC_TYPE_A_BITMAP:B = 0x0t

.field private static NFC_TYPE_B_BITMAP:B = 0x0t

.field private static final START_TAG_READ_TIME_OUT:I = 0x3e8

.field protected static final TAG:Ljava/lang/String; = "NfcDiagTest"


# instance fields
.field private mAdapter:Landroid/nfc/NfcAdapter;

.field private mAntenna:Landroid/widget/TextView;

.field private mAntennaResult:Landroid/widget/TextView;

.field private mBaseband:Landroid/widget/TextView;

.field private mBasebandPair:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBasebandResult:Landroid/widget/TextView;

.field private mDiagTestTask:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;

.field private mIsActivityRunning:Z

.field private mIsLockSupported:Z

.field private mIsTagReading:Z

.field protected mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

.field private mOriginalNfcSettingOn:Z

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRecognizedTagTypes:B

.field private mStartTagReadingTimer:Ljava/util/Timer;

.field private mSwp:Landroid/widget/TextView;

.field private mSwpPair:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSwpResult:Landroid/widget/TextView;

.field private mTagPair:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTagReading:Landroid/widget/TextView;

.field private mTagReadingResult:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/nfc/NfcAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mBaseband:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/util/Pair;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mTagPair:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic -get11(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mTagReading:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get12(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mTagReadingResult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/util/Pair;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mBasebandPair:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mBasebandResult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mIsActivityRunning:Z

    return v0
.end method

.method static synthetic -get5(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mSwp:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/util/Pair;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mSwpPair:Landroid/util/Pair;

    return-object v0
.end method

.method static synthetic -get9(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mSwpResult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Z
    .registers 2

    invoke-direct {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->checkNfcStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->dgnBasebandId()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->dgnSwp()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->dgnTagReading()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;Z)V
    .registers 2
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->setTagReading(Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;J)V
    .registers 4
    .param p1, "mSecDealy"    # J

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->startTagReadingTimeout(J)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    const/4 v0, 0x1

    sput-byte v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->NFC_TYPE_A_BITMAP:B

    .line 86
    const/4 v0, 0x2

    sput-byte v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->NFC_TYPE_B_BITMAP:B

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    iput-boolean v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mOriginalNfcSettingOn:Z

    .line 111
    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mDiagTestTask:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;

    .line 113
    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    .line 116
    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mStartTagReadingTimer:Ljava/util/Timer;

    .line 119
    iput-boolean v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mIsTagReading:Z

    .line 122
    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mPendingIntent:Landroid/app/PendingIntent;

    .line 125
    iput-byte v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mRecognizedTagTypes:B

    .line 128
    iput-boolean v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mIsActivityRunning:Z

    .line 130
    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mBasebandPair:Landroid/util/Pair;

    .line 131
    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mSwpPair:Landroid/util/Pair;

    .line 132
    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mTagPair:Landroid/util/Pair;

    .line 134
    iput-boolean v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mIsLockSupported:Z

    .line 57
    return-void
.end method

.method private checkNfcStatus()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcConfig;->isNfcLocked()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 285
    return v1

    .line 289
    :cond_a
    iget-boolean v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mOriginalNfcSettingOn:Z

    if-nez v0, :cond_17

    .line 291
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcConfig;->enable()Z

    move-result v0

    if-nez v0, :cond_17

    .line 293
    return v1

    .line 297
    :cond_17
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcConfig;->disable()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 304
    const/4 v0, 0x1

    return v0

    .line 301
    :cond_21
    return v1
.end method

.method private dgnBasebandId()V
    .registers 5

    .prologue
    .line 346
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->doGetBaseBandId()Landroid/util/Pair;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mBasebandPair:Landroid/util/Pair;

    .line 347
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mBasebandPair:Landroid/util/Pair;

    if-nez v1, :cond_5e

    .line 348
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Getting baseband ID failed."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_13

    .line 350
    :catch_13
    move-exception v0

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "NfcDiagTest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f090199

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 353
    const v2, 0x7f090191

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 353
    const v2, 0x7f090192

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 352
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mBasebandPair:Landroid/util/Pair;

    .line 341
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5e
    return-void
.end method

.method private dgnSwp()V
    .registers 4

    .prologue
    const v2, 0x7f090105

    .line 366
    invoke-virtual {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->doSwpTest()Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mSwpPair:Landroid/util/Pair;

    .line 367
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mSwpPair:Landroid/util/Pair;

    if-nez v0, :cond_24

    .line 368
    const-string/jumbo v0, "NfcDiagTest"

    const-string/jumbo v1, "SWP Test failed."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 369
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mSwpPair:Landroid/util/Pair;

    .line 362
    :cond_24
    return-void
.end method

.method private dgnTagReading()V
    .registers 4

    .prologue
    const v2, 0x7f09019e

    .line 380
    const/4 v0, 0x1

    .line 385
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/NfcConfig;->disable()Z

    move-result v0

    .line 386
    .local v0, "ret":Z
    if-eqz v0, :cond_12

    .line 387
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/NfcConfig;->enable()Z

    move-result v0

    .line 390
    :cond_12
    if-eqz v0, :cond_3e

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 392
    const v2, 0x7f090195

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    const v2, 0x7f0901bc

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 391
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mTagPair:Landroid/util/Pair;

    .line 379
    :goto_3d
    return-void

    .line 396
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 397
    const v2, 0x7f090106

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 396
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 397
    const-string/jumbo v2, ""

    .line 396
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mTagPair:Landroid/util/Pair;

    goto :goto_3d
.end method

.method protected static getUtf8SubString(Ljava/lang/String;II)Ljava/lang/String;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 686
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string/jumbo v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v1

    .line 687
    :catch_14
    move-exception v0

    .line 688
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid argument: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private isTagReading()Z
    .registers 2

    .prologue
    .line 419
    monitor-enter p0

    .line 420
    :try_start_1
    iget-boolean v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mIsTagReading:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 419
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private resolveIntent(Landroid/content/Intent;)V
    .registers 19
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 469
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 470
    .local v2, "action":Ljava/lang/String;
    const-string/jumbo v11, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1f

    .line 471
    const-string/jumbo v11, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 470
    if-nez v11, :cond_1f

    .line 472
    const-string/jumbo v11, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 470
    if-eqz v11, :cond_154

    .line 480
    :cond_1f
    const-string/jumbo v11, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 481
    .local v6, "pm":Landroid/os/PowerManager;
    const-string/jumbo v11, "NfcDiagTest"

    const/16 v12, 0xa

    invoke-virtual {v6, v12, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v10

    .line 485
    .local v10, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v12, 0x1b58

    invoke-virtual {v10, v12, v13}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 488
    const-string/jumbo v11, "android.nfc.extra.ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 489
    .local v4, "id":[B
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 490
    .local v5, "idSb":Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    array-length v12, v4

    :goto_48
    if-ge v11, v12, :cond_64

    aget-byte v9, v4, v11

    .line 491
    .local v9, "value":B
    const-string/jumbo v13, "%02x"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    add-int/lit8 v11, v11, 0x1

    goto :goto_48

    .line 495
    .end local v9    # "value":B
    :cond_64
    const-string/jumbo v8, "Other"

    .line 496
    .local v8, "tagType":Ljava/lang/String;
    const-string/jumbo v11, "android.nfc.extra.TAG"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/nfc/Tag;

    .line 497
    .local v7, "tag":Landroid/nfc/Tag;
    if-eqz v7, :cond_89

    .line 498
    invoke-static {v7}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    move-result-object v11

    if-eqz v11, :cond_13d

    .line 499
    const-string/jumbo v8, "Type A"

    .line 500
    move-object/from16 v0, p0

    iget-byte v11, v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mRecognizedTagTypes:B

    sget-byte v12, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->NFC_TYPE_A_BITMAP:B

    or-int/2addr v11, v12

    int-to-byte v11, v11

    move-object/from16 v0, p0

    iput-byte v11, v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mRecognizedTagTypes:B

    .line 509
    :cond_89
    :goto_89
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mTagReadingResult:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f09019e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 510
    const-string/jumbo v13, "<br><font color=\'#00FFFF\'><b>"

    .line 509
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 511
    const v13, 0x7f0901bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 509
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 512
    const-string/jumbo v13, "<br>"

    .line 509
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 513
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const v14, 0x7f0901be

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    .line 509
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 514
    const-string/jumbo v13, "<br>"

    .line 509
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 515
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const v14, 0x7f0901bf

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    .line 509
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 516
    const-string/jumbo v13, "</b></font>"

    .line 509
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    sget-byte v11, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->NFC_TYPE_A_BITMAP:B

    sget-byte v12, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->NFC_TYPE_B_BITMAP:B

    or-int/2addr v11, v12

    int-to-byte v3, v11

    .line 520
    .local v3, "bothRecognized":B
    move-object/from16 v0, p0

    iget-byte v11, v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mRecognizedTagTypes:B

    and-int/2addr v11, v3

    if-eqz v11, :cond_13c

    .line 521
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mTagReading:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f09019e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 522
    const v13, 0x7f090103

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 521
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    :cond_13c
    return-void

    .line 501
    .end local v3    # "bothRecognized":B
    :cond_13d
    invoke-static {v7}, Landroid/nfc/tech/NfcB;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcB;

    move-result-object v11

    if-eqz v11, :cond_89

    .line 502
    const-string/jumbo v8, "Type B"

    .line 503
    move-object/from16 v0, p0

    iget-byte v11, v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mRecognizedTagTypes:B

    sget-byte v12, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->NFC_TYPE_B_BITMAP:B

    or-int/2addr v11, v12

    int-to-byte v11, v11

    move-object/from16 v0, p0

    iput-byte v11, v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mRecognizedTagTypes:B

    goto/16 :goto_89

    .line 525
    .end local v4    # "id":[B
    .end local v5    # "idSb":Ljava/lang/StringBuffer;
    .end local v6    # "pm":Landroid/os/PowerManager;
    .end local v7    # "tag":Landroid/nfc/Tag;
    .end local v8    # "tagType":Ljava/lang/String;
    .end local v10    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :cond_154
    const-string/jumbo v11, "NfcDiagTest"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Unknown intent "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    return-void
.end method

.method private setTagReading(Z)V
    .registers 3
    .param p1, "state"    # Z

    .prologue
    .line 428
    monitor-enter p0

    .line 429
    :try_start_1
    iput-boolean p1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mIsTagReading:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    .line 427
    return-void

    .line 428
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startTagReadingTimeout(J)V
    .registers 6
    .param p1, "mSecDealy"    # J

    .prologue
    const/4 v1, 0x0

    .line 438
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mStartTagReadingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_c

    .line 439
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mStartTagReadingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 440
    iput-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mStartTagReadingTimer:Ljava/util/Timer;

    .line 444
    :cond_c
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mStartTagReadingTimer:Ljava/util/Timer;

    if-nez v0, :cond_21

    .line 445
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mStartTagReadingTimer:Ljava/util/Timer;

    .line 446
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mStartTagReadingTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$1;-><init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 436
    :cond_21
    return-void
.end method


# virtual methods
.method protected abstract doGetBaseBandId()Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract doSwpTest()Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected getConfig()Lcom/sonymobile/nfc/NfcConfig;
    .registers 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    return-object v0
.end method

.method protected abstract isAntennaSelfTestSupported()Z
.end method

.method protected isSimPresent()Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 408
    const-string/jumbo v3, "phone"

    invoke-virtual {p0, v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 409
    .local v1, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 412
    .local v0, "simState":I
    if-ne v0, v2, :cond_11

    const/4 v2, 0x0

    :cond_11
    return v2
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->setContentView(I)V

    .line 142
    iput-boolean v4, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mIsActivityRunning:Z

    .line 143
    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mBaseband:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f0d000e

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mBasebandResult:Landroid/widget/TextView;

    .line 145
    const v0, 0x7f0d000f

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mSwp:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0d0010

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mSwpResult:Landroid/widget/TextView;

    .line 147
    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mAntenna:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0d0012

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mAntennaResult:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f0d0013

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mTagReading:Landroid/widget/TextView;

    .line 150
    const v0, 0x7f0d0014

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mTagReadingResult:Landroid/widget/TextView;

    .line 152
    invoke-virtual {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->isAntennaSelfTestSupported()Z

    move-result v0

    if-nez v0, :cond_82

    .line 153
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mAntenna:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 154
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mAntenna:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mAntennaResult:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 156
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mAntennaResult:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    :cond_82
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 159
    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mPendingIntent:Landroid/app/PendingIntent;

    .line 163
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 164
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_ac

    .line 165
    const v0, 0x7f090106

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->showDialogOk(Ljava/lang/String;Z)V

    .line 167
    return-void

    .line 170
    :cond_ac
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mOriginalNfcSettingOn:Z

    .line 172
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 173
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 174
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string/jumbo v2, "Duration Diag Test..."

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 176
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 178
    invoke-virtual {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0002

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mIsLockSupported:Z

    .line 180
    new-instance v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;-><init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mDiagTestTask:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;

    .line 181
    iget-object v2, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mDiagTestTask:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;

    sget-object v3, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    new-array v4, v4, [Ljava/lang/Void;

    move-object v0, v1

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 137
    return-void
.end method

.method public final onDestroy()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 191
    iget-boolean v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mIsLockSupported:Z

    if-eqz v3, :cond_19

    .line 192
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mDiagTestTask:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;

    if-eqz v3, :cond_e

    .line 194
    :try_start_9
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mDiagTestTask:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;

    invoke-virtual {v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->get()Ljava/lang/Object;
    :try_end_e
    .catch Ljava/util/concurrent/CancellationException; {:try_start_9 .. :try_end_e} :catch_69
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_e} :catch_5d
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_e} :catch_51

    .line 204
    :cond_e
    :goto_e
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mStartTagReadingTimer:Ljava/util/Timer;

    if-eqz v3, :cond_19

    .line 205
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mStartTagReadingTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 206
    iput-object v5, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mStartTagReadingTimer:Ljava/util/Timer;

    .line 210
    :cond_19
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mIsActivityRunning:Z

    .line 211
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mDiagTestTask:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;

    if-eqz v3, :cond_25

    .line 213
    :try_start_20
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mDiagTestTask:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;

    invoke-virtual {v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->get()Ljava/lang/Object;
    :try_end_25
    .catch Ljava/util/concurrent/CancellationException; {:try_start_20 .. :try_end_25} :catch_8d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_20 .. :try_end_25} :catch_81
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_25} :catch_75

    .line 223
    :cond_25
    :goto_25
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mStartTagReadingTimer:Ljava/util/Timer;

    if-eqz v3, :cond_30

    .line 224
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mStartTagReadingTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 225
    iput-object v5, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mStartTagReadingTimer:Ljava/util/Timer;

    .line 229
    :cond_30
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_3b

    .line 230
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 231
    iput-object v5, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 234
    :cond_3b
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v3, :cond_4d

    .line 236
    iget-boolean v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mOriginalNfcSettingOn:Z

    if-eqz v3, :cond_99

    .line 237
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 238
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 244
    :cond_4d
    :goto_4d
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 187
    return-void

    .line 199
    :catch_51
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "NfcDiagTest"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 197
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_5d
    move-exception v2

    .line 198
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    const-string/jumbo v3, "NfcDiagTest"

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 195
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_69
    move-exception v1

    .line 196
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    const-string/jumbo v3, "NfcDiagTest"

    invoke-virtual {v1}, Ljava/util/concurrent/CancellationException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 218
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :catch_75
    move-exception v0

    .line 219
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "NfcDiagTest"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 216
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_81
    move-exception v2

    .line 217
    .restart local v2    # "e":Ljava/util/concurrent/ExecutionException;
    const-string/jumbo v3, "NfcDiagTest"

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 214
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_8d
    move-exception v1

    .line 215
    .restart local v1    # "e":Ljava/util/concurrent/CancellationException;
    const-string/jumbo v3, "NfcDiagTest"

    invoke-virtual {v1}, Ljava/util/concurrent/CancellationException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 239
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :cond_99
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 240
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_4d
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 538
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 540
    .local v0, "ret":Z
    const/16 v1, 0x18

    if-eq p1, v1, :cond_c

    .line 541
    const/16 v1, 0x19

    if-ne p1, v1, :cond_e

    .line 544
    :cond_c
    const/4 v1, 0x1

    return v1

    .line 542
    :cond_e
    const/16 v1, 0x1b

    if-eq p1, v1, :cond_c

    .line 547
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 558
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 560
    .local v0, "ret":Z
    const/16 v1, 0x18

    if-eq p1, v1, :cond_c

    .line 561
    const/16 v1, 0x19

    if-ne p1, v1, :cond_e

    .line 563
    :cond_c
    const/4 v1, 0x1

    return v1

    .line 566
    :cond_e
    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->setIntent(Landroid/content/Intent;)V

    .line 275
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->resolveIntent(Landroid/content/Intent;)V

    .line 273
    return-void
.end method

.method public final onPause()V
    .registers 2

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->isTagReading()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 265
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 268
    :cond_b
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 261
    return-void
.end method

.method public final onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 251
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 254
    invoke-direct {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->isTagReading()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 255
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, v1, v2, v2}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 249
    :cond_11
    return-void
.end method

.method public showDialogOk(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "flg"    # Z

    .prologue
    .line 576
    move-object v2, p1

    .line 577
    .local v2, "message":Ljava/lang/String;
    move v1, p2

    .line 578
    .local v1, "endFlg":Z
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 580
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f090190

    invoke-virtual {p0, v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 581
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 582
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 583
    new-instance v3, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$2;

    invoke-direct {v3, p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$2;-><init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 590
    new-instance v3, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$3;

    invoke-direct {v3, p0, p2}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$3;-><init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;Z)V

    const v4, 0x7f090103

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 599
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 575
    return-void
.end method

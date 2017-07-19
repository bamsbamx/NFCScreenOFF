.class public abstract Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;
.super Landroid/app/Activity;
.source "NfcDiagTestBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;
    }
.end annotation


# static fields
.field private static final ACTIVITY_TIMEOUT_MS:I = 0x1b58

.field static final ANTENNA_PARAM:Ljava/lang/String; = "test.antenna"

.field protected static final DBG:Z = false

.field static final ID_PARAM:Ljava/lang/String; = "test.baseband.id"

.field private static final NFC_ANT_CIR_CHECK_FAILED:Ljava/lang/String; = "7C"

.field private static final NFC_ANT_DET_LEVEL_FAILED:Ljava/lang/String; = "7B"

.field private static final NFC_ANT_NO_FAILURE:Ljava/lang/String; = "00"

.field private static final NFC_ANT_TX1_COND_FAILED:Ljava/lang/String; = "79"

.field private static final NFC_ANT_TX2_COND_FAILED:Ljava/lang/String; = "7A"

.field private static final NFC_MODULATION_TYPE_A:Ljava/lang/String; = "Type A"

.field private static final NFC_MODULATION_TYPE_B:Ljava/lang/String; = "Type B"

.field private static final NFC_MODULATION_TYPE_OTHER:Ljava/lang/String; = "Other"

.field private static final NFC_TEXT_VIEW_ANTENNA:Ljava/lang/String; = "TextView-Antenna"

.field private static final NFC_TEXT_VIEW_ANTENNA_RESULT:Ljava/lang/String; = "TextView-AntennaResult"

.field private static final NFC_TEXT_VIEW_BASEBAND:Ljava/lang/String; = "TextView-Baseband"

.field private static final NFC_TEXT_VIEW_BASEBAND_RESULT:Ljava/lang/String; = "TextView-BasebandResult"

.field private static final NFC_TEXT_VIEW_NUM_ANTENNA:I = 0x4

.field private static final NFC_TEXT_VIEW_NUM_ANTENNA_RESULT:I = 0x5

.field private static final NFC_TEXT_VIEW_NUM_BASEBAND:I = 0x0

.field private static final NFC_TEXT_VIEW_NUM_BASEBAND_RESULT:I = 0x1

.field private static final NFC_TEXT_VIEW_NUM_SWP:I = 0x2

.field private static final NFC_TEXT_VIEW_NUM_SWP_RESULT:I = 0x3

.field private static final NFC_TEXT_VIEW_NUM_TAGREADING:I = 0x6

.field private static final NFC_TEXT_VIEW_NUM_TAGREADING_RESULT:I = 0x7

.field private static final NFC_TEXT_VIEW_SWP:Ljava/lang/String; = "TextView-Swp"

.field private static final NFC_TEXT_VIEW_SWP_RESULT:Ljava/lang/String; = "TextView-SwpResult"

.field private static final NFC_TEXT_VIEW_TAGREADING:Ljava/lang/String; = "TextView-TagReading"

.field private static final NFC_TEXT_VIEW_TAGREADING_RESULT:Ljava/lang/String; = "TextView-TagReadingResult"

.field private static NFC_TYPE_A_BITMAP:B = 0x0t

.field private static NFC_TYPE_B_BITMAP:B = 0x0t

.field private static final START_TAG_READ_TIME_OUT:I = 0x3e8

.field static final SWP_PARAM:Ljava/lang/String; = "test.swp"

.field protected static final TAG:Ljava/lang/String; = "NfcDiagTest"


# instance fields
.field private mAdapter:Landroid/nfc/NfcAdapter;

.field private mAntenna:Landroid/widget/TextView;

.field private mAntennaResult:Landroid/widget/TextView;

.field private mBaseband:Landroid/widget/TextView;

.field private mBasebandResult:Landroid/widget/TextView;

.field private mDiagTestTask:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;

.field private mHandler:Landroid/os/Handler;

.field private mIsActivityRunning:Z

.field private mIsTagReading:Z

.field private mNfcAdapterEx:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

.field private mOriginalNfcSettingOn:Z

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRecognizedTagTypes:B

.field private mStartTagReadingTimer:Ljava/util/Timer;

.field private mSwp:Landroid/widget/TextView;

.field private mSwpResult:Landroid/widget/TextView;

.field private mTagReading:Landroid/widget/TextView;

.field private mTagReadingResult:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/nfc/NfcAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mAntenna:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mSwpResult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get11(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mTagReading:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get12(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mTagReadingResult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mAntennaResult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mBaseband:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mBasebandResult:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mIsActivityRunning:Z

    return v0
.end method

.method static synthetic -get7(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/app/PendingIntent;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic -get8(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/app/ProgressDialog;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic -get9(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mSwp:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Z
    .registers 2

    invoke-direct {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->dgnCheckNFCAdapter()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->dgnAntenna()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->dgnBasebandId()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->dgnSwp()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->dgnTagReading()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 134
    const/4 v0, 0x1

    sput-byte v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->NFC_TYPE_A_BITMAP:B

    .line 137
    const/4 v0, 0x2

    sput-byte v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->NFC_TYPE_B_BITMAP:B

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 162
    iput-boolean v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mOriginalNfcSettingOn:Z

    .line 164
    iput-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mDiagTestTask:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;

    .line 166
    iput-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mNfcAdapterEx:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    .line 169
    iput-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mStartTagReadingTimer:Ljava/util/Timer;

    .line 172
    iput-boolean v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mIsTagReading:Z

    .line 175
    iput-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mPendingIntent:Landroid/app/PendingIntent;

    .line 178
    iput-byte v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mRecognizedTagTypes:B

    .line 181
    iput-boolean v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mIsActivityRunning:Z

    .line 61
    return-void
.end method

.method private dgnAntenna()V
    .registers 13

    .prologue
    const v11, 0x7f090192

    const v10, 0x7f090191

    const v9, 0x7f09019d

    const/4 v8, 0x5

    const/4 v7, 0x4

    .line 524
    const-string/jumbo v3, ""

    .line 525
    .local v3, "resp":Ljava/lang/String;
    const/4 v0, 0x0

    .line 526
    .local v0, "antenna_resp":Ljava/lang/String;
    const/4 v1, 0x0

    .line 532
    .local v1, "antenna_ret":Ljava/lang/String;
    :try_start_10
    iget-object v4, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mNfcAdapterEx:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    const-string/jumbo v5, "test.antenna"

    invoke-virtual {v4, v5}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->test(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 534
    .local v0, "antenna_resp":Ljava/lang/String;
    if-eqz v0, :cond_2bc

    .line 535
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "[0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x4

    invoke-static {v0, v5, v6}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getUtf8SubString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 536
    const-string/jumbo v5, "]"

    .line 535
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 536
    const v5, 0x7f0901a2

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 535
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 536
    const-string/jumbo v5, "\n"

    .line 535
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 537
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "[0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    const/4 v6, 0x6

    invoke-static {v0, v5, v6}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getUtf8SubString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 538
    const-string/jumbo v5, "]"

    .line 537
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 538
    const v5, 0x7f0901a3

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 537
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 538
    const-string/jumbo v5, "\n"

    .line 537
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 539
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "[0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x6

    const/16 v6, 0x8

    invoke-static {v0, v5, v6}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getUtf8SubString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 540
    const-string/jumbo v5, "]"

    .line 539
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 540
    const v5, 0x7f0901a4

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 539
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 540
    const-string/jumbo v5, "\n"

    .line 539
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 541
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "[0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x8

    const/16 v6, 0xa

    invoke-static {v0, v5, v6}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getUtf8SubString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 542
    const-string/jumbo v5, "]"

    .line 541
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 542
    const v5, 0x7f0901a5

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 541
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 542
    const-string/jumbo v5, "\n"

    .line 541
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 545
    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {v0, v4, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getUtf8SubString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, "antenna_ret":Ljava/lang/String;
    const-string/jumbo v4, "00"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_149

    .line 547
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f09019d

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 548
    const v5, 0x7f090103

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 547
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {p0, v5, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    .line 549
    const/4 v4, 0x5

    invoke-direct {p0, v4, v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    .line 586
    .end local v0    # "antenna_resp":Ljava/lang/String;
    .end local v1    # "antenna_ret":Ljava/lang/String;
    :goto_148
    return-void

    .line 550
    .restart local v0    # "antenna_resp":Ljava/lang/String;
    .restart local v1    # "antenna_ret":Ljava/lang/String;
    :cond_149
    const-string/jumbo v4, "79"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d2

    .line 551
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f09019d

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 552
    const v5, 0x7f0901a6

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 551
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {p0, v5, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    .line 553
    const/4 v4, 0x5

    invoke-direct {p0, v4, v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V
    :try_end_181
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_181} :catch_182

    goto :goto_148

    .line 578
    .end local v0    # "antenna_resp":Ljava/lang/String;
    .end local v1    # "antenna_ret":Ljava/lang/String;
    :catch_182
    move-exception v2

    .line 579
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "NfcDiagTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v9}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 581
    invoke-virtual {p0, v10}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 580
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v7, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    .line 582
    invoke-virtual {p0, v11}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v8, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    goto/16 :goto_148

    .line 554
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "antenna_resp":Ljava/lang/String;
    .restart local v1    # "antenna_ret":Ljava/lang/String;
    :cond_1d2
    :try_start_1d2
    const-string/jumbo v4, "7A"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20c

    .line 555
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f09019d

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 556
    const v5, 0x7f0901a7

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 555
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {p0, v5, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    .line 557
    const/4 v4, 0x5

    invoke-direct {p0, v4, v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    goto/16 :goto_148

    .line 558
    :cond_20c
    const-string/jumbo v4, "7B"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_246

    .line 559
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f09019d

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 560
    const v5, 0x7f0901a8

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 559
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {p0, v5, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    .line 561
    const/4 v4, 0x5

    invoke-direct {p0, v4, v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    goto/16 :goto_148

    .line 562
    :cond_246
    const-string/jumbo v4, "7C"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_280

    .line 563
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f09019d

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 564
    const v5, 0x7f0901a9

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 563
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {p0, v5, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    .line 565
    const/4 v4, 0x5

    invoke-direct {p0, v4, v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    goto/16 :goto_148

    .line 567
    :cond_280
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f09019d

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 568
    const v5, 0x7f090191

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 567
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {p0, v5, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    .line 569
    const v4, 0x7f090192

    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-direct {p0, v5, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    goto/16 :goto_148

    .line 573
    .local v1, "antenna_ret":Ljava/lang/String;
    :cond_2bc
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f09019d

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 574
    const v5, 0x7f090191

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 573
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    invoke-direct {p0, v5, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    .line 575
    const v4, 0x7f090192

    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    invoke-direct {p0, v5, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V
    :try_end_2f6
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_2f6} :catch_182

    goto/16 :goto_148
.end method

.method private dgnBasebandId()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 500
    :try_start_2
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mNfcAdapterEx:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    const-string/jumbo v4, "test.baseband.id"

    invoke-virtual {v3, v4}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->test(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 501
    .local v2, "testResult":Ljava/lang/String;
    if-nez v2, :cond_6e

    .line 502
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "Getting baseband ID failed."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_16

    .line 509
    .end local v2    # "testResult":Ljava/lang/String;
    :catch_16
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "NfcDiagTest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f090199

    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 512
    const v4, 0x7f090191

    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 511
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v6, v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    .line 513
    const v3, 0x7f090192

    invoke-virtual {p0, v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v7, v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    .line 494
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6d
    return-void

    .line 506
    .restart local v2    # "testResult":Ljava/lang/String;
    :cond_6e
    :try_start_6e
    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->parseBaseBandId(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 507
    .local v1, "resultPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v4, v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    .line 508
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {p0, v4, v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_82} :catch_16

    goto :goto_6d
.end method

.method private dgnCheckNFCAdapter()Z
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 469
    new-instance v0, Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    invoke-direct {v0}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mNfcAdapterEx:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    .line 470
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mNfcAdapterEx:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    invoke-virtual {v0, p0}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->connect(Landroid/content/Context;)Z

    .line 473
    iget-boolean v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mOriginalNfcSettingOn:Z

    if-nez v0, :cond_1a

    .line 475
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mNfcAdapterEx:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->enable()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 477
    return v1

    .line 481
    :cond_1a
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mNfcAdapterEx:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->disable()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 488
    const/4 v0, 0x1

    return v0

    .line 485
    :cond_24
    return v1
.end method

.method private dgnSwp()V
    .registers 12

    .prologue
    const v10, 0x7f09019a

    const/4 v9, 0x3

    const/4 v8, 0x2

    .line 594
    const/4 v2, 0x5

    .line 599
    .local v2, "sim_state":I
    :try_start_6
    const-string/jumbo v5, "phone"

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 600
    .local v3, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 603
    const/4 v5, 0x1

    if-ne v2, v5, :cond_51

    .line 605
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f09019a

    invoke-virtual {p0, v6}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 606
    const v6, 0x7f090196

    invoke-virtual {p0, v6}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 605
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {p0, v6, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    .line 607
    const v5, 0x7f090192

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    invoke-direct {p0, v6, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    .line 610
    return-void

    .line 611
    :cond_51
    if-nez v2, :cond_53

    .line 618
    :cond_53
    iget-object v5, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mNfcAdapterEx:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    const-string/jumbo v6, "test.swp"

    invoke-virtual {v5, v6}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->test(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 619
    .local v4, "testResult":Ljava/lang/String;
    if-nez v4, :cond_b5

    .line 620
    new-instance v5, Ljava/lang/NullPointerException;

    const-string/jumbo v6, "SWP Test failed."

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_67} :catch_67

    .line 627
    .end local v3    # "telephony":Landroid/telephony/TelephonyManager;
    .end local v4    # "testResult":Ljava/lang/String;
    :catch_67
    move-exception v0

    .line 628
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "NfcDiagTest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v10}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090191

    invoke-virtual {p0, v6}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 629
    invoke-direct {p0, v8, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    .line 631
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v9, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    .line 592
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_b4
    return-void

    .line 624
    .restart local v3    # "telephony":Landroid/telephony/TelephonyManager;
    .restart local v4    # "testResult":Ljava/lang/String;
    :cond_b5
    :try_start_b5
    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->parseSwpResult(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 625
    .local v1, "resultPair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x2

    invoke-direct {p0, v6, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    .line 626
    iget-object v5, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x3

    invoke-direct {p0, v6, v5}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_c9} :catch_67

    goto :goto_b4
.end method

.method private dgnTagReading()V
    .registers 5

    .prologue
    const v2, 0x7f09019e

    const/4 v3, 0x6

    .line 640
    const/4 v0, 0x1

    .line 645
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mNfcAdapterEx:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->enable()Z

    move-result v0

    .line 646
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mNfcAdapterEx:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->close()V

    .line 648
    if-eqz v0, :cond_51

    .line 649
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 650
    const v2, 0x7f090195

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 649
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    .line 651
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mIsTagReading:Z

    .line 654
    const v1, 0x7f0901bc

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 653
    const/4 v2, 0x7

    invoke-direct {p0, v2, v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    .line 656
    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v2, v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->startTagReadingTimeout(J)V

    .line 639
    :goto_50
    return-void

    .line 659
    :cond_51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 660
    const v2, 0x7f090106

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 659
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    goto :goto_50
.end method

.method protected static getUtf8SubString(Ljava/lang/String;II)Ljava/lang/String;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .prologue
    .line 900
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

    .line 901
    :catch_14
    move-exception v0

    .line 902
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

.method private resolveIntent(Landroid/content/Intent;)V
    .registers 20
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 707
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 708
    .local v2, "action":Ljava/lang/String;
    const-string/jumbo v12, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1f

    .line 709
    const-string/jumbo v12, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 708
    if-nez v12, :cond_1f

    .line 710
    const-string/jumbo v12, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 708
    if-eqz v12, :cond_16f

    .line 718
    :cond_1f
    const-string/jumbo v12, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    .line 719
    .local v6, "pm":Landroid/os/PowerManager;
    const-string/jumbo v12, "NfcDiagTest"

    const/16 v13, 0xa

    invoke-virtual {v6, v13, v12}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v11

    .line 723
    .local v11, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v12, 0x1b58

    invoke-virtual {v11, v12, v13}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 726
    const-string/jumbo v12, "android.nfc.extra.ID"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 727
    .local v4, "id":[B
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 728
    .local v5, "idSb":Ljava/lang/StringBuffer;
    const/4 v12, 0x0

    array-length v13, v4

    :goto_48
    if-ge v12, v13, :cond_64

    aget-byte v9, v4, v12

    .line 729
    .local v9, "value":B
    const-string/jumbo v14, "%02x"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 728
    add-int/lit8 v12, v12, 0x1

    goto :goto_48

    .line 733
    .end local v9    # "value":B
    :cond_64
    const-string/jumbo v8, "Other"

    .line 734
    .local v8, "tagType":Ljava/lang/String;
    const-string/jumbo v12, "android.nfc.extra.TAG"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/nfc/Tag;

    .line 735
    .local v7, "tag":Landroid/nfc/Tag;
    if-eqz v7, :cond_89

    .line 736
    invoke-static {v7}, Landroid/nfc/tech/NfcA;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcA;

    move-result-object v12

    if-eqz v12, :cond_152

    .line 737
    const-string/jumbo v8, "Type A"

    .line 738
    move-object/from16 v0, p0

    iget-byte v12, v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mRecognizedTagTypes:B

    sget-byte v13, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->NFC_TYPE_A_BITMAP:B

    or-int/2addr v12, v13

    int-to-byte v12, v12

    move-object/from16 v0, p0

    iput-byte v12, v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mRecognizedTagTypes:B

    .line 747
    :cond_89
    :goto_89
    invoke-virtual/range {p0 .. p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->isAntennaSelfTestSupported()Z

    move-result v12

    if-nez v12, :cond_169

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mAntennaResult:Landroid/widget/TextView;

    .line 749
    .local v10, "view":Landroid/widget/TextView;
    :goto_93
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f09019e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 750
    const-string/jumbo v13, "<br><font color=\'#00FFFF\'><b>"

    .line 749
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 751
    const v13, 0x7f0901bd

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 749
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 752
    const-string/jumbo v13, "<br>"

    .line 749
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 753
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    const v14, 0x7f0901be

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    .line 749
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 754
    const-string/jumbo v13, "<br>"

    .line 749
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 755
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const v14, 0x7f0901bf

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v13}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    .line 749
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 756
    const-string/jumbo v13, "</b></font>"

    .line 749
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    sget-byte v12, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->NFC_TYPE_A_BITMAP:B

    sget-byte v13, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->NFC_TYPE_B_BITMAP:B

    or-int/2addr v12, v13

    int-to-byte v3, v12

    .line 760
    .local v3, "bothRecognized":B
    move-object/from16 v0, p0

    iget-byte v12, v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mRecognizedTagTypes:B

    and-int/2addr v12, v3

    if-eqz v12, :cond_151

    .line 761
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const v13, 0x7f09019e

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 762
    const v13, 0x7f090103

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 761
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->sendMessage(ILjava/lang/String;)V

    .line 705
    :cond_151
    return-void

    .line 739
    .end local v3    # "bothRecognized":B
    .end local v10    # "view":Landroid/widget/TextView;
    :cond_152
    invoke-static {v7}, Landroid/nfc/tech/NfcB;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/NfcB;

    move-result-object v12

    if-eqz v12, :cond_89

    .line 740
    const-string/jumbo v8, "Type B"

    .line 741
    move-object/from16 v0, p0

    iget-byte v12, v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mRecognizedTagTypes:B

    sget-byte v13, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->NFC_TYPE_B_BITMAP:B

    or-int/2addr v12, v13

    int-to-byte v12, v12

    move-object/from16 v0, p0

    iput-byte v12, v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mRecognizedTagTypes:B

    goto/16 :goto_89

    .line 748
    :cond_169
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mTagReadingResult:Landroid/widget/TextView;

    .restart local v10    # "view":Landroid/widget/TextView;
    goto/16 :goto_93

    .line 765
    .end local v4    # "id":[B
    .end local v5    # "idSb":Ljava/lang/StringBuffer;
    .end local v6    # "pm":Landroid/os/PowerManager;
    .end local v7    # "tag":Landroid/nfc/Tag;
    .end local v8    # "tagType":Ljava/lang/String;
    .end local v10    # "view":Landroid/widget/TextView;
    .end local v11    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :cond_16f
    const-string/jumbo v12, "NfcDiagTest"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unknown intent "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    return-void
.end method

.method private sendMessage(ILjava/lang/String;)V
    .registers 7
    .param p1, "msgType"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 413
    const/4 v1, 0x0

    .line 414
    .local v1, "msg":Landroid/os/Message;
    const/4 v0, 0x0

    .line 417
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 418
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->what:I

    .line 419
    new-instance v0, Landroid/os/Bundle;

    .end local v0    # "bundle":Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 421
    .local v0, "bundle":Landroid/os/Bundle;
    packed-switch p1, :pswitch_data_5c

    .line 455
    const-string/jumbo v2, "NfcDiagTest"

    const-string/jumbo v3, "Invalid type"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :goto_1b
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 460
    iget-object v2, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 412
    return-void

    .line 423
    :pswitch_24
    const-string/jumbo v2, "TextView-Baseband"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 427
    :pswitch_2b
    const-string/jumbo v2, "TextView-BasebandResult"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 431
    :pswitch_32
    const-string/jumbo v2, "TextView-Antenna"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 435
    :pswitch_39
    const-string/jumbo v2, "TextView-AntennaResult"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 439
    :pswitch_40
    const-string/jumbo v2, "TextView-Swp"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 443
    :pswitch_47
    const-string/jumbo v2, "TextView-SwpResult"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 447
    :pswitch_4e
    const-string/jumbo v2, "TextView-TagReading"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 451
    :pswitch_55
    const-string/jumbo v2, "TextView-TagReadingResult"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1b

    .line 421
    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_24
        :pswitch_2b
        :pswitch_40
        :pswitch_47
        :pswitch_32
        :pswitch_39
        :pswitch_4e
        :pswitch_55
    .end packed-switch
.end method

.method private startTagReadingTimeout(J)V
    .registers 6
    .param p1, "mSecDealy"    # J

    .prologue
    const/4 v1, 0x0

    .line 671
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mStartTagReadingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_c

    .line 672
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mStartTagReadingTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 673
    iput-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mStartTagReadingTimer:Ljava/util/Timer;

    .line 677
    :cond_c
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mStartTagReadingTimer:Ljava/util/Timer;

    if-nez v0, :cond_21

    .line 678
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mStartTagReadingTimer:Ljava/util/Timer;

    .line 679
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mStartTagReadingTimer:Ljava/util/Timer;

    new-instance v1, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$3;-><init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 669
    :cond_21
    return-void
.end method


# virtual methods
.method protected abstract isAntennaSelfTestSupported()Z
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 186
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 187
    invoke-virtual {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x80000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 188
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->setContentView(I)V

    .line 190
    iput-boolean v4, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mIsActivityRunning:Z

    .line 191
    const v0, 0x7f0d000d

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mBaseband:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f0d000e

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mBasebandResult:Landroid/widget/TextView;

    .line 193
    const v0, 0x7f0d0011

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mAntenna:Landroid/widget/TextView;

    .line 194
    const v0, 0x7f0d0012

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mAntennaResult:Landroid/widget/TextView;

    .line 195
    const v0, 0x7f0d000f

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mSwp:Landroid/widget/TextView;

    .line 196
    const v0, 0x7f0d0010

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mSwpResult:Landroid/widget/TextView;

    .line 197
    const v0, 0x7f0d0013

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mTagReading:Landroid/widget/TextView;

    .line 198
    const v0, 0x7f0d0014

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mTagReadingResult:Landroid/widget/TextView;

    .line 201
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x20000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 200
    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mPendingIntent:Landroid/app/PendingIntent;

    .line 204
    new-instance v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$1;-><init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mHandler:Landroid/os/Handler;

    .line 275
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 276
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_a4

    .line 277
    const v0, 0x7f090106

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->showDialogOk(Ljava/lang/String;Z)V

    .line 279
    return-void

    .line 282
    :cond_a4
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mOriginalNfcSettingOn:Z

    .line 284
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 285
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 286
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mProgressDialog:Landroid/app/ProgressDialog;

    const-string/jumbo v2, "Duration Diag Test..."

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 287
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 288
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 289
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v2, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$2;

    invoke-direct {v2, p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$2;-><init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 296
    new-instance v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;-><init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mDiagTestTask:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;

    .line 297
    iget-object v2, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mDiagTestTask:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;

    sget-object v3, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    new-array v4, v4, [Ljava/lang/Void;

    move-object v0, v1

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 184
    return-void
.end method

.method public final onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mIsActivityRunning:Z

    .line 333
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_f

    .line 334
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 335
    iput-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 338
    :cond_f
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_1c

    .line 340
    iget-boolean v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mOriginalNfcSettingOn:Z

    if-eqz v0, :cond_20

    .line 341
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 347
    :cond_1c
    :goto_1c
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 328
    return-void

    .line 342
    :cond_20
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 343
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_1c
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 778
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 780
    .local v0, "ret":Z
    const/16 v1, 0x18

    if-eq p1, v1, :cond_c

    .line 781
    const/16 v1, 0x19

    if-ne p1, v1, :cond_e

    .line 784
    :cond_c
    const/4 v1, 0x1

    return v1

    .line 782
    :cond_e
    const/16 v1, 0x1b

    if-eq p1, v1, :cond_c

    .line 787
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 798
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 800
    .local v0, "ret":Z
    const/16 v1, 0x18

    if-eq p1, v1, :cond_c

    .line 801
    const/16 v1, 0x19

    if-ne p1, v1, :cond_e

    .line 803
    :cond_c
    const/4 v1, 0x1

    return v1

    .line 806
    :cond_e
    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->setIntent(Landroid/content/Intent;)V

    .line 378
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->resolveIntent(Landroid/content/Intent;)V

    .line 376
    return-void
.end method

.method public final onPause()V
    .registers 2

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mIsTagReading:Z

    if-eqz v0, :cond_9

    .line 368
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0, p0}, Landroid/nfc/NfcAdapter;->disableForegroundDispatch(Landroid/app/Activity;)V

    .line 371
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 364
    return-void
.end method

.method public final onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 354
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 357
    iget-boolean v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mIsTagReading:Z

    if-eqz v0, :cond_f

    .line 358
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mAdapter:Landroid/nfc/NfcAdapter;

    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0, v1, v2, v2}, Landroid/nfc/NfcAdapter;->enableForegroundDispatch(Landroid/app/Activity;Landroid/app/PendingIntent;[Landroid/content/IntentFilter;[[Ljava/lang/String;)V

    .line 352
    :cond_f
    return-void
.end method

.method public final onStop()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 307
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mDiagTestTask:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;

    if-eqz v3, :cond_d

    .line 309
    :try_start_8
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mDiagTestTask:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;

    invoke-virtual {v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;->get()Ljava/lang/Object;
    :try_end_d
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_d} :catch_31
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_8 .. :try_end_d} :catch_25
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_d} :catch_19

    .line 319
    :cond_d
    :goto_d
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mStartTagReadingTimer:Ljava/util/Timer;

    if-eqz v3, :cond_18

    .line 320
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mStartTagReadingTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 321
    iput-object v5, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mStartTagReadingTimer:Ljava/util/Timer;

    .line 303
    :cond_18
    return-void

    .line 314
    :catch_19
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "NfcDiagTest"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 312
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_25
    move-exception v2

    .line 313
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    const-string/jumbo v3, "NfcDiagTest"

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 310
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_31
    move-exception v1

    .line 311
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    const-string/jumbo v3, "NfcDiagTest"

    invoke-virtual {v1}, Ljava/util/concurrent/CancellationException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d
.end method

.method protected abstract parseBaseBandId(Ljava/lang/String;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract parseSwpResult(Ljava/lang/String;)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public showDialogOk(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "flg"    # Z

    .prologue
    .line 816
    move-object v2, p1

    .line 817
    .local v2, "message":Ljava/lang/String;
    move v1, p2

    .line 818
    .local v1, "endFlg":Z
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 820
    .local v0, "alertDialogBuilder":Landroid/app/AlertDialog$Builder;
    iget-object v3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;

    invoke-direct {v4, p0, v0, p1, p2}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;-><init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;Landroid/app/AlertDialog$Builder;Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 815
    return-void
.end method

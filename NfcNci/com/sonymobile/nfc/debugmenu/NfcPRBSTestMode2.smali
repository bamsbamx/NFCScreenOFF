.class public Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;
.super Landroid/app/Activity;
.source "NfcPRBSTestMode2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;,
        Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStartTask;,
        Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStopTask;,
        Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsTestBaseTask;,
        Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsTestParameter;,
        Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;
    }
.end annotation


# static fields
.field private static final BITRATES:[I

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "NfcPRBSTestMode2"

.field private static final TASK_TIMEOUT_MSEC:I = 0xfa0

.field private static final TYPES:[I


# instance fields
.field private mButtonStart:Landroid/widget/Button;

.field private mButtonStop:Landroid/widget/Button;

.field private mEventListener:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;

.field private mIsOrginalNfcStateOn:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPropertyBuilder:Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;

.field private mTestMode:Z


# direct methods
.method static synthetic -get0()[I
    .registers 1

    sget-object v0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->BITRATES:[I

    return-object v0
.end method

.method static synthetic -get1()[I
    .registers 1

    sget-object v0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->TYPES:[I

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mButtonStop:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mIsOrginalNfcStateOn:Z

    return v0
.end method

.method static synthetic -get4(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Landroid/nfc/NfcAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Lcom/sonymobile/nfc/NfcConfig;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mPropertyBuilder:Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mTestMode:Z

    return v0
.end method

.method static synthetic -set0(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mIsOrginalNfcStateOn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;Lcom/sonymobile/nfc/NfcConfig;)Lcom/sonymobile/nfc/NfcConfig;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mTestMode:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "isFinished"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;ZZ)V
    .registers 3
    .param p1, "isStarted"    # Z
    .param p2, "isParameterComplete"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->updateView(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 59
    filled-new-array {v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->TYPES:[I

    .line 69
    const/16 v0, 0x8

    .line 65
    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->BITRATES:[I

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 79
    iput-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mIsOrginalNfcStateOn:Z

    .line 80
    iput-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mTestMode:Z

    .line 54
    return-void
.end method

.method private showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "isFinished"    # Z

    .prologue
    .line 548
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 549
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 550
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 551
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 552
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 553
    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$1;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 559
    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$2;

    invoke-direct {v1, p0, p4}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$2;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;Z)V

    const v2, 0x7f090103

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 567
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 547
    return-void
.end method

.method private stopPrbsIfStarted()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 302
    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_25

    .line 303
    new-instance v4, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStopTask;

    invoke-direct {v4, p0, v8}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStopTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;Z)V

    .line 304
    .local v4, "task":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStopTask;
    sget-object v5, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    new-array v6, v8, [Ljava/lang/Void;

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStopTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 307
    const-wide/16 v6, 0xfa0

    :try_start_17
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStopTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_17 .. :try_end_1c} :catch_86
    .catch Ljava/util/concurrent/CancellationException; {:try_start_17 .. :try_end_1c} :catch_66
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_17 .. :try_end_1c} :catch_46
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1c} :catch_26

    .line 317
    :goto_1c
    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mPropertyBuilder:Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;

    invoke-virtual {v5}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->isComplete()Z

    move-result v5

    invoke-direct {p0, v8, v5}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->updateView(ZZ)V

    .line 301
    .end local v4    # "task":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStopTask;
    :cond_25
    return-void

    .line 314
    .restart local v4    # "task":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStopTask;
    :catch_26
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "NfcPRBSTestMode2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to stop PRBS. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 312
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_46
    move-exception v2

    .line 313
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    const-string/jumbo v5, "NfcPRBSTestMode2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to stop PRBS. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/concurrent/ExecutionException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 310
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_66
    move-exception v1

    .line 311
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    const-string/jumbo v5, "NfcPRBSTestMode2"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "failed to stop PRBS. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/util/concurrent/CancellationException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 308
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :catch_86
    move-exception v3

    .line 309
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    const-string/jumbo v5, "NfcPRBSTestMode2"

    const-string/jumbo v6, "PRBS didn\'t completely stop due to timeout."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method private updateView(ZZ)V
    .registers 4
    .param p1, "isStarted"    # Z
    .param p2, "isParameterComplete"    # Z

    .prologue
    .line 294
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mButtonStart:Landroid/widget/Button;

    if-nez p1, :cond_d

    .end local p2    # "isParameterComplete":Z
    :goto_4
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 295
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 293
    return-void

    .line 294
    .restart local p2    # "isParameterComplete":Z
    :cond_d
    const/4 p2, 0x0

    goto :goto_4
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 261
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_9

    .line 263
    return-void

    .line 266
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_6e

    .line 283
    const-string/jumbo v2, "NfcPRBSTestMode2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown view was clicked. id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :goto_2e
    return-void

    .line 269
    :pswitch_2f
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mPropertyBuilder:Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;

    invoke-virtual {v2}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->isComplete()Z

    move-result v2

    invoke-direct {p0, v3, v2}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->updateView(ZZ)V

    .line 271
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStartTask;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStartTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)V

    .line 272
    .local v0, "startTask":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStartTask;
    sget-object v2, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    new-array v3, v3, [Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsTestParameter;

    new-instance v4, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsTestParameter;

    .line 273
    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mPropertyBuilder:Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;

    invoke-virtual {v5}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->getPropType()I

    move-result v5

    iget-object v6, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mPropertyBuilder:Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;

    invoke-virtual {v6}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->getPropBitrate()I

    move-result v6

    .line 272
    invoke-direct {v4, v5, v6}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsTestParameter;-><init>(II)V

    aput-object v4, v3, v7

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStartTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2e

    .line 277
    .end local v0    # "startTask":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStartTask;
    :pswitch_58
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mPropertyBuilder:Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;

    invoke-virtual {v2}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->isComplete()Z

    move-result v2

    invoke-direct {p0, v7, v2}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->updateView(ZZ)V

    .line 279
    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStopTask;

    invoke-direct {v1, p0, v3}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStopTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;Z)V

    .line 280
    .local v1, "stopTask":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStopTask;
    sget-object v2, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    new-array v3, v7, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$PrbsStopTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2e

    .line 266
    :pswitch_data_6e
    .packed-switch 0x7f0d0066
        :pswitch_2f
        :pswitch_58
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 91
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_22

    .line 92
    const v0, 0x7f090090

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f090106

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 93
    const v2, 0x1080027

    const/4 v3, 0x1

    .line 92
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 97
    :cond_22
    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mPowerManager:Landroid/os/PowerManager;

    .line 99
    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->setContentView(I)V

    .line 101
    const v0, 0x7f0d0066

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mButtonStart:Landroid/widget/Button;

    .line 102
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mButtonStart:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f0d0067

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mButtonStop:Landroid/widget/Button;

    .line 104
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mPropertyBuilder:Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;

    .line 107
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mEventListener:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;

    .line 109
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->setupView()V

    .line 111
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mPropertyBuilder:Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mEventListener:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->setOnValueChangedListener(Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder$OnValueChangedListener;)V

    .line 113
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mPropertyBuilder:Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/PrbsPropertyBuilder;->isComplete()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->updateView(ZZ)V

    .line 86
    return-void
.end method

.method protected onStart()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 213
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 215
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_a

    .line 217
    return-void

    .line 221
    :cond_a
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;)V

    .line 222
    .local v0, "task":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;
    sget-object v1, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 211
    return-void
.end method

.method protected onStop()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 229
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 231
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_9

    .line 233
    return-void

    .line 236
    :cond_9
    const/4 v0, 0x1

    .line 237
    .local v0, "eventId":I
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 239
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->stopPrbsIfStarted()V

    .line 240
    const/4 v0, 0x2

    .line 244
    :cond_16
    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;

    invoke-direct {v1, p0, v3}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;)V

    .line 245
    .local v1, "task":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;
    sget-object v2, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 227
    return-void
.end method

.method setEnabled(Landroid/view/ViewGroup;Z)V
    .registers 6
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "enabled"    # Z

    .prologue
    .line 251
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_13

    .line 252
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 253
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_10

    .line 254
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 251
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 250
    .end local v1    # "v":Landroid/view/View;
    :cond_13
    return-void
.end method

.method setupView()V
    .registers 7

    .prologue
    .line 192
    const v4, 0x7f0d005c

    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    .line 193
    .local v3, "typesGp":Landroid/widget/RadioGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_22

    .line 194
    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->TYPES:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 193
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 196
    :cond_22
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mEventListener:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 199
    const v4, 0x7f0d0060

    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 200
    .local v0, "bitratesGp":Landroid/widget/RadioGroup;
    const/4 v2, 0x0

    :goto_31
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_49

    .line 201
    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->BITRATES:[I

    aget v5, v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    .line 203
    :cond_49
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mEventListener:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;

    invoke-virtual {v0, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 206
    const v4, 0x7f0d0065

    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 207
    .local v1, "cb":Landroid/widget/CheckBox;
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->mEventListener:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$UiEventListener;

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 190
    return-void
.end method

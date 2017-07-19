.class public Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;
.super Landroid/app/Activity;
.source "NfcPRBSTestMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;,
        Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsSpinnerItem;,
        Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStartTask;,
        Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStopTask;,
        Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;,
        Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestParameter;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "NfcPRBSTestMode"

.field private static final TASK_TIMEOUT_MSEC:I = 0xfa0


# instance fields
.field private mButtonStart:Landroid/widget/Button;

.field private mButtonStop:Landroid/widget/Button;

.field private mIsOrginalNfcStateOn:Z

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSpinnerCommandType:Landroid/widget/Spinner;

.field private mTestMode:Z


# direct methods
.method static synthetic -get0(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mIsOrginalNfcStateOn:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;)Landroid/nfc/NfcAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;)Lcom/sonymobile/nfc/NfcConfig;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mTestMode:Z

    return v0
.end method

.method static synthetic -set0(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mIsOrginalNfcStateOn:Z

    return p1
.end method

.method static synthetic -set1(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;Lcom/sonymobile/nfc/NfcConfig;)Lcom/sonymobile/nfc/NfcConfig;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mTestMode:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "isFinished"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;Z)V
    .registers 2
    .param p1, "canStart"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->updateView(Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    iput-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mIsOrginalNfcStateOn:Z

    .line 68
    iput-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mTestMode:Z

    .line 53
    return-void
.end method

.method private inflatePrbsSpinnerItem()[Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsSpinnerItem;
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 178
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 179
    .local v6, "r":Landroid/content/res/Resources;
    const v10, 0x7f0c000b

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 180
    .local v3, "items":Landroid/content/res/TypedArray;
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    .line 184
    .local v5, "length":I
    new-array v8, v5, [Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsSpinnerItem;

    .line 187
    .local v8, "spinnerItems":[Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsSpinnerItem;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v5, :cond_3d

    .line 188
    invoke-virtual {v3, v1, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 190
    .local v2, "item":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 191
    .local v4, "label":Ljava/lang/String;
    const/4 v10, 0x1

    invoke-virtual {v2, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 192
    .local v9, "technology":I
    const/4 v10, 0x2

    invoke-virtual {v2, v10, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 196
    .local v0, "bitrate":I
    new-instance v7, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsSpinnerItem;

    invoke-direct {v7, v4, v9, v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsSpinnerItem;-><init>(Ljava/lang/String;II)V

    .line 197
    .local v7, "spinnerItem":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsSpinnerItem;
    aput-object v7, v8, v1

    .line 187
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 200
    .end local v0    # "bitrate":I
    .end local v2    # "item":Landroid/content/res/TypedArray;
    .end local v4    # "label":Ljava/lang/String;
    .end local v7    # "spinnerItem":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsSpinnerItem;
    .end local v9    # "technology":I
    :cond_3d
    return-object v8
.end method

.method private showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "isFinished"    # Z

    .prologue
    .line 485
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 486
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 487
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 488
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 489
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 490
    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$1;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 496
    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$2;

    invoke-direct {v1, p0, p4}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$2;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;Z)V

    const v2, 0x7f090103

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 504
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 484
    return-void
.end method

.method private stopPrbsIfStarted()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 217
    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v5}, Landroid/widget/Button;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 218
    new-instance v4, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStopTask;

    invoke-direct {v4, p0, v6}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStopTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;Z)V

    .line 219
    .local v4, "task":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStopTask;
    sget-object v5, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v5, v6}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStopTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 222
    const-wide/16 v6, 0xfa0

    :try_start_17
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v6, v7, v5}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStopTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_17 .. :try_end_1c} :catch_81
    .catch Ljava/util/concurrent/CancellationException; {:try_start_17 .. :try_end_1c} :catch_61
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_17 .. :try_end_1c} :catch_41
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1c} :catch_21

    .line 232
    :goto_1c
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->updateView(Z)V

    .line 216
    .end local v4    # "task":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStopTask;
    :cond_20
    return-void

    .line 229
    .restart local v4    # "task":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStopTask;
    :catch_21
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "NfcPRBSTestMode"

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

    .line 227
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_41
    move-exception v2

    .line 228
    .local v2, "e":Ljava/util/concurrent/ExecutionException;
    const-string/jumbo v5, "NfcPRBSTestMode"

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

    .line 225
    .end local v2    # "e":Ljava/util/concurrent/ExecutionException;
    :catch_61
    move-exception v1

    .line 226
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    const-string/jumbo v5, "NfcPRBSTestMode"

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

    .line 223
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :catch_81
    move-exception v3

    .line 224
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    const-string/jumbo v5, "NfcPRBSTestMode"

    const-string/jumbo v6, "PRBS didn\'t completely stop due to timeout."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c
.end method

.method private updateView(Z)V
    .registers 4
    .param p1, "canStart"    # Z

    .prologue
    .line 209
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mButtonStart:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 210
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mButtonStop:Landroid/widget/Button;

    if-eqz p1, :cond_e

    const/4 v0, 0x0

    :goto_a
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 208
    return-void

    .line 210
    :cond_e
    const/4 v0, 0x1

    goto :goto_a
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_9

    .line 147
    return-void

    .line 150
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_5e

    .line 167
    const-string/jumbo v3, "NfcPRBSTestMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown view was clicked. id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :goto_2e
    return-void

    .line 153
    :pswitch_2f
    invoke-direct {p0, v6}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->updateView(Z)V

    .line 155
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mSpinnerCommandType:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsSpinnerItem;

    .line 156
    .local v0, "item":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsSpinnerItem;
    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStartTask;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStartTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;)V

    .line 157
    .local v1, "startTask":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStartTask;
    sget-object v3, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    new-array v4, v4, [Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestParameter;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsSpinnerItem;->getParameter()Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestParameter;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStartTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2e

    .line 161
    .end local v0    # "item":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsSpinnerItem;
    .end local v1    # "startTask":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStartTask;
    :pswitch_4d
    invoke-direct {p0, v4}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->updateView(Z)V

    .line 163
    new-instance v2, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStopTask;

    invoke-direct {v2, p0, v4}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStopTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;Z)V

    .line 164
    .local v2, "stopTask":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStopTask;
    sget-object v3, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsStopTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2e

    .line 150
    nop

    :pswitch_data_5e
    .packed-switch 0x7f0d005a
        :pswitch_2f
        :pswitch_4d
    .end packed-switch
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 76
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_22

    .line 77
    const v2, 0x7f090090

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f090106

    invoke-virtual {p0, v3}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    const v4, 0x1080027

    .line 77
    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 82
    :cond_22
    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mPowerManager:Landroid/os/PowerManager;

    .line 84
    const v2, 0x7f030012

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->setContentView(I)V

    .line 86
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->inflatePrbsSpinnerItem()[Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsSpinnerItem;

    move-result-object v1

    .line 87
    .local v1, "items":[Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsSpinnerItem;
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 88
    const v2, 0x1090008

    .line 87
    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 89
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsSpinnerItem;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 91
    const v2, 0x7f0d0059

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mSpinnerCommandType:Landroid/widget/Spinner;

    .line 92
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mSpinnerCommandType:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 94
    const v2, 0x7f0d005a

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mButtonStart:Landroid/widget/Button;

    .line 95
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mButtonStart:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v2, 0x7f0d005b

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mButtonStop:Landroid/widget/Button;

    .line 97
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mButtonStop:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    invoke-direct {p0, v5}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->updateView(Z)V

    .line 71
    return-void
.end method

.method protected onStart()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 109
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_a

    .line 111
    return-void

    .line 115
    :cond_a
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;

    invoke-direct {v0, p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;)V

    .line 116
    .local v0, "task":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;
    sget-object v1, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 105
    return-void
.end method

.method protected onStop()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 125
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_9

    .line 127
    return-void

    .line 130
    :cond_9
    const/4 v0, 0x1

    .line 131
    .local v0, "eventId":I
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 133
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->stopPrbsIfStarted()V

    .line 134
    const/4 v0, 0x2

    .line 138
    :cond_16
    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;

    invoke-direct {v1, p0, v3}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;)V

    .line 139
    .local v1, "task":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;
    sget-object v2, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 121
    return-void
.end method

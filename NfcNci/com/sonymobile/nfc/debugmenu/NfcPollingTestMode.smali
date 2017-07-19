.class public Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;
.super Landroid/app/Activity;
.source "NfcPollingTestMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;,
        Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOW_POWER_POLLING:I = 0x2

.field private static final NORMAL_POLLING:I = 0x1

.field private static final POLLING_TEST_VIEW_UPDATE:I = 0x1

.field public static final TAG:Ljava/lang/String; = "NfcPollingTestMode"

.field private static mButton:Landroid/widget/Button;

.field private static mCheckBox:Landroid/widget/CheckBox;


# instance fields
.field private mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;


# direct methods
.method static synthetic -get0()Landroid/widget/CheckBox;
    .registers 1

    sget-object v0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;)Lcom/sonymobile/nfc/NfcConfig;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;Lcom/sonymobile/nfc/NfcConfig;)Lcom/sonymobile/nfc/NfcConfig;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "endFlg"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->updateView()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->mCheckBox:Landroid/widget/CheckBox;

    .line 46
    sput-object v0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->mButton:Landroid/widget/Button;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    .line 36
    return-void
.end method

.method private static declared-synchronized setButton(Landroid/widget/Button;)V
    .registers 3
    .param p0, "button"    # Landroid/widget/Button;

    .prologue
    const-class v0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    monitor-enter v0

    .line 72
    :try_start_3
    sput-object p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->mButton:Landroid/widget/Button;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    .line 71
    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized setCheckBox(Landroid/widget/CheckBox;)V
    .registers 3
    .param p0, "kb"    # Landroid/widget/CheckBox;

    .prologue
    const-class v0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    monitor-enter v0

    .line 68
    :try_start_3
    sput-object p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->mCheckBox:Landroid/widget/CheckBox;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    .line 67
    return-void

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "endFlg"    # Z

    .prologue
    .line 207
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 209
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 210
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 211
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 212
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 213
    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$2;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 220
    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$3;

    invoke-direct {v1, p0, p4}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$3;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;Z)V

    const v2, 0x7f090103

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 228
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 206
    return-void
.end method

.method private updateView()V
    .registers 4

    .prologue
    .line 192
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 197
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/NfcConfig;->getPollingMode()I

    move-result v0

    .line 199
    .local v0, "polling_mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_26

    .line 200
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 191
    :goto_1b
    return-void

    .line 193
    .end local v0    # "polling_mode":I
    :cond_1c
    const-string/jumbo v1, "NfcPollingTestMode"

    const-string/jumbo v2, "Cannot perform Setting test due to no service connection"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void

    .line 202
    .restart local v0    # "polling_mode":I
    :cond_26
    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1b
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f030010

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->setContentView(I)V

    .line 56
    const v0, 0x7f0d0057

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->setCheckBox(Landroid/widget/CheckBox;)V

    .line 57
    const v0, 0x7f0d0058

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->setButton(Landroid/widget/Button;)V

    .line 58
    sget-object v0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->mButton:Landroid/widget/Button;

    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$1;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    return-void
.end method

.method protected onStart()V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 79
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;)V

    sget-object v1, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    new-array v2, v3, [Ljava/lang/Integer;

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    return-void
.end method

.method protected onStop()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 88
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;)V

    sget-object v1, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    .line 89
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 88
    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 85
    return-void
.end method

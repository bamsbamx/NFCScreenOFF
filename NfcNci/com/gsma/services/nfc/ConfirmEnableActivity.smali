.class public Lcom/gsma/services/nfc/ConfirmEnableActivity;
.super Landroid/app/Activity;
.source "ConfirmEnableActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;
    }
.end annotation


# static fields
.field public static final INTENT_CONFIRM_ENABLE:Ljava/lang/String; = "com.nfc.services.nfc.CONFIRM_ENABLE"

.field public static final INTENT_CONFIRM_ENABLE_APPNAME:Ljava/lang/String; = "applicationName"

.field public static final INTENT_CONFIRM_ENABLE_CONFIRMED:Ljava/lang/String; = "confirmed"


# instance fields
.field private mAnswerSent:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mWatchDog:Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;


# direct methods
.method static synthetic -wrap0(Lcom/gsma/services/nfc/ConfirmEnableActivity;Z)V
    .registers 2
    .param p1, "answer"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/gsma/services/nfc/ConfirmEnableActivity;->sendAnswer(Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity;->mAnswerSent:Z

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity;->mDialog:Landroid/app/AlertDialog;

    .line 35
    new-instance v0, Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;

    const-string/jumbo v1, "ConfirmEnableActivity_Watchdog"

    const v2, 0xea60

    invoke-direct {v0, p0, v1, v2}, Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;-><init>(Lcom/gsma/services/nfc/ConfirmEnableActivity;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity;->mWatchDog:Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;

    .line 28
    return-void
.end method

.method private sendAnswer(Z)V
    .registers 4
    .param p1, "answer"    # Z

    .prologue
    .line 72
    iget-boolean v1, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity;->mAnswerSent:Z

    if-nez v1, :cond_1d

    .line 73
    iget-object v1, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity;->mWatchDog:Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;

    invoke-virtual {v1}, Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;->cancel()V

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.nfc.services.nfc.CONFIRM_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "confirmed"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v0}, Lcom/gsma/services/nfc/ConfirmEnableActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 77
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity;->mAnswerSent:Z

    .line 71
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1d
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 84
    if-nez p1, :cond_b

    .line 85
    iget-object v4, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity;->mWatchDog:Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;

    invoke-virtual {v4}, Lcom/gsma/services/nfc/ConfirmEnableActivity$WatchDogThread;->start()V

    .line 87
    :cond_b
    iput-boolean v7, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity;->mAnswerSent:Z

    .line 88
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 89
    const/4 v4, 0x5

    .line 88
    invoke-direct {v1, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 90
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/gsma/services/nfc/ConfirmEnableActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 91
    .local v2, "launchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/gsma/services/nfc/ConfirmEnableActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 92
    .local v3, "res":Landroid/content/res/Resources;
    const-string/jumbo v4, "applicationName"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "applicationName":Ljava/lang/String;
    const v4, 0x7f090030

    invoke-virtual {p0, v4}, Lcom/gsma/services/nfc/ConfirmEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 94
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    const v6, 0x7f090031

    invoke-virtual {p0, v6, v5}, Lcom/gsma/services/nfc/ConfirmEnableActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 96
    const v5, 0x104000a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 97
    new-instance v6, Lcom/gsma/services/nfc/ConfirmEnableActivity$1;

    invoke-direct {v6, p0}, Lcom/gsma/services/nfc/ConfirmEnableActivity$1;-><init>(Lcom/gsma/services/nfc/ConfirmEnableActivity;)V

    .line 93
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 103
    const/high16 v5, 0x1040000

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 104
    new-instance v6, Lcom/gsma/services/nfc/ConfirmEnableActivity$2;

    invoke-direct {v6, p0}, Lcom/gsma/services/nfc/ConfirmEnableActivity$2;-><init>(Lcom/gsma/services/nfc/ConfirmEnableActivity;)V

    .line 93
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 110
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity;->mDialog:Landroid/app/AlertDialog;

    .line 111
    iget-object v4, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 82
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 116
    iget-object v0, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 117
    iget-object v0, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 119
    :cond_c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/gsma/services/nfc/ConfirmEnableActivity;->sendAnswer(Z)V

    .line 114
    return-void
.end method

.class public Lcom/sonymobile/nfc/UrlConfirmationDialog;
.super Landroid/app/Activity;
.source "UrlConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/UrlConfirmationDialog$1;
    }
.end annotation


# static fields
.field public static final EXTRA_LAUNCH_INTENT:Ljava/lang/String; = "launchIntent"

.field public static final EXTRA_LAUNCH_URI:Ljava/lang/String; = "launchUri"

.field public static final PREFERENCE_SHOW_URL_DIALOG:Ljava/lang/String; = "show_url_dialog"

.field public static final TAG:Ljava/lang/String; = "UrlConfirmationDialog"


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mUrlCheckView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/sonymobile/nfc/UrlConfirmationDialog;->mIntent:Landroid/content/Intent;

    .line 41
    iput-object v0, p0, Lcom/sonymobile/nfc/UrlConfirmationDialog;->mUrlCheckView:Landroid/view/View;

    .line 126
    new-instance v0, Lcom/sonymobile/nfc/UrlConfirmationDialog$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/UrlConfirmationDialog$1;-><init>(Lcom/sonymobile/nfc/UrlConfirmationDialog;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/UrlConfirmationDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 31
    return-void
.end method

.method private relayIntent()V
    .registers 5

    .prologue
    .line 114
    iget-object v2, p0, Lcom/sonymobile/nfc/UrlConfirmationDialog;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/sonymobile/nfc/UrlConfirmationDialog;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "launchIntent"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 115
    iget-object v2, p0, Lcom/sonymobile/nfc/UrlConfirmationDialog;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "launchIntent"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 116
    .local v1, "launchIntent":Landroid/content/Intent;
    if-eqz v1, :cond_21

    .line 118
    :try_start_1c
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/nfc/UrlConfirmationDialog;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_21
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1c .. :try_end_21} :catch_22

    .line 113
    .end local v1    # "launchIntent":Landroid/content/Intent;
    :cond_21
    :goto_21
    return-void

    .line 119
    .restart local v1    # "launchIntent":Landroid/content/Intent;
    :catch_22
    move-exception v0

    .line 120
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "UrlConfirmationDialog"

    const-string/jumbo v3, "relayIntent exception."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 91
    packed-switch p2, :pswitch_data_38

    .line 109
    :goto_4
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 110
    invoke-virtual {p0}, Lcom/sonymobile/nfc/UrlConfirmationDialog;->finish()V

    .line 90
    return-void

    .line 93
    :pswitch_b
    iget-object v1, p0, Lcom/sonymobile/nfc/UrlConfirmationDialog;->mUrlCheckView:Landroid/view/View;

    if-eqz v1, :cond_34

    .line 94
    iget-object v1, p0, Lcom/sonymobile/nfc/UrlConfirmationDialog;->mUrlCheckView:Landroid/view/View;

    const v2, 0x7f0d00de

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 93
    if-eqz v1, :cond_34

    .line 96
    const-string/jumbo v1, "NfcServiceExtraPrefs"

    invoke-virtual {p0, v1, v3}, Lcom/sonymobile/nfc/UrlConfirmationDialog;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 98
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "show_url_dialog"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 99
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 101
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_34
    invoke-direct {p0}, Lcom/sonymobile/nfc/UrlConfirmationDialog;->relayIntent()V

    goto :goto_4

    .line 91
    :pswitch_data_38
    .packed-switch -0x1
        :pswitch_b
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v10, 0x7f09002f

    const/4 v9, 0x0

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/4 v4, 0x0

    .line 46
    .local v4, "warnMessage":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/nfc/UrlConfirmationDialog;->getIntent()Landroid/content/Intent;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/nfc/UrlConfirmationDialog;->mIntent:Landroid/content/Intent;

    .line 47
    iget-object v5, p0, Lcom/sonymobile/nfc/UrlConfirmationDialog;->mIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3e

    iget-object v5, p0, Lcom/sonymobile/nfc/UrlConfirmationDialog;->mIntent:Landroid/content/Intent;

    const-string/jumbo v6, "launchUri"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 48
    iget-object v5, p0, Lcom/sonymobile/nfc/UrlConfirmationDialog;->mIntent:Landroid/content/Intent;

    const-string/jumbo v6, "launchUri"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 49
    .local v2, "launchUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/sonymobile/nfc/UrlConfirmationDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 50
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 49
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 52
    .end local v2    # "launchUri":Landroid/net/Uri;
    .end local v4    # "warnMessage":Ljava/lang/String;
    :cond_3e
    if-nez v4, :cond_48

    .line 53
    invoke-virtual {p0}, Lcom/sonymobile/nfc/UrlConfirmationDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 57
    :cond_48
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.sonymobile.intent.action.NFC_NEW_CONFIRMATION_DIALOG"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, "filter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/sonymobile/nfc/UrlConfirmationDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, Lcom/sonymobile/nfc/UrlConfirmationDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 61
    const v6, 0x7f030021

    .line 60
    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/nfc/UrlConfirmationDialog;->mUrlCheckView:Landroid/view/View;

    .line 62
    iget-object v5, p0, Lcom/sonymobile/nfc/UrlConfirmationDialog;->mUrlCheckView:Landroid/view/View;

    const v6, 0x7f0d00dd

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 63
    .local v3, "txtMessage":Landroid/widget/TextView;
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 66
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v5, 0x1040014

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/UrlConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 68
    const v5, 0x1010355

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 69
    const/high16 v5, 0x1040000

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/UrlConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/UrlConfirmationDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    iget-object v5, p0, Lcom/sonymobile/nfc/UrlConfirmationDialog;->mUrlCheckView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 72
    new-instance v5, Lcom/sonymobile/nfc/UrlConfirmationDialog$2;

    invoke-direct {v5, p0}, Lcom/sonymobile/nfc/UrlConfirmationDialog$2;-><init>(Lcom/sonymobile/nfc/UrlConfirmationDialog;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 43
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/sonymobile/nfc/UrlConfirmationDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/UrlConfirmationDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 84
    return-void
.end method

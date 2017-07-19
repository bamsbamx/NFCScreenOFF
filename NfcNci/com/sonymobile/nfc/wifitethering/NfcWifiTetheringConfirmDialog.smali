.class public Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;
.super Landroid/app/Activity;
.source "NfcWifiTetheringConfirmDialog.java"


# static fields
.field private static final ACTION_NFC_LOCK_STATE_NOTIFY:Ljava/lang/String; = "com.sonymobile.nfclock.NFCLOCK"

.field private static final EXTRA_NFC_LOCK_STATE:Ljava/lang/String; = "nfclockstate"

.field private static final NFC_LOCK_PERMISSION:Ljava/lang/String; = "com.sonyericsson.android.felica.permission.ACCESS_FELICA_LOCK"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private createAlertDialog(I)Landroid/app/AlertDialog;
    .registers 5
    .param p1, "message"    # I

    .prologue
    .line 95
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 96
    const v1, 0x7f08000d

    .line 95
    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 98
    .local v0, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 100
    new-instance v1, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog$2;-><init>(Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;)V

    .line 99
    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 107
    new-instance v1, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog$3;-><init>(Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 115
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 119
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 121
    invoke-static {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 122
    iget-object v2, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1f

    .line 123
    iget-object v2, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 124
    iput-object v4, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 128
    :cond_1f
    invoke-virtual {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->finish()V

    .line 118
    :cond_22
    :goto_22
    return-void

    .line 129
    :cond_23
    const-string/jumbo v2, "com.sonymobile.nfclock.NFCLOCK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 130
    const-string/jumbo v2, "nfclockstate"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 131
    .local v1, "isNfcLocked":Z
    if-nez v1, :cond_22

    .line 132
    iget-object v2, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_41

    .line 133
    iget-object v2, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 134
    iput-object v4, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 137
    :cond_41
    invoke-virtual {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->finish()V

    goto :goto_22
.end method

.method private static isAirplaneModeOn(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 91
    const-string/jumbo v2, "airplane_mode_on"

    .line 90
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const/4 v8, 0x0

    .line 38
    .local v8, "isNfcLocked":Z
    invoke-virtual {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 40
    :try_start_11
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getNfcAdapterExInterface()Lcom/sonymobile/nfc/INfcAdapterEx$Stub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->isNfcLocked()Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1c} :catch_76

    move-result v8

    .line 46
    .end local v8    # "isNfcLocked":Z
    :cond_1d
    :goto_1d
    if-nez v8, :cond_25

    invoke-static {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 47
    :cond_25
    new-instance v0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog$1;-><init>(Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v3, "filter":Landroid/content/IntentFilter;
    if-eqz v8, :cond_54

    .line 58
    const v9, 0x7f090055

    .line 60
    .local v9, "msgId":I
    const-string/jumbo v0, "com.sonymobile.nfclock.NFCLOCK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 62
    const-string/jumbo v4, "com.sonyericsson.android.felica.permission.ACCESS_FELICA_LOCK"

    const/4 v5, 0x0

    move-object v0, p0

    .line 61
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 70
    :goto_48
    invoke-direct {p0, v9}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->createAlertDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 71
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 34
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "msgId":I
    :goto_53
    return-void

    .line 64
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    :cond_54
    const v9, 0x7f090052

    .line 66
    .restart local v9    # "msgId":I
    const-string/jumbo v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v3}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_48

    .line 73
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v9    # "msgId":I
    :cond_63
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;

    invoke-direct {v7, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v7, "intent":Landroid/content/Intent;
    const/high16 v0, 0x24000000

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 75
    invoke-virtual {p0, v7}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->startActivity(Landroid/content/Intent;)V

    .line 76
    invoke-virtual {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->finish()V

    goto :goto_53

    .line 41
    .end local v7    # "intent":Landroid/content/Intent;
    .restart local v8    # "isNfcLocked":Z
    :catch_76
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_1d
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 83
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_f

    .line 84
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    iput-object v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    :cond_f
    return-void
.end method

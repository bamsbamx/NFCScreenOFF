.class public Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;
.super Landroid/app/Activity;
.source "ConfirmConnectToWifiNetworkActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$1;
    }
.end annotation


# static fields
.field public static final ENABLE_WIFI_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mEnableWifiInProgress:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/net/wifi/WifiConfiguration;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getAndClearEnableWifiInProgress()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;Landroid/net/wifi/WifiManager;)V
    .registers 2
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->doConnect(Landroid/net/wifi/WifiManager;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->showFailToast()V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 142
    new-instance v0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$1;-><init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    iput-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 25
    return-void
.end method

.method private doConnect(Landroid/net/wifi/WifiManager;)V
    .registers 4
    .param p1, "wifiManager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 99
    iget-object v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 101
    .local v0, "networkId":I
    if-gez v0, :cond_c

    .line 102
    invoke-direct {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->showFailToast()V

    .line 98
    :goto_b
    return-void

    .line 106
    :cond_c
    new-instance v1, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;

    invoke-direct {v1, p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;-><init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    .line 105
    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_b
.end method

.method private getAndClearEnableWifiInProgress()Z
    .registers 3

    .prologue
    .line 164
    monitor-enter p0

    .line 165
    :try_start_1
    iget-boolean v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    .line 166
    .local v0, "enableWifiInProgress":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 169
    return v0

    .line 164
    .end local v0    # "enableWifiInProgress":Z
    :catchall_8
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private showFailToast()V
    .registers 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mContext:Landroid/content/Context;

    .line 125
    iget-object v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mContext:Landroid/content/Context;

    const v2, 0x7f09002c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v0, v1}, Lcom/sonymobile/nfc/ToastMaster;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 72
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 74
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_32

    .line 75
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 76
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 78
    :cond_1b
    invoke-virtual {v0, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 79
    iput-boolean v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    .line 81
    iget-object v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;

    invoke-direct {v2, p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;-><init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    .line 89
    const-wide/16 v4, 0x1388

    .line 81
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    :goto_2c
    iget-object v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 71
    return-void

    .line 92
    :cond_32
    invoke-direct {p0, v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->doConnect(Landroid/net/wifi/WifiManager;)V

    goto :goto_2c
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 38
    invoke-virtual {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 40
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.android.nfc.WIFI_CONFIG_EXTRA"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 39
    iput-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 42
    iget-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mCurrentWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v2

    .line 43
    .local v2, "printableSsid":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    const/4 v4, 0x5

    invoke-direct {v3, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 44
    const v4, 0x7f090086

    .line 43
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 46
    invoke-virtual {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090087

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 47
    aput-object v2, v5, v6

    .line 46
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 43
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 49
    const/high16 v4, 0x1040000

    .line 43
    invoke-virtual {v3, v4, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 50
    const v4, 0x7f090083

    .line 43
    invoke-virtual {v3, v4, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 53
    iput-boolean v6, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    .line 54
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mHandler:Landroid/os/Handler;

    .line 56
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    iget-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    iget-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    iget-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iput-object p0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 137
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->mEnableWifiInProgress:Z

    if-nez v0, :cond_7

    .line 131
    invoke-virtual {p0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->finish()V

    .line 129
    :cond_7
    return-void
.end method

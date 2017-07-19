.class public Lcom/android/nfc/handover/ConfirmConnectActivity;
.super Landroid/app/Activity;
.source "ConfirmConnectActivity.java"


# instance fields
.field mAlert:Landroid/app/AlertDialog;

.field mDevice:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    .line 35
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 42
    const/4 v5, 0x5

    .line 41
    invoke-direct {v0, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 43
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 44
    .local v3, "launchIntent":Landroid/content/Intent;
    const-string/jumbo v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    iput-object v5, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 45
    iget-object v5, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v5, :cond_20

    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->finish()V

    .line 46
    :cond_20
    invoke-virtual {p0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 47
    .local v4, "res":Landroid/content/res/Resources;
    const-string/jumbo v5, "android.bluetooth.device.extra.NAME"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, "deviceName":Ljava/lang/String;
    const v5, 0x7f090022

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 48
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    .line 49
    aput-object v2, v6, v7

    .line 48
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "confirmString":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 52
    const v6, 0x7f090079

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 53
    new-instance v7, Lcom/android/nfc/handover/ConfirmConnectActivity$1;

    invoke-direct {v7, p0}, Lcom/android/nfc/handover/ConfirmConnectActivity$1;-><init>(Lcom/android/nfc/handover/ConfirmConnectActivity;)V

    .line 50
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 62
    const v6, 0x7f09007a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 63
    new-instance v7, Lcom/android/nfc/handover/ConfirmConnectActivity$2;

    invoke-direct {v7, p0}, Lcom/android/nfc/handover/ConfirmConnectActivity$2;-><init>(Lcom/android/nfc/handover/ConfirmConnectActivity;)V

    .line 50
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 72
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    .line 73
    iget-object v5, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 39
    return-void
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 78
    iget-object v1, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1f

    .line 79
    iget-object v1, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 80
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.nfc.handover.action.DENY_CONNECT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "denyIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/ConfirmConnectActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 83
    iput-object v3, p0, Lcom/android/nfc/handover/ConfirmConnectActivity;->mAlert:Landroid/app/AlertDialog;

    .line 85
    .end local v0    # "denyIntent":Landroid/content/Intent;
    :cond_1f
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 77
    return-void
.end method

.class public Lcom/sonymobile/nfc/cta/CtaWpsDialog;
.super Lcom/sonymobile/nfc/cta/CtaDialogActivityBase;
.source "CtaWpsDialog.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "CtaWpsDialog"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/sonymobile/nfc/cta/CtaUtils;->DBG:Z

    sput-boolean v0, Lcom/sonymobile/nfc/cta/CtaWpsDialog;->DBG:Z

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/sonymobile/nfc/cta/CtaDialogActivityBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDialogText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 22
    const v0, 0x7f09003a

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/cta/CtaWpsDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public onUserAllowed()V
    .registers 5

    .prologue
    .line 27
    sget-boolean v2, Lcom/sonymobile/nfc/cta/CtaWpsDialog;->DBG:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "CtaWpsDialog"

    const-string/jumbo v3, "starting wifi confirmation activity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_d
    invoke-virtual {p0}, Lcom/sonymobile/nfc/cta/CtaWpsDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "com.android.nfc.WIFI_CONFIG_EXTRA"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 32
    .local v1, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    if-nez v1, :cond_26

    .line 33
    const-string/jumbo v2, "CtaWpsDialog"

    const-string/jumbo v3, "no wifi configuration"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void

    .line 37
    :cond_26
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 38
    const-string/jumbo v3, "com.android.nfc.WIFI_CONFIG_EXTRA"

    .line 37
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    .line 39
    const-class v3, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .line 37
    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    .line 40
    const/high16 v3, 0x10000000

    .line 37
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 41
    .local v0, "configureNetworkIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/cta/CtaWpsDialog;->startActivity(Landroid/content/Intent;)V

    .line 26
    return-void
.end method

.class public Lcom/sonymobile/nfc/handover/NfcWifiDisplayHandover;
.super Ljava/lang/Object;
.source "NfcWifiDisplayHandover.java"


# static fields
.field public static final ACTION_SONY_WIFI_P2P_NDEF_DETECTED:Ljava/lang/String; = "com.sonymobile.nfc.action.SONY_WIFI_P2P_NDEF_DETECTED"

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "NfcWifiDisplayHandover"

.field private static final WIFI_DISPLAY_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.tvout.wifidisplay"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tryHandoverWifiDisplay(Landroid/content/Context;Landroid/nfc/NdefMessage;Landroid/nfc/Tag;)Z
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "m"    # Landroid/nfc/NdefMessage;
    .param p2, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 41
    invoke-static {p0}, Lcom/sonymobile/nfc/handover/NfcWifiDirectUtility;->isWifiDisplaySupported(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 42
    return v6

    .line 45
    :cond_9
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_13

    .line 46
    :cond_12
    return v6

    .line 49
    :cond_13
    if-nez p2, :cond_16

    .line 50
    return v6

    .line 55
    :cond_16
    invoke-static {p1}, Lcom/sonymobile/nfc/handover/NfcWifiDirectUtility;->getWifiDirectMessage(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v1

    .line 57
    .local v1, "message":Landroid/nfc/NdefMessage;
    const/4 v2, 0x0

    .line 59
    .local v2, "ndefRecord":Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;
    :try_start_1b
    new-instance v2, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    .end local v2    # "ndefRecord":Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;
    invoke-direct {v2, v1}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;-><init>(Landroid/nfc/NdefMessage;)V
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_20} :catch_27

    .line 64
    .local v2, "ndefRecord":Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;
    invoke-static {v2}, Lcom/sonymobile/nfc/handover/NfcWifiDirectUtility;->isWifiDirectSonyVendorTv(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)Z

    move-result v4

    if-nez v4, :cond_29

    .line 65
    return v6

    .line 60
    .end local v2    # "ndefRecord":Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;
    :catch_27
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/RuntimeException;
    return v6

    .line 68
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v2    # "ndefRecord":Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;
    :cond_29
    invoke-static {v2}, Lcom/sonymobile/nfc/handover/NfcWifiDirectUtility;->isCapableOfWifiDisplay(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)Z

    move-result v4

    if-eqz v4, :cond_6d

    .line 75
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.sonymobile.nfc.action.SONY_WIFI_P2P_NDEF_DETECTED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v3, "wifiDisplayIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 79
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "wifiDisplayIntent":Landroid/content/Intent;
    const-string/jumbo v4, "com.sonymobile.nfc.action.SONY_WIFI_P2P_NDEF_DETECTED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .restart local v3    # "wifiDisplayIntent":Landroid/content/Intent;
    const-string/jumbo v4, "android.nfc.extra.TAG"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 81
    const-string/jumbo v4, "android.nfc.extra.NDEF_MESSAGES"

    new-array v5, v7, [Landroid/nfc/NdefMessage;

    aput-object v1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 82
    const-string/jumbo v4, "com.sonymobile.tvout.wifidisplay"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 85
    invoke-static {}, Lcom/android/nfc/beam/BeamManager;->getInstance()Lcom/android/nfc/beam/BeamManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/beam/BeamManager;->onWifiDisplayHandoverExecuted()V

    .line 88
    .end local v3    # "wifiDisplayIntent":Landroid/content/Intent;
    :cond_6d
    return v7
.end method

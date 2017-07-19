.class public Lcom/sonymobile/nfc/handover/NfcWifiDirectUtility;
.super Ljava/lang/Object;
.source "NfcWifiDirectUtility.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcWifiDirectUtility"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNdefMessage(Landroid/nfc/Tag;)Landroid/nfc/NdefMessage;
    .registers 3
    .param p0, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "message":Landroid/nfc/NdefMessage;
    invoke-static {p0}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v1

    .line 79
    .local v1, "ndef":Landroid/nfc/tech/Ndef;
    if-eqz v1, :cond_b

    .line 80
    invoke-virtual {v1}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 83
    .end local v0    # "message":Landroid/nfc/NdefMessage;
    :cond_b
    return-object v0
.end method

.method public static getWifiDirectMessage(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .registers 9
    .param p0, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 101
    if-nez p0, :cond_6

    .line 102
    return-object v6

    .line 105
    :cond_6
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 108
    .local v1, "records":[Landroid/nfc/NdefRecord;
    aget-object v2, v1, v3

    invoke-static {v2}, Lcom/sonymobile/nfc/handover/NfcWifiDirectUtility;->isHandoverWifiDirectRecord(Landroid/nfc/NdefRecord;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 109
    return-object p0

    .line 113
    :cond_13
    aget-object v2, v1, v3

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v2

    if-ne v2, v7, :cond_42

    .line 114
    aget-object v2, v1, v3

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    sget-object v4, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    .line 113
    if-eqz v2, :cond_42

    .line 115
    array-length v4, v1

    move v2, v3

    :goto_2b
    if-ge v2, v4, :cond_42

    aget-object v0, v1, v2

    .line 116
    .local v0, "record":Landroid/nfc/NdefRecord;
    invoke-static {v0}, Lcom/sonymobile/nfc/handover/NfcWifiDirectUtility;->isHandoverWifiDirectRecord(Landroid/nfc/NdefRecord;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 117
    new-instance v2, Landroid/nfc/NdefMessage;

    new-array v4, v7, [Landroid/nfc/NdefRecord;

    aput-object v0, v4, v3

    invoke-direct {v2, v4}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v2

    .line 115
    :cond_3f
    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 122
    .end local v0    # "record":Landroid/nfc/NdefRecord;
    :cond_42
    return-object v6
.end method

.method public static isCapableOfWifiDisplay(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)Z
    .registers 7
    .param p0, "ndefRecord"    # Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 139
    if-nez p0, :cond_5

    .line 140
    return v5

    .line 143
    :cond_5
    invoke-virtual {p0}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->getVendorId()I

    move-result v2

    .line 144
    .local v2, "vendorId":I
    invoke-virtual {p0, v2, v4}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->getVendorTlvValue(II)[B

    move-result-object v0

    .line 146
    .local v0, "capabilityList":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v3, v0

    if-ge v1, v3, :cond_19

    .line 147
    aget-byte v3, v0, v1

    if-ne v3, v4, :cond_16

    .line 148
    return v4

    .line 146
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 152
    :cond_19
    return v5
.end method

.method public static isDispatchTagQuietly(Landroid/nfc/Tag;Landroid/content/Context;)Z
    .registers 9
    .param p0, "tag"    # Landroid/nfc/Tag;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    .line 34
    invoke-static {p1}, Lcom/sonymobile/nfc/handover/NfcWifiDirectUtility;->isWifiDisplaySupported(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 35
    return v6

    .line 38
    :cond_8
    invoke-static {p0}, Lcom/sonymobile/nfc/handover/NfcWifiDirectUtility;->getNdefMessage(Landroid/nfc/Tag;)Landroid/nfc/NdefMessage;

    move-result-object v1

    .line 40
    .local v1, "msg":Landroid/nfc/NdefMessage;
    invoke-static {v1}, Lcom/sonymobile/nfc/handover/NfcWifiDirectUtility;->getWifiDirectMessage(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;

    move-result-object v4

    if-nez v4, :cond_13

    .line 41
    return v6

    .line 44
    :cond_13
    const/4 v2, 0x0

    .line 46
    .local v2, "ndefRecord":Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;
    :try_start_14
    new-instance v3, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    invoke-direct {v3, v1}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;-><init>(Landroid/nfc/NdefMessage;)V
    :try_end_19
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_19} :catch_2e

    .end local v2    # "ndefRecord":Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;
    .local v3, "ndefRecord":Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;
    move-object v2, v3

    .line 51
    .end local v3    # "ndefRecord":Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;
    :goto_1a
    invoke-static {v2}, Lcom/sonymobile/nfc/handover/NfcWifiDirectUtility;->isWifiDirectSonyVendorTv(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 52
    invoke-static {v2}, Lcom/sonymobile/nfc/handover/NfcWifiDirectUtility;->isCapableOfWifiDisplay(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)Z

    move-result v4

    .line 51
    if-eqz v4, :cond_39

    .line 53
    invoke-static {v2}, Lcom/sonymobile/nfc/handover/NfcWifiDirectUtility;->isWifiDirectTagVersionReadWrite(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)Z

    move-result v4

    .line 51
    if-eqz v4, :cond_39

    .line 54
    const/4 v4, 0x1

    return v4

    .line 47
    .restart local v2    # "ndefRecord":Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;
    :catch_2e
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "NfcWifiDirectUtility"

    const-string/jumbo v5, "just catch the exception, dont want to caused this an error."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 57
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "ndefRecord":Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;
    :cond_39
    return v6
.end method

.method private static isHandoverWifiDirectRecord(Landroid/nfc/NdefRecord;)Z
    .registers 4
    .param p0, "record"    # Landroid/nfc/NdefRecord;

    .prologue
    const/4 v2, 0x0

    .line 87
    if-nez p0, :cond_4

    .line 88
    return v2

    .line 91
    :cond_4
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1e

    .line 92
    invoke-virtual {p0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v0

    .line 93
    const-string/jumbo v1, "sony.com:wfp2p"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 92
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    .line 91
    if-eqz v0, :cond_1e

    .line 94
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_1e
    return v2
.end method

.method public static isWifiDirectSonyVendorTv(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)Z
    .registers 4
    .param p0, "ndefRecord"    # Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    .prologue
    const/4 v2, 0x0

    .line 126
    if-nez p0, :cond_4

    .line 127
    return v2

    .line 130
    :cond_4
    invoke-virtual {p0}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->getVendorId()I

    move-result v0

    .line 131
    .local v0, "vendorId":I
    const v1, 0xff0001

    if-ne v0, v1, :cond_f

    .line 132
    const/4 v1, 0x1

    return v1

    .line 135
    :cond_f
    return v2
.end method

.method private static isWifiDirectTagVersionReadWrite(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)Z
    .registers 5
    .param p0, "ndefRecord"    # Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    .prologue
    const/4 v3, 0x0

    .line 156
    if-nez p0, :cond_4

    .line 157
    return v3

    .line 161
    :cond_4
    const v1, 0xff0001

    .line 162
    const/16 v2, 0x20

    .line 160
    invoke-virtual {p0, v1, v2}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;->getAvailableVer(II)I

    move-result v0

    .line 165
    .local v0, "tvVersion":I
    const/16 v1, 0x10

    if-ne v0, v1, :cond_13

    .line 166
    const/4 v1, 0x1

    return v1

    .line 169
    :cond_13
    return v3
.end method

.method public static isWifiDisplayNdefMessage(Landroid/nfc/NdefMessage;)Z
    .registers 6
    .param p0, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 63
    .local v1, "ndefRecord":Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;
    :try_start_1
    new-instance v2, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;

    invoke-direct {v2, p0}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;-><init>(Landroid/nfc/NdefMessage;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_6} :catch_15

    .end local v1    # "ndefRecord":Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;
    .local v2, "ndefRecord":Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;
    move-object v1, v2

    .line 68
    .end local v2    # "ndefRecord":Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;
    :goto_7
    invoke-static {v1}, Lcom/sonymobile/nfc/handover/NfcWifiDirectUtility;->isWifiDirectSonyVendorTv(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-static {v1}, Lcom/sonymobile/nfc/handover/NfcWifiDirectUtility;->isCapableOfWifiDisplay(Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 69
    const/4 v3, 0x1

    return v3

    .line 64
    .restart local v1    # "ndefRecord":Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;
    :catch_15
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "NfcWifiDirectUtility"

    const-string/jumbo v4, "just catch the exception, dont want to caused this an error."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 72
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v1    # "ndefRecord":Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord;
    :cond_20
    const/4 v3, 0x0

    return v3
.end method

.method public static isWifiDisplaySupported(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

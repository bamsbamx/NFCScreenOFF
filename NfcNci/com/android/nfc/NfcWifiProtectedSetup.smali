.class public final Lcom/android/nfc/NfcWifiProtectedSetup;
.super Ljava/lang/Object;
.source "NfcWifiProtectedSetup.java"


# static fields
.field private static final AUTH_TYPE_EXPECTED_SIZE:S = 0x2s

.field private static final AUTH_TYPE_FIELD_ID:S = 0x1003s

.field private static final AUTH_TYPE_OPEN:S = 0x1s

.field private static final AUTH_TYPE_SHARED:S = 0x4s

.field private static final AUTH_TYPE_WPA2_EAP:S = 0x10s

.field private static final AUTH_TYPE_WPA2_PSK:S = 0x20s

.field private static final AUTH_TYPE_WPA_EAP:S = 0x8s

.field private static final AUTH_TYPE_WPA_PSK:S = 0x2s

.field private static final CREDENTIAL_FIELD_ID:S = 0x100es

.field static final DBG:Z = false

.field public static final EXTRA_WIFI_CONFIG:Ljava/lang/String; = "com.android.nfc.WIFI_CONFIG_EXTRA"

.field private static final MAX_NETWORK_KEY_SIZE_BYTES:I = 0x40

.field private static final NETWORK_KEY_FIELD_ID:S = 0x1027s

.field public static final NFC_TOKEN_MIME_TYPE:Ljava/lang/String; = "application/vnd.wfa.wsc"

.field private static final SSID_FIELD_ID:S = 0x1045s

.field static final TAG:Ljava/lang/String; = "NfcWifiProtectedSetup"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x22

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskValidFormat(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 238
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 239
    :cond_8
    const-string/jumbo v0, ""

    return-object v0

    .line 241
    :cond_c
    const-string/jumbo v0, "[0-9A-Fa-f]{64}"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 242
    invoke-static {p0}, Lcom/android/nfc/NfcWifiProtectedSetup;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 244
    :cond_19
    return-object p0
.end method

.method private static getWepValidFormat(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 223
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 224
    :cond_9
    return-object v2

    .line 226
    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 228
    .local v0, "length":I
    const/16 v1, 0xa

    if-eq v0, v1, :cond_16

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_20

    .line 229
    :cond_16
    const-string/jumbo v1, "[0-9A-Fa-f]*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    .line 228
    if-eqz v1, :cond_24

    .line 234
    :goto_1f
    return-object p0

    .line 228
    :cond_20
    const/16 v1, 0x3a

    if-eq v0, v1, :cond_16

    .line 232
    :cond_24
    invoke-static {p0}, Lcom/android/nfc/NfcWifiProtectedSetup;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1f
.end method

.method private static isWifiCtaDialogConfirmationNeeded(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 252
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 253
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-static {p0}, Lcom/sonymobile/nfc/cta/CtaUtils;->isCtaSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_16
    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x1

    goto :goto_16
.end method

.method private static parse(Landroid/nfc/NdefMessage;)Landroid/net/wifi/WifiConfiguration;
    .registers 10
    .param p0, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    .line 116
    .local v4, "records":[Landroid/nfc/NdefRecord;
    const/4 v5, 0x0

    array-length v6, v4

    :goto_6
    if-ge v5, v6, :cond_4c

    aget-object v3, v4, v5

    .line 117
    .local v3, "record":Landroid/nfc/NdefRecord;
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    const-string/jumbo v8, "application/vnd.wfa.wsc"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 118
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 119
    .local v2, "payload":Ljava/nio/ByteBuffer;
    :goto_24
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_49

    .line 120
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .line 121
    .local v0, "fieldId":S
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    const v8, 0xffff

    and-int v1, v7, v8

    .line 122
    .local v1, "fieldSize":I
    const/16 v7, 0x100e

    if-ne v0, v7, :cond_40

    .line 123
    invoke-static {v2, v1}, Lcom/android/nfc/NfcWifiProtectedSetup;->parseCredential(Ljava/nio/ByteBuffer;I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    return-object v5

    .line 125
    :cond_40
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_24

    .line 116
    .end local v0    # "fieldId":S
    .end local v1    # "fieldSize":I
    .end local v2    # "payload":Ljava/nio/ByteBuffer;
    :cond_49
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 129
    .end local v3    # "record":Landroid/nfc/NdefRecord;
    :cond_4c
    const/4 v5, 0x0

    return-object v5
.end method

.method private static parseCredential(Ljava/nio/ByteBuffer;I)Landroid/net/wifi/WifiConfiguration;
    .registers 12
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "size"    # I

    .prologue
    const/4 v8, 0x0

    .line 133
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    .line 134
    .local v6, "startPosition":I
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 135
    .local v4, "result":Landroid/net/wifi/WifiConfiguration;
    const/4 v3, 0x0

    .line 136
    .local v3, "networkKey":[B
    const/4 v0, 0x0

    .line 138
    .end local v3    # "networkKey":[B
    :goto_c
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int v9, v6, p1

    if-ge v7, v9, :cond_73

    .line 139
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 140
    .local v1, "fieldId":S
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v7

    const v9, 0xffff

    and-int v2, v7, v9

    .line 143
    .local v2, "fieldSize":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v2

    add-int v9, v6, p1

    if-le v7, v9, :cond_2b

    .line 144
    return-object v8

    .line 147
    :cond_2b
    sparse-switch v1, :sswitch_data_88

    .line 169
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_c

    .line 149
    :sswitch_37
    new-array v5, v2, [B

    .line 150
    .local v5, "ssid":[B
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 151
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_c

    .line 154
    .end local v5    # "ssid":[B
    :sswitch_5f
    const/16 v7, 0x40

    if-le v2, v7, :cond_64

    .line 155
    return-object v8

    .line 157
    :cond_64
    new-array v3, v2, [B

    .line 158
    .local v3, "networkKey":[B
    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_c

    .line 161
    .end local v3    # "networkKey":[B
    :sswitch_6a
    const/4 v7, 0x2

    if-eq v2, v7, :cond_6e

    .line 163
    return-object v8

    .line 165
    :cond_6e
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    .local v0, "authType":S
    goto :goto_c

    .line 174
    .end local v0    # "authType":S
    .end local v1    # "fieldId":S
    .end local v2    # "fieldSize":I
    :cond_73
    iget-object v7, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v7, :cond_87

    .line 175
    if-nez v3, :cond_81

    move-object v7, v8

    :goto_7a
    invoke-static {v4, v0, v7}, Lcom/android/nfc/NfcWifiProtectedSetup;->setConfig(Landroid/net/wifi/WifiConfiguration;SLjava/lang/String;)Z

    move-result v7

    .line 174
    if-eqz v7, :cond_87

    .line 177
    return-object v4

    .line 175
    :cond_81
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_7a

    .line 180
    :cond_87
    return-object v8

    .line 147
    :sswitch_data_88
    .sparse-switch
        0x1003 -> :sswitch_6a
        0x1027 -> :sswitch_5f
        0x1045 -> :sswitch_37
    .end sparse-switch
.end method

.method private static populateAllowedKeyManagement(Ljava/util/BitSet;S)V
    .registers 5
    .param p0, "allowedKeyManagement"    # Ljava/util/BitSet;
    .param p1, "authType"    # S

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 184
    if-eq p1, v2, :cond_8

    const/16 v0, 0x20

    if-ne p1, v0, :cond_c

    .line 185
    :cond_8
    invoke-virtual {p0, v1}, Ljava/util/BitSet;->set(I)V

    .line 183
    :cond_b
    :goto_b
    return-void

    .line 186
    :cond_c
    const/16 v0, 0x8

    if-eq p1, v0, :cond_14

    const/16 v0, 0x10

    if-ne p1, v0, :cond_18

    .line 187
    :cond_14
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_b

    .line 188
    :cond_18
    if-ne p1, v1, :cond_b

    .line 189
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    goto :goto_b
.end method

.method private static setConfig(Landroid/net/wifi/WifiConfiguration;SLjava/lang/String;)Z
    .registers 7
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "authType"    # S
    .param p2, "networkKey"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 194
    sparse-switch p1, :sswitch_data_38

    .line 219
    :goto_5
    return v3

    .line 196
    :sswitch_6
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 197
    :cond_e
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    goto :goto_5

    .line 202
    :cond_14
    :sswitch_14
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 203
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 204
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    .line 205
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    invoke-static {p2}, Lcom/android/nfc/NfcWifiProtectedSetup;->getWepValidFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_5

    .line 212
    :sswitch_2c
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 213
    invoke-static {p2}, Lcom/android/nfc/NfcWifiProtectedSetup;->getPskValidFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_5

    .line 194
    :sswitch_data_38
    .sparse-switch
        0x1 -> :sswitch_6
        0x2 -> :sswitch_2c
        0x4 -> :sswitch_14
        0x20 -> :sswitch_2c
        0x22 -> :sswitch_2c
    .end sparse-switch
.end method

.method public static tryNfcWifiSetup(Landroid/nfc/tech/Ndef;Landroid/content/Context;)Z
    .registers 10
    .param p0, "ndef"    # Landroid/nfc/tech/Ndef;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 76
    if-eqz p0, :cond_5

    if-nez p1, :cond_6

    .line 77
    :cond_5
    return v7

    .line 80
    :cond_6
    invoke-virtual {p0}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 81
    .local v0, "cachedNdefMessage":Landroid/nfc/NdefMessage;
    if-nez v0, :cond_d

    .line 82
    return v7

    .line 87
    :cond_d
    :try_start_d
    invoke-static {v0}, Lcom/android/nfc/NfcWifiProtectedSetup;->parse(Landroid/nfc/NdefMessage;)Landroid/net/wifi/WifiConfiguration;
    :try_end_10
    .catch Ljava/nio/BufferUnderflowException; {:try_start_d .. :try_end_10} :catch_29

    move-result-object v3

    .line 93
    .local v3, "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    if-eqz v3, :cond_28

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 94
    const-string/jumbo v5, "no_config_wifi"

    .line 96
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 93
    invoke-virtual {v4, v5, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 110
    :cond_28
    return v7

    .line 88
    .end local v3    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :catch_29
    move-exception v2

    .line 90
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    return v7

    .line 97
    .end local v2    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v3    # "wifiConfiguration":Landroid/net/wifi/WifiConfiguration;
    :cond_2b
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 98
    const-string/jumbo v5, "com.android.nfc.WIFI_CONFIG_EXTRA"

    .line 97
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    .line 99
    const-class v5, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .line 97
    invoke-virtual {v4, p1, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    .line 100
    const v5, 0x10008000

    .line 97
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 102
    .local v1, "configureNetworkIntent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/android/nfc/NfcWifiProtectedSetup;->isWifiCtaDialogConfirmationNeeded(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 103
    const-class v4, Lcom/sonymobile/nfc/cta/CtaWpsDialog;

    invoke-virtual {v1, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 106
    :cond_4f
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 107
    const/4 v4, 0x1

    return v4
.end method

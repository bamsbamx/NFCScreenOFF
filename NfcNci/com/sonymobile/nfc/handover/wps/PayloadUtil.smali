.class public final Lcom/sonymobile/nfc/handover/wps/PayloadUtil;
.super Ljava/lang/Object;
.source "PayloadUtil.java"


# static fields
.field private static final ATTR_ID_LEN:I = 0x2

.field private static final ATTR_LEN_LEN:I = 0x2

.field private static final DBG:Z

.field private static final SUB_ATTR_ID_LEN:I = 0x1

.field private static final SUB_ATTR_LEN_LEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NfcHandover"

.field private static final WPS_AUTH:I = 0x1003

.field private static final WPS_CREDENTIAL:I = 0x100e

.field private static final WPS_ENCRYPTION:I = 0x100f

.field private static final WPS_MAC:I = 0x1020

.field private static final WPS_NETWORK_INDEX:I = 0x1026

.field private static final WPS_NETWORK_INDEX_VAL:[B

.field private static final WPS_NETWORK_KEY:I = 0x1027

.field private static final WPS_NETWORK_KEY_SHAREABLE:I = 0x2

.field private static final WPS_SSID:I = 0x1045

.field private static final WPS_VENDOR_EXT:I = 0x1049

.field private static final WPS_VERSION:I = 0x104a

.field private static final WPS_VERSION2:I = 0x0

.field private static final WPS_VERSION2_VAL:[B

.field private static final WPS_VERSION_VAL:[B

.field private static final WPS_WFA_VENDOR_EXT:I = 0x372a


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 18
    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v3, "user"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "user"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    move v0, v1

    .line 17
    :goto_16
    sput-boolean v0, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->DBG:Z

    .line 39
    new-array v0, v2, [B

    const/16 v3, 0x10

    aput-byte v3, v0, v1

    sput-object v0, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->WPS_VERSION_VAL:[B

    .line 40
    new-array v0, v2, [B

    aput-byte v2, v0, v1

    sput-object v0, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->WPS_NETWORK_INDEX_VAL:[B

    .line 41
    new-array v0, v2, [B

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    sput-object v0, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->WPS_VERSION2_VAL:[B

    .line 15
    return-void

    :cond_2f
    move v0, v2

    .line 18
    goto :goto_16
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addressToBytes(Ljava/lang/String;)[B
    .registers 6
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 190
    const-string/jumbo v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 191
    .local v2, "split":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [B

    .line 193
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v3, v2

    if-ge v0, v3, :cond_1c

    .line 195
    aget-object v3, v2, v0

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 198
    :cond_1c
    return-object v1
.end method

.method private static createNetworkKeySharable(Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;)[B
    .registers 8
    .param p0, "data"    # Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;

    .prologue
    .line 109
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 113
    .local v1, "vendorExt":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x3

    :try_start_6
    new-array v2, v3, [B

    .line 114
    .local v2, "vendorId":[B
    array-length v3, v2

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v5, 0x372a

    const/4 v6, 0x0

    invoke-static {v5, v6, v3, v4, v2}, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->numToBytes(IIILjava/nio/ByteOrder;[B)V

    .line 115
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 119
    iget-boolean v3, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->networkKeyShareable:Z

    if-eqz v3, :cond_2e

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    .line 118
    :goto_1f
    const/4 v4, 0x2

    .line 120
    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 118
    invoke-static {v4, v3, v5, v6}, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->createTlv(I[BII)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_29} :catch_36

    .line 126
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 119
    :cond_2e
    const/4 v3, 0x1

    :try_start_2f
    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput-byte v4, v3, v5
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_35} :catch_36

    goto :goto_1f

    .line 121
    .end local v2    # "vendorId":[B
    :catch_36
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "NfcHandover"

    const-string/jumbo v4, "failed to createNetworkKeySharable()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v3, 0x0

    return-object v3
.end method

.method private static createTlv(I[B)[B
    .registers 3
    .param p0, "type"    # I
    .param p1, "value"    # [B

    .prologue
    const/4 v0, 0x2

    .line 150
    invoke-static {p0, p1, v0, v0}, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->createTlv(I[BII)[B

    move-result-object v0

    return-object v0
.end method

.method private static createTlv(I[BII)[B
    .registers 9
    .param p0, "type"    # I
    .param p1, "value"    # [B
    .param p2, "typeLen"    # I
    .param p3, "lenLen"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 154
    if-nez p1, :cond_5

    .line 155
    return-object v2

    .line 158
    :cond_5
    const/4 v0, 0x0

    .line 159
    .local v0, "offset":I
    add-int v2, p2, p3

    array-length v3, p1

    add-int/2addr v2, v3

    new-array v1, v2, [B

    .line 161
    .local v1, "result":[B
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {p0, v0, p2, v2, v1}, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->numToBytes(IIILjava/nio/ByteOrder;[B)V

    .line 162
    add-int/lit8 v0, p2, 0x0

    .line 164
    array-length v2, p1

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v2, v0, p3, v3, v1}, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->numToBytes(IIILjava/nio/ByteOrder;[B)V

    .line 165
    add-int/2addr v0, p3

    .line 167
    array-length v2, p1

    invoke-static {p1, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 169
    return-object v1
.end method

.method public static createWpsConfigPayload(Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;)[B
    .registers 6
    .param p0, "data"    # Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;

    .prologue
    .line 50
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 57
    .local v2, "payload":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    invoke-static {p0}, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->createWpsCredential(Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;)[B

    move-result-object v0

    .line 58
    .local v0, "credential":[B
    const/16 v3, 0x100e

    invoke-static {v3, v0}, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->createTlv(I[B)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_12} :catch_17

    .line 68
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 63
    .end local v0    # "credential":[B
    :catch_17
    move-exception v1

    .line 64
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v3, "NfcHandover"

    const-string/jumbo v4, "failed to createWpsConfigPayload()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/4 v3, 0x0

    return-object v3
.end method

.method private static createWpsCredential(Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;)[B
    .registers 10
    .param p0, "data"    # Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;

    .prologue
    .line 72
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 76
    .local v1, "credential":Ljava/io/ByteArrayOutputStream;
    :try_start_5
    sget-object v5, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->WPS_NETWORK_INDEX_VAL:[B

    const/16 v6, 0x1026

    invoke-static {v6, v5}, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->createTlv(I[B)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 79
    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->ssid:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/16 v6, 0x1045

    invoke-static {v6, v5}, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->createTlv(I[B)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 82
    const/4 v5, 0x2

    new-array v0, v5, [B

    .line 83
    .local v0, "auth":[B
    iget v5, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->authenticationType:I

    array-length v6, v0

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v8, 0x0

    invoke-static {v5, v8, v6, v7, v0}, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->numToBytes(IIILjava/nio/ByteOrder;[B)V

    .line 84
    const/16 v5, 0x1003

    invoke-static {v5, v0}, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->createTlv(I[B)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 87
    const/4 v5, 0x2

    new-array v3, v5, [B

    .line 88
    .local v3, "encrypt":[B
    iget v5, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->encryptionType:I

    array-length v6, v3

    sget-object v7, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v8, 0x0

    invoke-static {v5, v8, v6, v7, v3}, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->numToBytes(IIILjava/nio/ByteOrder;[B)V

    .line 89
    const/16 v5, 0x100f

    invoke-static {v5, v3}, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->createTlv(I[B)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 92
    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->networkKey:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/16 v6, 0x1027

    invoke-static {v6, v5}, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->createTlv(I[B)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 95
    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;->macAddress:Ljava/lang/String;

    invoke-static {v5}, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->addressToBytes(Ljava/lang/String;)[B

    move-result-object v5

    const/16 v6, 0x1020

    invoke-static {v6, v5}, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->createTlv(I[B)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 98
    invoke-static {p0}, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->createNetworkKeySharable(Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;)[B

    move-result-object v4

    .line 99
    .local v4, "networkKeySharable":[B
    const/16 v5, 0x1049

    invoke-static {v5, v4}, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->createTlv(I[B)[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_74} :catch_79

    .line 105
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5

    .line 100
    .end local v0    # "auth":[B
    .end local v3    # "encrypt":[B
    .end local v4    # "networkKeySharable":[B
    :catch_79
    move-exception v2

    .line 101
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v5, "NfcHandover"

    const-string/jumbo v6, "failed to createWpsCredential()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v5, 0x0

    return-object v5
.end method

.method private static createWpsWfaVendorExt(Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;)[B
    .registers 8
    .param p0, "data"    # Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;

    .prologue
    .line 130
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 134
    .local v1, "vendorExt":Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x3

    :try_start_6
    new-array v2, v3, [B

    .line 135
    .local v2, "vendorId":[B
    array-length v3, v2

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v5, 0x372a

    const/4 v6, 0x0

    invoke-static {v5, v6, v3, v4, v2}, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->numToBytes(IIILjava/nio/ByteOrder;[B)V

    .line 136
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 139
    sget-object v3, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->WPS_VERSION2_VAL:[B

    const/4 v4, 0x0

    .line 140
    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 139
    invoke-static {v4, v3, v5, v6}, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->createTlv(I[BII)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_20} :catch_25

    .line 146
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 141
    .end local v2    # "vendorId":[B
    :catch_25
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "NfcHandover"

    const-string/jumbo v4, "failed to createWpsWfaVendorExt()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const/4 v3, 0x0

    return-object v3
.end method

.method private static numToBytes(IIILjava/nio/ByteOrder;[B)V
    .registers 12
    .param p0, "value"    # I
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "order"    # Ljava/nio/ByteOrder;
    .param p4, "dest"    # [B

    .prologue
    .line 173
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v5, :cond_13

    add-int/lit8 v0, p2, -0x1

    .line 174
    .local v0, "head":I
    :goto_6
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v5, :cond_15

    const/4 v3, -0x1

    .line 175
    .local v3, "step":I
    :goto_b
    add-int v2, p1, v0

    .line 176
    .local v2, "pos":I
    move v4, p0

    .line 178
    .local v4, "work":I
    if-eqz p3, :cond_12

    if-nez p4, :cond_17

    .line 179
    :cond_12
    return-void

    .line 173
    .end local v0    # "head":I
    .end local v2    # "pos":I
    .end local v3    # "step":I
    .end local v4    # "work":I
    :cond_13
    const/4 v0, 0x0

    .restart local v0    # "head":I
    goto :goto_6

    .line 174
    :cond_15
    const/4 v3, 0x1

    .restart local v3    # "step":I
    goto :goto_b

    .line 178
    .restart local v2    # "pos":I
    .restart local v4    # "work":I
    :cond_17
    array-length v5, p4

    add-int v6, p1, p2

    if-lt v5, v6, :cond_12

    .line 182
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    if-ge v1, p2, :cond_2a

    .line 183
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, p4, v2

    .line 184
    shr-int/lit8 v4, v4, 0x8

    .line 185
    add-int/2addr v2, v3

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 172
    :cond_2a
    return-void
.end method

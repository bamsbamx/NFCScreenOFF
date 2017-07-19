.class public Lcom/sonymobile/nfc/debugmenu/NfcRegisterRwMode;
.super Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;
.source "NfcRegisterRwMode.java"


# static fields
.field private static final ADDRESS_SIZE:B = 0x4t

.field private static final DATA_TLV_SIZE:B = 0xat

.field private static final DBG:Z = false

.field private static final DEFAULT_FILE_PATH:Ljava/lang/String;

.field private static final ID_TLV_SIZE:B = 0x6t

.field private static final PREF:Ljava/lang/String; = "NfcRegisterRwModePrefs"

.field private static final TAG:Ljava/lang/String; = "NfcRegisterRwMode"

.field private static final TAG_REGISTER:B = 0x1t

.field private static final VALUE_SIZE:B = 0x4t


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/nfc_register_settings.csv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    sput-object v0, Lcom/sonymobile/nfc/debugmenu/NfcRegisterRwMode;->DEFAULT_FILE_PATH:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkAndGetConfigurationValue([B[B)[B
    .registers 16
    .param p1, "idTlv"    # [B
    .param p2, "dataTlv"    # [B

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    .line 152
    if-eqz p1, :cond_6

    if-nez p2, :cond_10

    .line 153
    :cond_6
    const-string/jumbo v8, "NfcRegisterRwMode"

    const-string/jumbo v9, "Invalid data came from NfcConfig"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-object v11

    .line 156
    :cond_10
    array-length v8, p1

    const/4 v9, 0x6

    if-eq v8, v9, :cond_2f

    .line 157
    const-string/jumbo v8, "NfcRegisterRwMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Id TLV size is invalid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_2f
    array-length v8, p2

    const/16 v9, 0xa

    if-eq v8, v9, :cond_4f

    .line 160
    const-string/jumbo v8, "NfcRegisterRwMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Data TLV size is invalid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, p2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_4f
    :try_start_4f
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 170
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v5, v8, 0xff

    .line 171
    .local v5, "tag":I
    const/4 v8, 0x0

    aget-byte v8, p1, v8

    if-eq v5, v8, :cond_87

    .line 172
    const-string/jumbo v8, "NfcRegisterRwMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Mismatched tag: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " != "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x0

    aget-byte v10, p1, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-object v11

    .line 176
    :cond_87
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v8

    and-int/lit16 v4, v8, 0xff

    .line 177
    .local v4, "length":I
    if-eqz v4, :cond_95

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-eq v4, v8, :cond_bf

    .line 178
    :cond_95
    const-string/jumbo v8, "NfcRegisterRwMode"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid length: len="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ",remaining="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-object v11

    .line 182
    :cond_bf
    const/4 v8, 0x4

    new-array v0, v8, [B

    .line 183
    .local v0, "address":[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 184
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c6
    if-ge v3, v12, :cond_d4

    .line 185
    aget-byte v8, v0, v3

    add-int/lit8 v9, v3, 0x2

    aget-byte v9, p1, v9

    if-eq v8, v9, :cond_d1

    .line 186
    return-object v11

    .line 184
    :cond_d1
    add-int/lit8 v3, v3, 0x1

    goto :goto_c6

    .line 189
    :cond_d4
    const/4 v8, 0x4

    new-array v7, v8, [B

    .line 190
    .local v7, "value":[B
    invoke-virtual {v1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 191
    const/4 v3, 0x0

    :goto_db
    array-length v8, v7

    div-int/lit8 v8, v8, 0x2

    if-ge v3, v8, :cond_f3

    .line 192
    aget-byte v6, v7, v3

    .line 193
    .local v6, "tmp":B
    array-length v8, v7

    sub-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    aget-byte v8, v7, v8

    aput-byte v8, v7, v3

    .line 194
    array-length v8, v7

    sub-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    aput-byte v6, v7, v8
    :try_end_f0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4f .. :try_end_f0} :catch_f4

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_db

    .line 196
    .end local v6    # "tmp":B
    :cond_f3
    return-object v7

    .line 197
    .end local v0    # "address":[B
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "tag":I
    .end local v7    # "value":[B
    :catch_f4
    move-exception v2

    .line 198
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string/jumbo v8, "NfcRegisterRwMode"

    const-string/jumbo v9, "Invalid length: TLV structure is invalid."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    return-object v11
.end method

.method protected createDataTlv(J[B)[B
    .registers 9
    .param p1, "address"    # J
    .param p3, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 70
    const/16 v3, 0xa

    new-array v2, v3, [B

    .line 71
    .local v2, "tlv":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 72
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 73
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 74
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 75
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 76
    long-to-int v3, p1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 77
    array-length v3, p3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_21
    if-ltz v1, :cond_2b

    .line 78
    aget-byte v3, p3, v1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 77
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 80
    :cond_2b
    array-length v3, p3

    rsub-int/lit8 v1, v3, 0x4

    :goto_2e
    if-lez v1, :cond_36

    .line 81
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 80
    add-int/lit8 v1, v1, -0x1

    goto :goto_2e

    .line 83
    :cond_36
    return-object v2
.end method

.method protected createIdTlv(J)[B
    .registers 6
    .param p1, "address"    # J

    .prologue
    .line 59
    const/4 v2, 0x6

    new-array v1, v2, [B

    .line 60
    .local v1, "tlv":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 61
    .local v0, "b":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 62
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 63
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 64
    long-to-int v2, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 65
    return-object v1
.end method

.method protected createListItemAdatper()Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter",
            "<",
            "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcRegisterRwMode$1;

    .line 133
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f030018

    .line 132
    invoke-direct {v0, p0, p0, v2, v1}, Lcom/sonymobile/nfc/debugmenu/NfcRegisterRwMode$1;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRegisterRwMode;Landroid/content/Context;ILjava/util/ArrayList;)V

    return-object v0
.end method

.method protected getDefaultSettingsFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lcom/sonymobile/nfc/debugmenu/NfcRegisterRwMode;->DEFAULT_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method protected getMaxAddress()J
    .registers 3

    .prologue
    .line 119
    const-wide v0, 0xffffffffL

    return-wide v0
.end method

.method protected getMaxValue()J
    .registers 3

    .prologue
    .line 127
    const-wide v0, 0xffffffffL

    return-wide v0
.end method

.method protected getPreferenceFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    const-string/jumbo v0, "NfcRegisterRwModePrefs"

    return-object v0
.end method

.method protected getTitleOnReading()Ljava/lang/String;
    .registers 4

    .prologue
    .line 106
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "REGISTER"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f090132

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRegisterRwMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitleOnWriting()Ljava/lang/String;
    .registers 4

    .prologue
    .line 111
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "REGISTER"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f090133

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRegisterRwMode;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected verifyData([B[B)Z
    .registers 14
    .param p1, "data"    # [B
    .param p2, "verifyData"    # [B

    .prologue
    const/16 v10, 0x8

    const/4 v1, 0x0

    .line 88
    const-wide/16 v2, 0x0

    .line 89
    .local v2, "requestedValue":J
    const-wide/16 v4, 0x0

    .line 90
    .local v4, "verifyValue":J
    if-eqz p1, :cond_c

    array-length v6, p1

    if-nez v6, :cond_d

    .line 91
    :cond_c
    return v1

    .line 93
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    array-length v6, p1

    if-ge v0, v6, :cond_1d

    .line 94
    shl-long v6, v2, v10

    aget-byte v8, p1, v0

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    or-long v2, v6, v8

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 96
    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    array-length v6, p2

    if-ge v0, v6, :cond_2d

    .line 97
    shl-long v6, v4, v10

    aget-byte v8, p2, v0

    and-int/lit16 v8, v8, 0xff

    int-to-long v8, v8

    or-long v4, v6, v8

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 101
    :cond_2d
    cmp-long v6, v2, v4

    if-nez v6, :cond_32

    const/4 v1, 0x1

    :cond_32
    return v1
.end method

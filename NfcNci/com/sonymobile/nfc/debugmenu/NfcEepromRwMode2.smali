.class public Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode2;
.super Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;
.source "NfcEepromRwMode2.java"


# static fields
.field private static final ADDRESS_SIZE:B = 0x4t

.field private static final DATA_TLV_SIZE:B = 0xat

.field private static final DBG:Z = false

.field private static final DEFAULT_FILE_PATH:Ljava/lang/String;

.field private static final ID_TLV_SIZE:B = 0x6t

.field private static final PREF:Ljava/lang/String; = "NfcEepromRwMode2Prefs"

.field private static final TAG:Ljava/lang/String; = "NfcEepromRwMode2"

.field private static final TAG_EEPROM:B = 0x2t

.field private static final VALUE_SIZE:B = 0x4t


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/nfc_eeprom2_settings.csv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    sput-object v0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode2;->DEFAULT_FILE_PATH:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected checkAndGetConfigurationValue([B[B)[B
    .registers 15
    .param p1, "idTlv"    # [B
    .param p2, "dataTlv"    # [B

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    .line 150
    if-eqz p1, :cond_6

    if-nez p2, :cond_10

    .line 151
    :cond_6
    const-string/jumbo v7, "NfcEepromRwMode2"

    const-string/jumbo v8, "Invalid data came from NfcConfig"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-object v10

    .line 154
    :cond_10
    array-length v7, p1

    const/4 v8, 0x6

    if-eq v7, v8, :cond_2f

    .line 155
    const-string/jumbo v7, "NfcEepromRwMode2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Id TLV size is invalid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_2f
    array-length v7, p2

    const/16 v8, 0xa

    if-eq v7, v8, :cond_4f

    .line 158
    const-string/jumbo v7, "NfcEepromRwMode2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Data TLV size is invalid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_4f
    :try_start_4f
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 168
    .local v1, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    and-int/lit16 v5, v7, 0xff

    .line 169
    .local v5, "tag":I
    const/4 v7, 0x0

    aget-byte v7, p1, v7

    if-eq v5, v7, :cond_87

    .line 170
    const-string/jumbo v7, "NfcEepromRwMode2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Mismatched tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " != "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget-byte v9, p1, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-object v10

    .line 174
    :cond_87
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    and-int/lit16 v4, v7, 0xff

    .line 175
    .local v4, "length":I
    if-eqz v4, :cond_95

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-eq v4, v7, :cond_bf

    .line 176
    :cond_95
    const-string/jumbo v7, "NfcEepromRwMode2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Invalid length: len="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ",remaining="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return-object v10

    .line 180
    :cond_bf
    const/4 v7, 0x4

    new-array v0, v7, [B

    .line 181
    .local v0, "address":[B
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 182
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c6
    if-ge v3, v11, :cond_d4

    .line 183
    aget-byte v7, v0, v3

    add-int/lit8 v8, v3, 0x2

    aget-byte v8, p1, v8

    if-eq v7, v8, :cond_d1

    .line 184
    return-object v10

    .line 182
    :cond_d1
    add-int/lit8 v3, v3, 0x1

    goto :goto_c6

    .line 187
    :cond_d4
    const/4 v7, 0x4

    new-array v6, v7, [B

    .line 188
    .local v6, "value":[B
    invoke-virtual {v1, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_da
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4f .. :try_end_da} :catch_db

    .line 194
    return-object v6

    .line 195
    .end local v0    # "address":[B
    .end local v1    # "bb":Ljava/nio/ByteBuffer;
    .end local v3    # "i":I
    .end local v4    # "length":I
    .end local v5    # "tag":I
    .end local v6    # "value":[B
    :catch_db
    move-exception v2

    .line 196
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string/jumbo v7, "NfcEepromRwMode2"

    const-string/jumbo v8, "Invalid length: TLV structure is invalid."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-object v10
.end method

.method protected createDataTlv(J[B)[B
    .registers 7
    .param p1, "address"    # J
    .param p3, "data"    # [B

    .prologue
    .line 71
    const/16 v2, 0xa

    new-array v1, v2, [B

    .line 72
    .local v1, "tlv":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 73
    .local v0, "b":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 74
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 75
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 76
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 77
    long-to-int v2, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 78
    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 79
    return-object v1
.end method

.method protected createIdTlv(J)[B
    .registers 6
    .param p1, "address"    # J

    .prologue
    .line 60
    const/4 v2, 0x6

    new-array v1, v2, [B

    .line 61
    .local v1, "tlv":[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 62
    .local v0, "b":Ljava/nio/ByteBuffer;
    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 63
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 64
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 65
    long-to-int v2, p1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 66
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
    .line 130
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode2$1;

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const v2, 0x7f030018

    .line 130
    invoke-direct {v0, p0, p0, v2, v1}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode2$1;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode2;Landroid/content/Context;ILjava/util/ArrayList;)V

    return-object v0
.end method

.method protected getDefaultSettingsFilePath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    sget-object v0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode2;->DEFAULT_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method protected getMaxAddress()J
    .registers 3

    .prologue
    .line 117
    const-wide/32 v0, 0xffff

    return-wide v0
.end method

.method protected getMaxValue()J
    .registers 3

    .prologue
    .line 125
    const-wide v0, 0xffffffffL

    return-wide v0
.end method

.method protected getPreferenceFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    const-string/jumbo v0, "NfcEepromRwMode2Prefs"

    return-object v0
.end method

.method protected getTitleOnReading()Ljava/lang/String;
    .registers 4

    .prologue
    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "EEPROM"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f090132

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitleOnWriting()Ljava/lang/String;
    .registers 4

    .prologue
    .line 109
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v1, "EEPROM"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f090133

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode2;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected verifyData([B[B)Z
    .registers 8
    .param p1, "data"    # [B
    .param p2, "verifyData"    # [B

    .prologue
    const/4 v4, 0x0

    .line 84
    if-eqz p1, :cond_6

    array-length v2, p1

    if-nez v2, :cond_7

    .line 85
    :cond_6
    return v4

    .line 87
    :cond_7
    if-eqz p2, :cond_c

    array-length v2, p2

    if-nez v2, :cond_d

    .line 88
    :cond_c
    return v4

    .line 90
    :cond_d
    array-length v2, p1

    array-length v3, p2

    if-le v2, v3, :cond_12

    .line 91
    return v4

    .line 93
    :cond_12
    array-length v2, p2

    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 94
    .local v0, "d":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    array-length v2, v0

    if-ge v1, v2, :cond_25

    .line 95
    aget-byte v2, v0, v1

    aget-byte v3, p2, v1

    if-eq v2, v3, :cond_22

    .line 96
    return v4

    .line 94
    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 99
    :cond_25
    const/4 v2, 0x1

    return v2
.end method

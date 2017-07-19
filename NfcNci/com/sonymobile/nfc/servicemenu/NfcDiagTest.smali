.class public Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;
.super Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;
.source "NfcDiagTest.java"


# static fields
.field private static final FW_KEY:I = 0xb

.field private static final HW_KEY:I = 0xa

.field private static final PATCH_KEY:I = 0xc


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;-><init>()V

    return-void
.end method

.method private parseBaseBandId([B)Landroid/util/Pair;
    .registers 14
    .param p1, "versionArray"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    const v10, 0x7f0901a0

    invoke-virtual {p0, v10}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .local v4, "hwBuf":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    const v10, 0x7f09019f

    invoke-virtual {p0, v10}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    .local v2, "fwBuf":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/lang/StringBuilder;

    const v10, 0x7f0901a1

    invoke-virtual {p0, v10}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
    .local v9, "pvBuf":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 143
    .local v3, "hasPatchVer":Z
    const/4 v5, 0x0

    .line 144
    .local v5, "i":I
    :goto_26
    array-length v10, p1

    add-int/lit8 v10, v10, -0x2

    if-ge v5, v10, :cond_3a

    .line 145
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "i":I
    .local v6, "i":I
    aget-byte v10, p1, v5

    and-int/lit16 v7, v10, 0xff

    .line 146
    .local v7, "key":I
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    aget-byte v8, p1, v6

    .line 147
    .local v8, "length":I
    add-int v10, v5, v8

    array-length v11, p1

    if-le v10, v11, :cond_85

    .line 161
    .end local v7    # "key":I
    .end local v8    # "length":I
    :cond_3a
    const v10, 0x7f090199

    invoke-virtual {p0, v10}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "basebandStr":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "basebandResultStr":Ljava/lang/String;
    if-eqz v3, :cond_7f

    .line 164
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    :cond_7f
    new-instance v10, Landroid/util/Pair;

    invoke-direct {v10, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v10

    .line 150
    .end local v0    # "basebandResultStr":Ljava/lang/String;
    .end local v1    # "basebandStr":Ljava/lang/String;
    .restart local v7    # "key":I
    .restart local v8    # "length":I
    :cond_85
    const/16 v10, 0xa

    if-ne v7, v10, :cond_92

    .line 151
    invoke-direct {p0, p1, v5, v8}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->parseHwFwVersionInfo([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_90
    :goto_90
    add-int/2addr v5, v8

    goto :goto_26

    .line 152
    :cond_92
    const/16 v10, 0xb

    if-ne v7, v10, :cond_9e

    .line 153
    invoke-direct {p0, p1, v5, v8}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->parseHwFwVersionInfo([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_90

    .line 154
    :cond_9e
    const/16 v10, 0xc

    if-ne v7, v10, :cond_90

    .line 155
    invoke-direct {p0, p1, v5, v8}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->parseHwPatchVersionInfo([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const/4 v3, 0x1

    goto :goto_90
.end method

.method private parseHwFwVersionInfo([BII)Ljava/lang/String;
    .registers 12
    .param p1, "versionArray"    # [B
    .param p2, "index"    # I
    .param p3, "length"    # I

    .prologue
    .line 103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .local v2, "versionInfo":Ljava/lang/StringBuilder;
    add-int v1, p2, p3

    .line 105
    .local v1, "loopCnt":I
    move v0, p2

    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_2a

    .line 106
    const-string/jumbo v3, " 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%02X"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-byte v6, p1, v0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 108
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private parseHwPatchVersionInfo([BII)Ljava/lang/String;
    .registers 12
    .param p1, "versionArray"    # [B
    .param p2, "index"    # I
    .param p3, "length"    # I

    .prologue
    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v2, "versionInfo":Ljava/lang/StringBuilder;
    add-int v1, p2, p3

    .line 123
    .local v1, "loopCnt":I
    move v0, p2

    .local v0, "i":I
    :goto_8
    if-ge v0, v1, :cond_2a

    .line 124
    const-string/jumbo v3, " 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "%02X"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-byte v6, p1, v0

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 126
    :cond_2a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private parseSwpResult(II)Landroid/util/Pair;
    .registers 11
    .param p1, "uicc_ret"    # I
    .param p2, "eSe_ret"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const v7, 0x7f090105

    const v6, 0x7f090103

    const/16 v5, -0x14

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    const v4, 0x7f09019b

    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    .local v3, "uiccResult":Ljava/lang/StringBuilder;
    if-nez p1, :cond_5f

    .line 182
    invoke-virtual {p0, v6}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :goto_1d
    new-instance v0, Ljava/lang/StringBuilder;

    const v4, 0x7f09019c

    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .local v0, "eSeResult":Ljava/lang/StringBuilder;
    if-nez p2, :cond_74

    .line 191
    invoke-virtual {p0, v6}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :goto_32
    const v4, 0x7f09019a

    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "swpStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "swpResultStr":Ljava/lang/String;
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v4

    .line 183
    .end local v0    # "eSeResult":Ljava/lang/StringBuilder;
    .end local v1    # "swpResultStr":Ljava/lang/String;
    .end local v2    # "swpStr":Ljava/lang/String;
    :cond_5f
    if-ne p1, v5, :cond_6c

    .line 184
    const v4, 0x7f090196

    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 186
    :cond_6c
    invoke-virtual {p0, v7}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 192
    .restart local v0    # "eSeResult":Ljava/lang/StringBuilder;
    :cond_74
    if-ne p2, v5, :cond_81

    .line 193
    const v4, 0x7f090197

    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32

    .line 195
    :cond_81
    invoke-virtual {p0, v7}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32
.end method


# virtual methods
.method protected doGetBaseBandId()Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->getConfig()Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/nfc/NfcConfig;->enable()Z

    .line 47
    invoke-virtual {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->getConfig()Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/nfc/NfcConfig;->getChipVersion()[B

    move-result-object v0

    .line 48
    .local v0, "testResult":[B
    if-nez v0, :cond_1a

    .line 49
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "Getting baseband ID failed."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 53
    :cond_1a
    invoke-direct {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->parseBaseBandId([B)Landroid/util/Pair;

    move-result-object v1

    return-object v1
.end method

.method protected doSwpTest()Landroid/util/Pair;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 64
    .local v4, "eeHandleUicc":I
    invoke-virtual {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 65
    .local v3, "eeHandleEseSmx":I
    invoke-virtual {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b000e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 66
    .local v2, "eeHandleEseFn":I
    const/16 v6, 0xfff

    if-eq v3, v6, :cond_52

    move v1, v3

    .line 68
    .local v1, "eeHandleEse":I
    :goto_26
    invoke-virtual {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->getConfig()Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/sonymobile/nfc/NfcConfig;->swpTest(I)I

    move-result v5

    .line 69
    .local v5, "uiccResult":I
    if-eqz v5, :cond_36

    invoke-virtual {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->isSimPresent()Z

    move-result v6

    if-eqz v6, :cond_54

    .line 75
    :cond_36
    :goto_36
    if-ne v1, v3, :cond_57

    .line 76
    invoke-virtual {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string/jumbo v7, "support_embedded_secure_element"

    .line 77
    const-string/jumbo v8, "bool"

    const-string/jumbo v9, "com.android.nfc"

    .line 76
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_57

    .line 78
    const/16 v0, -0x14

    .line 85
    .local v0, "eSeResult":I
    :goto_4d
    invoke-direct {p0, v5, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->parseSwpResult(II)Landroid/util/Pair;

    move-result-object v6

    return-object v6

    .line 66
    .end local v0    # "eSeResult":I
    .end local v1    # "eeHandleEse":I
    .end local v5    # "uiccResult":I
    :cond_52
    move v1, v2

    .restart local v1    # "eeHandleEse":I
    goto :goto_26

    .line 70
    .restart local v5    # "uiccResult":I
    :cond_54
    const/16 v5, -0x14

    goto :goto_36

    .line 80
    :cond_57
    invoke-virtual {p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTest;->getConfig()Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/sonymobile/nfc/NfcConfig;->swpTest(I)I

    move-result v0

    .restart local v0    # "eSeResult":I
    goto :goto_4d
.end method

.method protected isAntennaSelfTestSupported()Z
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

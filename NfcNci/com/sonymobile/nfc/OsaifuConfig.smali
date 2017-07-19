.class public Lcom/sonymobile/nfc/OsaifuConfig;
.super Ljava/lang/Object;
.source "OsaifuConfig.java"


# static fields
.field private static final DBG:Z = false

.field private static final FILE_PATH:Ljava/lang/String; = "/data/misc/osaifu/osaifu.cfg"

.field private static final NFCTYPE_ELEMENTS_SIZE:I = 0x2

.field private static final NFCTYPE_KEY:Ljava/lang/String; = "00001"

.field private static final NFCTYPE_KEY_INDEX:I = 0x0

.field private static final NFCTYPE_VALUE_ABF:I = 0x0

.field private static final NFCTYPE_VALUE_AF:I = 0x1

.field private static final NFCTYPE_VALUE_BF:I = 0x2

.field private static final NFCTYPE_VALUE_DEFAULT:I = 0x0

.field private static final NFCTYPE_VALUE_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OsaifuConfig"

.field private static final mInstance:Lcom/sonymobile/nfc/OsaifuConfig;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    new-instance v0, Lcom/sonymobile/nfc/OsaifuConfig;

    invoke-direct {v0}, Lcom/sonymobile/nfc/OsaifuConfig;-><init>()V

    sput-object v0, Lcom/sonymobile/nfc/OsaifuConfig;->mInstance:Lcom/sonymobile/nfc/OsaifuConfig;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sonymobile/nfc/OsaifuConfig;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/sonymobile/nfc/OsaifuConfig;->mInstance:Lcom/sonymobile/nfc/OsaifuConfig;

    return-object v0
.end method

.method private isListenTypeInvalid(I)Z
    .registers 5
    .param p1, "listenType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    if-eqz p1, :cond_c

    .line 155
    if-eq p1, v0, :cond_c

    .line 156
    const/4 v2, 0x2

    if-eq p1, v2, :cond_a

    .line 154
    :goto_9
    return v0

    :cond_a
    move v0, v1

    .line 156
    goto :goto_9

    :cond_c
    move v0, v1

    .line 154
    goto :goto_9
.end method


# virtual methods
.method public declared-synchronized readListenTypeSetting()I
    .registers 13

    .prologue
    monitor-enter p0

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x0

    .line 59
    .local v6, "str":Ljava/lang/String;
    const/4 v2, 0x0

    .line 62
    .local v2, "currentSetting":I
    :try_start_4
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    const-string/jumbo v9, "/data/misc/osaifu/osaifu.cfg"

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_11} :catch_111
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_11} :catch_ca
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_11} :catch_82
    .catchall {:try_start_4 .. :try_end_11} :catchall_158

    .line 63
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "str":Ljava/lang/String;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_11
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "str":Ljava/lang/String;
    if-eqz v6, :cond_35

    .line 64
    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, "tokens":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x2

    if-ne v8, v9, :cond_11

    .line 66
    const/4 v8, 0x0

    aget-object v8, v7, v8

    const-string/jumbo v9, "00001"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 65
    if-eqz v8, :cond_11

    .line 67
    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_34} :catch_182
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_34} :catch_185
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_34} :catch_189
    .catchall {:try_start_11 .. :try_end_34} :catchall_17f

    move-result v2

    .line 79
    .end local v7    # "tokens":[Ljava/lang/String;
    :cond_35
    if-eqz v1, :cond_3a

    .line 80
    :try_start_37
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_5e
    .catchall {:try_start_37 .. :try_end_3a} :catchall_7e

    :cond_3a
    :goto_3a
    move-object v0, v1

    .line 87
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "str":Ljava/lang/String;
    :cond_3b
    :goto_3b
    :try_start_3b
    invoke-direct {p0, v2}, Lcom/sonymobile/nfc/OsaifuConfig;->isListenTypeInvalid(I)Z

    move-result v8

    if-eqz v8, :cond_5c

    .line 88
    const-string/jumbo v8, "OsaifuConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "invarid NFC Type : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_3b .. :try_end_5b} :catchall_c8

    .line 89
    const/4 v2, 0x0

    :cond_5c
    monitor-exit p0

    .line 93
    return v2

    .line 82
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "str":Ljava/lang/String;
    :catch_5e
    move-exception v4

    .line 83
    .local v4, "e":Ljava/io/IOException;
    :try_start_5f
    const-string/jumbo v8, "OsaifuConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IOException is occured at closeing process : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_5f .. :try_end_7d} :catchall_7e

    goto :goto_3a

    .end local v4    # "e":Ljava/io/IOException;
    :catchall_7e
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v6    # "str":Ljava/lang/String;
    :goto_80
    monitor-exit p0

    throw v8

    .line 75
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v6, "str":Ljava/lang/String;
    :catch_82
    move-exception v5

    .line 76
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "str":Ljava/lang/String;
    .local v5, "e":Ljava/lang/NumberFormatException;
    :goto_83
    :try_start_83
    const-string/jumbo v8, "OsaifuConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NumberFormatException is occured : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_83 .. :try_end_a1} :catchall_158

    .line 79
    if-eqz v0, :cond_3b

    .line 80
    :try_start_a3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a3 .. :try_end_a6} :catch_a7
    .catchall {:try_start_a3 .. :try_end_a6} :catchall_c8

    goto :goto_3b

    .line 82
    :catch_a7
    move-exception v4

    .line 83
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_a8
    const-string/jumbo v8, "OsaifuConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IOException is occured at closeing process : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catchall {:try_start_a8 .. :try_end_c6} :catchall_c8

    goto/16 :goto_3b

    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/NumberFormatException;
    :catchall_c8
    move-exception v8

    goto :goto_80

    .line 73
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "str":Ljava/lang/String;
    :catch_ca
    move-exception v4

    .line 74
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "str":Ljava/lang/String;
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_cb
    :try_start_cb
    const-string/jumbo v8, "OsaifuConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IOException is occured : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e9
    .catchall {:try_start_cb .. :try_end_e9} :catchall_158

    .line 79
    if-eqz v0, :cond_3b

    .line 80
    :try_start_eb
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_ee
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_f0
    .catchall {:try_start_eb .. :try_end_ee} :catchall_c8

    goto/16 :goto_3b

    .line 82
    :catch_f0
    move-exception v4

    .line 83
    :try_start_f1
    const-string/jumbo v8, "OsaifuConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IOException is occured at closeing process : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10f
    .catchall {:try_start_f1 .. :try_end_10f} :catchall_c8

    goto/16 :goto_3b

    .line 71
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "str":Ljava/lang/String;
    :catch_111
    move-exception v3

    .line 72
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "str":Ljava/lang/String;
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_112
    :try_start_112
    const-string/jumbo v8, "OsaifuConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "FileNotFoundException is occured : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_130
    .catchall {:try_start_112 .. :try_end_130} :catchall_158

    .line 79
    if-eqz v0, :cond_3b

    .line 80
    :try_start_132
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_135
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_135} :catch_137
    .catchall {:try_start_132 .. :try_end_135} :catchall_c8

    goto/16 :goto_3b

    .line 82
    :catch_137
    move-exception v4

    .line 83
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_138
    const-string/jumbo v8, "OsaifuConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "IOException is occured at closeing process : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_156
    .catchall {:try_start_138 .. :try_end_156} :catchall_c8

    goto/16 :goto_3b

    .line 77
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_158
    move-exception v8

    .line 79
    :goto_159
    if-eqz v0, :cond_15e

    .line 80
    :try_start_15b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_15e
    .catch Ljava/io/IOException; {:try_start_15b .. :try_end_15e} :catch_15f
    .catchall {:try_start_15b .. :try_end_15e} :catchall_c8

    .line 77
    :cond_15e
    :goto_15e
    :try_start_15e
    throw v8

    .line 82
    :catch_15f
    move-exception v4

    .line 83
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "OsaifuConfig"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "IOException is occured at closeing process : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17e
    .catchall {:try_start_15e .. :try_end_17e} :catchall_c8

    goto :goto_15e

    .line 77
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_17f
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_159

    .line 71
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_182
    move-exception v3

    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_112

    .line 73
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_185
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_cb

    .line 75
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_189
    move-exception v5

    .restart local v5    # "e":Ljava/lang/NumberFormatException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_83
.end method

.method public declared-synchronized writeListenTypeSetting(I)Z
    .registers 16
    .param p1, "param"    # I

    .prologue
    const/4 v13, 0x0

    monitor-enter p0

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 101
    .local v2, "bw":Ljava/io/BufferedWriter;
    const/4 v6, 0x0

    .line 102
    .local v6, "sb":Ljava/lang/StringBuffer;
    const/4 v8, 0x0

    .line 105
    .local v8, "str":Ljava/lang/String;
    :try_start_6
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/OsaifuConfig;->isListenTypeInvalid(I)Z

    move-result v10

    if-eqz v10, :cond_28

    .line 106
    const-string/jumbo v10, "OsaifuConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "invarid request : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26
    .catchall {:try_start_6 .. :try_end_26} :catchall_f8

    monitor-exit p0

    .line 107
    return v13

    .line 111
    :cond_28
    :try_start_28
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    const-string/jumbo v11, "/data/misc/osaifu/osaifu.cfg"

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_35} :catch_19f
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_35} :catch_1ac
    .catchall {:try_start_28 .. :try_end_35} :catchall_167

    .line 112
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_35
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_3a} :catch_1a2
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3a} :catch_1af
    .catchall {:try_start_35 .. :try_end_3a} :catchall_193

    .line 114
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .end local v8    # "str":Ljava/lang/String;
    .local v7, "sb":Ljava/lang/StringBuffer;
    :goto_3a
    :try_start_3a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "str":Ljava/lang/String;
    if-eqz v8, :cond_fb

    .line 117
    const-string/jumbo v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 118
    .local v9, "tokens":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x2

    if-ne v10, v11, :cond_a8

    .line 119
    const/4 v10, 0x0

    aget-object v10, v9, v10

    const-string/jumbo v11, "00001"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 118
    if-eqz v10, :cond_a8

    .line 120
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "00001,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    :goto_72
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_79
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_79} :catch_7a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_79} :catch_ac
    .catchall {:try_start_3a .. :try_end_79} :catchall_196

    goto :goto_3a

    .line 132
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "tokens":[Ljava/lang/String;
    :catch_7a
    move-exception v4

    .local v4, "e":Ljava/io/FileNotFoundException;
    move-object v6, v7

    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .local v6, "sb":Ljava/lang/StringBuffer;
    move-object v0, v1

    .line 133
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :goto_7d
    :try_start_7d
    const-string/jumbo v10, "OsaifuConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "FileNotFoundException is occured : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_7d .. :try_end_9b} :catchall_167

    .line 138
    if-eqz v2, :cond_a0

    .line 139
    :try_start_9d
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 141
    :cond_a0
    if-eqz v0, :cond_a5

    .line 142
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a5} :catch_146
    .catchall {:try_start_9d .. :try_end_a5} :catchall_f8

    .line 150
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :cond_a5
    :goto_a5
    const/4 v10, 0x1

    monitor-exit p0

    return v10

    .line 122
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    .restart local v8    # "str":Ljava/lang/String;
    .restart local v9    # "tokens":[Ljava/lang/String;
    :cond_a8
    :try_start_a8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_ab
    .catch Ljava/io/FileNotFoundException; {:try_start_a8 .. :try_end_ab} :catch_7a
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ac
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_196

    goto :goto_72

    .line 134
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "tokens":[Ljava/lang/String;
    :catch_ac
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    move-object v0, v1

    .line 135
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    :goto_af
    :try_start_af
    const-string/jumbo v10, "OsaifuConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "IOException is occured : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cd
    .catchall {:try_start_af .. :try_end_cd} :catchall_167

    .line 138
    if-eqz v2, :cond_d2

    .line 139
    :try_start_cf
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 141
    :cond_d2
    if-eqz v0, :cond_a5

    .line 142
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d7} :catch_d8
    .catchall {:try_start_cf .. :try_end_d7} :catchall_f8

    goto :goto_a5

    .line 144
    :catch_d8
    move-exception v5

    .line 145
    :try_start_d9
    const-string/jumbo v10, "OsaifuConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "IOException is occured at closeing process : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f7
    .catchall {:try_start_d9 .. :try_end_f7} :catchall_f8

    goto :goto_a5

    .end local v5    # "e":Ljava/io/IOException;
    :catchall_f8
    move-exception v10

    :goto_f9
    monitor-exit p0

    throw v10

    .line 127
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    .restart local v8    # "str":Ljava/lang/String;
    :cond_fb
    :try_start_fb
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/FileWriter;

    const-string/jumbo v11, "/data/misc/osaifu/osaifu.cfg"

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v3, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_109
    .catch Ljava/io/FileNotFoundException; {:try_start_fb .. :try_end_109} :catch_7a
    .catch Ljava/io/IOException; {:try_start_fb .. :try_end_109} :catch_ac
    .catchall {:try_start_fb .. :try_end_109} :catchall_196

    .line 128
    .local v3, "bw":Ljava/io/BufferedWriter;
    :try_start_109
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .end local v2    # "bw":Ljava/io/BufferedWriter;
    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V
    :try_end_113
    .catch Ljava/io/FileNotFoundException; {:try_start_109 .. :try_end_113} :catch_1a6
    .catch Ljava/io/IOException; {:try_start_109 .. :try_end_113} :catch_1b3
    .catchall {:try_start_109 .. :try_end_113} :catchall_19a

    .line 138
    if-eqz v3, :cond_118

    .line 139
    :try_start_115
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 141
    :cond_118
    if-eqz v1, :cond_11d

    .line 142
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_11d
    .catch Ljava/io/IOException; {:try_start_115 .. :try_end_11d} :catch_121
    .catchall {:try_start_115 .. :try_end_11d} :catchall_141

    :cond_11d
    :goto_11d
    move-object v6, v7

    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .local v2, "bw":Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto :goto_a5

    .line 144
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    :catch_121
    move-exception v5

    .line 145
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_122
    const-string/jumbo v10, "OsaifuConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "IOException is occured at closeing process : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_140
    .catchall {:try_start_122 .. :try_end_140} :catchall_141

    goto :goto_11d

    .end local v5    # "e":Ljava/io/IOException;
    :catchall_141
    move-exception v10

    move-object v6, v7

    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v2    # "bw":Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_f9

    .line 144
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .end local v8    # "str":Ljava/lang/String;
    .restart local v4    # "e":Ljava/io/FileNotFoundException;
    :catch_146
    move-exception v5

    .line 145
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_147
    const-string/jumbo v10, "OsaifuConfig"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "IOException is occured at closeing process : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_165
    .catchall {:try_start_147 .. :try_end_165} :catchall_f8

    goto/16 :goto_a5

    .line 136
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_167
    move-exception v10

    .line 138
    :goto_168
    if-eqz v2, :cond_16d

    .line 139
    :try_start_16a
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 141
    :cond_16d
    if-eqz v0, :cond_172

    .line 142
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_172} :catch_173
    .catchall {:try_start_16a .. :try_end_172} :catchall_f8

    .line 136
    :cond_172
    :goto_172
    :try_start_172
    throw v10

    .line 144
    :catch_173
    move-exception v5

    .line 145
    .restart local v5    # "e":Ljava/io/IOException;
    const-string/jumbo v11, "OsaifuConfig"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "IOException is occured at closeing process : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_192
    .catchall {:try_start_172 .. :try_end_192} :catchall_f8

    goto :goto_172

    .line 136
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "bw":Ljava/io/BufferedWriter;
    .local v6, "sb":Ljava/lang/StringBuffer;
    .local v8, "str":Ljava/lang/String;
    :catchall_193
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_168

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .end local v8    # "str":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    :catchall_196
    move-exception v10

    move-object v6, v7

    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .local v6, "sb":Ljava/lang/StringBuffer;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_168

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    .local v8, "str":Ljava/lang/String;
    :catchall_19a
    move-exception v10

    move-object v6, v7

    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .restart local v6    # "sb":Ljava/lang/StringBuffer;
    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .local v2, "bw":Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_168

    .line 132
    .local v0, "br":Ljava/io/BufferedReader;
    .local v2, "bw":Ljava/io/BufferedWriter;
    .local v6, "sb":Ljava/lang/StringBuffer;
    .local v8, "str":Ljava/lang/String;
    :catch_19f
    move-exception v4

    .restart local v4    # "e":Ljava/io/FileNotFoundException;
    goto/16 :goto_7d

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1a2
    move-exception v4

    .restart local v4    # "e":Ljava/io/FileNotFoundException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto/16 :goto_7d

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    .local v8, "str":Ljava/lang/String;
    :catch_1a6
    move-exception v4

    .restart local v4    # "e":Ljava/io/FileNotFoundException;
    move-object v6, v7

    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .local v6, "sb":Ljava/lang/StringBuffer;
    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .local v2, "bw":Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_7d

    .line 134
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .local v0, "br":Ljava/io/BufferedReader;
    .local v2, "bw":Ljava/io/BufferedWriter;
    .local v6, "sb":Ljava/lang/StringBuffer;
    .local v8, "str":Ljava/lang/String;
    :catch_1ac
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    goto/16 :goto_af

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1af
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v0, "br":Ljava/io/BufferedReader;
    goto/16 :goto_af

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "bw":Ljava/io/BufferedWriter;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "sb":Ljava/lang/StringBuffer;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "bw":Ljava/io/BufferedWriter;
    .restart local v7    # "sb":Ljava/lang/StringBuffer;
    .local v8, "str":Ljava/lang/String;
    :catch_1b3
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "sb":Ljava/lang/StringBuffer;
    .local v6, "sb":Ljava/lang/StringBuffer;
    move-object v2, v3

    .end local v3    # "bw":Ljava/io/BufferedWriter;
    .local v2, "bw":Ljava/io/BufferedWriter;
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_af
.end method

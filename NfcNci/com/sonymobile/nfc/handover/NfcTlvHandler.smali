.class public Lcom/sonymobile/nfc/handover/NfcTlvHandler;
.super Ljava/lang/Object;
.source "NfcTlvHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NfcTlvHandler"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected bytesToNum([BIILjava/nio/ByteOrder;)I
    .registers 12
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 108
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p4, v5, :cond_17

    const/4 v0, 0x0

    .line 109
    .local v0, "head":I
    :goto_5
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p4, v5, :cond_1a

    const/4 v4, 0x1

    .line 110
    .local v4, "step":I
    :goto_a
    add-int v2, p2, v0

    .line 111
    .local v2, "pos":I
    const/4 v3, 0x0

    .line 113
    .local v3, "result":I
    if-eqz p1, :cond_11

    if-nez p4, :cond_1c

    .line 114
    :cond_11
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-direct {v5}, Ljava/lang/NullPointerException;-><init>()V

    throw v5

    .line 108
    .end local v0    # "head":I
    .end local v2    # "pos":I
    .end local v3    # "result":I
    .end local v4    # "step":I
    :cond_17
    add-int/lit8 v0, p3, -0x1

    .restart local v0    # "head":I
    goto :goto_5

    .line 109
    :cond_1a
    const/4 v4, -0x1

    .restart local v4    # "step":I
    goto :goto_a

    .line 117
    .restart local v2    # "pos":I
    .restart local v3    # "result":I
    :cond_1c
    array-length v5, p1

    add-int v6, p2, p3

    if-ge v5, v6, :cond_2a

    .line 118
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "invalid data length"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 121
    :cond_2a
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    if-ge v1, p3, :cond_39

    .line 122
    shl-int/lit8 v5, v3, 0x8

    aget-byte v6, p1, v2

    and-int/lit16 v6, v6, 0xff

    or-int v3, v5, v6

    .line 123
    add-int/2addr v2, v4

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 125
    :cond_39
    return v3
.end method

.method protected dumpMap(Ljava/util/LinkedHashMap;)V
    .registers 14
    .param p1, "map"    # Ljava/util/LinkedHashMap;

    .prologue
    .line 149
    :try_start_0
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 150
    .local v2, "it":Ljava/util/Iterator;
    const/4 v5, 0x0

    .line 151
    .local v5, "x":I
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8e

    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 153
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 154
    .local v3, "key":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 156
    .local v4, "val":Ljava/lang/Object;
    instance-of v6, v3, Ljava/lang/Integer;

    if-eqz v6, :cond_65

    instance-of v6, v4, [B

    if-eqz v6, :cond_65

    .line 157
    const-string/jumbo v6, "NfcTlvHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dump map ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "[0x%08X][%s]"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 158
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "key":Ljava/lang/Object;
    const/4 v10, 0x0

    aput-object v3, v9, v10

    check-cast v4, [B

    .end local v4    # "val":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/handover/NfcTlvHandler;->toHexString([B)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    .line 157
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_62
    :goto_62
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 159
    .restart local v3    # "key":Ljava/lang/Object;
    .restart local v4    # "val":Ljava/lang/Object;
    :cond_65
    instance-of v6, v3, Ljava/lang/Integer;

    if-eqz v6, :cond_62

    instance-of v6, v4, Ljava/util/LinkedHashMap;

    if-eqz v6, :cond_62

    .line 160
    const-string/jumbo v6, "NfcTlvHandler"

    const-string/jumbo v7, "key[%d]=[0x%08X]"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    const/4 v9, 0x1

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    check-cast v4, Ljava/util/LinkedHashMap;

    .end local v4    # "val":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/handover/NfcTlvHandler;->dumpMap(Ljava/util/LinkedHashMap;)V
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8c} :catch_8d

    goto :goto_62

    .line 165
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "it":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/Object;
    .end local v5    # "x":I
    :catch_8d
    move-exception v0

    .line 147
    :cond_8e
    return-void
.end method

.method protected parseTlv([BII)Ljava/util/LinkedHashMap;
    .registers 5
    .param p1, "data"    # [B
    .param p2, "typeLen"    # I
    .param p3, "lenLen"    # I

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonymobile/nfc/handover/NfcTlvHandler;->parseTlv([BIILcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtTlvParser;)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method protected parseTlv([BIILcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtTlvParser;)Ljava/util/LinkedHashMap;
    .registers 18
    .param p1, "data"    # [B
    .param p2, "typeLen"    # I
    .param p3, "lenLen"    # I
    .param p4, "extParser"    # Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtTlvParser;

    .prologue
    .line 46
    const/4 v4, 0x0

    .line 47
    .local v4, "map":Ljava/util/LinkedHashMap;
    const/4 v3, 0x0

    .line 48
    .local v3, "i":I
    const/4 v6, 0x0

    .line 50
    .local v6, "parsedLen":I
    if-nez p1, :cond_10

    .line 51
    const-string/jumbo v10, "NfcTlvHandler"

    const-string/jumbo v11, "parse TLV: data is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const/4 v10, 0x0

    return-object v10

    .line 55
    :cond_10
    const/4 v10, 0x1

    if-eq p2, v10, :cond_24

    const/4 v10, 0x2

    if-eq p2, v10, :cond_24

    const/4 v10, 0x4

    if-eq p2, v10, :cond_24

    .line 57
    :cond_19
    const-string/jumbo v10, "NfcTlvHandler"

    const-string/jumbo v11, "parse TLV: invalid typeLen or lenLen"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v10, 0x0

    return-object v10

    .line 56
    :cond_24
    const/4 v10, 0x1

    move/from16 v0, p3

    if-eq v0, v10, :cond_33

    const/4 v10, 0x2

    move/from16 v0, p3

    if-eq v0, v10, :cond_33

    const/4 v10, 0x4

    move/from16 v0, p3

    if-ne v0, v10, :cond_19

    .line 62
    :cond_33
    :try_start_33
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_38
    .catch Ljava/lang/NullPointerException; {:try_start_33 .. :try_end_38} :catch_b9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_33 .. :try_end_38} :catch_bb

    .line 64
    .end local v4    # "map":Ljava/util/LinkedHashMap;
    .local v5, "map":Ljava/util/LinkedHashMap;
    :cond_38
    :goto_38
    :try_start_38
    array-length v10, p1

    if-ge v3, v10, :cond_b7

    .line 69
    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1, v3, p2, v10}, Lcom/sonymobile/nfc/handover/NfcTlvHandler;->bytesToNum([BIILjava/nio/ByteOrder;)I

    move-result v7

    .line 70
    .local v7, "type":I
    add-int/2addr v3, p2

    .line 73
    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    move/from16 v0, p3

    invoke-virtual {p0, p1, v3, v0, v10}, Lcom/sonymobile/nfc/handover/NfcTlvHandler;->bytesToNum([BIILjava/nio/ByteOrder;)I

    move-result v8

    .line 74
    .local v8, "valLen":I
    add-int v3, v3, p3

    .line 77
    array-length v10, p1

    add-int v11, v3, v8

    if-ge v10, v11, :cond_7c

    .line 78
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v11, "value"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_5a
    .catch Ljava/lang/NullPointerException; {:try_start_38 .. :try_end_5a} :catch_5a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_5a} :catch_95

    .line 93
    .end local v7    # "type":I
    .end local v8    # "valLen":I
    :catch_5a
    move-exception v2

    .local v2, "e":Ljava/lang/NullPointerException;
    move-object v4, v5

    .line 94
    .end local v5    # "map":Ljava/util/LinkedHashMap;
    :goto_5c
    const-string/jumbo v10, "NfcTlvHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "parse TLV: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v4, 0x0

    .line 101
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :goto_7b
    return-object v4

    .line 80
    .restart local v5    # "map":Ljava/util/LinkedHashMap;
    .restart local v7    # "type":I
    .restart local v8    # "valLen":I
    :cond_7c
    add-int v10, v3, v8

    :try_start_7e
    invoke-static {p1, v3, v10}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 81
    .local v9, "value":[B
    add-int/2addr v3, v8

    .line 84
    if-eqz p4, :cond_8d

    .line 85
    move-object/from16 v0, p4

    invoke-interface {v0, v7, v9}, Lcom/sonymobile/nfc/handover/NfcWiFiDirectNdefRecord$ExtTlvParser;->isExtTlvExist(I[B)Z

    move-result v10

    if-nez v10, :cond_38

    .line 91
    :cond_8d
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_94
    .catch Ljava/lang/NullPointerException; {:try_start_7e .. :try_end_94} :catch_5a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7e .. :try_end_94} :catch_95

    goto :goto_38

    .line 96
    .end local v7    # "type":I
    .end local v8    # "valLen":I
    .end local v9    # "value":[B
    :catch_95
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalArgumentException;
    move-object v4, v5

    .line 97
    .end local v5    # "map":Ljava/util/LinkedHashMap;
    :goto_97
    const-string/jumbo v10, "NfcTlvHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "parse TLV: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const/4 v4, 0x0

    .restart local v4    # "map":Ljava/util/LinkedHashMap;
    goto :goto_7b

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "map":Ljava/util/LinkedHashMap;
    .restart local v5    # "map":Ljava/util/LinkedHashMap;
    :cond_b7
    move-object v4, v5

    .end local v5    # "map":Ljava/util/LinkedHashMap;
    .local v4, "map":Ljava/util/LinkedHashMap;
    goto :goto_7b

    .line 93
    .local v4, "map":Ljava/util/LinkedHashMap;
    :catch_b9
    move-exception v2

    .restart local v2    # "e":Ljava/lang/NullPointerException;
    goto :goto_5c

    .line 96
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_bb
    move-exception v1

    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_97
.end method

.method protected toHexString([B)Ljava/lang/String;
    .registers 8
    .param p1, "buffer"    # [B

    .prologue
    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, "work":Ljava/lang/StringBuilder;
    if-nez p1, :cond_e

    .line 135
    const-string/jumbo v2, "null"

    return-object v2

    .line 138
    :cond_e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    array-length v2, p1

    if-ge v0, v2, :cond_2b

    .line 139
    const-string/jumbo v2, "%02X "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-byte v4, p1, v0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 141
    :cond_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.class public Lcom/android/nfc/ndefpush/NdefPushProtocol;
.super Ljava/lang/Object;
.source "NdefPushProtocol.java"


# static fields
.field public static final ACTION_BACKGROUND:B = 0x2t

.field public static final ACTION_IMMEDIATE:B = 0x1t

.field private static final TAG:Ljava/lang/String; = "NdefMessageSet"

.field private static final VERSION:B = 0x1t


# instance fields
.field private mActions:[B

.field private mMessages:[Landroid/nfc/NdefMessage;

.field private mNumMessages:I


# direct methods
.method public constructor <init>(Landroid/nfc/NdefMessage;B)V
    .registers 6
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "action"    # B

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    .line 45
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    .line 46
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    aput-byte p2, v0, v2

    .line 47
    new-array v0, v1, [Landroid/nfc/NdefMessage;

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    .line 48
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    aput-object p1, v0, v2

    .line 43
    return-void
.end method

.method public constructor <init>([B)V
    .registers 15
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/nfc/FormatException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 68
    .local v0, "buffer":Ljava/io/ByteArrayInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 73
    .local v5, "input":Ljava/io/DataInputStream;
    :try_start_e
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_5e

    move-result v8

    .line 79
    .local v8, "version":B
    if-eq v8, v12, :cond_71

    .line 80
    const-string/jumbo v9, "NdefMessageSet"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Got version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",  expected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v9, Landroid/nfc/FormatException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Got version "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ",  expected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 74
    .end local v8    # "version":B
    :catch_5e
    move-exception v3

    .line 75
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v9, "NdefMessageSet"

    const-string/jumbo v10, "Unable to read version"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    new-instance v9, Landroid/nfc/FormatException;

    const-string/jumbo v10, "Unable to read version"

    invoke-direct {v9, v10}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 86
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v8    # "version":B
    :cond_71
    :try_start_71
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    iput v9, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_77} :catch_8d

    .line 91
    iget v9, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    if-nez v9, :cond_a0

    .line 92
    const-string/jumbo v9, "NdefMessageSet"

    const-string/jumbo v10, "No NdefMessage inside NdefMessageSet packet"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v9, Landroid/nfc/FormatException;

    const-string/jumbo v10, "Error while parsing NdefMessageSet"

    invoke-direct {v9, v10}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 87
    :catch_8d
    move-exception v3

    .line 88
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "NdefMessageSet"

    const-string/jumbo v10, "Unable to read numMessages"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v9, Landroid/nfc/FormatException;

    const-string/jumbo v10, "Error while parsing NdefMessageSet"

    invoke-direct {v9, v10}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 97
    .end local v3    # "e":Ljava/io/IOException;
    :cond_a0
    iget v9, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    new-array v9, v9, [B

    iput-object v9, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    .line 98
    iget v9, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    new-array v9, v9, [Landroid/nfc/NdefMessage;

    iput-object v9, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    .line 99
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_ad
    iget v9, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    if-ge v4, v9, :cond_16e

    .line 102
    :try_start_b1
    iget-object v9, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readByte()B

    move-result v10

    aput-byte v10, v9, v4
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_b9} :catch_f3

    .line 110
    :try_start_b9
    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_117

    move-result v6

    .line 115
    .local v6, "length":I
    new-array v1, v6, [B

    .line 119
    .local v1, "bytes":[B
    :try_start_bf
    invoke-virtual {v5, v1}, Ljava/io/DataInputStream;->read([B)I
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_c2} :catch_13b

    move-result v7

    .line 124
    .local v7, "lengthRead":I
    if-eq v6, v7, :cond_15f

    .line 125
    const-string/jumbo v9, "NdefMessageSet"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Read "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " bytes but expected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    new-instance v9, Landroid/nfc/FormatException;

    const-string/jumbo v10, "Error while parsing NdefMessageSet"

    invoke-direct {v9, v10}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 103
    .end local v1    # "bytes":[B
    .end local v6    # "length":I
    .end local v7    # "lengthRead":I
    :catch_f3
    move-exception v3

    .line 104
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "NdefMessageSet"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to read action for message "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v9, Landroid/nfc/FormatException;

    const-string/jumbo v10, "Error while parsing NdefMessageSet"

    invoke-direct {v9, v10}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 111
    .end local v3    # "e":Ljava/io/IOException;
    :catch_117
    move-exception v3

    .line 112
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "NdefMessageSet"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to read length for message "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v9, Landroid/nfc/FormatException;

    const-string/jumbo v10, "Error while parsing NdefMessageSet"

    invoke-direct {v9, v10}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 120
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "bytes":[B
    .restart local v6    # "length":I
    :catch_13b
    move-exception v3

    .line 121
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "NdefMessageSet"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Unable to read bytes for message "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v9, Landroid/nfc/FormatException;

    const-string/jumbo v10, "Error while parsing NdefMessageSet"

    invoke-direct {v9, v10}, Landroid/nfc/FormatException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 131
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v7    # "lengthRead":I
    :cond_15f
    :try_start_15f
    iget-object v9, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    new-instance v10, Landroid/nfc/NdefMessage;

    invoke-direct {v10, v1}, Landroid/nfc/NdefMessage;-><init>([B)V

    aput-object v10, v9, v4
    :try_end_168
    .catch Landroid/nfc/FormatException; {:try_start_15f .. :try_end_168} :catch_16c

    .line 99
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_ad

    .line 132
    :catch_16c
    move-exception v2

    .line 133
    .local v2, "e":Landroid/nfc/FormatException;
    throw v2

    .line 66
    .end local v1    # "bytes":[B
    .end local v2    # "e":Landroid/nfc/FormatException;
    .end local v6    # "length":I
    .end local v7    # "lengthRead":I
    :cond_16e
    return-void
.end method

.method public constructor <init>([B[Landroid/nfc/NdefMessage;)V
    .registers 7
    .param p1, "actions"    # [B
    .param p2, "messages"    # [Landroid/nfc/NdefMessage;

    .prologue
    const/4 v3, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_b

    array-length v1, p1

    if-nez v1, :cond_14

    .line 53
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 54
    const-string/jumbo v2, "actions and messages must be the same size and non-empty"

    .line 53
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_14
    array-length v0, p1

    .line 59
    .local v0, "numMessages":I
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    .line 60
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 61
    new-array v1, v0, [Landroid/nfc/NdefMessage;

    iput-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    .line 62
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    invoke-static {p2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    iput v0, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    .line 51
    return-void
.end method


# virtual methods
.method public getImmediate()Landroid/nfc/NdefMessage;
    .registers 4

    .prologue
    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    if-ge v0, v1, :cond_14

    .line 141
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    aget-byte v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    .line 142
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    aget-object v1, v1, v0

    return-object v1

    .line 140
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 145
    :cond_14
    const/4 v1, 0x0

    return-object v1
.end method

.method public toByteArray()[B
    .registers 7

    .prologue
    .line 149
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x400

    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 150
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 153
    .local v4, "output":Ljava/io/DataOutputStream;
    const/4 v5, 0x1

    :try_start_d
    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 154
    iget v5, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 155
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    iget v5, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mNumMessages:I

    if-ge v3, v5, :cond_36

    .line 156
    iget-object v5, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mActions:[B

    aget-byte v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 157
    iget-object v5, p0, Lcom/android/nfc/ndefpush/NdefPushProtocol;->mMessages:[Landroid/nfc/NdefMessage;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    .line 158
    .local v1, "bytes":[B
    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 159
    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_30} :catch_33

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 161
    .end local v1    # "bytes":[B
    .end local v3    # "i":I
    :catch_33
    move-exception v2

    .line 162
    .local v2, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    return-object v5

    .line 165
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "i":I
    :cond_36
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

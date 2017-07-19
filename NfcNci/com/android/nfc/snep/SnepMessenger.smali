.class public Lcom/android/nfc/snep/SnepMessenger;
.super Ljava/lang/Object;
.source "SnepMessenger.java"


# static fields
.field private static final DBG:Z = false

.field private static final HEADER_LENGTH:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SnepMessager"


# instance fields
.field final mFragmentLength:I

.field final mIsClient:Z

.field final mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;


# direct methods
.method public constructor <init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V
    .registers 4
    .param p1, "isClient"    # Z
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;
    .param p3, "fragmentLength"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 40
    iput p3, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    .line 41
    iput-boolean p1, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    .line 38
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V

    .line 187
    return-void
.end method

.method public getMessage()Lcom/android/nfc/snep/SnepMessage;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/nfc/snep/SnepException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-direct {v8, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 93
    .local v8, "buffer":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    new-array v0, v2, [B

    move-object/from16 v16, v0

    .line 95
    .local v16, "partial":[B
    const/16 v18, 0x0

    .line 96
    .local v18, "requestSize":I
    const/16 v17, 0x0

    .line 97
    .local v17, "readSize":I
    const/4 v3, 0x0

    .line 98
    .local v3, "requestVersion":B
    const/4 v10, 0x0

    .line 101
    .local v10, "doneReading":Z
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v2, :cond_44

    .line 102
    const/4 v14, 0x0

    .line 103
    .local v14, "fieldContinue":B
    const/16 v15, 0x7f

    .line 109
    .local v15, "fieldReject":B
    :goto_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v19

    .line 111
    .local v19, "size":I
    if-gez v19, :cond_48

    .line 113
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v15}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_3b} :catch_114

    .line 117
    :goto_3b
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v5, "Error reading SNEP message."

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 105
    .end local v14    # "fieldContinue":B
    .end local v15    # "fieldReject":B
    .end local v19    # "size":I
    :cond_44
    const/16 v14, -0x80

    .line 106
    .restart local v14    # "fieldContinue":B
    const/4 v15, -0x1

    .restart local v15    # "fieldReject":B
    goto :goto_20

    .line 118
    .restart local v19    # "size":I
    :cond_48
    const/4 v2, 0x6

    move/from16 v0, v19

    if-ge v0, v2, :cond_65

    .line 120
    :try_start_4d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v15}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_5c} :catch_111

    .line 124
    :goto_5c
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v5, "Invalid fragment from sender."

    invoke-direct {v2, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_65
    add-int/lit8 v17, v19, -0x6

    .line 127
    const/4 v2, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v8, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 130
    new-instance v9, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v9, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 131
    .local v9, "dataIn":Ljava/io/DataInputStream;
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 132
    .local v3, "requestVersion":B
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 133
    .local v4, "requestField":B
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    .line 137
    and-int/lit16 v2, v3, 0xf0

    shr-int/lit8 v2, v2, 0x4

    const/4 v5, 0x1

    if-eq v2, v5, :cond_97

    .line 139
    new-instance v2, Lcom/android/nfc/snep/SnepMessage;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/nfc/snep/SnepMessage;-><init>(BBIILandroid/nfc/NdefMessage;)V

    return-object v2

    .line 142
    :cond_97
    move/from16 v0, v18

    move/from16 v1, v17

    if-le v0, v1, :cond_e0

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v14}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 150
    :cond_ac
    :goto_ac
    if-nez v10, :cond_f4

    .line 152
    :try_start_ae
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object/from16 v0, v16

    invoke-interface {v2, v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_ae .. :try_end_b7} :catch_cf

    move-result v19

    .line 154
    if-gez v19, :cond_e2

    .line 156
    :try_start_ba
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v15}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_c9} :catch_10f

    .line 160
    :goto_c9
    :try_start_c9
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_cf} :catch_cf

    .line 168
    :catch_cf
    move-exception v12

    .line 170
    .local v12, "e":Ljava/io/IOException;
    :try_start_d0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-static {v15}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v5

    invoke-interface {v2, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_df} :catch_10d

    .line 174
    :goto_df
    throw v12

    .line 146
    .end local v12    # "e":Ljava/io/IOException;
    :cond_e0
    const/4 v10, 0x1

    goto :goto_ac

    .line 162
    :cond_e2
    add-int v17, v17, v19

    .line 163
    const/4 v2, 0x0

    :try_start_e5
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v8, v0, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_ec} :catch_cf

    .line 164
    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_ac

    .line 165
    const/4 v10, 0x1

    goto :goto_ac

    .line 180
    :cond_f4
    :try_start_f4
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;
    :try_end_fb
    .catch Landroid/nfc/FormatException; {:try_start_f4 .. :try_end_fb} :catch_fd

    move-result-object v2

    return-object v2

    .line 181
    :catch_fd
    move-exception v11

    .line 182
    .local v11, "e":Landroid/nfc/FormatException;
    const-string/jumbo v2, "SnepMessager"

    const-string/jumbo v5, "Badly formatted NDEF message, ignoring"

    invoke-static {v2, v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 183
    new-instance v2, Lcom/android/nfc/snep/SnepException;

    invoke-direct {v2, v11}, Lcom/android/nfc/snep/SnepException;-><init>(Ljava/lang/Exception;)V

    throw v2

    .line 171
    .end local v11    # "e":Landroid/nfc/FormatException;
    .restart local v12    # "e":Ljava/io/IOException;
    :catch_10d
    move-exception v13

    .local v13, "e2":Ljava/io/IOException;
    goto :goto_df

    .line 157
    .end local v12    # "e":Ljava/io/IOException;
    .end local v13    # "e2":Ljava/io/IOException;
    :catch_10f
    move-exception v12

    .restart local v12    # "e":Ljava/io/IOException;
    goto :goto_c9

    .line 121
    .end local v4    # "requestField":B
    .end local v9    # "dataIn":Ljava/io/DataInputStream;
    .end local v12    # "e":Ljava/io/IOException;
    .local v3, "requestVersion":B
    :catch_111
    move-exception v12

    .restart local v12    # "e":Ljava/io/IOException;
    goto/16 :goto_5c

    .line 114
    .end local v12    # "e":Ljava/io/IOException;
    :catch_114
    move-exception v12

    .restart local v12    # "e":Ljava/io/IOException;
    goto/16 :goto_3b
.end method

.method public sendMessage(Lcom/android/nfc/snep/SnepMessage;)V
    .registers 13
    .param p1, "msg"    # Lcom/android/nfc/snep/SnepMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p1}, Lcom/android/nfc/snep/SnepMessage;->toByteArray()[B

    move-result-object v0

    .line 47
    .local v0, "buffer":[B
    iget-boolean v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mIsClient:Z

    if-eqz v8, :cond_1f

    .line 48
    const/16 v4, -0x80

    .line 55
    .local v4, "remoteContinue":B
    :goto_a
    array-length v8, v0

    iget v9, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 56
    .local v2, "length":I
    const/4 v8, 0x0

    invoke-static {v0, v8, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 58
    .local v7, "tmpBuffer":[B
    iget-object v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v8, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 60
    array-length v8, v0

    if-ne v2, v8, :cond_21

    .line 61
    return-void

    .line 50
    .end local v2    # "length":I
    .end local v4    # "remoteContinue":B
    .end local v7    # "tmpBuffer":[B
    :cond_1f
    const/4 v4, 0x0

    .restart local v4    # "remoteContinue":B
    goto :goto_a

    .line 65
    .restart local v2    # "length":I
    .restart local v7    # "tmpBuffer":[B
    :cond_21
    move v3, v2

    .line 66
    .local v3, "offset":I
    const/4 v8, 0x6

    new-array v5, v8, [B

    .line 67
    .local v5, "responseBytes":[B
    iget-object v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v8, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    .line 70
    :try_start_2a
    invoke-static {v5}, Lcom/android/nfc/snep/SnepMessage;->fromByteArray([B)Lcom/android/nfc/snep/SnepMessage;
    :try_end_2d
    .catch Landroid/nfc/FormatException; {:try_start_2a .. :try_end_2d} :catch_59

    move-result-object v6

    .line 76
    .local v6, "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    invoke-virtual {v6}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v8

    if-eq v8, v4, :cond_63

    .line 77
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Invalid response from server ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 78
    invoke-virtual {v6}, Lcom/android/nfc/snep/SnepMessage;->getField()B

    move-result v10

    .line 77
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 78
    const-string/jumbo v10, ")"

    .line 77
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 71
    .end local v6    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :catch_59
    move-exception v1

    .line 72
    .local v1, "e":Landroid/nfc/FormatException;
    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Invalid SNEP message"

    invoke-direct {v8, v9, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 82
    .end local v1    # "e":Landroid/nfc/FormatException;
    .restart local v6    # "snepResponse":Lcom/android/nfc/snep/SnepMessage;
    :cond_63
    :goto_63
    array-length v8, v0

    if-ge v3, v8, :cond_7b

    .line 83
    array-length v8, v0

    sub-int/2addr v8, v3

    iget v9, p0, Lcom/android/nfc/snep/SnepMessenger;->mFragmentLength:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 84
    add-int v8, v3, v2

    invoke-static {v0, v3, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 86
    iget-object v8, p0, Lcom/android/nfc/snep/SnepMessenger;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v8, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 87
    add-int/2addr v3, v2

    goto :goto_63

    .line 44
    :cond_7b
    return-void
.end method

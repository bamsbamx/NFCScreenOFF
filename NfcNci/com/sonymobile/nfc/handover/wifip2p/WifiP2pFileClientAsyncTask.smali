.class public Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;
.super Landroid/os/AsyncTask;
.source "WifiP2pFileClientAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final DBG:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "WifiP2pFileClientAsyncTask"


# instance fields
.field private mBais:Ljava/io/InputStream;

.field private final mContext:Landroid/content/Context;

.field private mFileInputstream:Ljava/io/InputStream;

.field private final mFileUri:[Landroid/net/Uri;

.field private final mHost:Ljava/lang/String;

.field private mInputstream:Ljava/io/InputStream;

.field private mOutputstream:Ljava/io/OutputStream;

.field private mSocket:Ljava/net/Socket;

.field private final mWifiP2pHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

.field private final wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/android/nfc/beam/BeamManager;->DBG:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->DBG:Ljava/lang/Boolean;

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;Landroid/content/Context;[Landroid/net/Uri;Ljava/lang/String;)V
    .registers 8
    .param p1, "wifiP2pHandover"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "uri"    # [Landroid/net/Uri;
    .param p4, "host"    # Ljava/lang/String;

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mWifiP2pHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    .line 47
    iput-object p2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {p3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/Uri;

    iput-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mFileUri:[Landroid/net/Uri;

    .line 49
    iput-object p4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mHost:Ljava/lang/String;

    .line 51
    const-string/jumbo v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 52
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "WifiP2pFileClientAsyncTask"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 45
    return-void
.end method

.method private closeConnection()V
    .registers 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mBais:Ljava/io/InputStream;

    if-eqz v1, :cond_9

    .line 136
    :try_start_4
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mBais:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_36

    .line 140
    :cond_9
    :goto_9
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mOutputstream:Ljava/io/OutputStream;

    if-eqz v1, :cond_12

    .line 142
    :try_start_d
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mOutputstream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_12} :catch_34

    .line 146
    :cond_12
    :goto_12
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mInputstream:Ljava/io/InputStream;

    if-eqz v1, :cond_1b

    .line 148
    :try_start_16
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mInputstream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_32

    .line 152
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mFileInputstream:Ljava/io/InputStream;

    if-eqz v1, :cond_24

    .line 154
    :try_start_1f
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mFileInputstream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_30

    .line 158
    :cond_24
    :goto_24
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_2d

    .line 160
    :try_start_28
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2d} :catch_2e

    .line 133
    :cond_2d
    :goto_2d
    return-void

    .line 161
    :catch_2e
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_2d

    .line 155
    .end local v0    # "e":Ljava/io/IOException;
    :catch_30
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_24

    .line 149
    .end local v0    # "e":Ljava/io/IOException;
    :catch_32
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1b

    .line 143
    .end local v0    # "e":Ljava/io/IOException;
    :catch_34
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_12

    .line 137
    .end local v0    # "e":Ljava/io/IOException;
    :catch_36
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_9
.end method

.method private createFileCountHeader(I)[B
    .registers 5
    .param p1, "numberOfFilesToSend"    # I

    .prologue
    .line 172
    const/16 v1, 0x9

    .line 174
    .local v1, "size":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 175
    .local v0, "header":Ljava/nio/ByteBuffer;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 176
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 177
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 179
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method private createFileHeader(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;)[B
    .registers 6
    .param p1, "data"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    .prologue
    .line 187
    const/16 v1, 0x9

    .line 190
    .local v1, "headerSize":I
    iget v2, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileNameLength:I

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v1, v2, 0x9

    .line 193
    iget v2, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileTypeLength:I

    add-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    .line 196
    add-int/lit8 v1, v1, 0x9

    .line 198
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 199
    .local v0, "header":Ljava/nio/ByteBuffer;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 200
    iget-wide v2, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->totalByte:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 202
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 203
    iget v2, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileNameLength:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 204
    iget-object v2, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 206
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 207
    iget v2, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileTypeLength:I

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 208
    iget-object v2, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 210
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 211
    iget-wide v2, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataSize:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 213
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method private printFileCountHeader(Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p1, "header"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 248
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 251
    .local v0, "container":[B
    const-string/jumbo v3, "WifiP2pFileClientAsyncTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "FILE_COUNT_ATR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 253
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 254
    .local v1, "temp":I
    const-string/jumbo v3, "WifiP2pFileClientAsyncTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "byte length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-array v2, v1, [B

    .line 256
    .local v2, "value":[B
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 257
    const-string/jumbo v3, "WifiP2pFileClientAsyncTask"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "number of files: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v2}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void
.end method

.method private printHeader(Ljava/nio/ByteBuffer;)V
    .registers 12
    .param p1, "header"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 261
    const/16 v5, 0x8

    new-array v0, v5, [B

    .line 262
    .local v0, "container":[B
    const/4 v5, 0x4

    new-array v1, v5, [B

    .line 265
    .local v1, "container2":[B
    const-string/jumbo v5, "WifiP2pFileClientAsyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILE_INFO_ATR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 267
    const-string/jumbo v5, "WifiP2pFileClientAsyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "total size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string/jumbo v5, "WifiP2pFileClientAsyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILE_NAME_ATR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 271
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 272
    .local v4, "temp":I
    const-string/jumbo v5, "WifiP2pFileClientAsyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "file name length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-array v2, v4, [B

    .line 274
    .local v2, "filename":[B
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 275
    const-string/jumbo v5, "WifiP2pFileClientAsyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "file name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string/jumbo v5, "WifiP2pFileClientAsyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILE_TYPE_ATR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 279
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 280
    const-string/jumbo v5, "WifiP2pFileClientAsyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "file type length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    new-array v3, v4, [B

    .line 282
    .local v3, "filetype":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 283
    const-string/jumbo v5, "WifiP2pFileClientAsyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "file name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const-string/jumbo v5, "WifiP2pFileClientAsyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FILE_DATA_ATR: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 287
    const-string/jumbo v5, "WifiP2pFileClientAsyncTask"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "file type length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v7}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void
.end method

.method private sendData(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 10
    .param p1, "dataInfo"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    const/16 v2, 0x400

    new-array v0, v2, [B

    .line 225
    .local v0, "buf":[B
    :cond_4
    :goto_4
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_18

    .line 226
    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 228
    if-eqz p1, :cond_4

    .line 229
    iget-wide v2, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataTransferred:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataTransferred:J

    goto :goto_4

    .line 221
    :cond_18
    return-void
.end method

.method private sendData(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 217
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->sendData(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 216
    return-void
.end method

.method private waitForConfirmation(Ljava/io/InputStream;)V
    .registers 7
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 235
    const/4 v3, 0x4

    new-array v0, v3, [B

    .line 238
    .local v0, "buf":[B
    :cond_3
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_2b

    .line 239
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 240
    .local v2, "result":Ljava/lang/String;
    if-eqz v2, :cond_3

    const-string/jumbo v3, "done"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 241
    sget-object v3, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2b

    const-string/jumbo v3, "WifiP2pFileClientAsyncTask"

    const-string/jumbo v4, "Received finished transfer confirmation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .end local v2    # "result":Ljava/lang/String;
    :cond_2b
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 166
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "WifiP2pFileClientAsyncTask"

    const-string/jumbo v1, "Operation was cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_11
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->closeConnection()V

    .line 165
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 63
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 66
    .local v0, "cr":Landroid/content/ContentResolver;
    :try_start_6
    new-instance v7, Ljava/net/Socket;

    invoke-direct {v7}, Ljava/net/Socket;-><init>()V

    iput-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mSocket:Ljava/net/Socket;

    .line 67
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mSocket:Ljava/net/Socket;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V

    .line 68
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mSocket:Ljava/net/Socket;

    new-instance v8, Ljava/net/InetSocketAddress;

    iget-object v9, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mHost:Ljava/lang/String;

    const/16 v10, 0x270f

    invoke-direct {v8, v9, v10}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 69
    const/16 v9, 0x4e20

    .line 68
    invoke-virtual {v7, v8, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 71
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mSocket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mOutputstream:Ljava/io/OutputStream;

    .line 74
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mFileUri:[Landroid/net/Uri;

    array-length v7, v7

    invoke-direct {p0, v7}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->createFileCountHeader(I)[B

    move-result-object v5

    .line 75
    .local v5, "fileCountHeader":[B
    sget-object v7, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_41

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->printFileCountHeader(Ljava/nio/ByteBuffer;)V

    .line 76
    :cond_41
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mBais:Ljava/io/InputStream;

    .line 77
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mBais:Ljava/io/InputStream;

    iget-object v8, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mOutputstream:Ljava/io/OutputStream;

    invoke-direct {p0, v7, v8}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->sendData(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 78
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mBais:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 81
    const/4 v4, 0x0

    .local v4, "fileCount":I
    :goto_55
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mFileUri:[Landroid/net/Uri;

    array-length v7, v7

    if-ge v4, v7, :cond_c5

    .line 83
    new-instance v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mFileUri:[Landroid/net/Uri;

    aget-object v8, v8, v4

    invoke-direct {v1, v7, v8}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 85
    .local v1, "dataInfo":Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    iget-boolean v7, v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->valid:Z

    if-nez v7, :cond_83

    .line 86
    sget-object v7, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7a

    const-string/jumbo v7, "WifiP2pFileClientAsyncTask"

    const-string/jumbo v8, "Wi-Fi P2P Data is invalid"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_7a
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_7e
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_7e} :catch_fb
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_7e} :catch_e0
    .catchall {:try_start_6 .. :try_end_7e} :catchall_116

    move-result-object v7

    .line 117
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->closeConnection()V

    .line 87
    return-object v7

    .line 89
    :cond_83
    :try_start_83
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mWifiP2pHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-virtual {v7, v1, v4}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->updateTransferInfo(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;I)V

    .line 91
    invoke-direct {p0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->createFileHeader(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;)[B

    move-result-object v6

    .line 92
    .local v6, "fileHeader":[B
    sget-object v7, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_9b

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->printHeader(Ljava/nio/ByteBuffer;)V

    .line 94
    :cond_9b
    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-direct {v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mBais:Ljava/io/InputStream;

    .line 97
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mBais:Ljava/io/InputStream;

    iget-object v8, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mOutputstream:Ljava/io/OutputStream;

    invoke-direct {p0, v7, v8}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->sendData(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 98
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mBais:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 100
    iget-object v7, v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->uri:Landroid/net/Uri;

    invoke-virtual {v0, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mFileInputstream:Ljava/io/InputStream;

    .line 103
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mFileInputstream:Ljava/io/InputStream;

    iget-object v8, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mOutputstream:Ljava/io/OutputStream;

    invoke-direct {p0, v1, v7, v8}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->sendData(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 104
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mFileInputstream:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 81
    add-int/lit8 v4, v4, 0x1

    goto :goto_55

    .line 107
    .end local v1    # "dataInfo":Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    .end local v6    # "fileHeader":[B
    :cond_c5
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mSocket:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mInputstream:Ljava/io/InputStream;

    .line 108
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mInputstream:Ljava/io/InputStream;

    invoke-direct {p0, v7}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->waitForConfirmation(Ljava/io/InputStream;)V

    .line 109
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mInputstream:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d7
    .catch Ljava/io/FileNotFoundException; {:try_start_83 .. :try_end_d7} :catch_fb
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_d7} :catch_e0
    .catchall {:try_start_83 .. :try_end_d7} :catchall_116

    .line 117
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->closeConnection()V

    .line 120
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    return-object v7

    .line 113
    .end local v4    # "fileCount":I
    .end local v5    # "fileCountHeader":[B
    :catch_e0
    move-exception v3

    .line 114
    .local v3, "e":Ljava/io/IOException;
    :try_start_e1
    sget-object v7, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_f2

    const-string/jumbo v7, "WifiP2pFileClientAsyncTask"

    const-string/jumbo v8, "Sending of data failed"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    :cond_f2
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_f6
    .catchall {:try_start_e1 .. :try_end_f6} :catchall_116

    move-result-object v7

    .line 117
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->closeConnection()V

    .line 115
    return-object v7

    .line 110
    .end local v3    # "e":Ljava/io/IOException;
    :catch_fb
    move-exception v2

    .line 111
    .local v2, "e":Ljava/io/FileNotFoundException;
    :try_start_fc
    sget-object v7, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_10d

    const-string/jumbo v7, "WifiP2pFileClientAsyncTask"

    const-string/jumbo v8, "File not found"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    :cond_10d
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_111
    .catchall {:try_start_fc .. :try_end_111} :catchall_116

    move-result-object v7

    .line 117
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->closeConnection()V

    .line 112
    return-object v7

    .line 116
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catchall_116
    move-exception v7

    .line 117
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->closeConnection()V

    .line 116
    throw v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 62
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 126
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "WifiP2pFileClientAsyncTask"

    const-string/jumbo v1, "release partial WakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_19
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 130
    :cond_1e
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->mWifiP2pHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->complete(Z)V

    .line 124
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "success"    # Ljava/lang/Object;

    .prologue
    .line 124
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "success":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 57
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "WifiP2pFileClientAsyncTask"

    const-string/jumbo v1, "acquire partial WakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_11
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileClientAsyncTask;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 56
    return-void
.end method

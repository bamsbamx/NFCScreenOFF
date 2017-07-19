.class public Lcom/android/nfc/ndefpush/NdefPushClient;
.super Ljava/lang/Object;
.source "NdefPushClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z = true

.field private static final DISCONNECTED:I = 0x0

.field private static final MIU:I = 0x80

.field private static final TAG:Ljava/lang/String; = "NdefPushClient"


# instance fields
.field final mLock:Ljava/lang/Object;

.field private mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    .line 33
    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    .prologue
    .line 131
    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 132
    :try_start_3
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1d

    if-eqz v1, :cond_18

    .line 134
    :try_start_7
    const-string/jumbo v1, "NdefPushClient"

    const-string/jumbo v3, "About to close NPP socket."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_20
    .catchall {:try_start_7 .. :try_end_15} :catchall_1d

    .line 139
    :goto_15
    const/4 v1, 0x0

    :try_start_16
    iput-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 141
    :cond_18
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1d

    monitor-exit v2

    .line 130
    return-void

    .line 131
    :catchall_1d
    move-exception v1

    monitor-exit v2

    throw v1

    .line 136
    :catch_20
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_15
.end method

.method public connect()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    iget-object v6, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 49
    :try_start_3
    iget v5, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    if-eqz v5, :cond_13

    .line 50
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v7, "Socket still in use."

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    .line 48
    :catchall_10
    move-exception v5

    monitor-exit v6

    throw v5

    .line 52
    :cond_13
    const/4 v5, 0x1

    :try_start_14
    iput v5, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_10

    monitor-exit v6

    .line 54
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    .line 55
    .local v3, "service":Lcom/android/nfc/NfcService;
    const/4 v4, 0x0

    .line 56
    .local v4, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    const-string/jumbo v5, "NdefPushClient"

    const-string/jumbo v6, "about to create socket"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v5, 0x0

    const/16 v6, 0x80

    const/4 v7, 0x1

    const/16 v8, 0x400

    :try_start_2b
    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_2e
    .catch Lcom/android/nfc/LlcpException; {:try_start_2b .. :try_end_2e} :catch_48

    move-result-object v4

    .line 66
    .local v4, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_start_2f
    const-string/jumbo v5, "NdefPushClient"

    const-string/jumbo v6, "about to connect to service com.android.npp"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string/jumbo v5, "com.android.npp"

    invoke-interface {v4, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_3e} :catch_5c

    .line 82
    iget-object v6, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 83
    :try_start_41
    iput-object v4, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 84
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_77

    monitor-exit v6

    .line 47
    return-void

    .line 59
    .local v4, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :catch_48
    move-exception v0

    .line 60
    .local v0, "e":Lcom/android/nfc/LlcpException;
    iget-object v5, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 61
    const/4 v6, 0x0

    :try_start_4d
    iput v6, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I
    :try_end_4f
    .catchall {:try_start_4d .. :try_end_4f} :catchall_59

    monitor-exit v5

    .line 63
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Could not create socket."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 60
    :catchall_59
    move-exception v6

    monitor-exit v5

    throw v6

    .line 68
    .end local v0    # "e":Lcom/android/nfc/LlcpException;
    .local v4, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :catch_5c
    move-exception v1

    .line 69
    .local v1, "e":Ljava/io/IOException;
    if-eqz v4, :cond_62

    .line 71
    :try_start_5f
    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_72

    .line 76
    :cond_62
    :goto_62
    iget-object v5, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 77
    const/4 v6, 0x0

    :try_start_66
    iput v6, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I
    :try_end_68
    .catchall {:try_start_66 .. :try_end_68} :catchall_74

    monitor-exit v5

    .line 79
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Could not connect service."

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 72
    :catch_72
    move-exception v2

    .local v2, "e2":Ljava/io/IOException;
    goto :goto_62

    .line 76
    .end local v2    # "e2":Ljava/io/IOException;
    :catchall_74
    move-exception v6

    monitor-exit v5

    throw v6

    .line 82
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_77
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public push(Landroid/nfc/NdefMessage;)Z
    .registers 15
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 89
    const/4 v6, 0x0

    .line 90
    .local v6, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    iget-object v9, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 91
    :try_start_6
    iget v8, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mState:I

    const/4 v10, 0x2

    if-eq v8, v10, :cond_16

    .line 92
    const-string/jumbo v8, "NdefPushClient"

    const-string/jumbo v10, "Not connected to NPP."

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_7e

    monitor-exit v9

    .line 93
    return v11

    .line 95
    :cond_16
    :try_start_16
    iget-object v6, p0, Lcom/android/nfc/ndefpush/NdefPushClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_18
    .catchall {:try_start_16 .. :try_end_18} :catchall_7e

    .local v6, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    monitor-exit v9

    .line 98
    new-instance v4, Lcom/android/nfc/ndefpush/NdefPushProtocol;

    invoke-direct {v4, p1, v12}, Lcom/android/nfc/ndefpush/NdefPushProtocol;-><init>(Landroid/nfc/NdefMessage;B)V

    .line 99
    .local v4, "proto":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    invoke-virtual {v4}, Lcom/android/nfc/ndefpush/NdefPushProtocol;->toByteArray()[B

    move-result-object v0

    .line 100
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 104
    .local v3, "offset":I
    :try_start_23
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v5

    .line 105
    .local v5, "remoteMiu":I
    const-string/jumbo v8, "NdefPushClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "about to send a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v0

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " byte message"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :goto_49
    array-length v8, v0

    if-ge v3, v8, :cond_81

    .line 107
    array-length v8, v0

    sub-int/2addr v8, v3

    invoke-static {v8, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 108
    .local v2, "length":I
    add-int v8, v3, v2

    invoke-static {v0, v3, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    .line 109
    .local v7, "tmpBuffer":[B
    const-string/jumbo v8, "NdefPushClient"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "about to send a "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " byte packet"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-interface {v6, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_7c} :catch_90
    .catchall {:try_start_23 .. :try_end_7c} :catchall_b2

    .line 111
    add-int/2addr v3, v2

    goto :goto_49

    .line 90
    .end local v0    # "buffer":[B
    .end local v2    # "length":I
    .end local v3    # "offset":I
    .end local v4    # "proto":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    .end local v5    # "remoteMiu":I
    .end local v7    # "tmpBuffer":[B
    .local v6, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :catchall_7e
    move-exception v8

    monitor-exit v9

    throw v8

    .line 118
    .restart local v0    # "buffer":[B
    .restart local v3    # "offset":I
    .restart local v4    # "proto":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    .restart local v5    # "remoteMiu":I
    .local v6, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :cond_81
    if-eqz v6, :cond_8f

    .line 120
    :try_start_83
    const-string/jumbo v8, "NdefPushClient"

    const-string/jumbo v9, "about to close"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_8f} :catch_c6

    .line 113
    :cond_8f
    :goto_8f
    return v12

    .line 114
    .end local v5    # "remoteMiu":I
    :catch_90
    move-exception v1

    .line 115
    .local v1, "e":Ljava/io/IOException;
    :try_start_91
    const-string/jumbo v8, "NdefPushClient"

    const-string/jumbo v9, "couldn\'t send tag"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string/jumbo v8, "NdefPushClient"

    const-string/jumbo v9, "exception:"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a3
    .catchall {:try_start_91 .. :try_end_a3} :catchall_b2

    .line 118
    if-eqz v6, :cond_b1

    .line 120
    :try_start_a5
    const-string/jumbo v8, "NdefPushClient"

    const-string/jumbo v9, "about to close"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_b1
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_b1} :catch_c4

    .line 127
    :cond_b1
    :goto_b1
    return v11

    .line 117
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_b2
    move-exception v8

    .line 118
    if-eqz v6, :cond_c1

    .line 120
    :try_start_b5
    const-string/jumbo v9, "NdefPushClient"

    const-string/jumbo v10, "about to close"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_c1} :catch_c2

    .line 117
    :cond_c1
    :goto_c1
    throw v8

    .line 122
    :catch_c2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_c1

    :catch_c4
    move-exception v1

    goto :goto_b1

    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "remoteMiu":I
    :catch_c6
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_8f
.end method

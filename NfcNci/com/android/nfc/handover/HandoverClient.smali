.class public final Lcom/android/nfc/handover/HandoverClient;
.super Ljava/lang/Object;
.source "HandoverClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z = false

.field private static final DISCONNECTED:I = 0x0

.field private static final MIU:I = 0x80

.field private static final TAG:Ljava/lang/String; = "HandoverClient"

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 86
    sget-object v2, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 87
    :try_start_3
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_14

    if-eqz v1, :cond_f

    .line 89
    :try_start_7
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_c} :catch_17
    .catchall {:try_start_7 .. :try_end_c} :catchall_14

    .line 93
    :goto_c
    const/4 v1, 0x0

    :try_start_d
    iput-object v1, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 95
    :cond_f
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    monitor-exit v2

    .line 85
    return-void

    .line 86
    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1

    .line 90
    :catch_17
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_c
.end method

.method public connect()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    sget-object v6, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 47
    :try_start_3
    iget v5, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    if-eqz v5, :cond_13

    .line 48
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v7, "Socket in use."

    invoke-direct {v5, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_10

    .line 46
    :catchall_10
    move-exception v5

    monitor-exit v6

    throw v5

    .line 50
    :cond_13
    const/4 v5, 0x1

    :try_start_14
    iput v5, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I
    :try_end_16
    .catchall {:try_start_14 .. :try_end_16} :catchall_10

    monitor-exit v6

    .line 52
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    .line 53
    .local v3, "service":Lcom/android/nfc/NfcService;
    const/4 v4, 0x0

    .line 55
    .local v4, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    const/4 v5, 0x0

    const/16 v6, 0x80

    const/4 v7, 0x1

    const/16 v8, 0x400

    :try_start_22
    invoke-virtual {v3, v5, v6, v7, v8}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_25
    .catch Lcom/android/nfc/LlcpException; {:try_start_22 .. :try_end_25} :catch_36

    move-result-object v4

    .line 65
    .local v4, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_start_26
    const-string/jumbo v5, "urn:nfc:sn:handover"

    invoke-interface {v4, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2c} :catch_4a

    .line 79
    sget-object v6, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 80
    :try_start_2f
    iput-object v4, p0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 81
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I
    :try_end_34
    .catchall {:try_start_2f .. :try_end_34} :catchall_65

    monitor-exit v6

    .line 45
    return-void

    .line 56
    .local v4, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :catch_36
    move-exception v0

    .line 57
    .local v0, "e":Lcom/android/nfc/LlcpException;
    sget-object v5, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 58
    const/4 v6, 0x0

    :try_start_3b
    iput v6, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I
    :try_end_3d
    .catchall {:try_start_3b .. :try_end_3d} :catchall_47

    monitor-exit v5

    .line 60
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Could not create socket"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 57
    :catchall_47
    move-exception v6

    monitor-exit v5

    throw v6

    .line 66
    .end local v0    # "e":Lcom/android/nfc/LlcpException;
    .local v4, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :catch_4a
    move-exception v1

    .line 67
    .local v1, "e":Ljava/io/IOException;
    if-eqz v4, :cond_50

    .line 69
    :try_start_4d
    invoke-interface {v4}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_60

    .line 74
    :cond_50
    :goto_50
    sget-object v5, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 75
    const/4 v6, 0x0

    :try_start_54
    iput v6, p0, Lcom/android/nfc/handover/HandoverClient;->mState:I
    :try_end_56
    .catchall {:try_start_54 .. :try_end_56} :catchall_62

    monitor-exit v5

    .line 77
    new-instance v5, Ljava/io/IOException;

    const-string/jumbo v6, "Could not connect to handover service"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 70
    :catch_60
    move-exception v2

    .local v2, "e2":Ljava/io/IOException;
    goto :goto_50

    .line 74
    .end local v2    # "e2":Ljava/io/IOException;
    :catchall_62
    move-exception v6

    monitor-exit v5

    throw v6

    .line 79
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_65
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public sendHandoverRequest(Landroid/nfc/NdefMessage;)Landroid/nfc/NdefMessage;
    .registers 19
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 99
    if-nez p1, :cond_4

    const/4 v14, 0x0

    return-object v14

    .line 101
    :cond_4
    const/4 v12, 0x0

    .line 102
    .local v12, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    sget-object v15, Lcom/android/nfc/handover/HandoverClient;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 103
    :try_start_8
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/nfc/handover/HandoverClient;->mState:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v14, v0, :cond_20

    .line 104
    new-instance v14, Ljava/io/IOException;

    const-string/jumbo v16, "Socket not connected"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1d

    .line 102
    :catchall_1d
    move-exception v14

    monitor-exit v15

    throw v14

    .line 106
    :cond_20
    :try_start_20
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/nfc/handover/HandoverClient;->mSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_1d

    .local v12, "sock":Lcom/android/nfc/DeviceHost$LlcpSocket;
    monitor-exit v15

    .line 108
    const/4 v8, 0x0

    .line 109
    .local v8, "offset":I
    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    .line 110
    .local v1, "buffer":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 113
    .local v2, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_2f
    invoke-interface {v12}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v10

    .line 115
    .local v10, "remoteMiu":I
    :goto_33
    array-length v14, v1

    if-ge v8, v14, :cond_47

    .line 116
    array-length v14, v1

    sub-int/2addr v14, v8

    invoke-static {v14, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 117
    .local v7, "length":I
    add-int v14, v8, v7

    invoke-static {v1, v8, v14}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    .line 119
    .local v13, "tmpBuffer":[B
    invoke-interface {v12, v13}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 120
    add-int/2addr v8, v7

    goto :goto_33

    .line 124
    .end local v7    # "length":I
    .end local v13    # "tmpBuffer":[B
    :cond_47
    invoke-interface {v12}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getLocalMiu()I

    move-result v14

    new-array v9, v14, [B

    .line 125
    .local v9, "partial":[B
    const/4 v5, 0x0

    .line 127
    .local v5, "handoverSelectMsg":Landroid/nfc/NdefMessage;
    :goto_4e
    invoke-interface {v12, v9}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_51} :catch_70
    .catchall {:try_start_2f .. :try_end_51} :catchall_7f

    move-result v11

    .line 128
    .local v11, "size":I
    if-gez v11, :cond_5d

    .line 144
    .end local v5    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    :goto_54
    if-eqz v12, :cond_59

    .line 147
    :try_start_56
    invoke-interface {v12}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_6c

    .line 153
    :cond_59
    :goto_59
    :try_start_59
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_6e

    .line 140
    :goto_5c
    return-object v5

    .line 131
    .restart local v5    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    :cond_5d
    const/4 v14, 0x0

    :try_start_5e
    invoke-virtual {v2, v9, v14, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_70
    .catchall {:try_start_5e .. :try_end_61} :catchall_7f

    .line 133
    :try_start_61
    new-instance v6, Landroid/nfc/NdefMessage;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v14

    invoke-direct {v6, v14}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_6a
    .catch Landroid/nfc/FormatException; {:try_start_61 .. :try_end_6a} :catch_8d
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_6a} :catch_70
    .catchall {:try_start_61 .. :try_end_6a} :catchall_7f

    .end local v5    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .local v6, "handoverSelectMsg":Landroid/nfc/NdefMessage;
    move-object v5, v6

    .line 135
    .end local v6    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .local v5, "handoverSelectMsg":Landroid/nfc/NdefMessage;
    goto :goto_54

    .line 148
    .end local v5    # "handoverSelectMsg":Landroid/nfc/NdefMessage;
    :catch_6c
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    goto :goto_59

    .line 154
    .end local v4    # "e":Ljava/io/IOException;
    :catch_6e
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_5c

    .line 141
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "partial":[B
    .end local v10    # "remoteMiu":I
    .end local v11    # "size":I
    :catch_70
    move-exception v4

    .line 144
    .restart local v4    # "e":Ljava/io/IOException;
    if-eqz v12, :cond_76

    .line 147
    :try_start_73
    invoke-interface {v12}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_7b

    .line 153
    :cond_76
    :goto_76
    :try_start_76
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7d

    .line 158
    :goto_79
    const/4 v14, 0x0

    return-object v14

    .line 148
    :catch_7b
    move-exception v4

    goto :goto_76

    .line 154
    :catch_7d
    move-exception v4

    goto :goto_79

    .line 143
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_7f
    move-exception v14

    .line 144
    if-eqz v12, :cond_85

    .line 147
    :try_start_82
    invoke-interface {v12}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_85} :catch_89

    .line 153
    :cond_85
    :goto_85
    :try_start_85
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_8b

    .line 143
    :goto_88
    throw v14

    .line 148
    :catch_89
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_85

    .line 154
    .end local v4    # "e":Ljava/io/IOException;
    :catch_8b
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_88

    .line 136
    .end local v4    # "e":Ljava/io/IOException;
    .local v5, "handoverSelectMsg":Landroid/nfc/NdefMessage;
    .restart local v9    # "partial":[B
    .restart local v10    # "remoteMiu":I
    .restart local v11    # "size":I
    :catch_8d
    move-exception v3

    .local v3, "e":Landroid/nfc/FormatException;
    goto :goto_4e
.end method

.class public final Lcom/android/nfc/snep/SnepClient;
.super Ljava/lang/Object;
.source "SnepClient.java"


# static fields
.field private static final CONNECTED:I = 0x2

.field private static final CONNECTING:I = 0x1

.field private static final DBG:Z = false

.field private static final DEFAULT_ACCEPTABLE_LENGTH:I = 0x19000

.field private static final DEFAULT_MIU:I = 0x80

.field private static final DEFAULT_RWSIZE:I = 0x1

.field private static final DISCONNECTED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SnepClient"


# instance fields
.field private final mAcceptableLength:I

.field private final mFragmentLength:I

.field mMessenger:Lcom/android/nfc/snep/SnepMessenger;

.field private final mMiu:I

.field private final mPort:I

.field private final mRwSize:I

.field private final mServiceName:Ljava/lang/String;

.field private mState:I

.field private final mTransmissionLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 50
    const-string/jumbo v0, "urn:nfc:sn:snep"

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 51
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 52
    const v0, 0x19000

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 54
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 55
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 49
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "miu"    # I
    .param p2, "rwSize"    # I

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 68
    const-string/jumbo v0, "urn:nfc:sn:snep"

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 70
    const v0, 0x19000

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 72
    iput p1, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 73
    iput p2, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 59
    iput-object p1, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 60
    iput v1, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 61
    const v0, 0x19000

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 62
    iput v1, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 63
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 64
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 58
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "fragmentLength"    # I

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 77
    iput-object p1, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 79
    const v0, 0x19000

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 80
    iput p2, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 81
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 76
    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "acceptableLength"    # I
    .param p3, "fragmentLength"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 86
    iput-object p1, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    .line 87
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    .line 88
    iput p2, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    .line 89
    iput p3, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    .line 90
    const/16 v0, 0x80

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    .line 91
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    .line 85
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    .line 184
    monitor-enter p0

    .line 185
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1a

    if-eqz v1, :cond_10

    .line 187
    :try_start_5
    iget-object v1, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessenger;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_12
    .catchall {:try_start_5 .. :try_end_a} :catchall_1d

    .line 191
    const/4 v1, 0x0

    :try_start_b
    iput-object v1, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 192
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/snep/SnepClient;->mState:I
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_1a

    :cond_10
    :goto_10
    monitor-exit p0

    .line 183
    return-void

    .line 188
    :catch_12
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    :try_start_14
    iput-object v1, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 192
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/nfc/snep/SnepClient;->mState:I
    :try_end_19
    .catchall {:try_start_14 .. :try_end_19} :catchall_1a

    goto :goto_10

    .line 184
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1

    .line 190
    :catchall_1d
    move-exception v1

    .line 191
    const/4 v2, 0x0

    :try_start_1f
    iput-object v2, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 192
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    .line 190
    throw v1
    :try_end_25
    .catchall {:try_start_1f .. :try_end_25} :catchall_1a
.end method

.method public connect()V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    .line 133
    monitor-enter p0

    .line 134
    :try_start_2
    iget v7, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    if-eqz v7, :cond_12

    .line 135
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Socket already in use."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_f
    .catchall {:try_start_2 .. :try_end_f} :catchall_f

    .line 133
    :catchall_f
    move-exception v7

    monitor-exit p0

    throw v7

    .line 137
    :cond_12
    const/4 v7, 0x1

    :try_start_13
    iput v7, p0, Lcom/android/nfc/snep/SnepClient;->mState:I
    :try_end_15
    .catchall {:try_start_13 .. :try_end_15} :catchall_f

    monitor-exit p0

    .line 140
    const/4 v6, 0x0

    .line 145
    .local v6, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_start_17
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    iget v8, p0, Lcom/android/nfc/snep/SnepClient;->mMiu:I

    iget v9, p0, Lcom/android/nfc/snep/SnepClient;->mRwSize:I

    const/4 v10, 0x0

    const/16 v11, 0x400

    invoke-virtual {v7, v10, v8, v9, v11}, Lcom/android/nfc/NfcService;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v6

    .line 146
    .local v6, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-nez v6, :cond_40

    .line 147
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Could not connect to socket."

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_31
    .catch Lcom/android/nfc/LlcpException; {:try_start_17 .. :try_end_31} :catch_31
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_31} :catch_66

    .line 159
    .end local v6    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :catch_31
    move-exception v0

    .line 160
    .local v0, "e":Lcom/android/nfc/LlcpException;
    monitor-enter p0

    .line 161
    const/4 v7, 0x0

    :try_start_34
    iput v7, p0, Lcom/android/nfc/snep/SnepClient;->mState:I
    :try_end_36
    .catchall {:try_start_34 .. :try_end_36} :catchall_86

    monitor-exit p0

    .line 163
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Could not connect to socket"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 149
    .end local v0    # "e":Lcom/android/nfc/LlcpException;
    .restart local v6    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :cond_40
    :try_start_40
    iget v7, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    if-ne v7, v12, :cond_60

    .line 151
    iget-object v7, p0, Lcom/android/nfc/snep/SnepClient;->mServiceName:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V

    .line 156
    :goto_49
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v5

    .line 157
    .local v5, "miu":I
    iget v7, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    if-ne v7, v12, :cond_7a

    move v3, v5

    .line 158
    .local v3, "fragmentLength":I
    :goto_52
    new-instance v4, Lcom/android/nfc/snep/SnepMessenger;

    const/4 v7, 0x1

    invoke-direct {v4, v7, v6, v3}, Lcom/android/nfc/snep/SnepMessenger;-><init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V
    :try_end_58
    .catch Lcom/android/nfc/LlcpException; {:try_start_40 .. :try_end_58} :catch_31
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_58} :catch_66

    .line 177
    .local v4, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    monitor-enter p0

    .line 178
    :try_start_59
    iput-object v4, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;

    .line 179
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/nfc/snep/SnepClient;->mState:I
    :try_end_5e
    .catchall {:try_start_59 .. :try_end_5e} :catchall_89

    monitor-exit p0

    .line 132
    return-void

    .line 154
    .end local v3    # "fragmentLength":I
    .end local v4    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .end local v5    # "miu":I
    :cond_60
    :try_start_60
    iget v7, p0, Lcom/android/nfc/snep/SnepClient;->mPort:I

    invoke-interface {v6, v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToSap(I)V
    :try_end_65
    .catch Lcom/android/nfc/LlcpException; {:try_start_60 .. :try_end_65} :catch_31
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_65} :catch_66

    goto :goto_49

    .line 164
    .end local v6    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :catch_66
    move-exception v1

    .line 165
    .local v1, "e":Ljava/io/IOException;
    if-eqz v6, :cond_6c

    .line 167
    :try_start_69
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_81

    .line 171
    :cond_6c
    :goto_6c
    monitor-enter p0

    .line 172
    const/4 v7, 0x0

    :try_start_6e
    iput v7, p0, Lcom/android/nfc/snep/SnepClient;->mState:I
    :try_end_70
    .catchall {:try_start_6e .. :try_end_70} :catchall_83

    monitor-exit p0

    .line 174
    new-instance v7, Ljava/io/IOException;

    const-string/jumbo v8, "Failed to connect to socket"

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 157
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v5    # "miu":I
    .restart local v6    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :cond_7a
    :try_start_7a
    iget v7, p0, Lcom/android/nfc/snep/SnepClient;->mFragmentLength:I

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I
    :try_end_7f
    .catch Lcom/android/nfc/LlcpException; {:try_start_7a .. :try_end_7f} :catch_31
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7f} :catch_66

    move-result v3

    .restart local v3    # "fragmentLength":I
    goto :goto_52

    .line 168
    .end local v3    # "fragmentLength":I
    .end local v5    # "miu":I
    .end local v6    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .restart local v1    # "e":Ljava/io/IOException;
    :catch_81
    move-exception v2

    .local v2, "e2":Ljava/io/IOException;
    goto :goto_6c

    .line 171
    .end local v2    # "e2":Ljava/io/IOException;
    :catchall_83
    move-exception v7

    monitor-exit p0

    throw v7

    .line 160
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "e":Lcom/android/nfc/LlcpException;
    :catchall_86
    move-exception v7

    monitor-exit p0

    throw v7

    .line 177
    .end local v0    # "e":Lcom/android/nfc/LlcpException;
    .restart local v3    # "fragmentLength":I
    .restart local v4    # "messenger":Lcom/android/nfc/snep/SnepMessenger;
    .restart local v5    # "miu":I
    .restart local v6    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :catchall_89
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public get(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .registers 6
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    monitor-enter p0

    .line 116
    :try_start_1
    iget v2, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_12

    .line 117
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Socket not connected."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 115
    :catchall_f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 119
    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_f

    .local v1, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    monitor-exit p0

    .line 122
    iget-object v3, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 124
    :try_start_18
    iget v2, p0, Lcom/android/nfc/snep/SnepClient;->mAcceptableLength:I

    invoke-static {v2, p1}, Lcom/android/nfc/snep/SnepMessage;->getGetRequest(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 125
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;
    :try_end_24
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_18 .. :try_end_24} :catch_27
    .catchall {:try_start_18 .. :try_end_24} :catchall_2e

    move-result-object v2

    monitor-exit v3

    return-object v2

    .line 126
    :catch_27
    move-exception v0

    .line 127
    .local v0, "e":Lcom/android/nfc/snep/SnepException;
    :try_start_28
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_2e

    .line 122
    .end local v0    # "e":Lcom/android/nfc/snep/SnepException;
    :catchall_2e
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public put(Landroid/nfc/NdefMessage;)V
    .registers 6
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :try_start_1
    iget v2, p0, Lcom/android/nfc/snep/SnepClient;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_12

    .line 98
    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v3, "Socket not connected."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 96
    :catchall_f
    move-exception v2

    monitor-exit p0

    throw v2

    .line 100
    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/android/nfc/snep/SnepClient;->mMessenger:Lcom/android/nfc/snep/SnepMessenger;
    :try_end_14
    .catchall {:try_start_12 .. :try_end_14} :catchall_f

    .local v1, "messenger":Lcom/android/nfc/snep/SnepMessenger;
    monitor-exit p0

    .line 103
    iget-object v3, p0, Lcom/android/nfc/snep/SnepClient;->mTransmissionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 105
    :try_start_18
    invoke-static {p1}, Lcom/android/nfc/snep/SnepMessage;->getPutRequest(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/snep/SnepMessenger;->sendMessage(Lcom/android/nfc/snep/SnepMessage;)V

    .line 106
    invoke-virtual {v1}, Lcom/android/nfc/snep/SnepMessenger;->getMessage()Lcom/android/nfc/snep/SnepMessage;
    :try_end_22
    .catch Lcom/android/nfc/snep/SnepException; {:try_start_18 .. :try_end_22} :catch_24
    .catchall {:try_start_18 .. :try_end_22} :catchall_2b

    monitor-exit v3

    .line 94
    return-void

    .line 107
    :catch_24
    move-exception v0

    .line 108
    .local v0, "e":Lcom/android/nfc/snep/SnepException;
    :try_start_25
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_2b

    .line 103
    .end local v0    # "e":Lcom/android/nfc/snep/SnepException;
    :catchall_2b
    move-exception v2

    monitor-exit v3

    throw v2
.end method

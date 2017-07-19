.class Lcom/android/nfc/handover/HandoverServer$ConnectionThread;
.super Ljava/lang/Thread;
.source "HandoverServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private final mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final synthetic this$0:Lcom/android/nfc/handover/HandoverServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/handover/HandoverServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/nfc/handover/HandoverServer;
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    .line 176
    const-string/jumbo v0, "HandoverServer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 177
    iput-object p2, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 175
    return-void
.end method

.method private startBeamReceive(Lcom/android/nfc/handover/HandoverDataParser$WifiP2pIncomingHandoverData;Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;)Z
    .registers 6
    .param p1, "wifiP2pHandoverData"    # Lcom/android/nfc/handover/HandoverDataParser$WifiP2pIncomingHandoverData;
    .param p2, "handoverData"    # Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;

    .prologue
    .line 183
    invoke-static {}, Lcom/android/nfc/beam/BeamManager;->getInstance()Lcom/android/nfc/beam/BeamManager;

    move-result-object v0

    .line 185
    .local v0, "beamManager":Lcom/android/nfc/beam/BeamManager;
    if-eqz p1, :cond_24

    .line 186
    sget-object v1, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string/jumbo v1, "HandoverServer"

    const-string/jumbo v2, "Start beam via Wi-Fi P2P"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_17
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    invoke-static {v1}, Lcom/android/nfc/handover/HandoverServer;->-get0(Lcom/android/nfc/handover/HandoverServer;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pIncomingHandoverData;->handoverData:Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/beam/BeamManager;->startBeamReceive(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;)Z

    move-result v1

    return v1

    .line 190
    :cond_24
    sget-object v1, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_35

    const-string/jumbo v1, "HandoverServer"

    const-string/jumbo v2, "Start beam via Bluetooth"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_35
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    invoke-static {v1}, Lcom/android/nfc/handover/HandoverServer;->-get0(Lcom/android/nfc/handover/HandoverServer;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;->handoverData:Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/beam/BeamManager;->startBeamReceive(Landroid/content/Context;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public run()V
    .registers 24

    .prologue
    .line 196
    sget-object v20, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_11

    const-string/jumbo v20, "HandoverServer"

    const-string/jumbo v21, "starting connection thread"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_11
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 201
    .local v4, "byteStream":Ljava/io/ByteArrayOutputStream;
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1d} :catch_7f
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1f4

    .line 202
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/nfc/handover/HandoverServer;->mServerRunning:Z

    move/from16 v16, v0
    :try_end_29
    .catchall {:try_start_1d .. :try_end_29} :catchall_7c

    .local v16, "running":Z
    :try_start_29
    monitor-exit v21

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getLocalMiu()I

    move-result v20

    move/from16 v0, v20

    new-array v14, v0, [B
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_38} :catch_7f
    .catchall {:try_start_29 .. :try_end_38} :catchall_1f4

    .line 207
    .local v14, "partial":[B
    const/4 v9, 0x0

    .local v9, "handoverRequestMsg":Landroid/nfc/NdefMessage;
    move-object v10, v9

    .local v10, "handoverRequestMsg":Landroid/nfc/NdefMessage;
    move-object v5, v4

    .line 208
    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .local v5, "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_3b
    if-eqz v16, :cond_205

    .line 209
    :try_start_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v14}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_48} :catch_f4
    .catchall {:try_start_3d .. :try_end_48} :catchall_18a

    move-result v17

    .line 210
    .local v17, "size":I
    if-gez v17, :cond_b1

    move-object v9, v10

    .line 283
    .end local v10    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v17    # "size":I
    .local v9, "handoverRequestMsg":Landroid/nfc/NdefMessage;
    :goto_4c
    :try_start_4c
    sget-object v20, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_5d

    const-string/jumbo v20, "HandoverServer"

    const-string/jumbo v21, "about to close"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_66} :catch_200

    .line 289
    :goto_66
    :try_start_66
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_1f6

    :goto_69
    move-object v4, v5

    .line 294
    .end local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v14    # "partial":[B
    .end local v16    # "running":Z
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_6a
    sget-object v20, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_7b

    const-string/jumbo v20, "HandoverServer"

    const-string/jumbo v21, "finished connection thread"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_7b
    return-void

    .line 201
    :catchall_7c
    move-exception v20

    :try_start_7d
    monitor-exit v21

    throw v20
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_7f} :catch_7f
    .catchall {:try_start_7d .. :try_end_7f} :catchall_1f4

    .line 279
    :catch_7f
    move-exception v7

    .line 280
    .local v7, "e":Ljava/io/IOException;
    :goto_80
    :try_start_80
    sget-object v20, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_91

    const-string/jumbo v20, "HandoverServer"

    const-string/jumbo v21, "IOException"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_91
    .catchall {:try_start_80 .. :try_end_91} :catchall_1f4

    .line 283
    :cond_91
    :try_start_91
    sget-object v20, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_a2

    const-string/jumbo v20, "HandoverServer"

    const-string/jumbo v21, "about to close"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_a2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_ab
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_ab} :catch_1fd

    .line 289
    :goto_ab
    :try_start_ab
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    goto :goto_6a

    .line 290
    :catch_af
    move-exception v7

    goto :goto_6a

    .line 213
    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v14    # "partial":[B
    .restart local v16    # "running":Z
    .restart local v17    # "size":I
    :cond_b1
    const/16 v20, 0x0

    :try_start_b3
    move/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v5, v14, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_ba} :catch_f4
    .catchall {:try_start_b3 .. :try_end_ba} :catchall_18a

    .line 216
    :try_start_ba
    new-instance v9, Landroid/nfc/NdefMessage;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v9, v0}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_c5
    .catch Landroid/nfc/FormatException; {:try_start_ba .. :try_end_c5} :catch_f7
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_c5} :catch_f4
    .catchall {:try_start_ba .. :try_end_c5} :catchall_18a

    .line 221
    .end local v10    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    :goto_c5
    if-eqz v9, :cond_203

    .line 222
    :try_start_c7
    invoke-static {}, Lcom/android/nfc/beam/BeamManager;->getInstance()Lcom/android/nfc/beam/BeamManager;

    move-result-object v2

    .line 224
    .local v2, "beamManager":Lcom/android/nfc/beam/BeamManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/nfc/handover/HandoverServer;->-get0(Lcom/android/nfc/handover/HandoverServer;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/nfc/beam/BeamManager;->isWifiP2pBeamInProgress(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_fa

    .line 225
    invoke-virtual {v2}, Lcom/android/nfc/beam/BeamManager;->isBeamInProgress()Z

    move-result v20

    .line 224
    if-eqz v20, :cond_fa

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer;->mCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/nfc/handover/HandoverServer$Callback;->onHandoverBusy()V

    goto/16 :goto_4c

    .line 279
    .end local v2    # "beamManager":Lcom/android/nfc/beam/BeamManager;
    .end local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v17    # "size":I
    :catch_f4
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_80

    .line 217
    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v17    # "size":I
    :catch_f7
    move-exception v6

    .local v6, "e":Landroid/nfc/FormatException;
    move-object v9, v10

    .end local v10    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    goto :goto_c5

    .line 230
    .end local v6    # "e":Landroid/nfc/FormatException;
    .restart local v2    # "beamManager":Lcom/android/nfc/beam/BeamManager;
    :cond_fa
    const/4 v8, 0x0

    .line 231
    .local v8, "handoverData":Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    const/16 v19, 0x0

    .line 232
    .local v19, "wifiP2pHandoverData":Lcom/android/nfc/handover/HandoverDataParser$WifiP2pIncomingHandoverData;
    const/4 v11, 0x0

    .line 235
    .local v11, "handoverSelect":Landroid/nfc/NdefMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/nfc/handover/HandoverServer;->-get0(Lcom/android/nfc/handover/HandoverServer;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/nfc/beam/BeamManager;->isWifiP2pBeamInProgress(Landroid/content/Context;)Z

    move-result v20

    if-nez v20, :cond_122

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/android/nfc/handover/HandoverDataParser;->getIncomingWifiP2pHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$WifiP2pIncomingHandoverData;

    move-result-object v19

    .line 240
    .end local v19    # "wifiP2pHandoverData":Lcom/android/nfc/handover/HandoverDataParser$WifiP2pIncomingHandoverData;
    :cond_122
    invoke-virtual {v2}, Lcom/android/nfc/beam/BeamManager;->isBeamInProgress()Z

    move-result v20

    if-nez v20, :cond_13c

    if-nez v19, :cond_13c

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/android/nfc/handover/HandoverDataParser;->getIncomingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;

    move-result-object v8

    .line 245
    .end local v8    # "handoverData":Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    :cond_13c
    if-eqz v19, :cond_17a

    .line 246
    move-object/from16 v0, v19

    iget-object v11, v0, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pIncomingHandoverData;->handoverSelect:Landroid/nfc/NdefMessage;

    .line 255
    .local v11, "handoverSelect":Landroid/nfc/NdefMessage;
    :goto_142
    const/4 v13, 0x0

    .line 256
    .local v13, "offset":I
    invoke-virtual {v11}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v3

    .line 257
    .local v3, "buffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v15

    .line 258
    .local v15, "remoteMiu":I
    :goto_151
    array-length v0, v3

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v13, v0, :cond_1aa

    .line 259
    array-length v0, v3

    move/from16 v20, v0

    sub-int v20, v20, v13

    move/from16 v0, v20

    invoke-static {v0, v15}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 260
    .local v12, "length":I
    add-int v20, v13, v12

    move/from16 v0, v20

    invoke-static {v3, v13, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v18

    .line 261
    .local v18, "tmpBuffer":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 262
    add-int/2addr v13, v12

    goto :goto_151

    .line 247
    .end local v3    # "buffer":[B
    .end local v12    # "length":I
    .end local v13    # "offset":I
    .end local v15    # "remoteMiu":I
    .end local v18    # "tmpBuffer":[B
    .local v11, "handoverSelect":Landroid/nfc/NdefMessage;
    :cond_17a
    if-eqz v8, :cond_17f

    .line 248
    iget-object v11, v8, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;->handoverSelect:Landroid/nfc/NdefMessage;

    .local v11, "handoverSelect":Landroid/nfc/NdefMessage;
    goto :goto_142

    .line 250
    .local v11, "handoverSelect":Landroid/nfc/NdefMessage;
    :cond_17f
    const-string/jumbo v20, "HandoverServer"

    const-string/jumbo v21, "Failed to create handover response"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_188
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_188} :catch_f4
    .catchall {:try_start_c7 .. :try_end_188} :catchall_18a

    goto/16 :goto_4c

    .line 281
    .end local v2    # "beamManager":Lcom/android/nfc/beam/BeamManager;
    .end local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v11    # "handoverSelect":Landroid/nfc/NdefMessage;
    .end local v17    # "size":I
    :catchall_18a
    move-exception v20

    move-object v4, v5

    .line 283
    .end local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "partial":[B
    .end local v16    # "running":Z
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_18c
    :try_start_18c
    sget-object v21, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-eqz v21, :cond_19d

    const-string/jumbo v21, "HandoverServer"

    const-string/jumbo v22, "about to close"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_19d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_1a6
    .catch Ljava/io/IOException; {:try_start_18c .. :try_end_1a6} :catch_1fb

    .line 289
    :goto_1a6
    :try_start_1a6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a9
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1a9} :catch_1f9

    .line 281
    :goto_1a9
    throw v20

    .line 265
    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "beamManager":Lcom/android/nfc/beam/BeamManager;
    .restart local v3    # "buffer":[B
    .restart local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .local v11, "handoverSelect":Landroid/nfc/NdefMessage;
    .restart local v13    # "offset":I
    .restart local v14    # "partial":[B
    .restart local v15    # "remoteMiu":I
    .restart local v16    # "running":Z
    .restart local v17    # "size":I
    :cond_1aa
    :try_start_1aa
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer;->mCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/nfc/handover/HandoverServer$Callback;->onHandoverRequestReceived()V

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v8}, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->startBeamReceive(Lcom/android/nfc/handover/HandoverDataParser$WifiP2pIncomingHandoverData;Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;)Z

    move-result v20

    if-nez v20, :cond_1d4

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer;->mCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/nfc/handover/HandoverServer$Callback;->onHandoverBusy()V

    goto/16 :goto_4c

    .line 271
    :cond_1d4
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1d9
    .catch Ljava/io/IOException; {:try_start_1aa .. :try_end_1d9} :catch_f4
    .catchall {:try_start_1aa .. :try_end_1d9} :catchall_18a

    .line 274
    .end local v2    # "beamManager":Lcom/android/nfc/beam/BeamManager;
    .end local v3    # "buffer":[B
    .end local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "handoverSelect":Landroid/nfc/NdefMessage;
    .end local v13    # "offset":I
    .end local v15    # "remoteMiu":I
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :goto_1d9
    :try_start_1d9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v21, v0

    monitor-enter v21
    :try_end_1e0
    .catch Ljava/io/IOException; {:try_start_1d9 .. :try_end_1e0} :catch_7f
    .catchall {:try_start_1d9 .. :try_end_1e0} :catchall_1f4

    .line 275
    :try_start_1e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/nfc/handover/HandoverServer;->mServerRunning:Z

    move/from16 v16, v0
    :try_end_1ec
    .catchall {:try_start_1e0 .. :try_end_1ec} :catchall_1f1

    :try_start_1ec
    monitor-exit v21

    move-object v10, v9

    .end local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v10    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    move-object v5, v4

    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_3b

    .line 274
    .end local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    :catchall_1f1
    move-exception v20

    monitor-exit v21

    throw v20
    :try_end_1f4
    .catch Ljava/io/IOException; {:try_start_1ec .. :try_end_1f4} :catch_7f
    .catchall {:try_start_1ec .. :try_end_1f4} :catchall_1f4

    .line 281
    .end local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v14    # "partial":[B
    .end local v16    # "running":Z
    .end local v17    # "size":I
    :catchall_1f4
    move-exception v20

    goto :goto_18c

    .line 290
    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v14    # "partial":[B
    .restart local v16    # "running":Z
    :catch_1f6
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto/16 :goto_69

    .end local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v14    # "partial":[B
    .end local v16    # "running":Z
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    :catch_1f9
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_1a9

    .line 285
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1fb
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_1a6

    :catch_1fd
    move-exception v7

    goto/16 :goto_ab

    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v14    # "partial":[B
    .restart local v16    # "running":Z
    :catch_200
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto/16 :goto_66

    .end local v7    # "e":Ljava/io/IOException;
    .restart local v17    # "size":I
    :cond_203
    move-object v4, v5

    .end local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    goto :goto_1d9

    .end local v4    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .end local v17    # "size":I
    .restart local v5    # "byteStream":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    :cond_205
    move-object v9, v10

    .end local v10    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    .restart local v9    # "handoverRequestMsg":Landroid/nfc/NdefMessage;
    goto/16 :goto_4c
.end method

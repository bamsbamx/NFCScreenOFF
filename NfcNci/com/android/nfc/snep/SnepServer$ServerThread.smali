.class Lcom/android/nfc/snep/SnepServer$ServerThread;
.super Ljava/lang/Thread;
.source "SnepServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/snep/SnepServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerThread"
.end annotation


# instance fields
.field mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field private mThreadRunning:Z

.field final synthetic this$0:Lcom/android/nfc/snep/SnepServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/snep/SnepServer;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/nfc/snep/SnepServer;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    .line 173
    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v0

    .line 181
    :try_start_3
    iget-boolean v11, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3d

    .local v11, "threadRunning":Z
    :goto_5
    monitor-exit v0

    .line 184
    if-eqz v11, :cond_10e

    .line 187
    :try_start_8
    iget-object v12, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v12
    :try_end_b
    .catch Lcom/android/nfc/LlcpException; {:try_start_8 .. :try_end_b} :catch_43
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_8a
    .catchall {:try_start_8 .. :try_end_b} :catchall_aa

    .line 188
    :try_start_b
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v1, v1, Lcom/android/nfc/snep/SnepServer;->mServiceSap:I

    .line 189
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-object v2, v2, Lcom/android/nfc/snep/SnepServer;->mServiceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v3, v3, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    iget-object v4, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v4, v4, Lcom/android/nfc/snep/SnepServer;->mRwSize:I

    const/16 v5, 0x400

    .line 188
    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_27
    .catchall {:try_start_b .. :try_end_27} :catchall_40

    :try_start_27
    monitor-exit v12

    .line 191
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_2a
    .catch Lcom/android/nfc/LlcpException; {:try_start_27 .. :try_end_2a} :catch_43
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_8a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_aa

    if-nez v0, :cond_66

    .line 229
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 230
    :try_start_2f
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_31
    .catchall {:try_start_2f .. :try_end_31} :catchall_63

    if-eqz v0, :cond_3b

    .line 233
    :try_start_33
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_38} :catch_11b
    .catchall {:try_start_33 .. :try_end_38} :catchall_63

    .line 237
    :goto_38
    const/4 v0, 0x0

    :try_start_39
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_3b
    .catchall {:try_start_39 .. :try_end_3b} :catchall_63

    :cond_3b
    monitor-exit v1

    .line 193
    return-void

    .line 180
    .end local v11    # "threadRunning":Z
    :catchall_3d
    move-exception v1

    monitor-exit v0

    throw v1

    .line 187
    .restart local v11    # "threadRunning":Z
    :catchall_40
    move-exception v0

    :try_start_41
    monitor-exit v12

    throw v0
    :try_end_43
    .catch Lcom/android/nfc/LlcpException; {:try_start_41 .. :try_end_43} :catch_43
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_43} :catch_8a
    .catchall {:try_start_41 .. :try_end_43} :catchall_aa

    .line 224
    :catch_43
    move-exception v7

    .line 225
    .local v7, "e":Lcom/android/nfc/LlcpException;
    :try_start_44
    const-string/jumbo v0, "SnepServer"

    const-string/jumbo v1, "llcp error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_44 .. :try_end_4d} :catchall_aa

    .line 229
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 230
    :try_start_50
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_105

    if-eqz v0, :cond_5c

    .line 233
    :try_start_54
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_59} :catch_111
    .catchall {:try_start_54 .. :try_end_59} :catchall_105

    .line 237
    :goto_59
    const/4 v0, 0x0

    :try_start_5a
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_5c
    .catchall {:try_start_5a .. :try_end_5c} :catchall_105

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :cond_5c
    :goto_5c
    monitor-exit v1

    .line 242
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v0

    .line 243
    :try_start_60
    iget-boolean v11, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z
    :try_end_62
    .catchall {:try_start_60 .. :try_end_62} :catchall_10b

    goto :goto_5

    .line 229
    :catchall_63
    move-exception v0

    monitor-exit v1

    throw v0

    .line 196
    :cond_66
    :try_start_66
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v0
    :try_end_69
    .catch Lcom/android/nfc/LlcpException; {:try_start_66 .. :try_end_69} :catch_43
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_8a
    .catchall {:try_start_66 .. :try_end_69} :catchall_aa

    .line 197
    :try_start_69
    iget-boolean v11, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z
    :try_end_6b
    .catchall {:try_start_69 .. :try_end_6b} :catchall_87

    :try_start_6b
    monitor-exit v0

    .line 200
    :goto_6c
    if-eqz v11, :cond_f1

    .line 202
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v0
    :try_end_71
    .catch Lcom/android/nfc/LlcpException; {:try_start_6b .. :try_end_71} :catch_43
    .catch Ljava/io/IOException; {:try_start_6b .. :try_end_71} :catch_8a
    .catchall {:try_start_6b .. :try_end_71} :catchall_aa

    .line 203
    :try_start_71
    iget-object v10, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_73
    .catchall {:try_start_71 .. :try_end_73} :catchall_a7

    .local v10, "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_start_73
    monitor-exit v0
    :try_end_74
    .catch Lcom/android/nfc/LlcpException; {:try_start_73 .. :try_end_74} :catch_43
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_74} :catch_8a
    .catchall {:try_start_73 .. :try_end_74} :catchall_aa

    .line 206
    if-nez v10, :cond_bf

    .line 229
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 230
    :try_start_79
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_7b
    .catchall {:try_start_79 .. :try_end_7b} :catchall_bc

    if-eqz v0, :cond_85

    .line 233
    :try_start_7d
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7d .. :try_end_82} :catch_118
    .catchall {:try_start_7d .. :try_end_82} :catchall_bc

    .line 237
    :goto_82
    const/4 v0, 0x0

    :try_start_83
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_85
    .catchall {:try_start_83 .. :try_end_85} :catchall_bc

    :cond_85
    monitor-exit v1

    .line 208
    return-void

    .line 196
    .end local v10    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_87
    move-exception v1

    :try_start_88
    monitor-exit v0

    throw v1
    :try_end_8a
    .catch Lcom/android/nfc/LlcpException; {:try_start_88 .. :try_end_8a} :catch_43
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8a} :catch_8a
    .catchall {:try_start_88 .. :try_end_8a} :catchall_aa

    .line 226
    :catch_8a
    move-exception v8

    .line 227
    .local v8, "e":Ljava/io/IOException;
    :try_start_8b
    const-string/jumbo v0, "SnepServer"

    const-string/jumbo v1, "IO error"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_94
    .catchall {:try_start_8b .. :try_end_94} :catchall_aa

    .line 229
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 230
    :try_start_97
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_99
    .catchall {:try_start_97 .. :try_end_99} :catchall_a4

    if-eqz v0, :cond_5c

    .line 233
    :try_start_9b
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a0} :catch_114
    .catchall {:try_start_9b .. :try_end_a0} :catchall_a4

    .line 237
    :goto_a0
    const/4 v0, 0x0

    :try_start_a1
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_a3
    .catchall {:try_start_a1 .. :try_end_a3} :catchall_a4

    goto :goto_5c

    .line 229
    :catchall_a4
    move-exception v0

    monitor-exit v1

    throw v0

    .line 202
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_a7
    move-exception v1

    :try_start_a8
    monitor-exit v0

    throw v1
    :try_end_aa
    .catch Lcom/android/nfc/LlcpException; {:try_start_a8 .. :try_end_aa} :catch_43
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_aa} :catch_8a
    .catchall {:try_start_a8 .. :try_end_aa} :catchall_aa

    .line 228
    :catchall_aa
    move-exception v0

    .line 229
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 230
    :try_start_ae
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_b0
    .catchall {:try_start_ae .. :try_end_b0} :catchall_108

    if-eqz v2, :cond_ba

    .line 233
    :try_start_b2
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_b7} :catch_10f
    .catchall {:try_start_b2 .. :try_end_b7} :catchall_108

    .line 237
    :goto_b7
    const/4 v2, 0x0

    :try_start_b8
    iput-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_ba
    .catchall {:try_start_b8 .. :try_end_ba} :catchall_108

    :cond_ba
    monitor-exit v1

    .line 228
    throw v0

    .line 229
    .restart local v10    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_bc
    move-exception v0

    monitor-exit v1

    throw v0

    .line 211
    :cond_bf
    :try_start_bf
    invoke-interface {v10}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v6

    .line 213
    .local v6, "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-eqz v6, :cond_da

    .line 214
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v0, v0, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e1

    .line 215
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v9, v0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    .line 216
    .local v9, "fragmentLength":I
    :goto_d0
    new-instance v0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;

    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    invoke-direct {v0, v1, v6, v9}, Lcom/android/nfc/snep/SnepServer$ConnectionThread;-><init>(Lcom/android/nfc/snep/SnepServer;Lcom/android/nfc/DeviceHost$LlcpSocket;I)V

    invoke-virtual {v0}, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->start()V

    .line 219
    .end local v9    # "fragmentLength":I
    :cond_da
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v0
    :try_end_dd
    .catch Lcom/android/nfc/LlcpException; {:try_start_bf .. :try_end_dd} :catch_43
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_dd} :catch_8a
    .catchall {:try_start_bf .. :try_end_dd} :catchall_aa

    .line 220
    :try_start_dd
    iget-boolean v11, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z
    :try_end_df
    .catchall {:try_start_dd .. :try_end_df} :catchall_ee

    :try_start_df
    monitor-exit v0

    goto :goto_6c

    .line 215
    :cond_e1
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v0, v0, Lcom/android/nfc/snep/SnepServer;->mMiu:I

    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget v1, v1, Lcom/android/nfc/snep/SnepServer;->mFragmentLength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v9

    .restart local v9    # "fragmentLength":I
    goto :goto_d0

    .line 219
    .end local v9    # "fragmentLength":I
    :catchall_ee
    move-exception v1

    monitor-exit v0

    throw v1
    :try_end_f1
    .catch Lcom/android/nfc/LlcpException; {:try_start_df .. :try_end_f1} :catch_43
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_f1} :catch_8a
    .catchall {:try_start_df .. :try_end_f1} :catchall_aa

    .line 229
    .end local v6    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v10    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_f1
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v1

    .line 230
    :try_start_f4
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_f6
    .catchall {:try_start_f4 .. :try_end_f6} :catchall_102

    if-eqz v0, :cond_5c

    .line 233
    :try_start_f8
    iget-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_fd} :catch_116
    .catchall {:try_start_f8 .. :try_end_fd} :catchall_102

    .line 237
    :goto_fd
    const/4 v0, 0x0

    :try_start_fe
    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_100
    .catchall {:try_start_fe .. :try_end_100} :catchall_102

    goto/16 :goto_5c

    .line 229
    :catchall_102
    move-exception v0

    monitor-exit v1

    throw v0

    .restart local v7    # "e":Lcom/android/nfc/LlcpException;
    :catchall_105
    move-exception v0

    monitor-exit v1

    throw v0

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catchall_108
    move-exception v0

    monitor-exit v1

    throw v0

    .line 242
    :catchall_10b
    move-exception v1

    monitor-exit v0

    throw v1

    .line 178
    :cond_10e
    return-void

    .line 234
    :catch_10f
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_b7

    .end local v8    # "e":Ljava/io/IOException;
    .restart local v7    # "e":Lcom/android/nfc/LlcpException;
    :catch_111
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_59

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catch_114
    move-exception v8

    goto :goto_a0

    .end local v8    # "e":Ljava/io/IOException;
    :catch_116
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_fd

    .end local v8    # "e":Ljava/io/IOException;
    .restart local v10    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_118
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_82

    .end local v8    # "e":Ljava/io/IOException;
    .end local v10    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_11b
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_38
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 249
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v2

    .line 250
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mThreadRunning:Z

    .line 251
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_14

    if-eqz v1, :cond_12

    .line 253
    :try_start_a
    iget-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_17
    .catchall {:try_start_a .. :try_end_f} :catchall_14

    .line 257
    :goto_f
    const/4 v1, 0x0

    :try_start_10
    iput-object v1, p0, Lcom/android/nfc/snep/SnepServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit v2

    .line 248
    return-void

    .line 249
    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1

    .line 254
    :catch_17
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_f
.end method

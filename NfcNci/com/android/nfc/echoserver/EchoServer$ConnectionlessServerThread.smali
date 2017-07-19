.class public Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;
.super Ljava/lang/Thread;
.source "EchoServer.java"

# interfaces
.implements Lcom/android/nfc/echoserver/EchoServer$WriteCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/echoserver/EchoServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConnectionlessServerThread"
.end annotation


# instance fields
.field final echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

.field mRemoteSap:I

.field mRunning:Z

.field socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

.field final synthetic this$0:Lcom/android/nfc/echoserver/EchoServer;


# direct methods
.method public constructor <init>(Lcom/android/nfc/echoserver/EchoServer;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/nfc/echoserver/EchoServer;

    .prologue
    const/4 v1, 0x1

    .line 283
    iput-object p1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer;

    .line 284
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 281
    iput-boolean v1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->mRunning:Z

    .line 285
    new-instance v0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;-><init>(Lcom/android/nfc/echoserver/EchoServer$WriteCallback;Z)V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    .line 283
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, "connectionBroken":Z
    sget-boolean v6, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v6, :cond_e

    const-string/jumbo v6, "EchoServer"

    const-string/jumbo v7, "about create LLCP connectionless socket"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :cond_e
    :try_start_e
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer;

    iget-object v6, v6, Lcom/android/nfc/echoserver/EchoServer;->mService:Lcom/android/nfc/NfcService;

    .line 295
    const-string/jumbo v7, "urn:nfc:sn:cl-echo"

    const/16 v8, 0x12

    .line 294
    invoke-virtual {v6, v8, v7}, Lcom/android/nfc/NfcService;->createLlcpConnectionLessSocket(ILjava/lang/String;)Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    move-result-object v6

    iput-object v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    .line 296
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-nez v6, :cond_48

    .line 297
    sget-boolean v6, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v6, :cond_2e

    const-string/jumbo v6, "EchoServer"

    const-string/jumbo v7, "failed to create LLCP connectionless socket"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catch Lcom/android/nfc/LlcpException; {:try_start_e .. :try_end_2e} :catch_ae
    .catchall {:try_start_e .. :try_end_2e} :catchall_c9

    .line 327
    :cond_2e
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v6}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown()V

    .line 329
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v6, :cond_3c

    .line 331
    :try_start_37
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3c} :catch_dd

    .line 298
    :cond_3c
    :goto_3c
    return-void

    .line 315
    .local v1, "dataUnit":[B
    .local v4, "packet":Lcom/android/nfc/LlcpPacket;
    .local v5, "size":I
    :cond_3d
    :try_start_3d
    invoke-virtual {v4}, Lcom/android/nfc/LlcpPacket;->getRemoteSap()I

    move-result v6

    iput v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->mRemoteSap:I

    .line 316
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v6, v1, v5}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->pushUnit([BI)V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_48} :catch_9e
    .catch Lcom/android/nfc/LlcpException; {:try_start_3d .. :try_end_48} :catch_ae
    .catchall {:try_start_3d .. :try_end_48} :catchall_c9

    .line 301
    .end local v1    # "dataUnit":[B
    .end local v4    # "packet":Lcom/android/nfc/LlcpPacket;
    .end local v5    # "size":I
    :cond_48
    :goto_48
    :try_start_48
    iget-boolean v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->mRunning:Z
    :try_end_4a
    .catch Lcom/android/nfc/LlcpException; {:try_start_48 .. :try_end_4a} :catch_ae
    .catchall {:try_start_48 .. :try_end_4a} :catchall_c9

    if-eqz v6, :cond_4e

    if-eqz v0, :cond_5d

    .line 327
    :cond_4e
    :goto_4e
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v6}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown()V

    .line 329
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v6, :cond_5c

    .line 331
    :try_start_57
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5c} :catch_db

    .line 289
    :cond_5c
    :goto_5c
    return-void

    .line 303
    :cond_5d
    :try_start_5d
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->receive()Lcom/android/nfc/LlcpPacket;

    move-result-object v4

    .line 304
    .restart local v4    # "packet":Lcom/android/nfc/LlcpPacket;
    if-eqz v4, :cond_4e

    invoke-virtual {v4}, Lcom/android/nfc/LlcpPacket;->getDataBuffer()[B

    move-result-object v6

    if-eqz v6, :cond_4e

    .line 307
    invoke-virtual {v4}, Lcom/android/nfc/LlcpPacket;->getDataBuffer()[B

    move-result-object v1

    .line 308
    .restart local v1    # "dataUnit":[B
    array-length v5, v1

    .line 310
    .restart local v5    # "size":I
    sget-boolean v6, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v6, :cond_9a

    const-string/jumbo v6, "EchoServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/nfc/LlcpPacket;->getDataBuffer()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " bytes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_9a} :catch_9e
    .catch Lcom/android/nfc/LlcpException; {:try_start_5d .. :try_end_9a} :catch_ae
    .catchall {:try_start_5d .. :try_end_9a} :catchall_c9

    .line 311
    :cond_9a
    if-gez v5, :cond_3d

    .line 312
    const/4 v0, 0x1

    goto :goto_4e

    .line 318
    .end local v1    # "dataUnit":[B
    .end local v4    # "packet":Lcom/android/nfc/LlcpPacket;
    .end local v5    # "size":I
    :catch_9e
    move-exception v3

    .line 320
    .local v3, "e":Ljava/io/IOException;
    const/4 v0, 0x1

    .line 321
    :try_start_a0
    sget-boolean v6, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v6, :cond_48

    const-string/jumbo v6, "EchoServer"

    const-string/jumbo v7, "connection broken by IOException"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ad
    .catch Lcom/android/nfc/LlcpException; {:try_start_a0 .. :try_end_ad} :catch_ae
    .catchall {:try_start_a0 .. :try_end_ad} :catchall_c9

    goto :goto_48

    .line 324
    .end local v3    # "e":Ljava/io/IOException;
    :catch_ae
    move-exception v2

    .line 325
    .local v2, "e":Lcom/android/nfc/LlcpException;
    :try_start_af
    const-string/jumbo v6, "EchoServer"

    const-string/jumbo v7, "llcp error"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b8
    .catchall {:try_start_af .. :try_end_b8} :catchall_c9

    .line 327
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v6}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown()V

    .line 329
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v6, :cond_5c

    .line 331
    :try_start_c1
    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c6} :catch_c7

    goto :goto_5c

    .line 332
    :catch_c7
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_5c

    .line 326
    .end local v2    # "e":Lcom/android/nfc/LlcpException;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_c9
    move-exception v6

    .line 327
    iget-object v7, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v7}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown()V

    .line 329
    iget-object v7, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    if-eqz v7, :cond_d8

    .line 331
    :try_start_d3
    iget-object v7, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d8} :catch_d9

    .line 326
    :cond_d8
    :goto_d8
    throw v6

    .line 332
    :catch_d9
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_d8

    .end local v3    # "e":Ljava/io/IOException;
    :catch_db
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_5c

    .end local v3    # "e":Ljava/io/IOException;
    :catch_dd
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto/16 :goto_3c
.end method

.method public shutdown()V
    .registers 2

    .prologue
    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->mRunning:Z

    .line 339
    return-void
.end method

.method public write([B)V
    .registers 5
    .param p1, "data"    # [B

    .prologue
    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->socket:Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;

    iget v2, p0, Lcom/android/nfc/echoserver/EchoServer$ConnectionlessServerThread;->mRemoteSap:I

    invoke-interface {v1, v2, p1}, Lcom/android/nfc/DeviceHost$LlcpConnectionlessSocket;->send(I[B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_8

    .line 344
    :cond_7
    :goto_7
    return-void

    .line 347
    :catch_8
    move-exception v0

    .line 348
    .local v0, "e":Ljava/io/IOException;
    sget-boolean v1, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v1, :cond_7

    const-string/jumbo v1, "EchoServer"

    const-string/jumbo v2, "Error writing data."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

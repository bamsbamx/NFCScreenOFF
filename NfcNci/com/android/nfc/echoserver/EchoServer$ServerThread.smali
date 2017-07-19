.class public Lcom/android/nfc/echoserver/EchoServer$ServerThread;
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
    name = "ServerThread"
.end annotation


# instance fields
.field clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

.field running:Z

.field serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field final synthetic this$0:Lcom/android/nfc/echoserver/EchoServer;


# direct methods
.method public constructor <init>(Lcom/android/nfc/echoserver/EchoServer;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/nfc/echoserver/EchoServer;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer;

    .line 176
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 171
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->running:Z

    .line 177
    new-instance v0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;-><init>(Lcom/android/nfc/echoserver/EchoServer$WriteCallback;Z)V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    .line 175
    return-void
.end method

.method private handleClient(Lcom/android/nfc/DeviceHost$LlcpSocket;)V
    .registers 9
    .param p1, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "connectionBroken":Z
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 185
    .local v1, "dataUnit":[B
    :cond_5
    :goto_5
    if-nez v0, :cond_33

    .line 187
    :try_start_7
    invoke-interface {p1, v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v3

    .line 188
    .local v3, "size":I
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v4, :cond_30

    const-string/jumbo v4, "EchoServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " bytes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_30
    if-gez v3, :cond_34

    .line 190
    const/4 v0, 0x1

    .line 180
    .end local v3    # "size":I
    :cond_33
    return-void

    .line 193
    .restart local v3    # "size":I
    :cond_34
    iget-object v4, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v4, v1, v3}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->pushUnit([BI)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_39} :catch_3a

    goto :goto_5

    .line 195
    .end local v3    # "size":I
    :catch_3a
    move-exception v2

    .line 197
    .local v2, "e":Ljava/io/IOException;
    const/4 v0, 0x1

    .line 198
    sget-boolean v4, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v4, :cond_5

    const-string/jumbo v4, "EchoServer"

    const-string/jumbo v5, "connection broken by IOException"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 205
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v0, :cond_f

    const-string/jumbo v0, "EchoServer"

    const-string/jumbo v1, "about create LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->this$0:Lcom/android/nfc/echoserver/EchoServer;

    iget-object v0, v0, Lcom/android/nfc/echoserver/EchoServer;->mService:Lcom/android/nfc/NfcService;

    .line 208
    const-string/jumbo v2, "urn:nfc:sn:co-echo"

    .line 207
    const/16 v1, 0x11

    .line 208
    const/16 v3, 0x80

    const/4 v4, 0x1

    const/16 v5, 0x400

    .line 207
    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_23
    .catch Lcom/android/nfc/LlcpException; {:try_start_f .. :try_end_23} :catch_35

    .line 212
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-nez v0, :cond_37

    .line 213
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v0, :cond_34

    const-string/jumbo v0, "EchoServer"

    const-string/jumbo v1, "failed to create LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_34
    return-void

    .line 209
    :catch_35
    move-exception v6

    .line 210
    .local v6, "e":Lcom/android/nfc/LlcpException;
    return-void

    .line 216
    .end local v6    # "e":Lcom/android/nfc/LlcpException;
    :cond_37
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v0, :cond_44

    const-string/jumbo v0, "EchoServer"

    const-string/jumbo v1, "created LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_44
    :goto_44
    iget-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->running:Z

    if-eqz v0, :cond_9d

    .line 221
    :try_start_48
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v0, :cond_55

    const-string/jumbo v0, "EchoServer"

    const-string/jumbo v1, "about to accept"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_55
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 223
    sget-boolean v0, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v0, :cond_7d

    const-string/jumbo v0, "EchoServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "accept returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_7d
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-direct {p0, v0}, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->handleClient(Lcom/android/nfc/DeviceHost$LlcpSocket;)V
    :try_end_82
    .catch Lcom/android/nfc/LlcpException; {:try_start_48 .. :try_end_82} :catch_83
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_82} :catch_90

    goto :goto_44

    .line 225
    :catch_83
    move-exception v6

    .line 226
    .restart local v6    # "e":Lcom/android/nfc/LlcpException;
    const-string/jumbo v0, "EchoServer"

    const-string/jumbo v1, "llcp error"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 227
    iput-boolean v9, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->running:Z

    goto :goto_44

    .line 228
    .end local v6    # "e":Lcom/android/nfc/LlcpException;
    :catch_90
    move-exception v7

    .line 229
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v0, "EchoServer"

    const-string/jumbo v1, "IO error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    iput-boolean v9, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->running:Z

    goto :goto_44

    .line 234
    .end local v7    # "e":Ljava/io/IOException;
    :cond_9d
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->echoMachine:Lcom/android/nfc/echoserver/EchoServer$EchoMachine;

    invoke-virtual {v0}, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown()V

    .line 237
    :try_start_a2
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a7} :catch_b3

    .line 241
    :goto_a7
    iput-object v8, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 244
    :try_start_a9
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ae} :catch_b1

    .line 248
    :goto_ae
    iput-object v8, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 204
    return-void

    .line 245
    :catch_b1
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_ae

    .line 238
    .end local v7    # "e":Ljava/io/IOException;
    :catch_b3
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    goto :goto_a7
.end method

.method public shutdown()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 264
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->running:Z

    .line 265
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v1, :cond_f

    .line 267
    :try_start_8
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_10

    .line 271
    :goto_d
    iput-object v2, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->serverSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    .line 263
    :cond_f
    return-void

    .line 268
    :catch_10
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_d
.end method

.method public write([B)V
    .registers 5
    .param p1, "data"    # [B

    .prologue
    .line 253
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    if-eqz v1, :cond_12

    .line 255
    :try_start_4
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$ServerThread;->clientSocket:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v1, p1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V

    .line 256
    const-string/jumbo v1, "EchoServer"

    const-string/jumbo v2, "Send success!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_12} :catch_13

    .line 252
    :cond_12
    :goto_12
    return-void

    .line 257
    :catch_13
    move-exception v0

    .line 258
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "EchoServer"

    const-string/jumbo v2, "Send failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

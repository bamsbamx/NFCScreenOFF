.class Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;
.super Ljava/lang/Thread;
.source "NdefPushServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/ndefpush/NdefPushServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final synthetic this$0:Lcom/android/nfc/ndefpush/NdefPushServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/ndefpush/NdefPushServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/nfc/ndefpush/NdefPushServer;
    .param p2, "sock"    # Lcom/android/nfc/DeviceHost$LlcpSocket;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    .line 67
    const-string/jumbo v0, "NdefPushServer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 68
    iput-object p2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 66
    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 73
    const-string/jumbo v7, "NdefPushServer"

    const-string/jumbo v8, "starting connection thread"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :try_start_9
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x400

    invoke-direct {v0, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 76
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x400

    new-array v5, v7, [B
    :try_end_14
    .catch Landroid/nfc/FormatException; {:try_start_9 .. :try_end_14} :catch_9d
    .catchall {:try_start_9 .. :try_end_14} :catchall_b8

    .line 78
    .local v5, "partial":[B
    const/4 v1, 0x0

    .line 81
    .local v1, "connectionBroken":Z
    :goto_15
    if-nez v1, :cond_41

    .line 83
    :try_start_17
    iget-object v7, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v7, v5}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I

    move-result v6

    .line 84
    .local v6, "size":I
    const-string/jumbo v7, "NdefPushServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "read "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_3e} :catch_90
    .catch Landroid/nfc/FormatException; {:try_start_17 .. :try_end_3e} :catch_9d
    .catchall {:try_start_17 .. :try_end_3e} :catchall_b8

    .line 85
    if-gez v6, :cond_8b

    .line 86
    const/4 v1, 0x1

    .line 99
    .end local v6    # "size":I
    :cond_41
    :try_start_41
    new-instance v4, Lcom/android/nfc/ndefpush/NdefPushProtocol;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/nfc/ndefpush/NdefPushProtocol;-><init>([B)V

    .line 100
    .local v4, "msg":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    const-string/jumbo v7, "NdefPushServer"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "got message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/nfc/ndefpush/NdefPushProtocol;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v7, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    iget-object v7, v7, Lcom/android/nfc/ndefpush/NdefPushServer;->mCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    invoke-virtual {v4}, Lcom/android/nfc/ndefpush/NdefPushProtocol;->getImmediate()Landroid/nfc/NdefMessage;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/nfc/ndefpush/NdefPushServer$Callback;->onMessageReceived(Landroid/nfc/NdefMessage;)V
    :try_end_73
    .catch Landroid/nfc/FormatException; {:try_start_41 .. :try_end_73} :catch_9d
    .catchall {:try_start_41 .. :try_end_73} :catchall_b8

    .line 108
    :try_start_73
    const-string/jumbo v7, "NdefPushServer"

    const-string/jumbo v8, "about to close"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v7, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_81} :catch_ca

    .line 114
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "connectionBroken":Z
    .end local v4    # "msg":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    .end local v5    # "partial":[B
    :goto_81
    const-string/jumbo v7, "NdefPushServer"

    const-string/jumbo v8, "finished connection thread"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void

    .line 89
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "connectionBroken":Z
    .restart local v5    # "partial":[B
    .restart local v6    # "size":I
    :cond_8b
    const/4 v7, 0x0

    :try_start_8c
    invoke-virtual {v0, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90
    .catch Landroid/nfc/FormatException; {:try_start_8c .. :try_end_8f} :catch_9d
    .catchall {:try_start_8c .. :try_end_8f} :catchall_b8

    goto :goto_15

    .line 91
    .end local v6    # "size":I
    :catch_90
    move-exception v3

    .line 93
    .local v3, "e":Ljava/io/IOException;
    const/4 v1, 0x1

    .line 94
    :try_start_92
    const-string/jumbo v7, "NdefPushServer"

    const-string/jumbo v8, "connection broken by IOException"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9b
    .catch Landroid/nfc/FormatException; {:try_start_92 .. :try_end_9b} :catch_9d
    .catchall {:try_start_92 .. :try_end_9b} :catchall_b8

    goto/16 :goto_15

    .line 104
    .end local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "connectionBroken":Z
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "partial":[B
    :catch_9d
    move-exception v2

    .line 105
    .local v2, "e":Landroid/nfc/FormatException;
    :try_start_9e
    const-string/jumbo v7, "NdefPushServer"

    const-string/jumbo v8, "badly formatted NDEF message, ignoring"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a7
    .catchall {:try_start_9e .. :try_end_a7} :catchall_b8

    .line 108
    :try_start_a7
    const-string/jumbo v7, "NdefPushServer"

    const-string/jumbo v8, "about to close"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v7, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_b5} :catch_b6

    goto :goto_81

    .line 110
    :catch_b6
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_81

    .line 106
    .end local v2    # "e":Landroid/nfc/FormatException;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_b8
    move-exception v7

    .line 108
    :try_start_b9
    const-string/jumbo v8, "NdefPushServer"

    const-string/jumbo v9, "about to close"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v8, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v8}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_c7} :catch_c8

    .line 106
    :goto_c7
    throw v7

    .line 110
    :catch_c8
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_c7

    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "connectionBroken":Z
    .restart local v4    # "msg":Lcom/android/nfc/ndefpush/NdefPushProtocol;
    .restart local v5    # "partial":[B
    :catch_ca
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_81
.end method

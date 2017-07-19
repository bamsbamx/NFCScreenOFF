.class Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;
.super Ljava/lang/Thread;
.source "NdefPushServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/ndefpush/NdefPushServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServerThread"
.end annotation


# instance fields
.field mRunning:Z

.field mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field final synthetic this$0:Lcom/android/nfc/ndefpush/NdefPushServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/ndefpush/NdefPushServer;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/nfc/ndefpush/NdefPushServer;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z

    .line 119
    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v0

    .line 128
    :try_start_3
    iget-boolean v10, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_52

    .local v10, "threadRunning":Z
    :goto_5
    monitor-exit v0

    .line 130
    if-eqz v10, :cond_16e

    .line 131
    const-string/jumbo v0, "NdefPushServer"

    const-string/jumbo v1, "about create LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :try_start_11
    iget-object v11, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v11
    :try_end_14
    .catch Lcom/android/nfc/LlcpException; {:try_start_11 .. :try_end_14} :catch_58
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_ba
    .catchall {:try_start_11 .. :try_end_14} :catchall_e3

    .line 134
    :try_start_14
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    iget-object v0, v0, Lcom/android/nfc/ndefpush/NdefPushServer;->mService:Lcom/android/nfc/NfcService;

    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    iget v1, v1, Lcom/android/nfc/ndefpush/NdefPushServer;->mSap:I

    const-string/jumbo v2, "com.android.npp"

    .line 135
    const/16 v3, 0xf8

    const/4 v4, 0x1

    const/16 v5, 0x400

    .line 134
    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_55

    :try_start_2a
    monitor-exit v11

    .line 137
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-nez v0, :cond_84

    .line 138
    const-string/jumbo v0, "NdefPushServer"

    const-string/jumbo v1, "failed to create LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Lcom/android/nfc/LlcpException; {:try_start_2a .. :try_end_38} :catch_58
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_38} :catch_ba
    .catchall {:try_start_2a .. :try_end_38} :catchall_e3

    .line 170
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 171
    :try_start_3b
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_50

    .line 172
    const-string/jumbo v0, "NdefPushServer"

    const-string/jumbo v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_3b .. :try_end_48} :catchall_81

    .line 174
    :try_start_48
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4d} :catch_17c
    .catchall {:try_start_48 .. :try_end_4d} :catchall_81

    .line 178
    :goto_4d
    const/4 v0, 0x0

    :try_start_4e
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_50
    .catchall {:try_start_4e .. :try_end_50} :catchall_81

    :cond_50
    monitor-exit v1

    .line 139
    return-void

    .line 127
    .end local v10    # "threadRunning":Z
    :catchall_52
    move-exception v1

    monitor-exit v0

    throw v1

    .line 133
    .restart local v10    # "threadRunning":Z
    :catchall_55
    move-exception v0

    :try_start_56
    monitor-exit v11

    throw v0
    :try_end_58
    .catch Lcom/android/nfc/LlcpException; {:try_start_56 .. :try_end_58} :catch_58
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_58} :catch_ba
    .catchall {:try_start_56 .. :try_end_58} :catchall_e3

    .line 165
    :catch_58
    move-exception v7

    .line 166
    .local v7, "e":Lcom/android/nfc/LlcpException;
    :try_start_59
    const-string/jumbo v0, "NdefPushServer"

    const-string/jumbo v1, "llcp error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_62
    .catchall {:try_start_59 .. :try_end_62} :catchall_e3

    .line 170
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 171
    :try_start_65
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_7a

    .line 172
    const-string/jumbo v0, "NdefPushServer"

    const-string/jumbo v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_65 .. :try_end_72} :catchall_165

    .line 174
    :try_start_72
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_77} :catch_171
    .catchall {:try_start_72 .. :try_end_77} :catchall_165

    .line 178
    :goto_77
    const/4 v0, 0x0

    :try_start_78
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_7a
    .catchall {:try_start_78 .. :try_end_7a} :catchall_165

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :cond_7a
    :goto_7a
    monitor-exit v1

    .line 183
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v0

    .line 184
    :try_start_7e
    iget-boolean v10, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z
    :try_end_80
    .catchall {:try_start_7e .. :try_end_80} :catchall_16b

    goto :goto_5

    .line 170
    :catchall_81
    move-exception v0

    monitor-exit v1

    throw v0

    .line 141
    :cond_84
    :try_start_84
    const-string/jumbo v0, "NdefPushServer"

    const-string/jumbo v1, "created LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v0
    :try_end_90
    .catch Lcom/android/nfc/LlcpException; {:try_start_84 .. :try_end_90} :catch_58
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_90} :catch_ba
    .catchall {:try_start_84 .. :try_end_90} :catchall_e3

    .line 143
    :try_start_90
    iget-boolean v10, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z
    :try_end_92
    .catchall {:try_start_90 .. :try_end_92} :catchall_b7

    :try_start_92
    monitor-exit v0

    .line 146
    :goto_93
    if-eqz v10, :cond_13f

    .line 148
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v0
    :try_end_98
    .catch Lcom/android/nfc/LlcpException; {:try_start_92 .. :try_end_98} :catch_58
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_98} :catch_ba
    .catchall {:try_start_92 .. :try_end_98} :catchall_e3

    .line 149
    :try_start_98
    iget-object v9, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_9a
    .catchall {:try_start_98 .. :try_end_9a} :catchall_e0

    .local v9, "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_start_9a
    monitor-exit v0
    :try_end_9b
    .catch Lcom/android/nfc/LlcpException; {:try_start_9a .. :try_end_9b} :catch_58
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9b} :catch_ba
    .catchall {:try_start_9a .. :try_end_9b} :catchall_e3

    .line 151
    if-nez v9, :cond_101

    .line 170
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 171
    :try_start_a0
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_b5

    .line 172
    const-string/jumbo v0, "NdefPushServer"

    const-string/jumbo v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_a0 .. :try_end_ad} :catchall_fe

    .line 174
    :try_start_ad
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_ad .. :try_end_b2} :catch_179
    .catchall {:try_start_ad .. :try_end_b2} :catchall_fe

    .line 178
    :goto_b2
    const/4 v0, 0x0

    :try_start_b3
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_b5
    .catchall {:try_start_b3 .. :try_end_b5} :catchall_fe

    :cond_b5
    monitor-exit v1

    .line 151
    return-void

    .line 142
    .end local v9    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_b7
    move-exception v1

    :try_start_b8
    monitor-exit v0

    throw v1
    :try_end_ba
    .catch Lcom/android/nfc/LlcpException; {:try_start_b8 .. :try_end_ba} :catch_58
    .catch Ljava/io/IOException; {:try_start_b8 .. :try_end_ba} :catch_ba
    .catchall {:try_start_b8 .. :try_end_ba} :catchall_e3

    .line 167
    :catch_ba
    move-exception v8

    .line 168
    .local v8, "e":Ljava/io/IOException;
    :try_start_bb
    const-string/jumbo v0, "NdefPushServer"

    const-string/jumbo v1, "IO error"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c4
    .catchall {:try_start_bb .. :try_end_c4} :catchall_e3

    .line 170
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 171
    :try_start_c7
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_7a

    .line 172
    const-string/jumbo v0, "NdefPushServer"

    const-string/jumbo v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d4
    .catchall {:try_start_c7 .. :try_end_d4} :catchall_dd

    .line 174
    :try_start_d4
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d9} :catch_174
    .catchall {:try_start_d4 .. :try_end_d9} :catchall_dd

    .line 178
    :goto_d9
    const/4 v0, 0x0

    :try_start_da
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_dc
    .catchall {:try_start_da .. :try_end_dc} :catchall_dd

    goto :goto_7a

    .line 170
    :catchall_dd
    move-exception v0

    monitor-exit v1

    throw v0

    .line 148
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_e0
    move-exception v1

    :try_start_e1
    monitor-exit v0

    throw v1
    :try_end_e3
    .catch Lcom/android/nfc/LlcpException; {:try_start_e1 .. :try_end_e3} :catch_58
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e3} :catch_ba
    .catchall {:try_start_e1 .. :try_end_e3} :catchall_e3

    .line 169
    :catchall_e3
    move-exception v0

    .line 170
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 171
    :try_start_e7
    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v2, :cond_fc

    .line 172
    const-string/jumbo v2, "NdefPushServer"

    const-string/jumbo v3, "about to close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f4
    .catchall {:try_start_e7 .. :try_end_f4} :catchall_168

    .line 174
    :try_start_f4
    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f9} :catch_16f
    .catchall {:try_start_f4 .. :try_end_f9} :catchall_168

    .line 178
    :goto_f9
    const/4 v2, 0x0

    :try_start_fa
    iput-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_fc
    .catchall {:try_start_fa .. :try_end_fc} :catchall_168

    :cond_fc
    monitor-exit v1

    .line 169
    throw v0

    .line 170
    .restart local v9    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_fe
    move-exception v0

    monitor-exit v1

    throw v0

    .line 153
    :cond_101
    :try_start_101
    const-string/jumbo v0, "NdefPushServer"

    const-string/jumbo v1, "about to accept"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-interface {v9}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v6

    .line 155
    .local v6, "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    const-string/jumbo v0, "NdefPushServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "accept returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    if-eqz v6, :cond_134

    .line 157
    new-instance v0, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;

    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    invoke-direct {v0, v1, v6}, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;-><init>(Lcom/android/nfc/ndefpush/NdefPushServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;->start()V

    .line 160
    :cond_134
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v0
    :try_end_137
    .catch Lcom/android/nfc/LlcpException; {:try_start_101 .. :try_end_137} :catch_58
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_137} :catch_ba
    .catchall {:try_start_101 .. :try_end_137} :catchall_e3

    .line 161
    :try_start_137
    iget-boolean v10, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z
    :try_end_139
    .catchall {:try_start_137 .. :try_end_139} :catchall_13c

    :try_start_139
    monitor-exit v0

    goto/16 :goto_93

    .line 160
    :catchall_13c
    move-exception v1

    monitor-exit v0

    throw v1

    .line 164
    .end local v6    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v9    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_13f
    const-string/jumbo v0, "NdefPushServer"

    const-string/jumbo v1, "stop running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_148
    .catch Lcom/android/nfc/LlcpException; {:try_start_139 .. :try_end_148} :catch_58
    .catch Ljava/io/IOException; {:try_start_139 .. :try_end_148} :catch_ba
    .catchall {:try_start_139 .. :try_end_148} :catchall_e3

    .line 170
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v1

    .line 171
    :try_start_14b
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_7a

    .line 172
    const-string/jumbo v0, "NdefPushServer"

    const-string/jumbo v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_158
    .catchall {:try_start_14b .. :try_end_158} :catchall_162

    .line 174
    :try_start_158
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_15d
    .catch Ljava/io/IOException; {:try_start_158 .. :try_end_15d} :catch_177
    .catchall {:try_start_158 .. :try_end_15d} :catchall_162

    .line 178
    :goto_15d
    const/4 v0, 0x0

    :try_start_15e
    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_160
    .catchall {:try_start_15e .. :try_end_160} :catchall_162

    goto/16 :goto_7a

    .line 170
    :catchall_162
    move-exception v0

    monitor-exit v1

    throw v0

    .restart local v7    # "e":Lcom/android/nfc/LlcpException;
    :catchall_165
    move-exception v0

    monitor-exit v1

    throw v0

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catchall_168
    move-exception v0

    monitor-exit v1

    throw v0

    .line 183
    :catchall_16b
    move-exception v1

    monitor-exit v0

    throw v1

    .line 125
    :cond_16e
    return-void

    .line 175
    :catch_16f
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_f9

    .end local v8    # "e":Ljava/io/IOException;
    .restart local v7    # "e":Lcom/android/nfc/LlcpException;
    :catch_171
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_77

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catch_174
    move-exception v8

    goto/16 :goto_d9

    .end local v8    # "e":Ljava/io/IOException;
    :catch_177
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_15d

    .end local v8    # "e":Ljava/io/IOException;
    .restart local v9    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_179
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_b2

    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_17c
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_4d
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 190
    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->this$0:Lcom/android/nfc/ndefpush/NdefPushServer;

    monitor-enter v2

    .line 191
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mRunning:Z

    .line 192
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_14

    if-eqz v1, :cond_12

    .line 194
    :try_start_a
    iget-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_17
    .catchall {:try_start_a .. :try_end_f} :catchall_14

    .line 198
    :goto_f
    const/4 v1, 0x0

    :try_start_10
    iput-object v1, p0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit v2

    .line 189
    return-void

    .line 190
    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1

    .line 195
    :catch_17
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_f
.end method

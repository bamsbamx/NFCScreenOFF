.class Lcom/android/nfc/handover/HandoverServer$ServerThread;
.super Ljava/lang/Thread;
.source "HandoverServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServerThread"
.end annotation


# instance fields
.field mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

.field private mThreadRunning:Z

.field final synthetic this$0:Lcom/android/nfc/handover/HandoverServer;


# direct methods
.method private constructor <init>(Lcom/android/nfc/handover/HandoverServer;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/nfc/handover/HandoverServer;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    .line 85
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/handover/HandoverServer;Lcom/android/nfc/handover/HandoverServer$ServerThread;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/nfc/handover/HandoverServer;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverServer$ServerThread;-><init>(Lcom/android/nfc/handover/HandoverServer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v0

    .line 93
    :try_start_3
    iget-boolean v10, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_59

    .local v10, "threadRunning":Z
    :goto_5
    monitor-exit v0

    .line 96
    if-eqz v10, :cond_1d0

    .line 98
    :try_start_8
    iget-object v11, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v11
    :try_end_b
    .catch Lcom/android/nfc/LlcpException; {:try_start_8 .. :try_end_b} :catch_5f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_b} :catch_eb
    .catchall {:try_start_8 .. :try_end_b} :catchall_11d

    .line 99
    :try_start_b
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    iget v1, v1, Lcom/android/nfc/handover/HandoverServer;->mSap:I

    .line 100
    const-string/jumbo v2, "urn:nfc:sn:handover"

    const/16 v3, 0x80

    const/4 v4, 0x1

    const/16 v5, 0x400

    .line 99
    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/NfcService;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_5c

    :try_start_21
    monitor-exit v11

    .line 102
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-nez v0, :cond_94

    .line 103
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_37

    const-string/jumbo v0, "HandoverServer"

    const-string/jumbo v1, "failed to create LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Lcom/android/nfc/LlcpException; {:try_start_21 .. :try_end_37} :catch_5f
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_37} :catch_eb
    .catchall {:try_start_21 .. :try_end_37} :catchall_11d

    .line 138
    :cond_37
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 139
    :try_start_3a
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_57

    .line 140
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string/jumbo v0, "HandoverServer"

    const-string/jumbo v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_3a .. :try_end_4f} :catchall_91

    .line 142
    :cond_4f
    :try_start_4f
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_54} :catch_1df
    .catchall {:try_start_4f .. :try_end_54} :catchall_91

    .line 146
    :goto_54
    const/4 v0, 0x0

    :try_start_55
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_57
    .catchall {:try_start_55 .. :try_end_57} :catchall_91

    :cond_57
    monitor-exit v1

    .line 104
    return-void

    .line 92
    .end local v10    # "threadRunning":Z
    :catchall_59
    move-exception v1

    monitor-exit v0

    throw v1

    .line 98
    .restart local v10    # "threadRunning":Z
    :catchall_5c
    move-exception v0

    :try_start_5d
    monitor-exit v11

    throw v0
    :try_end_5f
    .catch Lcom/android/nfc/LlcpException; {:try_start_5d .. :try_end_5f} :catch_5f
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_5f} :catch_eb
    .catchall {:try_start_5d .. :try_end_5f} :catchall_11d

    .line 133
    :catch_5f
    move-exception v7

    .line 134
    .local v7, "e":Lcom/android/nfc/LlcpException;
    :try_start_60
    const-string/jumbo v0, "HandoverServer"

    const-string/jumbo v1, "llcp error"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_11d

    .line 138
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 139
    :try_start_6c
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_89

    .line 140
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_81

    const-string/jumbo v0, "HandoverServer"

    const-string/jumbo v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_6c .. :try_end_81} :catchall_1c7

    .line 142
    :cond_81
    :try_start_81
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_86} :catch_1d4
    .catchall {:try_start_81 .. :try_end_86} :catchall_1c7

    .line 146
    :goto_86
    const/4 v0, 0x0

    :try_start_87
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_89
    .catchall {:try_start_87 .. :try_end_89} :catchall_1c7

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :cond_89
    :goto_89
    monitor-exit v1

    .line 151
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v0

    .line 152
    :try_start_8d
    iget-boolean v10, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z
    :try_end_8f
    .catchall {:try_start_8d .. :try_end_8f} :catchall_1cd

    goto/16 :goto_5

    .line 138
    :catchall_91
    move-exception v0

    monitor-exit v1

    throw v0

    .line 106
    :cond_94
    :try_start_94
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a5

    const-string/jumbo v0, "HandoverServer"

    const-string/jumbo v1, "created LLCP service socket"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_a5
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v0
    :try_end_a8
    .catch Lcom/android/nfc/LlcpException; {:try_start_94 .. :try_end_a8} :catch_5f
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_a8} :catch_eb
    .catchall {:try_start_94 .. :try_end_a8} :catchall_11d

    .line 108
    :try_start_a8
    iget-boolean v10, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z
    :try_end_aa
    .catchall {:try_start_a8 .. :try_end_aa} :catchall_e8

    :try_start_aa
    monitor-exit v0

    .line 111
    :goto_ab
    if-eqz v10, :cond_191

    .line 113
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v0
    :try_end_b0
    .catch Lcom/android/nfc/LlcpException; {:try_start_aa .. :try_end_b0} :catch_5f
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_b0} :catch_eb
    .catchall {:try_start_aa .. :try_end_b0} :catchall_11d

    .line 114
    :try_start_b0
    iget-object v9, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_b2
    .catchall {:try_start_b0 .. :try_end_b2} :catchall_11a

    .local v9, "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_start_b2
    monitor-exit v0

    .line 117
    if-nez v9, :cond_143

    .line 118
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c6

    const-string/jumbo v0, "HandoverServer"

    const-string/jumbo v1, "Server socket shut down."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c6
    .catch Lcom/android/nfc/LlcpException; {:try_start_b2 .. :try_end_c6} :catch_5f
    .catch Ljava/io/IOException; {:try_start_b2 .. :try_end_c6} :catch_eb
    .catchall {:try_start_b2 .. :try_end_c6} :catchall_11d

    .line 138
    :cond_c6
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 139
    :try_start_c9
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_e6

    .line 140
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_de

    const-string/jumbo v0, "HandoverServer"

    const-string/jumbo v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_de
    .catchall {:try_start_c9 .. :try_end_de} :catchall_140

    .line 142
    :cond_de
    :try_start_de
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e3} :catch_1dc
    .catchall {:try_start_de .. :try_end_e3} :catchall_140

    .line 146
    :goto_e3
    const/4 v0, 0x0

    :try_start_e4
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_e6
    .catchall {:try_start_e4 .. :try_end_e6} :catchall_140

    :cond_e6
    monitor-exit v1

    .line 119
    return-void

    .line 107
    .end local v9    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_e8
    move-exception v1

    :try_start_e9
    monitor-exit v0

    throw v1
    :try_end_eb
    .catch Lcom/android/nfc/LlcpException; {:try_start_e9 .. :try_end_eb} :catch_5f
    .catch Ljava/io/IOException; {:try_start_e9 .. :try_end_eb} :catch_eb
    .catchall {:try_start_e9 .. :try_end_eb} :catchall_11d

    .line 135
    :catch_eb
    move-exception v8

    .line 136
    .local v8, "e":Ljava/io/IOException;
    :try_start_ec
    const-string/jumbo v0, "HandoverServer"

    const-string/jumbo v1, "IO error"

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f5
    .catchall {:try_start_ec .. :try_end_f5} :catchall_11d

    .line 138
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 139
    :try_start_f8
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_89

    .line 140
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10d

    const-string/jumbo v0, "HandoverServer"

    const-string/jumbo v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10d
    .catchall {:try_start_f8 .. :try_end_10d} :catchall_117

    .line 142
    :cond_10d
    :try_start_10d
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_112
    .catch Ljava/io/IOException; {:try_start_10d .. :try_end_112} :catch_1d7
    .catchall {:try_start_10d .. :try_end_112} :catchall_117

    .line 146
    :goto_112
    const/4 v0, 0x0

    :try_start_113
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_115
    .catchall {:try_start_113 .. :try_end_115} :catchall_117

    goto/16 :goto_89

    .line 138
    :catchall_117
    move-exception v0

    monitor-exit v1

    throw v0

    .line 113
    .end local v8    # "e":Ljava/io/IOException;
    :catchall_11a
    move-exception v1

    :try_start_11b
    monitor-exit v0

    throw v1
    :try_end_11d
    .catch Lcom/android/nfc/LlcpException; {:try_start_11b .. :try_end_11d} :catch_5f
    .catch Ljava/io/IOException; {:try_start_11b .. :try_end_11d} :catch_eb
    .catchall {:try_start_11b .. :try_end_11d} :catchall_11d

    .line 137
    :catchall_11d
    move-exception v0

    .line 138
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 139
    :try_start_121
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v2, :cond_13e

    .line 140
    sget-object v2, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_136

    const-string/jumbo v2, "HandoverServer"

    const-string/jumbo v3, "about to close"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_136
    .catchall {:try_start_121 .. :try_end_136} :catchall_1ca

    .line 142
    :cond_136
    :try_start_136
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_136 .. :try_end_13b} :catch_1d1
    .catchall {:try_start_136 .. :try_end_13b} :catchall_1ca

    .line 146
    :goto_13b
    const/4 v2, 0x0

    :try_start_13c
    iput-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_13e
    .catchall {:try_start_13c .. :try_end_13e} :catchall_1ca

    :cond_13e
    monitor-exit v1

    .line 137
    throw v0

    .line 138
    .restart local v9    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catchall_140
    move-exception v0

    monitor-exit v1

    throw v0

    .line 121
    :cond_143
    :try_start_143
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_154

    const-string/jumbo v0, "HandoverServer"

    const-string/jumbo v1, "about to accept"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_154
    invoke-interface {v9}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v6

    .line 123
    .local v6, "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17a

    const-string/jumbo v0, "HandoverServer"

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

    .line 124
    :cond_17a
    if-eqz v6, :cond_186

    .line 125
    new-instance v0, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;

    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    invoke-direct {v0, v1, v6}, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;-><init>(Lcom/android/nfc/handover/HandoverServer;Lcom/android/nfc/DeviceHost$LlcpSocket;)V

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer$ConnectionThread;->start()V

    .line 128
    :cond_186
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v0
    :try_end_189
    .catch Lcom/android/nfc/LlcpException; {:try_start_143 .. :try_end_189} :catch_5f
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_189} :catch_eb
    .catchall {:try_start_143 .. :try_end_189} :catchall_11d

    .line 129
    :try_start_189
    iget-boolean v10, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z
    :try_end_18b
    .catchall {:try_start_189 .. :try_end_18b} :catchall_18e

    :try_start_18b
    monitor-exit v0

    goto/16 :goto_ab

    .line 128
    :catchall_18e
    move-exception v1

    monitor-exit v0

    throw v1

    .line 132
    .end local v6    # "communicationSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    .end local v9    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_191
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a2

    const-string/jumbo v0, "HandoverServer"

    const-string/jumbo v1, "stop running"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a2
    .catch Lcom/android/nfc/LlcpException; {:try_start_18b .. :try_end_1a2} :catch_5f
    .catch Ljava/io/IOException; {:try_start_18b .. :try_end_1a2} :catch_eb
    .catchall {:try_start_18b .. :try_end_1a2} :catchall_11d

    .line 138
    :cond_1a2
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v1

    .line 139
    :try_start_1a5
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    if-eqz v0, :cond_89

    .line 140
    sget-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1ba

    const-string/jumbo v0, "HandoverServer"

    const-string/jumbo v2, "about to close"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ba
    .catchall {:try_start_1a5 .. :try_end_1ba} :catchall_1c4

    .line 142
    :cond_1ba
    :try_start_1ba
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1bf
    .catch Ljava/io/IOException; {:try_start_1ba .. :try_end_1bf} :catch_1da
    .catchall {:try_start_1ba .. :try_end_1bf} :catchall_1c4

    .line 146
    :goto_1bf
    const/4 v0, 0x0

    :try_start_1c0
    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_1c2
    .catchall {:try_start_1c0 .. :try_end_1c2} :catchall_1c4

    goto/16 :goto_89

    .line 138
    :catchall_1c4
    move-exception v0

    monitor-exit v1

    throw v0

    .restart local v7    # "e":Lcom/android/nfc/LlcpException;
    :catchall_1c7
    move-exception v0

    monitor-exit v1

    throw v0

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catchall_1ca
    move-exception v0

    monitor-exit v1

    throw v0

    .line 151
    :catchall_1cd
    move-exception v1

    monitor-exit v0

    throw v1

    .line 90
    :cond_1d0
    return-void

    .line 143
    :catch_1d1
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_13b

    .end local v8    # "e":Ljava/io/IOException;
    .restart local v7    # "e":Lcom/android/nfc/LlcpException;
    :catch_1d4
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_86

    .end local v7    # "e":Lcom/android/nfc/LlcpException;
    :catch_1d7
    move-exception v8

    goto/16 :goto_112

    .end local v8    # "e":Ljava/io/IOException;
    :catch_1da
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto :goto_1bf

    .end local v8    # "e":Ljava/io/IOException;
    .restart local v9    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_1dc
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_e3

    .end local v8    # "e":Ljava/io/IOException;
    .end local v9    # "serverSocket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_1df
    move-exception v8

    .restart local v8    # "e":Ljava/io/IOException;
    goto/16 :goto_54
.end method

.method public shutdown()V
    .registers 4

    .prologue
    .line 158
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->this$0:Lcom/android/nfc/handover/HandoverServer;

    monitor-enter v2

    .line 159
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mThreadRunning:Z

    .line 160
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_14

    if-eqz v1, :cond_12

    .line 162
    :try_start_a
    iget-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_17
    .catchall {:try_start_a .. :try_end_f} :catchall_14

    .line 166
    :goto_f
    const/4 v1, 0x0

    :try_start_10
    iput-object v1, p0, Lcom/android/nfc/handover/HandoverServer$ServerThread;->mServerSocket:Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_12
    .catchall {:try_start_10 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit v2

    .line 157
    return-void

    .line 158
    :catchall_14
    move-exception v1

    monitor-exit v2

    throw v1

    .line 163
    :catch_17
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_f
.end method

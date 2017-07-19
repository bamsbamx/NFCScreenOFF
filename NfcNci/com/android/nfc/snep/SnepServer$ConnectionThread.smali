.class Lcom/android/nfc/snep/SnepServer$ConnectionThread;
.super Ljava/lang/Thread;
.source "SnepServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/snep/SnepServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionThread"
.end annotation


# instance fields
.field private final mMessager:Lcom/android/nfc/snep/SnepMessenger;

.field private final mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

.field final synthetic this$0:Lcom/android/nfc/snep/SnepServer;


# direct methods
.method constructor <init>(Lcom/android/nfc/snep/SnepServer;Lcom/android/nfc/DeviceHost$LlcpSocket;I)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/nfc/snep/SnepServer;
    .param p2, "socket"    # Lcom/android/nfc/DeviceHost$LlcpSocket;
    .param p3, "fragmentLength"    # I

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    .line 102
    const-string/jumbo v0, "SnepServer"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 103
    iput-object p2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    .line 104
    new-instance v0, Lcom/android/nfc/snep/SnepMessenger;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p3}, Lcom/android/nfc/snep/SnepMessenger;-><init>(ZLcom/android/nfc/DeviceHost$LlcpSocket;I)V

    iput-object v0, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mMessager:Lcom/android/nfc/snep/SnepMessenger;

    .line 101
    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 112
    :try_start_0
    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_1f
    .catchall {:try_start_0 .. :try_end_3} :catchall_31

    .line 113
    :try_start_3
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-boolean v1, v2, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_1c

    .local v1, "running":Z
    :try_start_7
    monitor-exit v3

    .line 116
    :goto_8
    if-eqz v1, :cond_16

    .line 117
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mMessager:Lcom/android/nfc/snep/SnepMessenger;

    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-object v3, v3, Lcom/android/nfc/snep/SnepServer;->mCallback:Lcom/android/nfc/snep/SnepServer$Callback;

    invoke-static {v2, v3}, Lcom/android/nfc/snep/SnepServer;->handleRequest(Lcom/android/nfc/snep/SnepMessenger;Lcom/android/nfc/snep/SnepServer$Callback;)Z
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_13} :catch_1f
    .catchall {:try_start_7 .. :try_end_13} :catchall_31

    move-result v2

    if-nez v2, :cond_28

    .line 130
    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1b} :catch_3d

    .line 108
    .end local v1    # "running":Z
    :goto_1b
    return-void

    .line 112
    :catchall_1c
    move-exception v2

    :try_start_1d
    monitor-exit v3

    throw v2
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1f} :catch_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_31

    .line 125
    :catch_1f
    move-exception v0

    .line 130
    .local v0, "e":Ljava/io/IOException;
    :try_start_20
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_26

    goto :goto_1b

    .line 131
    :catch_26
    move-exception v0

    goto :goto_1b

    .line 121
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "running":Z
    :cond_28
    :try_start_28
    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    monitor-enter v3
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_1f
    .catchall {:try_start_28 .. :try_end_2b} :catchall_31

    .line 122
    :try_start_2b
    iget-object v2, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->this$0:Lcom/android/nfc/snep/SnepServer;

    iget-boolean v1, v2, Lcom/android/nfc/snep/SnepServer;->mServerRunning:Z
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_38

    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_30} :catch_1f
    .catchall {:try_start_2f .. :try_end_30} :catchall_31

    goto :goto_8

    .line 127
    .end local v1    # "running":Z
    :catchall_31
    move-exception v2

    .line 130
    :try_start_32
    iget-object v3, p0, Lcom/android/nfc/snep/SnepServer$ConnectionThread;->mSock:Lcom/android/nfc/DeviceHost$LlcpSocket;

    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_37} :catch_3b

    .line 127
    :goto_37
    throw v2

    .line 121
    .restart local v1    # "running":Z
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v3

    throw v2
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3b} :catch_1f
    .catchall {:try_start_39 .. :try_end_3b} :catchall_31

    .line 131
    .end local v1    # "running":Z
    :catch_3b
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_37

    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "running":Z
    :catch_3d
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1b
.end method

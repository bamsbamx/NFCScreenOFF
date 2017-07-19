.class Lcom/android/nfc/echoserver/EchoServer$EchoMachine;
.super Ljava/lang/Object;
.source "EchoServer.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/echoserver/EchoServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EchoMachine"
.end annotation


# static fields
.field static final ECHO_DELAY_IN_MS:I = 0x7d0

.field static final ECHO_MIU:I = 0x80

.field static final QUEUE_SIZE:I = 0x2


# instance fields
.field final callback:Lcom/android/nfc/echoserver/EchoServer$WriteCallback;

.field final dataQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<[B>;"
        }
    .end annotation
.end field

.field final dumpWhenFull:Z

.field final handler:Landroid/os/Handler;

.field shutdown:Z


# direct methods
.method constructor <init>(Lcom/android/nfc/echoserver/EchoServer$WriteCallback;Z)V
    .registers 5
    .param p1, "callback"    # Lcom/android/nfc/echoserver/EchoServer$WriteCallback;
    .param p2, "dumpWhenFull"    # Z

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown:Z

    .line 113
    iput-object p1, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->callback:Lcom/android/nfc/echoserver/EchoServer$WriteCallback;

    .line 114
    iput-boolean p2, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->dumpWhenFull:Z

    .line 115
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    .line 116
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->handler:Landroid/os/Handler;

    .line 112
    return-void
.end method


# virtual methods
.method public declared-synchronized handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    monitor-enter p0

    .line 160
    :try_start_2
    iget-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_1e

    if-eqz v0, :cond_8

    monitor-exit p0

    return v2

    .line 161
    :cond_8
    :goto_8
    :try_start_8
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    .line 162
    iget-object v1, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->callback:Lcom/android/nfc/echoserver/EchoServer$WriteCallback;

    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {v1, v0}, Lcom/android/nfc/echoserver/EchoServer$WriteCallback;->write([B)V
    :try_end_1d
    .catchall {:try_start_8 .. :try_end_1d} :catchall_1e

    goto :goto_8

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_21
    monitor-exit p0

    .line 164
    return v2
.end method

.method public pushUnit([BI)V
    .registers 13
    .param p1, "unit"    # [B
    .param p2, "size"    # I

    .prologue
    .line 120
    iget-boolean v5, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->dumpWhenFull:Z

    if-eqz v5, :cond_1a

    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result v5

    if-nez v5, :cond_1a

    .line 121
    sget-boolean v5, Lcom/android/nfc/echoserver/EchoServer;->DBG:Z

    if-eqz v5, :cond_19

    const-string/jumbo v5, "EchoServer"

    const-string/jumbo v6, "Dumping data unit"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_19
    :goto_19
    return-void

    .line 125
    :cond_1a
    move v4, p2

    .line 126
    .local v4, "sizeLeft":I
    const/4 v3, 0x0

    .line 127
    .local v3, "offset":I
    :try_start_1c
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_31

    .line 129
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->handler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->handler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x7d0

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 132
    :cond_31
    if-nez p2, :cond_3b

    .line 134
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    const/4 v6, 0x0

    new-array v6, v6, [B

    invoke-interface {v5, v6}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 136
    :cond_3b
    :goto_3b
    if-lez v4, :cond_19

    .line 137
    const/16 v5, 0x80

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 138
    .local v2, "minSize":I
    new-array v0, v2, [B

    .line 139
    .local v0, "data":[B
    const/4 v5, 0x0

    invoke-static {p1, v3, v0, v5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 140
    iget-object v5, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v5, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_4e
    .catch Ljava/lang/InterruptedException; {:try_start_1c .. :try_end_4e} :catch_51

    .line 141
    sub-int/2addr v4, v2

    .line 142
    add-int/2addr v3, v2

    goto :goto_3b

    .line 144
    .end local v0    # "data":[B
    .end local v2    # "minSize":I
    :catch_51
    move-exception v1

    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_19
.end method

.method public declared-synchronized shutdown()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 154
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->dataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/echoserver/EchoServer$EchoMachine;->shutdown:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    .line 153
    return-void

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

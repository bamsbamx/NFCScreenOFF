.class Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
.super Ljava/lang/Thread;
.source "NativeNfcTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/dhimpl/NativeNfcTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PresenceCheckWatchdog"
.end annotation


# instance fields
.field private doCheck:Z

.field private isPaused:Z

.field private isPresent:Z

.field private isStopped:Z

.field private final tagDisconnectedCallback:Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

.field final synthetic this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

.field private final watchdogTimeout:I


# direct methods
.method public constructor <init>(Lcom/android/nfc/dhimpl/NativeNfcTag;ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/nfc/dhimpl/NativeNfcTag;
    .param p2, "presenceCheckDelay"    # I
    .param p3, "callback"    # Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 105
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 100
    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPresent:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isStopped:Z

    .line 102
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPaused:Z

    .line 103
    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    .line 107
    iput p2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->watchdogTimeout:I

    .line 108
    iput-object p3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->tagDisconnectedCallback:Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

    .line 106
    return-void
.end method


# virtual methods
.method public declared-synchronized doResume()V
    .registers 5

    .prologue
    monitor-enter p0

    .line 118
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    invoke-static {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->-wrap0(Lcom/android/nfc/dhimpl/NativeNfcTag;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_35

    move-result v1

    if-nez v1, :cond_17

    .line 120
    :try_start_9
    const-string/jumbo v1, "NativeNfcTag"

    const-string/jumbo v2, "wait 2msec for Discovering check."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-wide/16 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->wait(J)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_17} :catch_2a
    .catchall {:try_start_9 .. :try_end_17} :catchall_35

    .line 126
    :cond_17
    :goto_17
    :try_start_17
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    invoke-static {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->-wrap1(Lcom/android/nfc/dhimpl/NativeNfcTag;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 127
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isStopped:Z

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    .line 135
    :goto_25
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->notifyAll()V
    :try_end_28
    .catchall {:try_start_17 .. :try_end_28} :catchall_35

    monitor-exit p0

    .line 117
    return-void

    .line 122
    :catch_2a
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2b
    const-string/jumbo v1, "NativeNfcTag"

    const-string/jumbo v2, "doResume: wait failed."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catchall {:try_start_2b .. :try_end_34} :catchall_35

    goto :goto_17

    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_35
    move-exception v1

    monitor-exit p0

    throw v1

    .line 130
    :cond_38
    const/4 v1, 0x0

    :try_start_39
    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPaused:Z

    .line 133
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_35

    goto :goto_25
.end method

.method public declared-synchronized end()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 139
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isStopped:Z

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    .line 141
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->notifyAll()V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    monitor-exit p0

    .line 138
    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized pause()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 112
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPaused:Z

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    .line 114
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->notifyAll()V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    monitor-exit p0

    .line 111
    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 146
    monitor-enter p0

    .line 147
    :try_start_1
    const-string/jumbo v1, "NativeNfcTag"

    const-string/jumbo v2, "Starting background presence check"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_a
    :goto_a
    iget-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPresent:Z

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isStopped:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_5d

    if-eqz v1, :cond_41

    :cond_12
    monitor-exit p0

    .line 170
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->-set0(Lcom/android/nfc/dhimpl/NativeNfcTag;Z)Z

    .line 173
    const-string/jumbo v1, "NativeNfcTag"

    const-string/jumbo v2, "Tag lost, restarting polling loop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doDisconnect()Z

    .line 175
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->tagDisconnectedCallback:Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

    if-eqz v1, :cond_37

    .line 176
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->tagDisconnectedCallback:Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    invoke-static {v2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->-get0(Lcom/android/nfc/dhimpl/NativeNfcTag;)I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;->onTagDisconnected(J)V

    .line 178
    :cond_37
    const-string/jumbo v1, "NativeNfcTag"

    const-string/jumbo v2, "Stopping background presence check"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 150
    :cond_41
    :try_start_41
    iget-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPaused:Z

    if-nez v1, :cond_48

    .line 151
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    .line 153
    :cond_48
    iget v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->watchdogTimeout:I

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->wait(J)V

    .line 154
    iget-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doCheck:Z

    if-eqz v1, :cond_a

    .line 155
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->this$0:Lcom/android/nfc/dhimpl/NativeNfcTag;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doPresenceCheck()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->isPresent:Z
    :try_end_5a
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_5a} :catch_5b
    .catchall {:try_start_41 .. :try_end_5a} :catchall_5d

    goto :goto_a

    .line 164
    :catch_5b
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_a

    .line 146
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_5d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

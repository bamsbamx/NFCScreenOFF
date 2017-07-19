.class Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;
.super Landroid/os/Handler;
.source "HostNfcFEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 293
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v4, v3, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 294
    :try_start_5
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v3, v3, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-nez v3, :cond_16

    .line 295
    const-string/jumbo v3, "HostNfcFEmulationManager"

    const-string/jumbo v5, "Dropping service response message; service no longer active."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_42

    monitor-exit v4

    .line 296
    return-void

    .line 297
    :cond_16
    :try_start_16
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v5, v5, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v5}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 298
    const-string/jumbo v3, "HostNfcFEmulationManager"

    const-string/jumbo v5, "Dropping service response message; service no longer bound."

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_42

    monitor-exit v4

    .line 299
    return-void

    :cond_35
    monitor-exit v4

    .line 302
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7d

    .line 303
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 304
    .local v1, "dataBundle":Landroid/os/Bundle;
    if-nez v1, :cond_45

    .line 305
    return-void

    .line 293
    .end local v1    # "dataBundle":Landroid/os/Bundle;
    :catchall_42
    move-exception v3

    monitor-exit v4

    throw v3

    .line 307
    .restart local v1    # "dataBundle":Landroid/os/Bundle;
    :cond_45
    const-string/jumbo v3, "data"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 316
    .local v0, "data":[B
    if-eqz v0, :cond_60

    array-length v3, v0

    const/4 v4, 0x0

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    if-eq v3, v4, :cond_60

    .line 317
    const-string/jumbo v3, "HostNfcFEmulationManager"

    const-string/jumbo v4, "Invalid response packet"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-void

    .line 321
    :cond_60
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v4, v3, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 322
    :try_start_65
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget v2, v3, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_7e

    .local v2, "state":I
    monitor-exit v4

    .line 324
    const/4 v3, 0x2

    if-ne v2, v3, :cond_81

    .line 325
    const-string/jumbo v3, "HostNfcFEmulationManager"

    const-string/jumbo v4, "Sending data"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/nfc/NfcService;->sendData([B)Z

    .line 292
    .end local v0    # "data":[B
    .end local v1    # "dataBundle":Landroid/os/Bundle;
    .end local v2    # "state":I
    :cond_7d
    :goto_7d
    return-void

    .line 321
    .restart local v0    # "data":[B
    .restart local v1    # "dataBundle":Landroid/os/Bundle;
    :catchall_7e
    move-exception v3

    monitor-exit v4

    throw v3

    .line 329
    .restart local v2    # "state":I
    :cond_81
    const-string/jumbo v3, "HostNfcFEmulationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Dropping data, wrong state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7d
.end method

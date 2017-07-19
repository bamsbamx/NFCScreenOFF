.class Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;
.super Landroid/os/Handler;
.source "HostEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/HostEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/HostEmulationManager;

    .prologue
    .line 499
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 502
    iget-object v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v6, v5, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 503
    :try_start_5
    iget-object v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v5, v5, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-nez v5, :cond_16

    .line 504
    const-string/jumbo v5, "HostEmulationManager"

    const-string/jumbo v7, "Dropping service response message; service no longer active."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_42

    monitor-exit v6

    .line 505
    return-void

    .line 506
    :cond_16
    :try_start_16
    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v5}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v7, v7, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v7}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    .line 507
    const-string/jumbo v5, "HostEmulationManager"

    const-string/jumbo v7, "Dropping service response message; service no longer bound."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_16 .. :try_end_33} :catchall_42

    monitor-exit v6

    .line 508
    return-void

    :cond_35
    monitor-exit v6

    .line 511
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9b

    .line 512
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 513
    .local v1, "dataBundle":Landroid/os/Bundle;
    if-nez v1, :cond_45

    .line 514
    return-void

    .line 502
    .end local v1    # "dataBundle":Landroid/os/Bundle;
    :catchall_42
    move-exception v5

    monitor-exit v6

    throw v5

    .line 516
    .restart local v1    # "dataBundle":Landroid/os/Bundle;
    :cond_45
    const-string/jumbo v5, "data"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 517
    .local v0, "data":[B
    if-eqz v0, :cond_51

    array-length v5, v0

    if-nez v5, :cond_5b

    .line 518
    :cond_51
    const-string/jumbo v5, "HostEmulationManager"

    const-string/jumbo v6, "Dropping empty R-APDU"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return-void

    .line 522
    :cond_5b
    iget-object v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v6, v5, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 523
    :try_start_60
    iget-object v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget v4, v5, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_79

    .local v4, "state":I
    monitor-exit v6

    .line 525
    const/4 v5, 0x4

    if-ne v4, v5, :cond_7c

    .line 526
    const-string/jumbo v5, "HostEmulationManager"

    const-string/jumbo v6, "Sending data"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/nfc/NfcService;->sendData([B)Z

    .line 501
    .end local v0    # "data":[B
    .end local v1    # "dataBundle":Landroid/os/Bundle;
    .end local v4    # "state":I
    :cond_78
    :goto_78
    return-void

    .line 522
    .restart local v0    # "data":[B
    .restart local v1    # "dataBundle":Landroid/os/Bundle;
    :catchall_79
    move-exception v5

    monitor-exit v6

    throw v5

    .line 529
    .restart local v4    # "state":I
    :cond_7c
    const-string/jumbo v5, "HostEmulationManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Dropping data, wrong state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_78

    .line 531
    .end local v0    # "data":[B
    .end local v1    # "dataBundle":Landroid/os/Bundle;
    .end local v4    # "state":I
    :cond_9b
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_78

    .line 532
    iget-object v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v6, v5, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 533
    :try_start_a5
    iget-object v5, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v5, v5, Lcom/android/nfc/cardemulation/HostEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v7, v7, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLastSelectedAid:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v3

    .line 534
    .local v3, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    const/4 v2, 0x0

    .line 535
    .local v2, "isPayment":Z
    iget-object v5, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_c9

    .line 536
    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v5, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    .line 537
    iget-object v8, p0, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;->this$0:Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v8, v8, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    iget-object v9, v3, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 536
    invoke-virtual {v7, v5, v8, v9}, Lcom/android/nfc/cardemulation/HostEmulationManager;->launchResolver(Ljava/util/ArrayList;Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_c9
    .catchall {:try_start_a5 .. :try_end_c9} :catchall_cb

    :cond_c9
    monitor-exit v6

    goto :goto_78

    .line 532
    .end local v2    # "isPayment":Z
    .end local v3    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :catchall_cb
    move-exception v5

    monitor-exit v6

    throw v5
.end method

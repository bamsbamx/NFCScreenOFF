.class public Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;
.super Ljava/lang/Object;
.source "WifiP2pTransferNotificationHandler.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler$Callback;
    }
.end annotation


# static fields
.field private static final NOTIFICATION_INTERVAL:I = 0x3e8

.field private static final TRANSFER_NOTIFICATION:I


# instance fields
.field private final mCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler$Callback;

.field private mCurrentFileCount:I

.field private mDataInfo:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mPrevByteTransferred:J

.field private mProgress:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler$Callback;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler$Callback;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler$Callback;

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mHandler:Landroid/os/Handler;

    .line 29
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 53
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_42

    .line 71
    return v6

    .line 55
    :pswitch_7
    const/4 v0, 0x0

    .line 57
    .local v0, "isProgressOccurred":Z
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mDataInfo:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    if-eqz v1, :cond_2a

    .line 58
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mDataInfo:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    iget-wide v2, v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataTransferred:J

    iget-wide v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mPrevByteTransferred:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2a

    .line 59
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mDataInfo:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    iget-wide v2, v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataTransferred:J

    iput-wide v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mPrevByteTransferred:J

    .line 60
    const/4 v0, 0x1

    .line 61
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mDataInfo:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    iget-wide v2, v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataTransferred:J

    long-to-float v1, v2

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mDataInfo:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    iget-wide v2, v2, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataSize:J

    long-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mProgress:F

    .line 64
    :cond_2a
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler$Callback;

    iget v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mProgress:F

    iget v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mCurrentFileCount:I

    invoke-interface {v1, v2, v3, v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler$Callback;->updateTransferProgress(FIZ)V

    .line 66
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mHandler:Landroid/os/Handler;

    .line 67
    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    .line 66
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 68
    const/4 v1, 0x1

    return v1

    .line 53
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method public start()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 35
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 36
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 34
    :cond_14
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 42
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 40
    :cond_e
    return-void
.end method

.method public updateTransferInfo(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;I)V
    .registers 3
    .param p1, "data"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    .param p2, "fileCount"    # I

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mDataInfo:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    .line 48
    iput p2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pTransferNotificationHandler;->mCurrentFileCount:I

    .line 46
    return-void
.end method

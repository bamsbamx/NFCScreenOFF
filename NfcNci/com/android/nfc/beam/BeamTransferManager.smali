.class public Lcom/android/nfc/beam/BeamTransferManager;
.super Ljava/lang/Object;
.source "BeamTransferManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/beam/BeamTransferManager$Callback;
    }
.end annotation


# static fields
.field static final ACTION_STOP_BLUETOOTH_TRANSFER:Ljava/lang/String; = "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

.field static final ACTION_WHITELIST_DEVICE:Ljava/lang/String; = "android.btopp.intent.action.WHITELIST_DEVICE"

.field static final ALIVE_CHECK_MS:I = 0x4e20

.field static final BEAM_DIR:Ljava/lang/String; = "beam"

.field static final DATA_LINK_TYPE_BLUETOOTH:I = 0x1

.field static final DBG:Ljava/lang/Boolean;

.field static final MSG_NEXT_TRANSFER_TIMER:I = 0x0

.field static final MSG_TRANSFER_TIMEOUT:I = 0x1

.field static final STATE_CANCELLED:I = 0x6

.field static final STATE_CANCELLING:I = 0x7

.field static final STATE_FAILED:I = 0x4

.field static final STATE_IN_PROGRESS:I = 0x1

.field static final STATE_NEW:I = 0x0

.field static final STATE_SUCCESS:I = 0x5

.field static final STATE_W4_MEDIA_SCANNER:I = 0x3

.field static final STATE_W4_NEXT_TRANSFER:I = 0x2

.field static final TAG:Ljava/lang/String; = "BeamTransferManager"

.field static final WAIT_FOR_NEXT_TRANSFER_MS:I = 0xfa0


# instance fields
.field mBluetoothTransferId:I

.field final mCallback:Lcom/android/nfc/beam/BeamTransferManager$Callback;

.field mCalledBack:Z

.field final mCancelIntent:Landroid/app/PendingIntent;

.field final mContext:Landroid/content/Context;

.field mCurrentCount:I

.field mDataLinkType:I

.field final mHandler:Landroid/os/Handler;

.field final mIncoming:Z

.field mLastUpdate:Ljava/lang/Long;

.field mMediaUris:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mMimeTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mNotificationManager:Landroid/app/NotificationManager;

.field mOutgoingUris:[Landroid/net/Uri;

.field mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mProgress:F

.field final mRemoteActivating:Z

.field final mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field mRetried:Z

.field mStartTime:Ljava/lang/Long;

.field mState:I

.field mSuccessCount:I

.field mTotalCount:I

.field final mTransferId:I

.field mTransferMimeTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mUrisScanned:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    sget-boolean v0, Lcom/android/nfc/beam/BeamManager;->DBG:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Z)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/nfc/beam/BeamTransferManager$Callback;
    .param p3, "pendingTransfer"    # Lcom/android/nfc/beam/BeamTransferRecord;
    .param p4, "incoming"    # Z

    .prologue
    const/4 v1, 0x0

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    .line 150
    iput-object p2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCallback:Lcom/android/nfc/beam/BeamTransferManager$Callback;

    .line 151
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 152
    iput-boolean p4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    .line 153
    iget v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->id:I

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    .line 154
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    .line 155
    iget v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mDataLinkType:I

    .line 156
    iget-boolean v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->remoteActivating:Z

    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteActivating:Z

    .line 157
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    .line 159
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_97

    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    array-length v0, v0

    :goto_2c
    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mLastUpdate:Ljava/lang/Long;

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    .line 162
    iput v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    .line 163
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    if-nez v0, :cond_99

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    :goto_46
    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferMimeTypes:Ljava/util/ArrayList;

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMediaUris:Ljava/util/HashMap;

    .line 170
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->buildCancelIntent()Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCancelIntent:Landroid/app/PendingIntent;

    .line 171
    iput v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    .line 172
    iput v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    .line 173
    iput v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    .line 174
    iget-object v0, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mOutgoingUris:[Landroid/net/Uri;

    .line 175
    iput-boolean v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRetried:Z

    .line 176
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    .line 177
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 178
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    .line 179
    const-string/jumbo v1, "notification"

    .line 178
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 148
    return-void

    :cond_97
    move v0, v1

    .line 159
    goto :goto_2c

    .line 165
    :cond_99
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p3, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_46
.end method

.method static checkMediaStorage(Ljava/io/File;)Z
    .registers 5
    .param p0, "path"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 509
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 510
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 514
    :cond_1a
    const/4 v0, 0x1

    return v0

    .line 511
    :cond_1c
    const-string/jumbo v0, "BeamTransferManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not dir or not mkdir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    return v3

    .line 516
    :cond_3b
    const-string/jumbo v0, "BeamTransferManager"

    const-string/jumbo v1, "External storage not mounted, can\'t store file."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return v3
.end method

.method static generateMultiplePath(Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .param p0, "beamRoot"    # Ljava/lang/String;

    .prologue
    .line 544
    const-string/jumbo v1, "yyyy-MM-dd"

    .line 545
    .local v1, "format":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 546
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "beam-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 547
    .local v3, "newPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 548
    .local v2, "newFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 549
    .local v0, "count":I
    :goto_31
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 550
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "beam-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 551
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 550
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 552
    new-instance v2, Ljava/io/File;

    .end local v2    # "newFile":Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 553
    .restart local v2    # "newFile":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 555
    :cond_6f
    return-object v2
.end method

.method static generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 9
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 522
    const-string/jumbo v5, "."

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 523
    .local v1, "dotIndex":I
    const/4 v3, 0x0

    .line 524
    .local v3, "extension":Ljava/lang/String;
    const/4 v4, 0x0

    .line 525
    .local v4, "fileNameWithoutExtension":Ljava/lang/String;
    if-gez v1, :cond_65

    .line 526
    const-string/jumbo v3, ""

    .line 527
    .local v3, "extension":Ljava/lang/String;
    move-object v4, p1

    .line 532
    .local v4, "fileNameWithoutExtension":Ljava/lang/String;
    :goto_10
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 533
    .local v2, "dstFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 534
    .local v0, "count":I
    :goto_2d
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 535
    new-instance v2, Ljava/io/File;

    .end local v2    # "dstFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 536
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 535
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 537
    .restart local v2    # "dstFile":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 529
    .end local v0    # "count":I
    .end local v2    # "dstFile":Ljava/io/File;
    .local v3, "extension":Ljava/lang/String;
    .local v4, "fileNameWithoutExtension":Ljava/lang/String;
    :cond_65
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 530
    .local v3, "extension":Ljava/lang/String;
    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "fileNameWithoutExtension":Ljava/lang/String;
    goto :goto_10

    .line 539
    .restart local v0    # "count":I
    .restart local v2    # "dstFile":Ljava/io/File;
    :cond_6e
    return-object v2
.end method

.method private sendBluetoothCancelIntentAndUpdateState()V
    .registers 4

    .prologue
    .line 301
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.btopp.intent.action.STOP_HANDOVER_TRANSFER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 302
    .local v0, "cancelIntent":Landroid/content/Intent;
    const-string/jumbo v1, "android.nfc.handover.intent.extra.TRANSFER_ID"

    iget v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 303
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 304
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 300
    return-void
.end method


# virtual methods
.method buildCancelIntent()Landroid/app/PendingIntent;
    .registers 6

    .prologue
    .line 498
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.nfc.handover.action.CANCEL_HANDOVER_TRANSFER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 499
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "android.nfc.handover.intent.extra.ADDRESS"

    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 500
    const-string/jumbo v3, "com.android.nfc.handover.extra.INCOMING"

    iget-boolean v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v2, :cond_2a

    .line 501
    const/4 v2, 0x0

    .line 500
    :goto_1c
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    .line 503
    const/high16 v4, 0x40000000    # 2.0f

    .line 502
    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 505
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1

    .line 501
    .end local v1    # "pi":Landroid/app/PendingIntent;
    :cond_2a
    const/4 v2, 0x1

    goto :goto_1c
.end method

.method buildViewIntent()Landroid/content/Intent;
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 482
    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_b

    return-object v6

    .line 484
    :cond_b
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 486
    .local v3, "viewIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 487
    .local v0, "filePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMediaUris:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 488
    .local v1, "mediaUri":Landroid/net/Uri;
    if-eqz v1, :cond_38

    move-object v2, v1

    .line 491
    .local v2, "uri":Landroid/net/Uri;
    :goto_26
    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    const v4, 0x10008003

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 494
    return-object v3

    .line 489
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_38
    iget-object v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "com.google.android.nfc.fileprovider"

    .line 490
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 489
    invoke-static {v4, v5, v6}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .restart local v2    # "uri":Landroid/net/Uri;
    goto :goto_26
.end method

.method cancel()V
    .registers 6

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v3

    if-nez v3, :cond_7

    return-void

    .line 286
    :cond_7
    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "uri$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 287
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Ljava/io/File;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 288
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_d

    .line 291
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_2c
    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_35

    .line 293
    invoke-direct {p0}, Lcom/android/nfc/beam/BeamTransferManager;->sendBluetoothCancelIntentAndUpdateState()V

    .line 282
    :goto_34
    return-void

    .line 295
    :cond_35
    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_34
.end method

.method public finishTransfer(ZLandroid/net/Uri;Ljava/lang/String;)V
    .registers 10
    .param p1, "success"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 228
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 230
    :cond_9
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    .line 231
    if-eqz p1, :cond_82

    if-eqz p2, :cond_82

    .line 232
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    .line 233
    sget-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_46

    const-string/jumbo v0, "BeamTransferManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Transfer success, uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mimeType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    .line 235
    if-nez p3, :cond_51

    .line 236
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/nfc/beam/MimeTypeUtil;->getMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p3

    .line 238
    :cond_51
    if-eqz p3, :cond_70

    .line 239
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 249
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    if-ne v0, v1, :cond_c4

    .line 250
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v0, :cond_8c

    .line 251
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->processFiles()V

    .line 227
    :goto_6f
    return-void

    .line 242
    :cond_70
    sget-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string/jumbo v0, "BeamTransferManager"

    const-string/jumbo v1, "Could not get mimeType for file."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 245
    :cond_82
    const-string/jumbo v0, "BeamTransferManager"

    const-string/jumbo v1, "Handover transfer failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5d

    .line 253
    :cond_8c
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRetried:Z

    if-nez v0, :cond_b9

    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    if-nez v0, :cond_b9

    .line 254
    sget-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a5

    const-string/jumbo v0, "BeamTransferManager"

    const-string/jumbo v1, "Retry sending"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_a5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRetried:Z

    .line 256
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    .line 257
    iput v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    .line 258
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->start()V

    .line 259
    invoke-virtual {p0, v5}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 260
    return-void

    .line 262
    :cond_b9
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    if-lez v0, :cond_c2

    const/4 v0, 0x5

    :goto_be
    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_6f

    :cond_c2
    const/4 v0, 0x4

    goto :goto_be

    .line 265
    :cond_c4
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 266
    invoke-virtual {p0, v5}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_6f
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x4

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 452
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_18

    .line 454
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v1, :cond_f

    .line 455
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->processFiles()V

    .line 459
    :goto_e
    return v2

    .line 457
    :cond_f
    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mSuccessCount:I

    if-lez v1, :cond_14

    const/4 v0, 0x5

    :cond_14
    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_e

    .line 460
    :cond_18
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v2, :cond_47

    .line 462
    sget-object v1, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_44

    const-string/jumbo v1, "BeamTransferManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Transfer timed out for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_44
    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 465
    :cond_47
    return v4
.end method

.method public isRunning()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 271
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-eqz v0, :cond_10

    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-eq v0, v3, :cond_10

    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 272
    return v2

    .line 274
    :cond_10
    return v3
.end method

.method public declared-synchronized onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    monitor-enter p0

    .line 469
    :try_start_1
    sget-object v0, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string/jumbo v0, "BeamTransferManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Scan completed, path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_2e
    if-eqz p2, :cond_35

    .line 471
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMediaUris:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :cond_35
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    .line 474
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUrisScanned:I

    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_49

    .line 476
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V
    :try_end_49
    .catchall {:try_start_1 .. :try_end_49} :catchall_4b

    :cond_49
    monitor-exit p0

    .line 468
    return-void

    :catchall_4b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method processFiles()V
    .registers 14

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    .line 395
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, "extRoot":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "beam"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 398
    .local v1, "beamPath":Ljava/io/File;
    invoke-static {v1}, Lcom/android/nfc/beam/BeamTransferManager;->checkMediaStorage(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_38

    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_45

    .line 399
    :cond_38
    const-string/jumbo v8, "BeamTransferManager"

    const-string/jumbo v9, "Media storage not valid or no uris received."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p0, v12}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 401
    return-void

    .line 404
    :cond_45
    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_80

    .line 405
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "beam"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/nfc/beam/BeamTransferManager;->generateMultiplePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 406
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_80

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v8

    if-eqz v8, :cond_ff

    .line 413
    :cond_80
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_81
    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_164

    .line 414
    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 415
    .local v7, "uri":Landroid/net/Uri;
    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferMimeTypes:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 417
    .local v5, "mimeType":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 419
    .local v6, "srcFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    .line 420
    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 419
    invoke-static {v8, v9}, Lcom/android/nfc/beam/BeamTransferManager;->generateUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 421
    .local v2, "dstFile":Ljava/io/File;
    const-string/jumbo v8, "BeamTransferManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Renaming from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {v6, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_121

    .line 423
    sget-object v8, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_fb

    const-string/jumbo v8, "BeamTransferManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to rename from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_fb
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 425
    return-void

    .line 407
    .end local v2    # "dstFile":Ljava/io/File;
    .end local v4    # "i":I
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "srcFile":Ljava/io/File;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_ff
    const-string/jumbo v8, "BeamTransferManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Failed to create multiple path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {p0, v12}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 409
    return-void

    .line 427
    .restart local v2    # "dstFile":Ljava/io/File;
    .restart local v4    # "i":I
    .restart local v5    # "mimeType":Ljava/lang/String;
    .restart local v6    # "srcFile":Ljava/io/File;
    .restart local v7    # "uri":Landroid/net/Uri;
    :cond_121
    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v8, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_160

    const-string/jumbo v8, "BeamTransferManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Did successful rename from "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_160
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_81

    .line 438
    .end local v2    # "dstFile":Ljava/io/File;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v6    # "srcFile":Ljava/io/File;
    .end local v7    # "uri":Landroid/net/Uri;
    :cond_164
    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mMimeTypes:Ljava/util/HashMap;

    iget-object v9, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 439
    .restart local v5    # "mimeType":Ljava/lang/String;
    const-string/jumbo v8, "image/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_18d

    const-string/jumbo v8, "video/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_18d

    .line 440
    const-string/jumbo v8, "audio/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    .line 439
    if-eqz v8, :cond_1a8

    .line 441
    :cond_18d
    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v0, v8, [Ljava/lang/String;

    .line 442
    .local v0, "arrayPaths":[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v9, v8, v10, p0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 443
    const/4 v8, 0x3

    invoke-virtual {p0, v8}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 392
    .end local v0    # "arrayPaths":[Ljava/lang/String;
    :goto_1a7
    return-void

    .line 446
    :cond_1a8
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    goto :goto_1a7
.end method

.method public declared-synchronized setBluetoothTransferId(I)V
    .registers 4
    .param p1, "id"    # I

    .prologue
    const/4 v1, -0x1

    monitor-enter p0

    .line 219
    :try_start_2
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    if-ne v0, v1, :cond_12

    if-eq p1, v1, :cond_12

    .line 220
    iput p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mBluetoothTransferId:I

    .line 221
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_12

    .line 222
    invoke-direct {p0}, Lcom/android/nfc/beam/BeamTransferManager;->sendBluetoothCancelIntentAndUpdateState()V
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    .line 218
    return-void

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setObjectCount(I)V
    .registers 2
    .param p1, "objectCount"    # I

    .prologue
    .line 279
    iput p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    .line 278
    return-void
.end method

.method public start()V
    .registers 6

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_d

    .line 192
    return-void

    .line 195
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    .line 197
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-nez v0, :cond_31

    .line 198
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mDataLinkType:I

    sget v1, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-ne v0, v1, :cond_31

    .line 199
    new-instance v0, Lcom/android/nfc/beam/BluetoothOppHandover;

    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/nfc/beam/BeamTransferManager;->mUris:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteActivating:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/nfc/beam/BluetoothOppHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/util/ArrayList;Z)V

    invoke-virtual {v0}, Lcom/android/nfc/beam/BluetoothOppHandover;->start()V

    .line 189
    :cond_31
    return-void
.end method

.method public updateFileProgress(F)V
    .registers 4
    .param p1, "progress"    # F

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 207
    :cond_7
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    iput p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    .line 213
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 215
    :cond_1c
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateStateAndNotification(I)V

    .line 204
    return-void
.end method

.method updateNotification()V
    .registers 14

    .prologue
    const/16 v12, 0x64

    const v7, 0x1080089

    const v6, 0x1080082

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 308
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 309
    .local v2, "notBuilder":Landroid/app/Notification$Builder;
    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 310
    const v9, 0x1060059

    .line 309
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 311
    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mStartTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 312
    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 314
    iget-boolean v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v8, :cond_98

    .line 315
    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v9, 0x7f090065

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "beamString":Ljava/lang/String;
    :goto_3a
    iget v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-eqz v8, :cond_42

    iget v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-ne v8, v11, :cond_a2

    .line 321
    :cond_42
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 322
    iget-boolean v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v6, :cond_f4

    const v6, 0x1080081

    :goto_4c
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 324
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 325
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 327
    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v7, 0x7f09006a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCancelIntent:Landroid/app/PendingIntent;

    .line 326
    const v8, 0x7f020001

    invoke-virtual {v2, v8, v6, v7}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 328
    const/4 v3, 0x0

    .line 329
    .local v3, "progress":F
    iget v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    if-lez v6, :cond_7b

    .line 330
    iget v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    div-float v4, v7, v6

    .line 331
    .local v4, "progressUnit":F
    iget v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCurrentCount:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    iget v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mProgress:F

    mul-float/2addr v7, v4

    add-float v3, v6, v7

    .line 333
    .end local v4    # "progressUnit":F
    :cond_7b
    iget v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTotalCount:I

    if-lez v6, :cond_f9

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-lez v6, :cond_f9

    .line 334
    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v6, v3

    float-to-int v6, v6

    invoke-virtual {v2, v12, v6, v10}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 369
    .end local v3    # "progress":F
    :cond_8b
    :goto_8b
    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mNotificationManager:Landroid/app/NotificationManager;

    iget v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v9, v7, v8}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 307
    return-void

    .line 317
    .end local v0    # "beamString":Ljava/lang/String;
    :cond_98
    iget-object v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v9, 0x7f090066

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "beamString":Ljava/lang/String;
    goto :goto_3a

    .line 320
    :cond_a2
    iget v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_42

    iget v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v9, 0x3

    if-eq v8, v9, :cond_42

    .line 338
    iget v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v9, 0x5

    if-ne v8, v9, :cond_ff

    .line 339
    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 340
    iget-boolean v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v8, :cond_fd

    :goto_b8
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 342
    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v7, 0x7f090067

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 343
    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v7, 0x7f090067

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 345
    iget-boolean v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v6, :cond_8b

    .line 346
    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v7, 0x7f09006b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 347
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->buildViewIntent()Landroid/content/Intent;

    move-result-object v5

    .line 349
    .local v5, "viewIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/android/nfc/beam/BeamTransferManager;->mTransferId:I

    const/4 v8, 0x0

    .line 348
    invoke-static {v6, v7, v5, v10, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 351
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_8b

    .line 323
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v5    # "viewIntent":Landroid/content/Intent;
    :cond_f4
    const v6, 0x1080088

    goto/16 :goto_4c

    .line 336
    .restart local v3    # "progress":F
    :cond_f9
    invoke-virtual {v2, v12, v10, v11}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_8b

    .end local v3    # "progress":F
    :cond_fd
    move v6, v7

    .line 341
    goto :goto_b8

    .line 353
    :cond_ff
    iget v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_12a

    .line 354
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 355
    iget-boolean v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v8, :cond_128

    :goto_10b
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 357
    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v7, 0x7f090068

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 358
    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v7, 0x7f090068

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_8b

    :cond_128
    move v6, v7

    .line 356
    goto :goto_10b

    .line 359
    :cond_12a
    iget v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v9, 0x6

    if-eq v8, v9, :cond_134

    iget v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v9, 0x7

    if-ne v8, v9, :cond_15a

    .line 360
    :cond_134
    invoke-virtual {v2, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 361
    iget-boolean v8, p0, Lcom/android/nfc/beam/BeamTransferManager;->mIncoming:Z

    if-eqz v8, :cond_158

    :goto_13b
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 363
    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v7, 0x7f090069

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 364
    iget-object v6, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    const v7, 0x7f090069

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto/16 :goto_8b

    :cond_158
    move v6, v7

    .line 362
    goto :goto_13b

    .line 366
    :cond_15a
    return-void
.end method

.method updateStateAndNotification(I)V
    .registers 7
    .param p1, "newState"    # I

    .prologue
    const/4 v4, 0x5

    const/4 v0, 0x1

    .line 373
    iput p1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mLastUpdate:Ljava/lang/Long;

    .line 376
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 379
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 382
    :cond_20
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferManager;->updateNotification()V

    .line 384
    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-eq v1, v4, :cond_2c

    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_31

    .line 385
    :cond_2c
    :goto_2c
    iget-boolean v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCalledBack:Z

    if-eqz v1, :cond_37

    .line 372
    :cond_30
    :goto_30
    return-void

    .line 384
    :cond_31
    iget v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_30

    goto :goto_2c

    .line 386
    :cond_37
    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCalledBack:Z

    .line 388
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mCallback:Lcom/android/nfc/beam/BeamTransferManager$Callback;

    iget v2, p0, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    if-ne v2, v4, :cond_43

    :goto_3f
    invoke-interface {v1, p0, v0}, Lcom/android/nfc/beam/BeamTransferManager$Callback;->onTransferComplete(Lcom/android/nfc/beam/BeamTransferManager;Z)V

    goto :goto_30

    :cond_43
    const/4 v0, 0x0

    goto :goto_3f
.end method

.method whitelistOppDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 183
    sget-object v1, Lcom/android/nfc/beam/BeamTransferManager;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_29

    const-string/jumbo v1, "BeamTransferManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Whitelisting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " for BT OPP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_29
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.btopp.intent.action.WHITELIST_DEVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 186
    iget-object v1, p0, Lcom/android/nfc/beam/BeamTransferManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 182
    return-void
.end method

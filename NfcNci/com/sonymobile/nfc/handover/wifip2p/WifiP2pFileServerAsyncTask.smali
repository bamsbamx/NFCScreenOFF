.class public Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;
.super Landroid/os/AsyncTask;
.source "WifiP2pFileServerAsyncTask.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;",
        ">;",
        "Landroid/media/MediaScannerConnection$OnScanCompletedListener;"
    }
.end annotation


# static fields
.field private static final BEAM_DIR:Ljava/lang/String; = "beam"

.field private static final DBG:Ljava/lang/Boolean;

.field public static final FILE_COUNT_ATR:I = 0x0

.field public static final FILE_DATA_ATR:I = 0x4

.field public static final FILE_INFO_ATR:I = 0x1

.field public static final FILE_NAME_ATR:I = 0x2

.field public static final FILE_TYPE_ATR:I = 0x3

.field private static final MAX_BUFFER_SIZE:I = 0x400

.field public static final PORT:I = 0x270f

.field public static final SOCKET_TIMEOUT:I = 0x4e20

.field private static final TAG:Ljava/lang/String; = "WifiP2pFileServerAsyncTask"


# instance fields
.field private mBeamPath:Ljava/io/File;

.field private mClient:Ljava/net/Socket;

.field private final mContext:Landroid/content/Context;

.field private final mExtRoot:Ljava/lang/String;

.field private mFile:Ljava/io/File;

.field private mFileOutputstream:Ljava/io/OutputStream;

.field private mIsMultipleFile:Z

.field private mIsScanFirstFileDone:Z

.field private mIsTransferStarted:Z

.field private mListOfFileReceived:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOutputstream:Ljava/io/OutputStream;

.field private mPushbackInputstream:Ljava/io/PushbackInputStream;

.field private mServerSocket:Ljava/net/ServerSocket;

.field private final mWifiP2pIncomingHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

.field private final wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/nfc/beam/BeamManager;->DBG:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->DBG:Ljava/lang/Boolean;

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wifiP2pIncomingHandover"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 88
    iput-boolean v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mIsMultipleFile:Z

    .line 89
    iput-boolean v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mIsScanFirstFileDone:Z

    .line 90
    iput-boolean v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mIsTransferStarted:Z

    .line 94
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mWifiP2pIncomingHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    .line 96
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mExtRoot:Ljava/lang/String;

    .line 97
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mListOfFileReceived:Ljava/util/HashMap;

    .line 99
    const-string/jumbo v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 100
    .local v0, "pm":Landroid/os/PowerManager;
    const-string/jumbo v1, "WifiP2pFileServerAsyncTask"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 93
    return-void
.end method

.method private checkMediaStorage(Ljava/io/File;)Z
    .registers 6
    .param p1, "path"    # Ljava/io/File;

    .prologue
    const/4 v3, 0x0

    .line 525
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 526
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 530
    :cond_1a
    const/4 v0, 0x1

    return v0

    .line 527
    :cond_1c
    const-string/jumbo v0, "WifiP2pFileServerAsyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not dir or not mkdir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    return v3

    .line 532
    :cond_3b
    const-string/jumbo v0, "WifiP2pFileServerAsyncTask"

    const-string/jumbo v1, "External storage not mounted, can\'t store file."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return v3
.end method

.method private closeConnection()V
    .registers 5

    .prologue
    .line 248
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mClient:Ljava/net/Socket;

    if-eqz v1, :cond_10

    .line 254
    :try_start_4
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mClient:Ljava/net/Socket;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 255
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mClient:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_3d

    .line 259
    :cond_10
    :goto_10
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mPushbackInputstream:Ljava/io/PushbackInputStream;

    if-eqz v1, :cond_19

    .line 261
    :try_start_14
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mPushbackInputstream:Ljava/io/PushbackInputStream;

    invoke-virtual {v1}, Ljava/io/PushbackInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_3b

    .line 265
    :cond_19
    :goto_19
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mOutputstream:Ljava/io/OutputStream;

    if-eqz v1, :cond_22

    .line 267
    :try_start_1d
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mOutputstream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_22} :catch_39

    .line 271
    :cond_22
    :goto_22
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mFileOutputstream:Ljava/io/OutputStream;

    if-eqz v1, :cond_2b

    .line 273
    :try_start_26
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mFileOutputstream:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2b} :catch_37

    .line 277
    :cond_2b
    :goto_2b
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_34

    .line 279
    :try_start_2f
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_35

    .line 247
    :cond_34
    :goto_34
    return-void

    .line 280
    :catch_35
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_34

    .line 274
    .end local v0    # "e":Ljava/io/IOException;
    :catch_37
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_2b

    .line 268
    .end local v0    # "e":Ljava/io/IOException;
    :catch_39
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_22

    .line 262
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3b
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_19

    .line 256
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3d
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_10
.end method

.method private deleteReceivedFile()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 475
    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mFile:Ljava/io/File;

    if-eqz v5, :cond_20

    .line 476
    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1e

    .line 477
    sget-object v5, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1e

    const-string/jumbo v5, "WifiP2pFileServerAsyncTask"

    const-string/jumbo v6, "File deletion failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_1e
    iput-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mFile:Ljava/io/File;

    .line 482
    :cond_20
    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mListOfFileReceived:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_2a
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 483
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    .line 485
    .local v1, "dataInfo":Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    new-instance v4, Ljava/io/File;

    iget-object v5, v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataLocation:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 486
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_2a

    .line 487
    sget-object v5, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2a

    const-string/jumbo v5, "WifiP2pFileServerAsyncTask"

    const-string/jumbo v6, "File deletion failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a

    .line 491
    .end local v1    # "dataInfo":Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;>;"
    .end local v4    # "file":Ljava/io/File;
    :cond_5b
    iget-boolean v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mIsMultipleFile:Z

    if-eqz v5, :cond_8f

    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mBeamPath:Ljava/io/File;

    if-eqz v5, :cond_8f

    .line 492
    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mBeamPath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_7c

    .line 493
    sget-object v5, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_7c

    const-string/jumbo v5, "WifiP2pFileServerAsyncTask"

    const-string/jumbo v6, "File deletion failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    :cond_7c
    const/4 v5, 0x1

    new-array v0, v5, [Ljava/lang/String;

    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mBeamPath:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v0, v6

    .line 498
    .local v0, "arrayPaths":[Ljava/lang/String;
    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mContext:Landroid/content/Context;

    invoke-static {v5, v0, v7, v7}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 499
    iput-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mBeamPath:Ljava/io/File;

    .line 474
    .end local v0    # "arrayPaths":[Ljava/lang/String;
    :cond_8f
    return-void
.end method

.method private generateDirectory(I)Ljava/io/File;
    .registers 7
    .param p1, "numberOfFiles"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 504
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mExtRoot:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "beam"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mBeamPath:Ljava/io/File;

    .line 506
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mBeamPath:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->checkMediaStorage(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2f

    if-ge p1, v3, :cond_30

    .line 507
    :cond_2f
    return-object v4

    .line 510
    :cond_30
    if-le p1, v3, :cond_5c

    .line 511
    iput-boolean v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mIsMultipleFile:Z

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mExtRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "beam"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->generateMultiplePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mBeamPath:Ljava/io/File;

    .line 515
    :cond_5c
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mBeamPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_6c

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mBeamPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 520
    :cond_6c
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mBeamPath:Ljava/io/File;

    return-object v0

    .line 516
    :cond_6f
    const-string/jumbo v0, "WifiP2pFileServerAsyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not dir or not mkdir "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mBeamPath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    return-object v4
.end method

.method private generateMultiplePath(Ljava/lang/String;)Ljava/io/File;
    .registers 9
    .param p1, "beamRoot"    # Ljava/lang/String;

    .prologue
    .line 540
    const-string/jumbo v1, "yyyy-MM-dd"

    .line 541
    .local v1, "format":Ljava/lang/String;
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 542
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 543
    .local v3, "newPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 544
    .local v2, "newFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 545
    .local v0, "count":I
    :goto_31
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 546
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 547
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 546
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 548
    new-instance v2, Ljava/io/File;

    .end local v2    # "newFile":Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 549
    .restart local v2    # "newFile":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_31

    .line 551
    :cond_6f
    return-object v2
.end method

.method private generateUniqueDestination(Ljava/lang/String;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;)Ljava/io/File;
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "dataInfo"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    .prologue
    const/4 v7, 0x0

    .line 556
    iget-object v5, p2, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileName:Ljava/lang/String;

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 557
    .local v1, "dotIndex":I
    const/4 v3, 0x0

    .line 558
    .local v3, "extension":Ljava/lang/String;
    const/4 v4, 0x0

    .line 559
    .local v4, "fileNameWithoutExtension":Ljava/lang/String;
    if-gez v1, :cond_6a

    .line 560
    const-string/jumbo v3, ""

    .line 561
    .local v3, "extension":Ljava/lang/String;
    iget-object v4, p2, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileName:Ljava/lang/String;

    .line 566
    .local v4, "fileNameWithoutExtension":Ljava/lang/String;
    :goto_13
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p2, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 567
    .local v2, "dstFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 568
    .local v0, "count":I
    :goto_32
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_77

    .line 569
    new-instance v2, Ljava/io/File;

    .end local v2    # "dstFile":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 570
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 569
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 571
    .restart local v2    # "dstFile":Ljava/io/File;
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 563
    .end local v0    # "count":I
    .end local v2    # "dstFile":Ljava/io/File;
    .local v3, "extension":Ljava/lang/String;
    .local v4, "fileNameWithoutExtension":Ljava/lang/String;
    :cond_6a
    iget-object v5, p2, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 564
    .local v3, "extension":Ljava/lang/String;
    iget-object v5, p2, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v5, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "fileNameWithoutExtension":Ljava/lang/String;
    goto :goto_13

    .line 574
    .restart local v0    # "count":I
    .restart local v2    # "dstFile":Ljava/io/File;
    :cond_77
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataLocation:Ljava/lang/String;

    .line 575
    return-object v2
.end method

.method private getActualByteNeeded(Ljava/io/PushbackInputStream;[BJJI)[B
    .registers 15
    .param p1, "inputStream"    # Ljava/io/PushbackInputStream;
    .param p2, "sourceBuffer"    # [B
    .param p3, "expectedDataSize"    # J
    .param p5, "lengthOfAlreadyReceivedBytes"    # J
    .param p7, "lengthOfcurrentlyReceivedBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 449
    sub-long v4, p3, p5

    long-to-int v3, v4

    .line 450
    .local v3, "remainingNeededByteLen":I
    sub-int v2, p7, v3

    .line 452
    .local v2, "excessByteLen":I
    new-array v0, v3, [B

    .line 453
    .local v0, "actualByteNeeded":[B
    new-array v1, v2, [B

    .line 455
    .local v1, "excessByte":[B
    invoke-static {p2, v6, v0, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 456
    invoke-static {p2, v3, v1, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 458
    invoke-virtual {p1, v1}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 460
    return-object v0
.end method

.method private getFirstReceivedFile()Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    .registers 5

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 236
    .local v0, "dataInfo":Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mListOfFileReceived:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v0    # "dataInfo":Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 237
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    .line 239
    .local v0, "dataInfo":Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    if-eqz v0, :cond_b

    .line 244
    .end local v0    # "dataInfo":Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;>;"
    :cond_1f
    return-object v0
.end method

.method private printData(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;)V
    .registers 6
    .param p1, "data"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    .prologue
    .line 464
    const-string/jumbo v0, "WifiP2pFileServerAsyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Recv total byte: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->totalByte:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    const-string/jumbo v0, "WifiP2pFileServerAsyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Recv Data valid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->valid:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const-string/jumbo v0, "WifiP2pFileServerAsyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Recv Data location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string/jumbo v0, "WifiP2pFileServerAsyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Recv Data size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string/jumbo v0, "WifiP2pFileServerAsyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Recv Data file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-string/jumbo v0, "WifiP2pFileServerAsyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Recv Data file name size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileNameLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const-string/jumbo v0, "WifiP2pFileServerAsyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Recv Data file type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string/jumbo v0, "WifiP2pFileServerAsyncTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Recv Data file type size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileTypeLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void
.end method

.method private readStream(Ljava/io/PushbackInputStream;I)[B
    .registers 14
    .param p1, "inputStream"    # Ljava/io/PushbackInputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x400

    const/4 v10, -0x1

    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, "numberOfBytesReceived":I
    const/4 v8, 0x0

    .line 376
    .local v8, "len":I
    new-array v9, p2, [B

    .line 379
    .local v9, "value":[B
    if-le p2, v1, :cond_41

    .line 380
    new-array v3, v1, [B

    .line 385
    .local v3, "buf":[B
    :cond_b
    :goto_b
    invoke-virtual {p1, v3}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v8

    if-eq v8, v10, :cond_25

    .line 386
    add-int v1, v0, v8

    if-le v1, p2, :cond_1e

    .line 387
    int-to-long v4, p2

    int-to-long v6, v0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->getActualByteNeeded(Ljava/io/PushbackInputStream;[BJJI)[B

    move-result-object v3

    .line 388
    array-length v8, v3

    .line 391
    :cond_1e
    const/4 v1, 0x0

    invoke-static {v3, v1, v9, v0, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 392
    add-int/2addr v0, v8

    .line 394
    if-ne v0, p2, :cond_b

    .line 399
    :cond_25
    if-ne v8, v10, :cond_44

    .line 400
    sget-object v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_38

    const-string/jumbo v1, "WifiP2pFileServerAsyncTask"

    const-string/jumbo v2, "Receiving of file header failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_38
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Receiving of file header failed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    .end local v3    # "buf":[B
    :cond_41
    new-array v3, p2, [B

    .restart local v3    # "buf":[B
    goto :goto_b

    .line 404
    :cond_44
    return-object v9
.end method

.method private receiveData(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V
    .registers 13
    .param p1, "dataInfo"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    .param p2, "inputStream"    # Ljava/io/PushbackInputStream;
    .param p3, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    iget-wide v0, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataSize:J

    const-wide/16 v4, 0x400

    cmp-long v0, v0, v4

    if-lez v0, :cond_6d

    .line 414
    const/16 v0, 0x400

    new-array v3, v0, [B

    .line 419
    .local v3, "buf":[B
    :cond_c
    :goto_c
    invoke-virtual {p2, v3}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v8

    .local v8, "len":I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_4b

    .line 420
    iget-wide v0, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataTransferred:J

    int-to-long v4, v8

    add-long/2addr v0, v4

    iget-wide v4, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataSize:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_28

    .line 422
    iget-wide v4, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataSize:J

    iget-wide v6, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataTransferred:J

    move-object v1, p0

    move-object v2, p2

    .line 421
    invoke-direct/range {v1 .. v8}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->getActualByteNeeded(Ljava/io/PushbackInputStream;[BJJI)[B

    move-result-object v3

    .line 423
    array-length v8, v3

    .line 426
    :cond_28
    const/4 v0, 0x0

    invoke-virtual {p3, v3, v0, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 427
    iget-wide v0, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataTransferred:J

    int-to-long v4, v8

    add-long/2addr v0, v4

    iput-wide v0, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataTransferred:J

    .line 429
    iget-wide v0, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataTransferred:J

    iget-wide v4, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataSize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_c

    .line 430
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string/jumbo v0, "WifiP2pFileServerAsyncTask"

    const-string/jumbo v1, "File Successfully Received"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_4b
    iget-wide v0, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataTransferred:J

    iget-wide v4, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataSize:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_73

    .line 436
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_64

    const-string/jumbo v0, "WifiP2pFileServerAsyncTask"

    const-string/jumbo v1, "Data received is incomplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_64
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Data received is incomplete"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 416
    .end local v3    # "buf":[B
    .end local v8    # "len":I
    :cond_6d
    iget-wide v0, p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataSize:J

    long-to-int v0, v0

    new-array v3, v0, [B

    .restart local v3    # "buf":[B
    goto :goto_c

    .line 409
    .restart local v8    # "len":I
    :cond_73
    return-void
.end method

.method private receiveFileCountHeader(Ljava/io/PushbackInputStream;)I
    .registers 9
    .param p1, "inputStream"    # Ljava/io/PushbackInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    const/4 v2, -0x1

    .line 298
    .local v2, "numberOfFiles":I
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v3

    .line 300
    .local v3, "type":I
    packed-switch v3, :pswitch_data_36

    .line 310
    sget-object v5, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_19

    const-string/jumbo v5, "WifiP2pFileServerAsyncTask"

    const-string/jumbo v6, "Undefined Binary Header type"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :cond_19
    :goto_19
    return v2

    .line 302
    :pswitch_1a
    const/4 v5, 0x4

    invoke-direct {p0, p1, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->readStream(Ljava/io/PushbackInputStream;I)[B

    move-result-object v0

    .line 303
    .local v0, "len":[B
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v0}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 305
    .local v1, "length":I
    invoke-direct {p0, p1, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->readStream(Ljava/io/PushbackInputStream;I)[B

    move-result-object v4

    .line 306
    .local v4, "value":[B
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v4}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    goto :goto_19

    .line 300
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1a
    .end packed-switch
.end method

.method private receiveFileHeader(Ljava/io/PushbackInputStream;)Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    .registers 10
    .param p1, "inputStream"    # Ljava/io/PushbackInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x4

    .line 323
    new-instance v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    invoke-direct {v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;-><init>()V

    .line 326
    .local v0, "data":Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    :goto_8
    invoke-virtual {p1}, Ljava/io/PushbackInputStream;->read()I

    move-result v2

    .line 327
    .local v2, "type":I
    const/4 v1, 0x0

    .line 328
    .local v1, "len":[B
    const/4 v3, 0x0

    .line 330
    .local v3, "value":[B
    packed-switch v2, :pswitch_data_98

    .line 358
    sget-object v4, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_22

    const-string/jumbo v4, "WifiP2pFileServerAsyncTask"

    const-string/jumbo v5, "Undefined Binary Header type"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .end local v1    # "len":[B
    :cond_22
    :goto_22
    if-eqz v0, :cond_2c

    iget-object v4, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 369
    :cond_2c
    :goto_2c
    return-object v0

    .line 332
    .restart local v1    # "len":[B
    :pswitch_2d
    invoke-direct {p0, p1, v7}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->readStream(Ljava/io/PushbackInputStream;I)[B

    move-result-object v1

    .line 333
    .local v1, "len":[B
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->totalByte:J

    goto :goto_8

    .line 337
    .local v1, "len":[B
    :pswitch_3d
    invoke-direct {p0, p1, v6}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->readStream(Ljava/io/PushbackInputStream;I)[B

    move-result-object v1

    .line 338
    .local v1, "len":[B
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    iput v4, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileNameLength:I

    .line 340
    iget v4, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileNameLength:I

    invoke-direct {p0, p1, v4}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->readStream(Ljava/io/PushbackInputStream;I)[B

    move-result-object v3

    .line 341
    .local v3, "value":[B
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v4, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileName:Ljava/lang/String;

    goto :goto_8

    .line 345
    .local v1, "len":[B
    .local v3, "value":[B
    :pswitch_5c
    invoke-direct {p0, p1, v6}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->readStream(Ljava/io/PushbackInputStream;I)[B

    move-result-object v1

    .line 346
    .local v1, "len":[B
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    iput v4, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileTypeLength:I

    .line 348
    iget v4, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileTypeLength:I

    invoke-direct {p0, p1, v4}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->readStream(Ljava/io/PushbackInputStream;I)[B

    move-result-object v3

    .line 349
    .local v3, "value":[B
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v4, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileType:Ljava/lang/String;

    goto :goto_8

    .line 353
    .local v1, "len":[B
    .local v3, "value":[B
    :pswitch_7b
    invoke-direct {p0, p1, v7}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->readStream(Ljava/io/PushbackInputStream;I)[B

    move-result-object v1

    .line 354
    .local v1, "len":[B
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataSize:J

    goto :goto_22

    .line 365
    .end local v1    # "len":[B
    :cond_8b
    iget-object v4, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->fileType:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 366
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->valid:Z

    goto :goto_2c

    .line 330
    nop

    :pswitch_data_98
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_3d
        :pswitch_5c
        :pswitch_7b
    .end packed-switch
.end method

.method private scanFile()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mListOfFileReceived:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :cond_a
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 216
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    .line 217
    .local v1, "dataInfo":Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    iget-object v4, v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataLocation:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    .line 218
    .local v0, "arrayPaths":[Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v0, v5, p0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 225
    iget-boolean v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mIsScanFirstFileDone:Z

    if-nez v4, :cond_a

    .line 226
    monitor-enter p0

    .line 227
    const-wide/16 v4, 0x7d0

    :try_start_31
    invoke-virtual {p0, v4, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->wait(J)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_36

    monitor-exit p0

    goto :goto_a

    .line 226
    :catchall_36
    move-exception v4

    monitor-exit p0

    throw v4

    .line 214
    .end local v0    # "arrayPaths":[Ljava/lang/String;
    .end local v1    # "dataInfo":Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;>;"
    :cond_39
    return-void
.end method

.method private sendConfirmation(Ljava/io/OutputStream;)V
    .registers 4
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 442
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "WifiP2pFileServerAsyncTask"

    const-string/jumbo v1, "Send finished transfer confirmation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_11
    const-string/jumbo v0, "done"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 441
    return-void
.end method


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 289
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "WifiP2pFileServerAsyncTask"

    const-string/jumbo v1, "Operation was cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_11
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->closeConnection()V

    .line 288
    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    .registers 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v10, 0x0

    .line 111
    const/4 v0, 0x0

    .line 114
    .local v0, "currentFileCount":I
    :try_start_2
    new-instance v7, Ljava/net/ServerSocket;

    const/16 v8, 0x270f

    invoke-direct {v7, v8}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mServerSocket:Ljava/net/ServerSocket;

    .line 115
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mServerSocket:Ljava/net/ServerSocket;

    const/16 v8, 0x4e20

    invoke-virtual {v7, v8}, Ljava/net/ServerSocket;->setSoTimeout(I)V

    .line 117
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v7}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mClient:Ljava/net/Socket;

    .line 120
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mClient:Ljava/net/Socket;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 122
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mIsTransferStarted:Z

    .line 124
    new-instance v7, Ljava/io/PushbackInputStream;

    iget-object v8, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mClient:Ljava/net/Socket;

    invoke-virtual {v8}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 125
    const/16 v9, 0x400

    .line 124
    invoke-direct {v7, v8, v9}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mPushbackInputstream:Ljava/io/PushbackInputStream;

    .line 127
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mPushbackInputstream:Ljava/io/PushbackInputStream;

    invoke-direct {p0, v7}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->receiveFileCountHeader(Ljava/io/PushbackInputStream;)I

    move-result v6

    .line 128
    .local v6, "numberOfFiles":I
    invoke-direct {p0, v6}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->generateDirectory(I)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mBeamPath:Ljava/io/File;

    .line 129
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mBeamPath:Ljava/io/File;

    if-nez v7, :cond_58

    .line 130
    sget-object v7, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_54

    const-string/jumbo v7, "WifiP2pFileServerAsyncTask"

    const-string/jumbo v8, "Failed to generate beam path"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_54} :catch_11f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_54} :catch_109
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_54} :catch_f3
    .catchall {:try_start_2 .. :try_end_54} :catchall_135

    .line 176
    :cond_54
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->closeConnection()V

    .line 131
    return-object v10

    .line 134
    :cond_58
    :try_start_58
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mWifiP2pIncomingHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-virtual {v7, v6}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->setNumberOfFileToRetrieve(I)V

    .line 136
    const/4 v5, 0x0

    .local v5, "fileCount":I
    :goto_5e
    if-ge v5, v6, :cond_d3

    .line 137
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mPushbackInputstream:Ljava/io/PushbackInputStream;

    invoke-direct {p0, v7}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->receiveFileHeader(Ljava/io/PushbackInputStream;)Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    move-result-object v1

    .line 138
    .local v1, "dataInfo":Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    iget-boolean v7, v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->valid:Z

    if-nez v7, :cond_7f

    .line 139
    sget-object v7, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_7b

    const-string/jumbo v7, "WifiP2pFileServerAsyncTask"

    const-string/jumbo v8, "Data information is not valid"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/net/SocketException; {:try_start_58 .. :try_end_7b} :catch_11f
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_7b} :catch_109
    .catch Ljava/lang/InterruptedException; {:try_start_58 .. :try_end_7b} :catch_f3
    .catchall {:try_start_58 .. :try_end_7b} :catchall_135

    .line 176
    :cond_7b
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->closeConnection()V

    .line 140
    return-object v10

    .line 142
    :cond_7f
    :try_start_7f
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mWifiP2pIncomingHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-virtual {v7, v1, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->updateTransferInfo(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;I)V

    .line 144
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mBeamPath:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->generateUniqueDestination(Ljava/lang/String;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;)Ljava/io/File;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mFile:Ljava/io/File;

    .line 145
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mFile:Ljava/io/File;

    if-nez v7, :cond_a9

    .line 146
    sget-object v7, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_a5

    const-string/jumbo v7, "WifiP2pFileServerAsyncTask"

    const-string/jumbo v8, "Failed to generate unique destination"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a5
    .catch Ljava/net/SocketException; {:try_start_7f .. :try_end_a5} :catch_11f
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_a5} :catch_109
    .catch Ljava/lang/InterruptedException; {:try_start_7f .. :try_end_a5} :catch_f3
    .catchall {:try_start_7f .. :try_end_a5} :catchall_135

    .line 176
    :cond_a5
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->closeConnection()V

    .line 147
    return-object v10

    .line 150
    :cond_a9
    :try_start_a9
    sget-object v7, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_b4

    invoke-direct {p0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->printData(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;)V

    .line 152
    :cond_b4
    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v8, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mFile:Ljava/io/File;

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iput-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mFileOutputstream:Ljava/io/OutputStream;

    .line 153
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mPushbackInputstream:Ljava/io/PushbackInputStream;

    iget-object v8, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mFileOutputstream:Ljava/io/OutputStream;

    invoke-direct {p0, v1, v7, v8}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->receiveData(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;Ljava/io/PushbackInputStream;Ljava/io/OutputStream;)V

    .line 154
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mFileOutputstream:Ljava/io/OutputStream;

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 156
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mListOfFileReceived:Ljava/util/HashMap;

    iget-object v8, v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->dataLocation:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    add-int/lit8 v5, v5, 0x1

    goto :goto_5e

    .line 158
    .end local v1    # "dataInfo":Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    :cond_d3
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mIsTransferStarted:Z

    .line 160
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mClient:Ljava/net/Socket;

    invoke-virtual {v7}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    iput-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mOutputstream:Ljava/io/OutputStream;

    .line 161
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mOutputstream:Ljava/io/OutputStream;

    invoke-direct {p0, v7}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->sendConfirmation(Ljava/io/OutputStream;)V

    .line 162
    iget-object v7, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mOutputstream:Ljava/io/OutputStream;

    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    .line 164
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->scanFile()V

    .line 165
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->getFirstReceivedFile()Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    :try_end_ee
    .catch Ljava/net/SocketException; {:try_start_a9 .. :try_end_ee} :catch_11f
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ee} :catch_109
    .catch Ljava/lang/InterruptedException; {:try_start_a9 .. :try_end_ee} :catch_f3
    .catchall {:try_start_a9 .. :try_end_ee} :catchall_135

    move-result-object v7

    .line 176
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->closeConnection()V

    .line 165
    return-object v7

    .line 172
    .end local v5    # "fileCount":I
    .end local v6    # "numberOfFiles":I
    :catch_f3
    move-exception v3

    .line 173
    .local v3, "e":Ljava/lang/InterruptedException;
    :try_start_f4
    sget-object v7, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_105

    const-string/jumbo v7, "WifiP2pFileServerAsyncTask"

    const-string/jumbo v8, "Interrupted exception"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_105
    .catchall {:try_start_f4 .. :try_end_105} :catchall_135

    .line 176
    :cond_105
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->closeConnection()V

    .line 174
    return-object v10

    .line 169
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :catch_109
    move-exception v2

    .line 170
    .local v2, "e":Ljava/io/IOException;
    :try_start_10a
    sget-object v7, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_11b

    const-string/jumbo v7, "WifiP2pFileServerAsyncTask"

    const-string/jumbo v8, "Receiving of data failed"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11b
    .catchall {:try_start_10a .. :try_end_11b} :catchall_135

    .line 176
    :cond_11b
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->closeConnection()V

    .line 171
    return-object v10

    .line 166
    .end local v2    # "e":Ljava/io/IOException;
    :catch_11f
    move-exception v4

    .line 167
    .local v4, "e":Ljava/net/SocketException;
    :try_start_120
    sget-object v7, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_131

    const-string/jumbo v7, "WifiP2pFileServerAsyncTask"

    const-string/jumbo v8, "Socket exception occurred"

    invoke-static {v7, v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_131
    .catchall {:try_start_120 .. :try_end_131} :catchall_135

    .line 176
    :cond_131
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->closeConnection()V

    .line 168
    return-object v10

    .line 175
    .end local v4    # "e":Ljava/net/SocketException;
    :catchall_135
    move-exception v7

    .line 176
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->closeConnection()V

    .line 175
    throw v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 110
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->doInBackground([Ljava/lang/Void;)Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    move-result-object v0

    return-object v0
.end method

.method public isTransferStarted()Z
    .registers 2

    .prologue
    .line 285
    iget-boolean v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mIsTransferStarted:Z

    return v0
.end method

.method protected onPostExecute(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;)V
    .registers 4
    .param p1, "dataInfo"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 183
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string/jumbo v0, "WifiP2pFileServerAsyncTask"

    const-string/jumbo v1, "release partial WakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_19
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 187
    :cond_1e
    if-eqz p1, :cond_27

    .line 188
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mWifiP2pIncomingHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->complete(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;Z)V

    .line 181
    :goto_26
    return-void

    .line 190
    :cond_27
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->deleteReceivedFile()V

    .line 191
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mWifiP2pIncomingHandover:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->complete(Z)V

    goto :goto_26
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "dataInfo"    # Ljava/lang/Object;

    .prologue
    .line 181
    check-cast p1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    .end local p1    # "dataInfo":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->onPostExecute(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 3

    .prologue
    .line 105
    sget-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->DBG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_11

    const-string/jumbo v0, "WifiP2pFileServerAsyncTask"

    const-string/jumbo v1, "acquire partial WakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_11
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 104
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .registers 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 197
    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    .line 198
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mListOfFileReceived:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;

    .line 200
    .local v0, "dataInfo":Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    if-eqz v0, :cond_10

    .line 201
    iput-object p2, v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;->uri:Landroid/net/Uri;

    .line 206
    .end local v0    # "dataInfo":Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pDataTransferInfo;
    :cond_10
    iget-boolean v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mIsScanFirstFileDone:Z

    if-nez v1, :cond_1c

    .line 207
    monitor-enter p0

    .line 208
    const/4 v1, 0x1

    :try_start_16
    iput-boolean v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->mIsScanFirstFileDone:Z

    .line 209
    invoke-virtual {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->notify()V
    :try_end_1b
    .catchall {:try_start_16 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    .line 196
    :cond_1c
    return-void

    .line 207
    :catchall_1d
    move-exception v1

    monitor-exit p0

    throw v1
.end method

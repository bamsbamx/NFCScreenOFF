.class Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;
.super Ljava/lang/Object;
.source "HostNfcFEmulationManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v1, v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 265
    :try_start_5
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v2, v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mService:Landroid/os/Messenger;

    .line 266
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    .line 267
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iput-object p1, v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    .line 268
    const-string/jumbo v0, "HostNfcFEmulationManager"

    const-string/jumbo v2, "Service bound"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    const/4 v2, 0x2

    iput v2, v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    .line 271
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mPendingPacket:[B

    if-eqz v0, :cond_3d

    .line 272
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mService:Landroid/os/Messenger;

    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v3, v3, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mPendingPacket:[B

    invoke-virtual {v0, v2, v3}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    .line 273
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mPendingPacket:[B
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3f

    :cond_3d
    monitor-exit v1

    .line 263
    return-void

    .line 264
    :catchall_3f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v1, v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 281
    :try_start_5
    const-string/jumbo v0, "HostNfcFEmulationManager"

    const-string/jumbo v2, "Service unbound"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mService:Landroid/os/Messenger;

    .line 283
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    .line 284
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;->this$0:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1f

    monitor-exit v1

    .line 279
    return-void

    .line 280
    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

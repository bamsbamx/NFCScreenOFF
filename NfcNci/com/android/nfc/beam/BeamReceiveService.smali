.class public Lcom/android/nfc/beam/BeamReceiveService;
.super Landroid/app/Service;
.source "BeamReceiveService.java"

# interfaces
.implements Lcom/android/nfc/beam/BeamTransferManager$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/beam/BeamReceiveService$1;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field public static final EXTRA_BEAM_COMPLETE_CALLBACK:Ljava/lang/String; = "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

.field public static final EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String; = "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothEnabledByNfc:Z

.field private final mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

.field private mCompleteCallback:Landroid/os/Messenger;

.field private mStartId:I

.field private mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    const-string/jumbo v0, "BeamReceiveService"

    sput-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    .line 27
    sget-boolean v0, Lcom/android/nfc/beam/BeamManager;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 41
    new-instance v0, Lcom/android/nfc/beam/BeamReceiveService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/beam/BeamReceiveService$1;-><init>(Lcom/android/nfc/beam/BeamReceiveService;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 54
    return-void
.end method

.method private invokeCompleteCallback(Z)V
    .registers 7
    .param p1, "success"    # Z

    .prologue
    const/4 v2, 0x0

    .line 134
    iget-object v3, p0, Lcom/android/nfc/beam/BeamReceiveService;->mCompleteCallback:Landroid/os/Messenger;

    if-eqz v3, :cond_15

    .line 136
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_7
    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 137
    .local v1, "msg":Landroid/os/Message;
    if-eqz p1, :cond_e

    const/4 v2, 0x1

    :cond_e
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 138
    iget-object v2, p0, Lcom/android/nfc/beam/BeamReceiveService;->mCompleteCallback:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_16

    .line 133
    .end local v1    # "msg":Landroid/os/Message;
    :cond_15
    :goto_15
    return-void

    .line 139
    :catch_16
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to invoke Beam complete callback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 164
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/beam/BeamReceiveService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 95
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    if-eqz v0, :cond_c

    .line 96
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamReceiveService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    :cond_c
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamReceiveService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x2

    .line 60
    iput p3, p0, Lcom/android/nfc/beam/BeamReceiveService;->mStartId:I

    .line 63
    if-eqz p1, :cond_10

    .line 64
    const-string/jumbo v1, "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/beam/BeamTransferRecord;

    .local v0, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    if-nez v0, :cond_20

    .line 65
    .end local v0    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :cond_10
    sget-boolean v1, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v1, :cond_1c

    sget-object v1, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No transfer record provided. Stopping."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_1c
    invoke-virtual {p0, p3}, Lcom/android/nfc/beam/BeamReceiveService;->stopSelf(I)V

    .line 67
    return v3

    .line 70
    .restart local v0    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :cond_20
    const-string/jumbo v1, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mCompleteCallback:Landroid/os/Messenger;

    .line 72
    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamReceiveService;->prepareToReceive(Lcom/android/nfc/beam/BeamTransferRecord;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 73
    sget-boolean v1, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v1, :cond_3d

    sget-object v1, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Ready for incoming Beam transfer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_3d
    const/4 v1, 0x1

    return v1

    .line 76
    :cond_3f
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/nfc/beam/BeamReceiveService;->invokeCompleteCallback(Z)V

    .line 77
    invoke-virtual {p0, p3}, Lcom/android/nfc/beam/BeamReceiveService;->stopSelf(I)V

    .line 78
    return v3
.end method

.method public onTransferComplete(Lcom/android/nfc/beam/BeamTransferManager;Z)V
    .registers 6
    .param p1, "transfer"    # Lcom/android/nfc/beam/BeamTransferManager;
    .param p2, "success"    # Z

    .prologue
    .line 148
    if-nez p2, :cond_25

    .line 149
    sget-boolean v0, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v0, :cond_25

    sget-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Transfer failed, final state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    iget v2, p1, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 149
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_25
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothEnabledByNfc:Z

    if-eqz v0, :cond_31

    .line 154
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothEnabledByNfc:Z

    .line 155
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 158
    :cond_31
    invoke-direct {p0, p2}, Lcom/android/nfc/beam/BeamReceiveService;->invokeCompleteCallback(Z)V

    .line 159
    iget v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mStartId:I

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamReceiveService;->stopSelf(I)V

    .line 146
    return-void
.end method

.method prepareToReceive(Lcom/android/nfc/beam/BeamTransferRecord;)Z
    .registers 7
    .param p1, "transferRecord"    # Lcom/android/nfc/beam/BeamTransferRecord;

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    if-eqz v0, :cond_7

    .line 103
    return v2

    .line 106
    :cond_7
    iget v0, p1, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    sget v1, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-eq v0, v1, :cond_e

    .line 108
    return v2

    .line 111
    :cond_e
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 112
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enableNoAutoConnect()Z

    move-result v0

    if-nez v0, :cond_27

    .line 113
    sget-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Error enabling Bluetooth."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return v2

    .line 116
    :cond_27
    iput-boolean v4, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBluetoothEnabledByNfc:Z

    .line 117
    sget-boolean v0, Lcom/android/nfc/beam/BeamReceiveService;->DBG:Z

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/android/nfc/beam/BeamReceiveService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Queueing out transfer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 118
    iget v2, p1, Lcom/android/nfc/beam/BeamTransferRecord;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_4c
    new-instance v0, Lcom/android/nfc/beam/BeamTransferManager;

    invoke-direct {v0, p0, p0, p1, v4}, Lcom/android/nfc/beam/BeamTransferManager;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Z)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    .line 124
    new-instance v0, Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/beam/BeamStatusReceiver;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    .line 125
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v1, p0, Lcom/android/nfc/beam/BeamReceiveService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    invoke-virtual {v1}, Lcom/android/nfc/beam/BeamStatusReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 126
    const-string/jumbo v2, "android.permission.NFC_HANDOVER_STATUS"

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 125
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/nfc/beam/BeamReceiveService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->start()V

    .line 129
    iget-object v0, p0, Lcom/android/nfc/beam/BeamReceiveService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateNotification()V

    .line 130
    return v4
.end method

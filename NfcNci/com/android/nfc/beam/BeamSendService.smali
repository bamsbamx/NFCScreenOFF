.class public Lcom/android/nfc/beam/BeamSendService;
.super Landroid/app/Service;
.source "BeamSendService.java"

# interfaces
.implements Lcom/android/nfc/beam/BeamTransferManager$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/beam/BeamSendService$1;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field public static final EXTRA_BEAM_COMPLETE_CALLBACK:Ljava/lang/String; = "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

.field public static EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

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
.method static synthetic -wrap0(Lcom/android/nfc/beam/BeamSendService;Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/beam/BeamSendService;->handleBluetoothStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const-string/jumbo v0, "BeamSendService"

    sput-object v0, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    .line 38
    sget-boolean v0, Lcom/android/nfc/beam/BeamManager;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    .line 41
    const-string/jumbo v0, "com.android.nfc.beam.EXTRA_BEAM_TRANSFER_RECORD"

    .line 40
    sput-object v0, Lcom/android/nfc/beam/BeamSendService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 52
    new-instance v0, Lcom/android/nfc/beam/BeamSendService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/beam/BeamSendService$1;-><init>(Lcom/android/nfc/beam/BeamSendService;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 62
    return-void
.end method

.method private handleBluetoothStateChanged(Landroid/content/Intent;)V
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 153
    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    .line 154
    const/high16 v2, -0x80000000

    .line 153
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 155
    .local v0, "state":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_1e

    .line 156
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    if-eqz v1, :cond_1e

    .line 157
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    iget v1, v1, Lcom/android/nfc/beam/BeamTransferManager;->mDataLinkType:I

    sget v2, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-ne v1, v2, :cond_1e

    .line 158
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v1}, Lcom/android/nfc/beam/BeamTransferManager;->start()V

    .line 152
    :cond_1e
    return-void
.end method

.method private invokeCompleteCallback(Z)V
    .registers 7
    .param p1, "success"    # Z

    .prologue
    const/4 v2, 0x0

    .line 164
    iget-object v3, p0, Lcom/android/nfc/beam/BeamSendService;->mCompleteCallback:Landroid/os/Messenger;

    if-eqz v3, :cond_15

    .line 166
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_7
    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 167
    .local v1, "msg":Landroid/os/Message;
    if-eqz p1, :cond_e

    const/4 v2, 0x1

    :cond_e
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 168
    iget-object v2, p0, Lcom/android/nfc/beam/BeamSendService;->mCompleteCallback:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_16

    .line 163
    .end local v1    # "msg":Landroid/os/Message;
    :cond_15
    :goto_15
    return-void

    .line 169
    :catch_16
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "failed to invoke Beam complete callback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method


# virtual methods
.method createBeamTransferManager(Lcom/android/nfc/beam/BeamTransferRecord;)Z
    .registers 5
    .param p1, "transferRecord"    # Lcom/android/nfc/beam/BeamTransferRecord;

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    if-eqz v0, :cond_6

    .line 139
    return v2

    .line 142
    :cond_6
    iget v0, p1, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    sget v1, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-eq v0, v1, :cond_d

    .line 144
    return v2

    .line 147
    :cond_d
    new-instance v0, Lcom/android/nfc/beam/BeamTransferManager;

    invoke-direct {v0, p0, p0, p1, v2}, Lcom/android/nfc/beam/BeamTransferManager;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager$Callback;Lcom/android/nfc/beam/BeamTransferRecord;Z)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    .line 148
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->updateNotification()V

    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method doTransfer(Lcom/android/nfc/beam/BeamTransferRecord;)Z
    .registers 8
    .param p1, "transferRecord"    # Lcom/android/nfc/beam/BeamTransferRecord;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/nfc/beam/BeamSendService;->createBeamTransferManager(Lcom/android/nfc/beam/BeamTransferRecord;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 112
    new-instance v0, Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/beam/BeamStatusReceiver;-><init>(Landroid/content/Context;Lcom/android/nfc/beam/BeamTransferManager;)V

    iput-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    .line 113
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    invoke-virtual {v1}, Lcom/android/nfc/beam/BeamStatusReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v1

    .line 114
    const-string/jumbo v2, "android.permission.NFC_HANDOVER_STATUS"

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 113
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/nfc/beam/BeamSendService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 116
    iget v0, p1, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    sget v1, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-ne v0, v1, :cond_37

    .line 117
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 119
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamTransferManager;->start()V

    .line 131
    :cond_37
    :goto_37
    return v5

    .line 121
    :cond_38
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enableNoAutoConnect()Z

    move-result v0

    if-nez v0, :cond_4c

    .line 122
    sget-object v0, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Error enabling Bluetooth."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mTransferManager:Lcom/android/nfc/beam/BeamTransferManager;

    .line 124
    return v4

    .line 126
    :cond_4c
    iput-boolean v5, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothEnabledByNfc:Z

    .line 127
    sget-boolean v0, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v0, :cond_37

    sget-object v0, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Queueing out transfer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 128
    iget v2, p1, Lcom/android/nfc/beam/BeamTransferRecord;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 134
    :cond_72
    return v4
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 3

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/beam/BeamSendService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 77
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 79
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    if-eqz v0, :cond_c

    .line 80
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBeamStatusReceiver:Lcom/android/nfc/beam/BeamStatusReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamSendService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 82
    :cond_c
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamSendService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x2

    .line 87
    iput p3, p0, Lcom/android/nfc/beam/BeamSendService;->mStartId:I

    .line 90
    if-eqz p1, :cond_f

    .line 91
    sget-object v1, Lcom/android/nfc/beam/BeamSendService;->EXTRA_BEAM_TRANSFER_RECORD:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/beam/BeamTransferRecord;

    .local v0, "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    if-nez v0, :cond_1f

    .line 92
    .end local v0    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :cond_f
    sget-boolean v1, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "No transfer record provided. Stopping."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1b
    invoke-virtual {p0, p3}, Lcom/android/nfc/beam/BeamSendService;->stopSelf(I)V

    .line 94
    return v3

    .line 97
    .restart local v0    # "transferRecord":Lcom/android/nfc/beam/BeamTransferRecord;
    :cond_1f
    const-string/jumbo v1, "com.android.nfc.beam.TRANSFER_COMPLETE_CALLBACK"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    iput-object v1, p0, Lcom/android/nfc/beam/BeamSendService;->mCompleteCallback:Landroid/os/Messenger;

    .line 99
    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamSendService;->doTransfer(Lcom/android/nfc/beam/BeamTransferRecord;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 100
    sget-boolean v1, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v1, :cond_3c

    sget-object v1, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Starting outgoing Beam transfer"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_3c
    const/4 v1, 0x1

    return v1

    .line 103
    :cond_3e
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/nfc/beam/BeamSendService;->invokeCompleteCallback(Z)V

    .line 104
    invoke-virtual {p0, p3}, Lcom/android/nfc/beam/BeamSendService;->stopSelf(I)V

    .line 105
    return v3
.end method

.method public onTransferComplete(Lcom/android/nfc/beam/BeamTransferManager;Z)V
    .registers 6
    .param p1, "transfer"    # Lcom/android/nfc/beam/BeamTransferManager;
    .param p2, "success"    # Z

    .prologue
    .line 178
    if-nez p2, :cond_25

    .line 179
    sget-boolean v0, Lcom/android/nfc/beam/BeamSendService;->DBG:Z

    if-eqz v0, :cond_25

    sget-object v0, Lcom/android/nfc/beam/BeamSendService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Transfer failed, final state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    iget v2, p1, Lcom/android/nfc/beam/BeamTransferManager;->mState:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_25
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothEnabledByNfc:Z

    if-eqz v0, :cond_31

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothEnabledByNfc:Z

    .line 185
    iget-object v0, p0, Lcom/android/nfc/beam/BeamSendService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 188
    :cond_31
    invoke-direct {p0, p2}, Lcom/android/nfc/beam/BeamSendService;->invokeCompleteCallback(Z)V

    .line 189
    iget v0, p0, Lcom/android/nfc/beam/BeamSendService;->mStartId:I

    invoke-virtual {p0, v0}, Lcom/android/nfc/beam/BeamSendService;->stopSelf(I)V

    .line 176
    return-void
.end method

.class public Lcom/android/nfc/handover/PeripheralHandoverService;
.super Landroid/app/Service;
.source "PeripheralHandoverService.java"

# interfaces
.implements Lcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/PeripheralHandoverService$1;,
        Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;
    }
.end annotation


# static fields
.field static final ACTION_START_THROW_INTRODUCTION:Ljava/lang/String; = "com.sonymobile.playanywhere.action.START_THROW_INTRODUCTION"

.field public static final BUNDLE_TRANSFER:Ljava/lang/String; = "transfer"

.field static final DBG:Z = true

.field public static final EXTRA_BT_ENABLED:Ljava/lang/String; = "bt_enabled"

.field public static final EXTRA_CLIENT:Ljava/lang/String; = "client"

.field public static final EXTRA_PERIPHERAL_DEVICE:Ljava/lang/String; = "device"

.field public static final EXTRA_PERIPHERAL_HID:Ljava/lang/String; = "hid"

.field public static final EXTRA_PERIPHERAL_NAME:Ljava/lang/String; = "headsetname"

.field public static final EXTRA_PERIPHERAL_TRANSPORT:Ljava/lang/String; = "transporttype"

.field static final EXTRA_START_INTRODUCTION_CLIENT_PACKAGE_NAME:Ljava/lang/String; = "KEY_START_INTRODUCTION_CLIENT_PACKAGE_NAME"

.field public static final MSG_HEADSET_CONNECTED:I = 0x0

.field public static final MSG_HEADSET_NOT_CONNECTED:I = 0x1

.field static final MSG_PAUSE_POLLING:I = 0x0

.field private static final PAUSE_DELAY_MILLIS:I = 0x12c

.field private static final PAUSE_POLLING_TIMEOUT_MS:I = 0x88b8

.field static final PLAYANYWHERE_PACKAGE_NAME:Ljava/lang/String; = "com.sonymobile.playanywhere"

.field static final TAG:Ljava/lang/String; = "PeripheralHandoverService"

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field mBluetoothEnabledByNfc:Z

.field mBluetoothHeadsetConnected:Z

.field mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

.field final mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

.field mClient:Landroid/os/Messenger;

.field mDevice:Landroid/bluetooth/BluetoothDevice;

.field mHandler:Landroid/os/Handler;

.field final mMessenger:Landroid/os/Messenger;

.field mNfcAdapter:Landroid/nfc/NfcAdapter;

.field mSoundPool:Landroid/media/SoundPool;

.field mStartId:I

.field mSuccessSound:I


# direct methods
.method static synthetic -wrap0(Lcom/android/nfc/handover/PeripheralHandoverService;Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/PeripheralHandoverService;->handleBluetoothStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/nfc/handover/PeripheralHandoverService;->sLock:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 102
    new-instance v0, Lcom/android/nfc/handover/PeripheralHandoverService$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/PeripheralHandoverService$1;-><init>(Lcom/android/nfc/handover/PeripheralHandoverService;)V

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 113
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 114
    new-instance v0, Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;

    invoke-direct {v0, p0}, Lcom/android/nfc/handover/PeripheralHandoverService$MessageHandler;-><init>(Lcom/android/nfc/handover/PeripheralHandoverService;)V

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mMessenger:Landroid/os/Messenger;

    .line 116
    iput-boolean v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    .line 117
    iput-boolean v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 118
    iput v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    .line 112
    return-void
.end method

.method private handleBluetoothStateChanged(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 211
    const-string/jumbo v1, "android.bluetooth.adapter.extra.STATE"

    .line 212
    const/high16 v2, -0x80000000

    .line 211
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 213
    .local v0, "state":I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_29

    .line 215
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    if-eqz v1, :cond_1a

    .line 216
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->hasStarted()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 210
    :cond_1a
    :goto_1a
    return-void

    .line 217
    :cond_1b
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->start()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 218
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->resumePolling()V

    goto :goto_1a

    .line 221
    :cond_29
    const/16 v1, 0xa

    if-ne v0, v1, :cond_1a

    .line 222
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_39

    .line 223
    iput-boolean v3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 225
    :cond_39
    iput-boolean v3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    goto :goto_1a
.end method


# virtual methods
.method disableBluetoothIfNeeded()V
    .registers 2

    .prologue
    .line 276
    iget-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    if-nez v0, :cond_5

    return-void

    .line 277
    :cond_5
    invoke-virtual {p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->hasConnectedBluetoothDevices()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 279
    :cond_c
    iget-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    if-nez v0, :cond_18

    .line 280
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 275
    :cond_18
    return-void
.end method

.method doPeripheralHandover(Landroid/os/Bundle;)Z
    .registers 13
    .param p1, "msgData"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 169
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    if-eqz v0, :cond_11

    .line 170
    const-string/jumbo v0, "PeripheralHandoverService"

    const-string/jumbo v1, "Ignoring pairing request, existing handover in progress."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return v10

    .line 174
    :cond_11
    if-nez p1, :cond_14

    .line 175
    return v8

    .line 178
    :cond_14
    const-string/jumbo v0, "device"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 179
    const-string/jumbo v0, "headsetname"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v0, "transporttype"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 181
    .local v4, "transport":I
    const-string/jumbo v0, "hid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 183
    .local v5, "isSupportHid":Z
    const-string/jumbo v0, "client"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mClient:Landroid/os/Messenger;

    .line 184
    const-string/jumbo v0, "bt_enabled"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 186
    new-instance v0, Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .line 187
    iget-object v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    move-object v1, p0

    move-object v6, p0

    .line 186
    invoke-direct/range {v0 .. v6}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;IZLcom/android/nfc/handover/BluetoothPeripheralHandover$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .line 189
    const/4 v0, 0x2

    if-ne v4, v0, :cond_63

    .line 190
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    .line 191
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v6, 0x12c

    .line 190
    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 193
    :cond_63
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 194
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->start()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 195
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->resumePolling()V

    .line 207
    :cond_7d
    return v10

    .line 200
    :cond_7e
    invoke-virtual {p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->enableBluetooth()Z

    move-result v0

    if-nez v0, :cond_7d

    .line 201
    const-string/jumbo v0, "PeripheralHandoverService"

    const-string/jumbo v1, "Error enabling Bluetooth."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iput-object v9, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .line 203
    return v8
.end method

.method enableBluetooth()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 268
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 269
    iput-boolean v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    .line 270
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enableNoAutoConnect()Z

    move-result v0

    return v0

    .line 272
    :cond_12
    return v1
.end method

.method hasConnectedBluetoothDevices()Z
    .registers 5

    .prologue
    .line 286
    iget-object v3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 288
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_28

    .line 289
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "device$iterator":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 290
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 299
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    return v3

    .line 303
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "device$iterator":Ljava/util/Iterator;
    :cond_28
    const/4 v3, 0x0

    return v3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 323
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBluetoothPeripheralHandoverComplete(Z)V
    .registers 6
    .param p1, "connected"    # Z

    .prologue
    const/4 v3, 0x0

    .line 232
    iget-object v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    iget v1, v2, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->mTransport:I

    .line 233
    .local v1, "transport":I
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    .line 234
    iput-boolean p1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothHeadsetConnected:Z

    .line 241
    const/4 v2, 0x2

    if-ne v1, v2, :cond_f

    if-eqz p1, :cond_41

    .line 250
    :cond_f
    :goto_f
    invoke-virtual {p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->disableBluetoothIfNeeded()V

    .line 251
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/PeripheralHandoverService;->replyToClient(Z)V

    .line 253
    if-eqz p1, :cond_34

    .line 254
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.playanywhere.action.START_THROW_INTRODUCTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "KEY_START_INTRODUCTION_CLIENT_PACKAGE_NAME"

    invoke-virtual {p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string/jumbo v2, "com.sonymobile.playanywhere"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/nfc/handover/PeripheralHandoverService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 260
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_34
    sget-object v3, Lcom/android/nfc/handover/PeripheralHandoverService;->sLock:Ljava/lang/Object;

    monitor-enter v3

    .line 261
    :try_start_37
    iget v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/PeripheralHandoverService;->stopSelf(I)V

    .line 262
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_54

    monitor-exit v3

    .line 230
    return-void

    .line 242
    :cond_41
    iget-object v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 243
    iget-object v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 248
    :cond_4e
    iget-object v2, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->resumePolling()V

    goto :goto_f

    .line 260
    :catchall_54
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onCreate()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 149
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 151
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-direct {v1, v4, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mSoundPool:Landroid/media/SoundPool;

    .line 152
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v2, 0x7f050000

    invoke-virtual {v1, p0, v2, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mSuccessSound:I

    .line 153
    invoke-virtual {p0}, Lcom/android/nfc/handover/PeripheralHandoverService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/nfc/handover/PeripheralHandoverService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    return-void
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 161
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 162
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_c

    .line 163
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 165
    :cond_c
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/PeripheralHandoverService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 160
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 124
    sget-object v1, Lcom/android/nfc/handover/PeripheralHandoverService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_5
    iget v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I

    if-eqz v0, :cond_d

    .line 126
    iput p3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_1f

    monitor-exit v1

    .line 128
    return v2

    .line 130
    :cond_d
    :try_start_d
    iput p3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mStartId:I
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_1f

    monitor-exit v1

    .line 133
    if-nez p1, :cond_22

    .line 134
    const-string/jumbo v0, "PeripheralHandoverService"

    const-string/jumbo v1, "Intent is null, can\'t do peripheral handover."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-virtual {p0, p3}, Lcom/android/nfc/handover/PeripheralHandoverService;->stopSelf(I)V

    .line 136
    return v3

    .line 124
    :catchall_1f
    move-exception v0

    monitor-exit v1

    throw v0

    .line 139
    :cond_22
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/PeripheralHandoverService;->doPeripheralHandover(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 140
    return v2

    .line 142
    :cond_2d
    invoke-virtual {p0, p3}, Lcom/android/nfc/handover/PeripheralHandoverService;->stopSelf(I)V

    .line 143
    return v3
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    .line 330
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v0}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 331
    iget-object v0, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothPeripheralHandover:Lcom/android/nfc/handover/BluetoothPeripheralHandover;

    invoke-virtual {v0, v1}, Lcom/android/nfc/handover/BluetoothPeripheralHandover;->complete(Z)V

    .line 334
    :cond_12
    return v1
.end method

.method replyToClient(Z)V
    .registers 9
    .param p1, "connected"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 307
    iget-object v5, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mClient:Landroid/os/Messenger;

    if-nez v5, :cond_8

    .line 308
    return-void

    .line 311
    :cond_8
    if-eqz p1, :cond_1b

    move v2, v3

    .line 312
    .local v2, "msgId":I
    :goto_b
    invoke-static {v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 313
    .local v1, "msg":Landroid/os/Message;
    iget-boolean v5, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mBluetoothEnabledByNfc:Z

    if-eqz v5, :cond_1d

    :goto_13
    iput v4, v1, Landroid/os/Message;->arg1:I

    .line 315
    :try_start_15
    iget-object v3, p0, Lcom/android/nfc/handover/PeripheralHandoverService;->mClient:Landroid/os/Messenger;

    invoke-virtual {v3, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1a} :catch_1f

    .line 306
    :goto_1a
    return-void

    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "msgId":I
    :cond_1b
    move v2, v4

    .line 311
    goto :goto_b

    .restart local v1    # "msg":Landroid/os/Message;
    .restart local v2    # "msgId":I
    :cond_1d
    move v4, v3

    .line 313
    goto :goto_13

    .line 316
    :catch_1f
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1a
.end method

.class public Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;
.super Ljava/lang/Object;
.source "LockScreenHeadsetHandover.java"

# interfaces
.implements Landroid/nfc/NfcAdapter$NfcUnlockHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$1;,
        Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;
    }
.end annotation


# static fields
.field private static final BONDED_DEVICE_INFO:Ljava/lang/String; = "bonded_device_info"

.field private static final DBG:Z = false

.field private static final POLLING_TECH_IN_LOCK:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LockScreenHeadsetHandover"

.field private static final TYPE_BT_OOB:[B


# instance fields
.field private mBondedDeviceInfoAccess:Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;)Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->mBondedDeviceInfoAccess:Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;I)V
    .registers 2
    .param p1, "adapterState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->handleAdapterStateChange(I)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->handleBondStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;Landroid/bluetooth/BluetoothAdapter;)V
    .registers 2
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->updateBondedInfo(Landroid/bluetooth/BluetoothAdapter;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 56
    const-string/jumbo v0, "application/vnd.bluetooth.ep.oob"

    .line 57
    const-string/jumbo v1, "US_ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->TYPE_BT_OOB:[B

    .line 59
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 60
    const-class v1, Landroid/nfc/tech/NfcA;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 61
    const-class v1, Landroid/nfc/tech/NfcF;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 62
    const-class v1, Landroid/nfc/tech/NfcV;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 59
    sput-object v0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->POLLING_TECH_IN_LOCK:[Ljava/lang/String;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    new-instance v0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$1;-><init>(Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    new-instance v0, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;

    const-string/jumbo v1, "bonded_device_info"

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->mBondedDeviceInfoAccess:Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;

    .line 70
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 71
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string/jumbo v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v0, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 74
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 75
    sget-object v1, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->POLLING_TECH_IN_LOCK:[Ljava/lang/String;

    .line 74
    invoke-virtual {v0, p0, v1}, Landroid/nfc/NfcAdapter;->addNfcUnlockHandler(Landroid/nfc/NfcAdapter$NfcUnlockHandler;[Ljava/lang/String;)Z

    .line 76
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->mVibrator:Landroid/os/Vibrator;

    .line 68
    return-void
.end method

.method private handleAdapterStateChange(I)V
    .registers 3
    .param p1, "adapterState"    # I

    .prologue
    .line 280
    packed-switch p1, :pswitch_data_c

    .line 278
    :goto_3
    return-void

    .line 282
    :pswitch_4
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 283
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    invoke-direct {p0, v0}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->updateBondedInfo(Landroid/bluetooth/BluetoothAdapter;)V

    goto :goto_3

    .line 280
    :pswitch_data_c
    .packed-switch 0xc
        :pswitch_4
    .end packed-switch
.end method

.method private handleBondStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "bondState"    # I

    .prologue
    .line 292
    if-nez p1, :cond_c

    .line 293
    const-string/jumbo v0, "LockScreenHeadsetHandover"

    const-string/jumbo v1, "BluetoothDevice is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void

    .line 297
    :cond_c
    packed-switch p2, :pswitch_data_24

    .line 291
    :goto_f
    :pswitch_f
    return-void

    .line 299
    :pswitch_10
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->mBondedDeviceInfoAccess:Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->setAddress(Ljava/lang/String;)V

    goto :goto_f

    .line 302
    :pswitch_1a
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->mBondedDeviceInfoAccess:Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->removeAddress(Ljava/lang/String;)V

    goto :goto_f

    .line 297
    :pswitch_data_24
    .packed-switch 0xa
        :pswitch_1a
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private parseBtOob(Ljava/nio/ByteBuffer;)Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;
    .registers 12
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 218
    new-instance v5, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;-><init>(Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;)V

    .line 221
    .local v5, "result":Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;
    const/4 v8, 0x2

    :try_start_7
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 222
    const/4 v8, 0x6

    new-array v0, v8, [B

    .line 223
    .local v0, "address":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 224
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    const/4 v8, 0x3

    if-ge v3, v8, :cond_23

    .line 225
    aget-byte v6, v0, v3

    .line 226
    .local v6, "temp":B
    rsub-int/lit8 v8, v3, 0x5

    aget-byte v8, v0, v8

    aput-byte v8, v0, v3

    .line 227
    rsub-int/lit8 v8, v3, 0x5

    aput-byte v6, v0, v8

    .line 224
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 230
    .end local v6    # "temp":B
    :cond_23
    invoke-virtual {v5, v0}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->setBluetoothDevice([B)V

    .line 232
    :goto_26
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-lez v8, :cond_4c

    .line 234
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 235
    .local v4, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 236
    .local v7, "type":I
    packed-switch v7, :pswitch_data_84

    .line 257
    :pswitch_37
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v4

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_41} :catch_42
    .catch Ljava/nio/BufferUnderflowException; {:try_start_7 .. :try_end_41} :catch_58

    goto :goto_26

    .line 261
    .end local v0    # "address":[B
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v7    # "type":I
    :catch_42
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v8, "LockScreenHeadsetHandover"

    const-string/jumbo v9, "BT OOB: invalid BT address"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4c
    :goto_4c
    return-object v5

    .line 240
    .restart local v0    # "address":[B
    .restart local v3    # "i":I
    .restart local v4    # "len":I
    .restart local v7    # "type":I
    :pswitch_4d
    add-int/lit8 v8, v4, -0x1

    const/4 v9, 0x2

    .line 239
    :try_start_50
    invoke-static {p1, v9, v8}, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->getServiceUuids(Ljava/nio/ByteBuffer;II)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->setUuids(Ljava/util/ArrayList;)V
    :try_end_57
    .catch Ljava/lang/IllegalArgumentException; {:try_start_50 .. :try_end_57} :catch_42
    .catch Ljava/nio/BufferUnderflowException; {:try_start_50 .. :try_end_57} :catch_58

    goto :goto_26

    .line 263
    .end local v0    # "address":[B
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v7    # "type":I
    :catch_58
    move-exception v2

    .line 264
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string/jumbo v8, "LockScreenHeadsetHandover"

    const-string/jumbo v9, "BT OOB: payload shorter than expected"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 245
    .end local v2    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v0    # "address":[B
    .restart local v3    # "i":I
    .restart local v4    # "len":I
    .restart local v7    # "type":I
    :pswitch_63
    add-int/lit8 v8, v4, -0x1

    const/4 v9, 0x4

    .line 244
    :try_start_66
    invoke-static {p1, v9, v8}, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->getServiceUuids(Ljava/nio/ByteBuffer;II)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->setUuids(Ljava/util/ArrayList;)V

    goto :goto_26

    .line 250
    :pswitch_6e
    add-int/lit8 v8, v4, -0x1

    const/16 v9, 0x10

    .line 249
    invoke-static {p1, v9, v8}, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->getServiceUuids(Ljava/nio/ByteBuffer;II)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->setUuids(Ljava/util/ArrayList;)V

    goto :goto_26

    .line 254
    :pswitch_7a
    add-int/lit8 v8, v4, -0x1

    .line 253
    invoke-static {p1, v8}, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->getBluetoothClass(Ljava/nio/ByteBuffer;I)Landroid/bluetooth/BluetoothClass;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->setBluetoothClass(Landroid/bluetooth/BluetoothClass;)V
    :try_end_83
    .catch Ljava/lang/IllegalArgumentException; {:try_start_66 .. :try_end_83} :catch_42
    .catch Ljava/nio/BufferUnderflowException; {:try_start_66 .. :try_end_83} :catch_58

    goto :goto_26

    .line 236
    :pswitch_data_84
    .packed-switch 0x2
        :pswitch_4d
        :pswitch_4d
        :pswitch_63
        :pswitch_63
        :pswitch_6e
        :pswitch_6e
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_7a
    .end packed-switch
.end method

.method private parseHandoverSelect(Landroid/nfc/NdefMessage;)Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;
    .registers 8
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_6
    if-ge v1, v3, :cond_2d

    aget-object v0, v2, v1

    .line 209
    .local v0, "oob":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2a

    .line 210
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v4

    sget-object v5, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->TYPE_BT_OOB:[B

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    .line 209
    if-eqz v4, :cond_2a

    .line 211
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;

    move-result-object v1

    return-object v1

    .line 208
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 214
    .end local v0    # "oob":Landroid/nfc/NdefRecord;
    :cond_2d
    const/4 v1, 0x0

    return-object v1
.end method

.method private parseMessage(Landroid/nfc/NdefMessage;)Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;
    .registers 7
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 187
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 188
    .local v0, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v1

    .line 189
    .local v1, "tnf":S
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    .line 195
    .local v2, "type":[B
    const/4 v3, 0x2

    if-ne v1, v3, :cond_27

    sget-object v3, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->TYPE_BT_OOB:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 196
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;

    move-result-object v3

    return-object v3

    .line 200
    :cond_27
    const/4 v3, 0x1

    if-ne v1, v3, :cond_37

    .line 201
    sget-object v3, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    .line 200
    if-eqz v3, :cond_37

    .line 202
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->parseHandoverSelect(Landroid/nfc/NdefMessage;)Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;

    move-result-object v3

    return-object v3

    .line 204
    :cond_37
    const/4 v3, 0x0

    return-object v3
.end method

.method private readMessage(Landroid/nfc/Tag;)Landroid/nfc/NdefMessage;
    .registers 4
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, "message":Landroid/nfc/NdefMessage;
    invoke-static {p1}, Landroid/nfc/tech/Ndef;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/Ndef;

    move-result-object v1

    .line 180
    .local v1, "ndef":Landroid/nfc/tech/Ndef;
    if-eqz v1, :cond_b

    .line 181
    invoke-virtual {v1}, Landroid/nfc/tech/Ndef;->getCachedNdefMessage()Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 183
    .end local v0    # "message":Landroid/nfc/NdefMessage;
    :cond_b
    return-object v0
.end method

.method private updateBondedInfo(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;

    .prologue
    .line 270
    if-nez p1, :cond_c

    .line 271
    const-string/jumbo v0, "LockScreenHeadsetHandover"

    const-string/jumbo v1, "updateBondedInfo: BluetoothAdapter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void

    .line 274
    :cond_c
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->mBondedDeviceInfoAccess:Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->setDevices(Ljava/util/Set;)V

    .line 269
    return-void
.end method


# virtual methods
.method public onUnlockAttempted(Landroid/nfc/Tag;)Z
    .registers 8
    .param p1, "tag"    # Landroid/nfc/Tag;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 145
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->readMessage(Landroid/nfc/Tag;)Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 146
    .local v0, "message":Landroid/nfc/NdefMessage;
    if-nez v0, :cond_12

    .line 147
    const-string/jumbo v2, "LockScreenHeadsetHandover"

    const-string/jumbo v3, "NdefMessage is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return v4

    .line 152
    :cond_12
    invoke-direct {p0, v0}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->parseMessage(Landroid/nfc/NdefMessage;)Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;

    move-result-object v1

    .line 153
    .local v1, "result":Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;
    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->isValid()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 159
    invoke-virtual {v1}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->hasBtCapability()Z

    move-result v2

    if-nez v2, :cond_38

    .line 160
    const-string/jumbo v2, "LockScreenHeadsetHandover"

    const-string/jumbo v3, "No BT Capability"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    return v4

    .line 154
    :cond_2e
    const-string/jumbo v2, "LockScreenHeadsetHandover"

    const-string/jumbo v3, "No BT_OOB"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return v4

    .line 165
    :cond_38
    invoke-virtual {v1}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->hasPaired()Z

    move-result v2

    if-nez v2, :cond_48

    .line 166
    const-string/jumbo v2, "LockScreenHeadsetHandover"

    const-string/jumbo v3, "still not paired"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return v4

    .line 170
    :cond_48
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService;->playSound(I)V

    .line 171
    iget-object v2, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    .line 173
    return v3
.end method

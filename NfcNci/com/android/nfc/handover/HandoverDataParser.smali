.class public Lcom/android/nfc/handover/HandoverDataParser;
.super Ljava/lang/Object;
.source "HandoverDataParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;,
        Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;,
        Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;,
        Lcom/android/nfc/handover/HandoverDataParser$WifiP2pIncomingHandoverData;
    }
.end annotation


# static fields
.field public static final BT_HANDOVER_LE_ROLE_CENTRAL_ONLY:I = 0x1

.field private static final BT_HANDOVER_TYPE_LE_ROLE:I = 0x1c

.field private static final BT_HANDOVER_TYPE_LONG_LOCAL_NAME:I = 0x9

.field private static final BT_HANDOVER_TYPE_MAC:I = 0x1b

.field private static final BT_HANDOVER_TYPE_SHORT_LOCAL_NAME:I = 0x8

.field private static final CARRIER_POWER_STATE_ACTIVATING:I = 0x2

.field private static final CARRIER_POWER_STATE_ACTIVE:I = 0x1

.field private static final CARRIER_POWER_STATE_INACTIVE:I = 0x0

.field private static final CARRIER_POWER_STATE_UNKNOWN:I = 0x3

.field private static final DBG:Z = false

.field private static final RTD_COLLISION_RESOLUTION:[B

.field private static final TAG:Ljava/lang/String; = "NfcHandover"

.field private static final TYPE_BLE_OOB:[B

.field private static final TYPE_BT_OOB:[B

.field private static final TYPE_NOKIA:[B

.field static final TYPE_WIFI_P2P_OOB:[B


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mContext:Landroid/content/Context;

.field private mLocalBluetoothAddress:Ljava/lang/String;

.field private mLocalWifiP2pAddress:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 61
    const-string/jumbo v0, "application/vnd.bluetooth.ep.oob"

    .line 62
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    .line 63
    const-string/jumbo v0, "application/vnd.bluetooth.le.oob"

    .line 64
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BLE_OOB:[B

    .line 66
    const-string/jumbo v0, "nokia.com:bt"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_NOKIA:[B

    .line 67
    const-string/jumbo v0, "application/x-sony.wfp2p.oob"

    .line 68
    const-string/jumbo v1, "US_ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_WIFI_P2P_OOB:[B

    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/android/nfc/handover/HandoverDataParser;->RTD_COLLISION_RESOLUTION:[B

    .line 57
    return-void

    .line 70
    :array_3a
    .array-data 1
        0x63t
        0x72t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLock:Ljava/lang/Object;

    .line 134
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    .line 135
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 136
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 133
    return-void
.end method

.method static addressToReverseBytes(Ljava/lang/String;)[B
    .registers 7
    .param p0, "address"    # Ljava/lang/String;

    .prologue
    .line 558
    const-string/jumbo v3, ":"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, "split":[Ljava/lang/String;
    array-length v3, v2

    new-array v1, v3, [B

    .line 561
    .local v1, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v3, v2

    if-ge v0, v3, :cond_20

    .line 563
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aget-object v4, v2, v0

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 561
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 566
    :cond_20
    return-object v1
.end method

.method private byteArrayToInt([B)I
    .registers 3
    .param p1, "byteArray"    # [B

    .prologue
    .line 800
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method static bytesToMacAddress([B)Ljava/lang/String;
    .registers 7
    .param p0, "macAddr"    # [B

    .prologue
    const/4 v5, 0x0

    .line 581
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    .local v1, "stringBuf":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    array-length v2, p0

    if-ge v0, v2, :cond_22

    .line 584
    const-string/jumbo v2, "%02x:"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-byte v4, p0, v0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 587
    :cond_22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_31

    .line 588
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 591
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static createCollisionRecord()Landroid/nfc/NdefRecord;
    .registers 5

    .prologue
    .line 140
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 141
    .local v0, "random":[B
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 142
    new-instance v1, Landroid/nfc/NdefRecord;

    sget-object v2, Lcom/android/nfc/handover/HandoverDataParser;->RTD_COLLISION_RESOLUTION:[B

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1
.end method

.method private parseMacFromBluetoothRecord(Ljava/nio/ByteBuffer;)[B
    .registers 6
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 545
    const/4 v3, 0x6

    new-array v0, v3, [B

    .line 546
    .local v0, "address":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 549
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    const/4 v3, 0x3

    if-ge v1, v3, :cond_19

    .line 550
    aget-byte v2, v0, v1

    .line 551
    .local v2, "temp":B
    rsub-int/lit8 v3, v1, 0x5

    aget-byte v3, v0, v3

    aput-byte v3, v0, v1

    .line 552
    rsub-int/lit8 v3, v1, 0x5

    aput-byte v2, v0, v3

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 554
    .end local v2    # "temp":B
    :cond_19
    return-object v0
.end method

.method private parseWifiP2pDeviceInfo(Ljava/nio/ByteBuffer;Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;)V
    .registers 10
    .param p1, "payload"    # Ljava/nio/ByteBuffer;
    .param p2, "result"    # Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;

    .prologue
    .line 805
    const/4 v5, 0x6

    :try_start_1
    new-array v0, v5, [B

    .line 806
    .local v0, "address":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 809
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_7
    const/4 v5, 0x3

    if-ge v3, v5, :cond_19

    .line 810
    aget-byte v4, v0, v3

    .line 811
    .local v4, "temp":B
    rsub-int/lit8 v5, v3, 0x5

    aget-byte v5, v0, v5

    aput-byte v5, v0, v3

    .line 812
    rsub-int/lit8 v5, v3, 0x5

    aput-byte v4, v0, v5

    .line 809
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 814
    .end local v4    # "temp":B
    :cond_19
    invoke-static {v0}, Lcom/android/nfc/handover/HandoverDataParser;->bytesToMacAddress([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p2, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;->deviceMacAddr:Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1f} :catch_2b
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1f} :catch_20

    .line 803
    .end local v0    # "address":[B
    .end local v3    # "i":I
    :goto_1f
    return-void

    .line 817
    :catch_20
    move-exception v2

    .line 818
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string/jumbo v5, "NfcHandover"

    const-string/jumbo v6, "WIFI P2P OOB: payload shorter than expected"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 815
    .end local v2    # "e":Ljava/nio/BufferUnderflowException;
    :catch_2b
    move-exception v1

    .line 816
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "NfcHandover"

    const-string/jumbo v6, "WIFI P2P OOB: invalid address"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method private parseWifiP2pHandoverSelect(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;
    .registers 11
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 771
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_8
    if-ge v2, v5, :cond_44

    aget-object v1, v4, v2

    .line 772
    .local v1, "oob":Landroid/nfc/NdefRecord;
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_41

    .line 773
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v6

    sget-object v7, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_WIFI_P2P_OOB:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    .line 772
    if-eqz v6, :cond_41

    .line 774
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/nfc/handover/HandoverDataParser;->parseWifiP2pOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;

    move-result-object v0

    .line 775
    .local v0, "data":Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;
    if-eqz v0, :cond_40

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getId()[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/nfc/handover/HandoverDataParser;->isCarrierActivating(Landroid/nfc/NdefRecord;[B)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 776
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;->carrierActivating:Z

    .line 778
    :cond_40
    return-object v0

    .line 771
    .end local v0    # "data":Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;
    :cond_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 782
    .end local v1    # "oob":Landroid/nfc/NdefRecord;
    :cond_44
    return-object v8
.end method

.method private parseWifiP2pOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;
    .registers 13
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 823
    if-nez p1, :cond_6

    return-object v9

    .line 825
    :cond_6
    new-instance v5, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;

    invoke-direct {v5}, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;-><init>()V

    .line 826
    .local v5, "result":Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;
    iput-boolean v8, v5, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;->valid:Z

    .line 829
    const/4 v8, 0x2

    :try_start_e
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 831
    :goto_11
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-lez v8, :cond_46

    .line 832
    const/4 v8, 0x2

    new-array v1, v8, [B

    .line 835
    .local v1, "container":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 836
    .local v6, "type":I
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 837
    invoke-direct {p0, v1}, Lcom/android/nfc/handover/HandoverDataParser;->byteArrayToInt([B)I

    move-result v4

    .line 838
    .local v4, "len":I
    new-array v7, v4, [B

    .line 840
    .local v7, "value":[B
    packed-switch v6, :pswitch_data_90

    .line 855
    const-string/jumbo v8, "NfcHandover"

    const-string/jumbo v9, "Undefined Wifi P2P Attribute ID"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_3b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_3b} :catch_3c
    .catch Ljava/nio/BufferUnderflowException; {:try_start_e .. :try_end_3b} :catch_5d

    goto :goto_11

    .line 860
    .end local v1    # "container":[B
    .end local v4    # "len":I
    .end local v6    # "type":I
    .end local v7    # "value":[B
    :catch_3c
    move-exception v2

    .line 861
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v8, "NfcHandover"

    const-string/jumbo v9, "WIFI P2P OOB: invalid address"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :cond_46
    :goto_46
    iget-object v8, v5, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;->deviceMacAddr:Ljava/lang/String;

    if-eqz v8, :cond_52

    iget-object v8, v5, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;->deviceMacAddr:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_8d

    .line 870
    :cond_52
    :goto_52
    return-object v5

    .line 842
    .restart local v1    # "container":[B
    .restart local v4    # "len":I
    .restart local v6    # "type":I
    .restart local v7    # "value":[B
    :pswitch_53
    :try_start_53
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 843
    invoke-direct {p0, v7}, Lcom/android/nfc/handover/HandoverDataParser;->byteArrayToInt([B)I

    move-result v8

    iput v8, v5, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;->version:I
    :try_end_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_53 .. :try_end_5c} :catch_3c
    .catch Ljava/nio/BufferUnderflowException; {:try_start_53 .. :try_end_5c} :catch_5d

    goto :goto_11

    .line 862
    .end local v1    # "container":[B
    .end local v4    # "len":I
    .end local v6    # "type":I
    .end local v7    # "value":[B
    :catch_5d
    move-exception v3

    .line 863
    .local v3, "e":Ljava/nio/BufferUnderflowException;
    const-string/jumbo v8, "NfcHandover"

    const-string/jumbo v9, "WIFI P2P OOB: payload shorter than expected"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 846
    .end local v3    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v1    # "container":[B
    .restart local v4    # "len":I
    .restart local v6    # "type":I
    .restart local v7    # "value":[B
    :pswitch_68
    :try_start_68
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 847
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-direct {p0, v8, v5}, Lcom/android/nfc/handover/HandoverDataParser;->parseWifiP2pDeviceInfo(Ljava/nio/ByteBuffer;Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;)V

    goto :goto_11

    .line 850
    :pswitch_73
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 851
    const/4 v8, 0x1

    aget-byte v8, v7, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    const/4 v9, 0x0

    aget-byte v9, v7, v9

    and-int/lit16 v9, v9, 0xff

    or-int v0, v8, v9

    .line 852
    .local v0, "channelFreq":I
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    invoke-static {v8, v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->getWifiChannel(Landroid/content/Context;I)Landroid/net/wifi/WifiChannel;

    move-result-object v8

    iput-object v8, v5, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;->wifiChannel:Landroid/net/wifi/WifiChannel;
    :try_end_8c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_68 .. :try_end_8c} :catch_3c
    .catch Ljava/nio/BufferUnderflowException; {:try_start_68 .. :try_end_8c} :catch_5d

    goto :goto_11

    .line 867
    .end local v0    # "channelFreq":I
    .end local v1    # "container":[B
    .end local v4    # "len":I
    .end local v6    # "type":I
    .end local v7    # "value":[B
    :cond_8d
    iput-boolean v10, v5, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;->valid:Z

    goto :goto_52

    .line 840
    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_53
        :pswitch_68
        :pswitch_73
    .end packed-switch
.end method

.method private tryBluetoothHandoverRequest(Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Landroid/nfc/NdefMessage;
    .registers 5
    .param p1, "bluetoothData"    # Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    .prologue
    .line 309
    const/4 v1, 0x0

    .line 310
    .local v1, "selectMessage":Landroid/nfc/NdefMessage;
    if-eqz p1, :cond_10

    .line 318
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v0, 0x0

    .line 321
    .local v0, "bluetoothActivating":Z
    :goto_c
    invoke-virtual {p0, v0}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothHandoverSelectMessage(Z)Landroid/nfc/NdefMessage;

    move-result-object v1

    .line 326
    .end local v0    # "bluetoothActivating":Z
    .end local v1    # "selectMessage":Landroid/nfc/NdefMessage;
    :cond_10
    return-object v1

    .line 318
    .restart local v1    # "selectMessage":Landroid/nfc/NdefMessage;
    :cond_11
    const/4 v0, 0x1

    goto :goto_c
.end method

.method private tryWifiP2pHandoverRequest(Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;)Landroid/nfc/NdefMessage;
    .registers 8
    .param p1, "wifiP2pData"    # Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;

    .prologue
    const/4 v5, 0x0

    .line 719
    const/4 v2, 0x0

    .line 720
    .local v2, "selectMessage":Landroid/nfc/NdefMessage;
    if-eqz p1, :cond_54

    .line 721
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->getWifiChannelFrequency(Landroid/content/Context;)I

    move-result v0

    .line 723
    .local v0, "receiverChannelFreq":I
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->getWifiChannel(Landroid/content/Context;I)Landroid/net/wifi/WifiChannel;

    move-result-object v1

    .line 725
    .local v1, "receiverWifiChannel":Landroid/net/wifi/WifiChannel;
    iget-object v4, p1, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;->wifiChannel:Landroid/net/wifi/WifiChannel;

    invoke-static {v4}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->is5GHzWifiChannel(Landroid/net/wifi/WifiChannel;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 726
    invoke-static {v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->is5GHzWifiChannel(Landroid/net/wifi/WifiChannel;)Z

    move-result v4

    .line 725
    if-eqz v4, :cond_1f

    .line 730
    return-object v5

    .line 733
    :cond_1f
    invoke-static {v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->isValidP2pChannel(Landroid/net/wifi/WifiChannel;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 734
    invoke-static {v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->is5GHzWifiChannel(Landroid/net/wifi/WifiChannel;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 739
    :cond_2b
    iget-object v4, p1, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;->wifiChannel:Landroid/net/wifi/WifiChannel;

    invoke-static {v4}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->isValidP2pChannel(Landroid/net/wifi/WifiChannel;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 740
    iget-object v4, p1, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;->wifiChannel:Landroid/net/wifi/WifiChannel;

    invoke-static {v4}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->is5GHzWifiChannel(Landroid/net/wifi/WifiChannel;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 748
    :cond_3b
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    const/16 v5, 0x96c

    invoke-static {v4, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->getWifiChannel(Landroid/content/Context;I)Landroid/net/wifi/WifiChannel;

    move-result-object v4

    .line 747
    iput-object v4, p1, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;->wifiChannel:Landroid/net/wifi/WifiChannel;

    .line 758
    :cond_45
    :goto_45
    iget-object v4, p0, Lcom/android/nfc/handover/HandoverDataParser;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_58

    const/4 v3, 0x0

    .line 762
    .local v3, "wifiActivating":Z
    :goto_4e
    iget-object v4, p1, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;->wifiChannel:Landroid/net/wifi/WifiChannel;

    .line 761
    invoke-virtual {p0, v3, v4}, Lcom/android/nfc/handover/HandoverDataParser;->createWifiP2pHandoverSelectMessage(ZLandroid/net/wifi/WifiChannel;)Landroid/nfc/NdefMessage;

    move-result-object v2

    .line 767
    .end local v0    # "receiverChannelFreq":I
    .end local v1    # "receiverWifiChannel":Landroid/net/wifi/WifiChannel;
    .end local v2    # "selectMessage":Landroid/nfc/NdefMessage;
    .end local v3    # "wifiActivating":Z
    :cond_54
    return-object v2

    .line 738
    .restart local v0    # "receiverChannelFreq":I
    .restart local v1    # "receiverWifiChannel":Landroid/net/wifi/WifiChannel;
    .restart local v2    # "selectMessage":Landroid/nfc/NdefMessage;
    :cond_55
    iput-object v1, p1, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;->wifiChannel:Landroid/net/wifi/WifiChannel;

    goto :goto_45

    .line 758
    :cond_58
    const/4 v3, 0x1

    .restart local v3    # "wifiActivating":Z
    goto :goto_4e
.end method


# virtual methods
.method createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;
    .registers 7
    .param p1, "activating"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 146
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 147
    .local v0, "payload":[B
    if-eqz p1, :cond_1e

    move v1, v2

    :goto_9
    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 149
    aput-byte v3, v0, v3

    .line 150
    const/16 v1, 0x62

    aput-byte v1, v0, v2

    .line 151
    const/4 v1, 0x3

    aput-byte v4, v0, v1

    .line 152
    new-instance v1, Landroid/nfc/NdefRecord;

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1

    :cond_1e
    move v1, v3

    .line 148
    goto :goto_9
.end method

.method createBluetoothHandoverSelectMessage(Z)Landroid/nfc/NdefMessage;
    .registers 7
    .param p1, "activating"    # Z

    .prologue
    .line 219
    new-instance v0, Landroid/nfc/NdefMessage;

    .line 220
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 219
    invoke-virtual {p0, v1}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefRecord;

    .line 221
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 219
    invoke-direct {v0, v1, v2}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    return-object v0
.end method

.method createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 157
    const/16 v2, 0x8

    new-array v1, v2, [B

    .line 162
    .local v1, "payload":[B
    array-length v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 163
    array-length v2, v1

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v7

    .line 165
    iget-object v3, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 166
    :try_start_18
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    if-nez v2, :cond_24

    .line 167
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    .line 170
    :cond_24
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalBluetoothAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/nfc/handover/HandoverDataParser;->addressToReverseBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 171
    .local v0, "addressBytes":[B
    const/4 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-static {v0, v2, v1, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_3f

    monitor-exit v3

    .line 174
    new-instance v2, Landroid/nfc/NdefRecord;

    sget-object v3, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    new-array v4, v7, [B

    const/16 v5, 0x62

    aput-byte v5, v4, v6

    invoke-direct {v2, v8, v3, v4, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v2

    .line 165
    .end local v0    # "addressBytes":[B
    :catchall_3f
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public createHandoverRequestMessage()Landroid/nfc/NdefMessage;
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 182
    const/4 v4, 0x0

    .line 183
    .local v4, "wifiP2pNdefRec":Landroid/nfc/NdefRecord;
    invoke-static {}, Lcom/android/nfc/beam/BeamManager;->getInstance()Lcom/android/nfc/beam/BeamManager;

    move-result-object v0

    .line 185
    .local v0, "beamManager":Lcom/android/nfc/beam/BeamManager;
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_12

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamManager;->isWifiDisplayConnecting()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 196
    .end local v4    # "wifiP2pNdefRec":Landroid/nfc/NdefRecord;
    :cond_12
    :goto_12
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v5, :cond_32

    if-nez v4, :cond_32

    .line 197
    return-object v6

    .line 186
    .restart local v4    # "wifiP2pNdefRec":Landroid/nfc/NdefRecord;
    :cond_19
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->isWifiP2pAvailableToUse(Landroid/content/Context;)Z

    move-result v5

    .line 185
    if-eqz v5, :cond_12

    .line 187
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->getWifiChannelFrequency(Landroid/content/Context;)I

    move-result v3

    .line 189
    .local v3, "senderWifiChannelFreq":I
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->getWifiChannel(Landroid/content/Context;I)Landroid/net/wifi/WifiChannel;

    move-result-object v2

    .line 193
    .local v2, "senderWifiChannel":Landroid/net/wifi/WifiChannel;
    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/HandoverDataParser;->createWifiP2pOobDataRecord(Landroid/net/wifi/WifiChannel;)Landroid/nfc/NdefRecord;

    move-result-object v4

    .local v4, "wifiP2pNdefRec":Landroid/nfc/NdefRecord;
    goto :goto_12

    .line 204
    .end local v2    # "senderWifiChannel":Landroid/net/wifi/WifiChannel;
    .end local v3    # "senderWifiChannelFreq":I
    .end local v4    # "wifiP2pNdefRec":Landroid/nfc/NdefRecord;
    :cond_32
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_4d

    if-eqz v4, :cond_4d

    .line 205
    new-instance v1, Landroid/nfc/NdefMessage;

    invoke-virtual {p0, v8, v8}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverRequestRecord(ZZ)Landroid/nfc/NdefRecord;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Landroid/nfc/NdefRecord;

    .line 206
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v7

    aput-object v7, v6, v9

    .line 207
    aput-object v4, v6, v8

    .line 205
    invoke-direct {v1, v5, v6}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 215
    .local v1, "message":Landroid/nfc/NdefMessage;
    :goto_4c
    return-object v1

    .line 208
    .end local v1    # "message":Landroid/nfc/NdefMessage;
    :cond_4d
    if-eqz v4, :cond_5d

    .line 209
    new-instance v1, Landroid/nfc/NdefMessage;

    invoke-virtual {p0, v9, v8}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverRequestRecord(ZZ)Landroid/nfc/NdefRecord;

    move-result-object v5

    new-array v6, v8, [Landroid/nfc/NdefRecord;

    aput-object v4, v6, v9

    invoke-direct {v1, v5, v6}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .restart local v1    # "message":Landroid/nfc/NdefMessage;
    goto :goto_4c

    .line 211
    .end local v1    # "message":Landroid/nfc/NdefMessage;
    :cond_5d
    new-instance v1, Landroid/nfc/NdefMessage;

    invoke-virtual {p0, v8, v9}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverRequestRecord(ZZ)Landroid/nfc/NdefRecord;

    move-result-object v5

    new-array v6, v8, [Landroid/nfc/NdefRecord;

    .line 212
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothOobDataRecord()Landroid/nfc/NdefRecord;

    move-result-object v7

    aput-object v7, v6, v9

    .line 211
    invoke-direct {v1, v5, v6}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .restart local v1    # "message":Landroid/nfc/NdefMessage;
    goto :goto_4c
.end method

.method createHandoverRequestRecord(ZZ)Landroid/nfc/NdefRecord;
    .registers 12
    .param p1, "isBtAvailable"    # Z
    .param p2, "isWifiP2pAvailable"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 242
    if-eqz p1, :cond_4a

    if-eqz p2, :cond_4a

    .line 243
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-static {}, Lcom/android/nfc/handover/HandoverDataParser;->createCollisionRecord()Landroid/nfc/NdefRecord;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/nfc/NdefRecord;

    .line 244
    invoke-virtual {p0, v7}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v6

    aput-object v6, v5, v7

    .line 245
    invoke-virtual {p0, v7}, Lcom/android/nfc/handover/HandoverDataParser;->createWifiP2pAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v6

    aput-object v6, v5, v8

    .line 243
    invoke-direct {v0, v4, v5}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 254
    .local v0, "nestedMessage":Landroid/nfc/NdefMessage;
    :goto_1e
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    .line 256
    .local v1, "nestedPayload":[B
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 257
    .local v2, "payload":Ljava/nio/ByteBuffer;
    const/16 v4, 0x12

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 258
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 260
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    new-array v3, v4, [B

    .line 261
    .local v3, "payloadBytes":[B
    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 262
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 263
    new-instance v4, Landroid/nfc/NdefRecord;

    sget-object v5, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    const/4 v6, 0x0

    invoke-direct {v4, v8, v5, v6, v3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v4

    .line 246
    .end local v0    # "nestedMessage":Landroid/nfc/NdefMessage;
    .end local v1    # "nestedPayload":[B
    .end local v2    # "payload":Ljava/nio/ByteBuffer;
    .end local v3    # "payloadBytes":[B
    :cond_4a
    if-eqz p2, :cond_5e

    .line 247
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-static {}, Lcom/android/nfc/handover/HandoverDataParser;->createCollisionRecord()Landroid/nfc/NdefRecord;

    move-result-object v4

    new-array v5, v8, [Landroid/nfc/NdefRecord;

    .line 248
    invoke-virtual {p0, v7}, Lcom/android/nfc/handover/HandoverDataParser;->createWifiP2pAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v6

    aput-object v6, v5, v7

    .line 247
    invoke-direct {v0, v4, v5}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .restart local v0    # "nestedMessage":Landroid/nfc/NdefMessage;
    goto :goto_1e

    .line 250
    .end local v0    # "nestedMessage":Landroid/nfc/NdefMessage;
    :cond_5e
    new-instance v0, Landroid/nfc/NdefMessage;

    invoke-static {}, Lcom/android/nfc/handover/HandoverDataParser;->createCollisionRecord()Landroid/nfc/NdefRecord;

    move-result-object v4

    new-array v5, v8, [Landroid/nfc/NdefRecord;

    .line 251
    invoke-virtual {p0, v7}, Lcom/android/nfc/handover/HandoverDataParser;->createBluetoothAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v6

    aput-object v6, v5, v7

    .line 250
    invoke-direct {v0, v4, v5}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .restart local v0    # "nestedMessage":Landroid/nfc/NdefMessage;
    goto :goto_1e
.end method

.method createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;
    .registers 10
    .param p1, "alternateCarrier"    # Landroid/nfc/NdefRecord;

    .prologue
    const/4 v5, 0x0

    .line 225
    new-instance v0, Landroid/nfc/NdefMessage;

    new-array v4, v5, [Landroid/nfc/NdefRecord;

    invoke-direct {v0, p1, v4}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 226
    .local v0, "nestedMessage":Landroid/nfc/NdefMessage;
    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v1

    .line 228
    .local v1, "nestedPayload":[B
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 229
    .local v2, "payload":Ljava/nio/ByteBuffer;
    const/16 v4, 0x12

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 230
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 232
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    new-array v3, v4, [B

    .line 233
    .local v3, "payloadBytes":[B
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 234
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 235
    new-instance v4, Landroid/nfc/NdefRecord;

    sget-object v5, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v4, v6, v5, v7, v3}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v4
.end method

.method createWifiP2pAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;
    .registers 7
    .param p1, "activating"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 570
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 571
    .local v0, "payload":[B
    if-eqz p1, :cond_1e

    move v1, v2

    :goto_9
    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 573
    aput-byte v3, v0, v3

    .line 574
    const/16 v1, 0x77

    aput-byte v1, v0, v2

    .line 575
    const/4 v1, 0x3

    aput-byte v4, v0, v1

    .line 576
    new-instance v1, Landroid/nfc/NdefRecord;

    sget-object v2, Landroid/nfc/NdefRecord;->RTD_ALTERNATIVE_CARRIER:[B

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v1

    :cond_1e
    move v1, v3

    .line 572
    goto :goto_9
.end method

.method createWifiP2pHandoverSelectMessage(ZLandroid/net/wifi/WifiChannel;)Landroid/nfc/NdefMessage;
    .registers 8
    .param p1, "wifiP2pActivating"    # Z
    .param p2, "wifiChannel"    # Landroid/net/wifi/WifiChannel;

    .prologue
    .line 657
    const/4 v1, 0x0

    .line 661
    .local v1, "wifiP2pNdefRec":Landroid/nfc/NdefRecord;
    invoke-virtual {p0, p2}, Lcom/android/nfc/handover/HandoverDataParser;->createWifiP2pOobDataRecord(Landroid/net/wifi/WifiChannel;)Landroid/nfc/NdefRecord;

    move-result-object v1

    .line 663
    .local v1, "wifiP2pNdefRec":Landroid/nfc/NdefRecord;
    const/4 v0, 0x0

    .line 665
    .local v0, "message":Landroid/nfc/NdefMessage;
    if-eqz v1, :cond_1b

    .line 666
    new-instance v0, Landroid/nfc/NdefMessage;

    .line 667
    .end local v0    # "message":Landroid/nfc/NdefMessage;
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->createWifiP2pAlternateCarrierRecord(Z)Landroid/nfc/NdefRecord;

    move-result-object v2

    .line 666
    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/HandoverDataParser;->createHandoverSelectRecord(Landroid/nfc/NdefRecord;)Landroid/nfc/NdefRecord;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/nfc/NdefRecord;

    .line 668
    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 666
    invoke-direct {v0, v2, v3}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 671
    :cond_1b
    return-object v0
.end method

.method createWifiP2pOobDataRecord(Landroid/net/wifi/WifiChannel;)Landroid/nfc/NdefRecord;
    .registers 10
    .param p1, "wifiChannel"    # Landroid/net/wifi/WifiChannel;

    .prologue
    const/4 v5, 0x6

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 607
    const/16 v2, 0x10

    new-array v1, v2, [B

    .line 610
    .local v1, "payload":[B
    aput-byte v6, v1, v7

    .line 612
    const/4 v2, 0x3

    aput-byte v6, v1, v2

    .line 613
    const/4 v2, 0x4

    aput-byte v7, v1, v2

    .line 615
    const/4 v2, 0x5

    aput-byte v4, v1, v2

    .line 616
    aput-byte v4, v1, v5

    .line 619
    const/4 v2, 0x7

    aput-byte v4, v1, v2

    .line 620
    const/16 v2, 0x8

    aput-byte v6, v1, v2

    .line 621
    const/16 v2, 0x9

    aput-byte v5, v1, v2

    .line 623
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalWifiP2pAddress:Ljava/lang/String;

    if-nez v2, :cond_30

    .line 624
    invoke-virtual {p0}, Lcom/android/nfc/handover/HandoverDataParser;->getWifiP2pMacAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalWifiP2pAddress:Ljava/lang/String;

    .line 626
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalWifiP2pAddress:Ljava/lang/String;

    if-nez v2, :cond_30

    .line 627
    return-object v3

    .line 631
    :cond_30
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mLocalWifiP2pAddress:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/nfc/handover/HandoverDataParser;->addressToReverseBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 632
    .local v0, "addressBytes":[B
    const/16 v2, 0xa

    invoke-static {v0, v6, v1, v2, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 634
    if-eqz p1, :cond_64

    .line 636
    array-length v2, v1

    add-int/lit8 v2, v2, 0x5

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 639
    const/16 v2, 0x10

    aput-byte v7, v1, v2

    .line 640
    const/16 v2, 0x11

    aput-byte v6, v1, v2

    .line 641
    const/16 v2, 0x12

    aput-byte v7, v1, v2

    .line 643
    iget v2, p1, Landroid/net/wifi/WifiChannel;->freqMHz:I

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/16 v3, 0x13

    aput-byte v2, v1, v3

    .line 644
    iget v2, p1, Landroid/net/wifi/WifiChannel;->freqMHz:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/16 v3, 0x14

    aput-byte v2, v1, v3

    .line 648
    :cond_64
    array-length v2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v6

    .line 649
    array-length v2, v1

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    .line 651
    new-instance v2, Landroid/nfc/NdefRecord;

    .line 652
    sget-object v3, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_WIFI_P2P_OOB:[B

    new-array v4, v4, [B

    const/16 v5, 0x77

    aput-byte v5, v4, v6

    .line 651
    invoke-direct {v2, v7, v3, v4, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v2
.end method

.method public getIncomingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;
    .registers 12
    .param p1, "handoverRequest"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 272
    if-nez p1, :cond_5

    return-object v9

    .line 273
    :cond_5
    iget-object v5, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v5, :cond_a

    return-object v9

    .line 277
    :cond_a
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    aget-object v2, v5, v4

    .line 278
    .local v2, "handoverRequestRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_18

    .line 279
    return-object v9

    .line 282
    :cond_18
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v5

    sget-object v6, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_25

    .line 283
    return-object v9

    .line 287
    :cond_25
    const/4 v0, 0x0

    .line 288
    .local v0, "bluetoothData":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v5

    array-length v6, v5

    .end local v0    # "bluetoothData":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    :goto_2b
    if-ge v4, v6, :cond_51

    aget-object v1, v5, v4

    .line 289
    .local v1, "dataRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4e

    .line 290
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    sget-object v8, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 291
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v7

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/nfc/handover/HandoverDataParser;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    .line 288
    :cond_4e
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 296
    .end local v1    # "dataRecord":Landroid/nfc/NdefRecord;
    :cond_51
    invoke-direct {p0, v0}, Lcom/android/nfc/handover/HandoverDataParser;->tryBluetoothHandoverRequest(Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)Landroid/nfc/NdefMessage;

    move-result-object v3

    .line 297
    .local v3, "hs":Landroid/nfc/NdefMessage;
    if-eqz v3, :cond_5d

    .line 298
    new-instance v4, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;

    invoke-direct {v4, v3, v0}, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;-><init>(Landroid/nfc/NdefMessage;Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;)V

    return-object v4

    .line 301
    :cond_5d
    return-object v9
.end method

.method public getIncomingWifiP2pHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$WifiP2pIncomingHandoverData;
    .registers 14
    .param p1, "handoverRequest"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 675
    if-nez p1, :cond_5

    return-object v11

    .line 676
    :cond_5
    iget-object v7, p0, Lcom/android/nfc/handover/HandoverDataParser;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v7, :cond_a

    .line 677
    return-object v11

    .line 682
    :cond_a
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v7

    aget-object v3, v7, v6

    .line 683
    .local v3, "handoverRequestRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_18

    .line 684
    return-object v11

    .line 687
    :cond_18
    invoke-virtual {v3}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v7

    sget-object v8, Landroid/nfc/NdefRecord;->RTD_HANDOVER_REQUEST:[B

    invoke-static {v7, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_25

    .line 688
    return-object v11

    .line 692
    :cond_25
    const/4 v1, 0x0

    .line 693
    .local v1, "bluetoothData":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    const/4 v5, 0x0

    .line 694
    .local v5, "wifiP2pData":Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v7

    array-length v8, v7

    .end local v5    # "wifiP2pData":Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;
    :goto_2c
    if-ge v6, v8, :cond_69

    aget-object v2, v7, v6

    .line 695
    .local v2, "dataRecord":Landroid/nfc/NdefRecord;
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_51

    .line 696
    invoke-static {}, Lcom/android/nfc/beam/BeamManager;->getInstance()Lcom/android/nfc/beam/BeamManager;

    move-result-object v0

    .line 698
    .local v0, "beamManager":Lcom/android/nfc/beam/BeamManager;
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v9

    sget-object v10, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_WIFI_P2P_OOB:[B

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v9

    if-eqz v9, :cond_51

    .line 699
    iget-object v9, p0, Lcom/android/nfc/handover/HandoverDataParser;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v9, :cond_51

    invoke-virtual {v0}, Lcom/android/nfc/beam/BeamManager;->isWifiDisplayConnecting()Z

    move-result v9

    if-eqz v9, :cond_54

    .line 694
    .end local v0    # "beamManager":Lcom/android/nfc/beam/BeamManager;
    :cond_51
    :goto_51
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 700
    .restart local v0    # "beamManager":Lcom/android/nfc/beam/BeamManager;
    :cond_54
    iget-object v9, p0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pUtility;->isWifiP2pAvailableToUse(Landroid/content/Context;)Z

    move-result v9

    .line 698
    if-eqz v9, :cond_51

    .line 701
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v9

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/nfc/handover/HandoverDataParser;->parseWifiP2pOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;

    move-result-object v5

    .local v5, "wifiP2pData":Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;
    goto :goto_51

    .line 706
    .end local v0    # "beamManager":Lcom/android/nfc/beam/BeamManager;
    .end local v2    # "dataRecord":Landroid/nfc/NdefRecord;
    .end local v5    # "wifiP2pData":Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;
    :cond_69
    invoke-direct {p0, v5}, Lcom/android/nfc/handover/HandoverDataParser;->tryWifiP2pHandoverRequest(Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;)Landroid/nfc/NdefMessage;

    move-result-object v4

    .line 707
    .local v4, "hs":Landroid/nfc/NdefMessage;
    if-eqz v4, :cond_75

    .line 708
    new-instance v6, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pIncomingHandoverData;

    invoke-direct {v6, v4, v5}, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pIncomingHandoverData;-><init>(Landroid/nfc/NdefMessage;Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;)V

    return-object v6

    .line 711
    :cond_75
    return-object v11
.end method

.method public getOutgoingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .registers 3
    .param p1, "handoverSelect"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    return-object v0
.end method

.method public getOutgoingWifiP2pHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;
    .registers 3
    .param p1, "handoverSelect"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 715
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseWifiP2p(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;

    move-result-object v0

    return-object v0
.end method

.method getWifiP2pMacAddress()Ljava/lang/String;
    .registers 6

    .prologue
    .line 595
    iget-object v2, p0, Lcom/android/nfc/handover/HandoverDataParser;->mContext:Landroid/content/Context;

    .line 596
    const-string/jumbo v3, "NfcHandoverPrefs"

    const/4 v4, 0x0

    .line 595
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 597
    .local v0, "mPrefs":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "wifi_p2p_mac_address"

    const-string/jumbo v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 599
    .local v1, "macAddr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 600
    const/4 v2, 0x0

    return-object v2

    .line 603
    :cond_1c
    return-object v1
.end method

.method isCarrierActivating(Landroid/nfc/NdefRecord;[B)Z
    .registers 18
    .param p1, "handoverRec"    # Landroid/nfc/NdefRecord;
    .param p2, "carrierId"    # [B

    .prologue
    .line 332
    invoke-virtual/range {p1 .. p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v9

    .line 333
    .local v9, "payload":[B
    if-eqz v9, :cond_a

    array-length v11, v9

    const/4 v12, 0x1

    if-gt v11, v12, :cond_c

    :cond_a
    const/4 v11, 0x0

    return v11

    .line 335
    :cond_c
    array-length v11, v9

    add-int/lit8 v11, v11, -0x1

    new-array v10, v11, [B

    .line 336
    .local v10, "payloadNdef":[B
    array-length v11, v9

    add-int/lit8 v11, v11, -0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v9, v12, v10, v13, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 339
    :try_start_19
    new-instance v8, Landroid/nfc/NdefMessage;

    invoke-direct {v8, v10}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_1e
    .catch Landroid/nfc/FormatException; {:try_start_19 .. :try_end_1e} :catch_45

    .line 344
    .local v8, "msg":Landroid/nfc/NdefMessage;
    invoke-virtual {v8}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v12

    const/4 v11, 0x0

    array-length v13, v12

    :goto_24
    if-ge v11, v13, :cond_5f

    aget-object v2, v12, v11

    .line 345
    .local v2, "alt":Landroid/nfc/NdefRecord;
    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    .line 346
    .local v1, "acPayload":[B
    if-eqz v1, :cond_5c

    .line 347
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 348
    .local v3, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit8 v6, v14, 0x3

    .line 349
    .local v6, "cps":I
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v5, v14, 0xff

    .line 350
    .local v5, "carrierRefLength":I
    move-object/from16 v0, p2

    array-length v14, v0

    if-eq v5, v14, :cond_48

    const/4 v11, 0x0

    return v11

    .line 340
    .end local v1    # "acPayload":[B
    .end local v2    # "alt":Landroid/nfc/NdefRecord;
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    .end local v5    # "carrierRefLength":I
    .end local v6    # "cps":I
    .end local v8    # "msg":Landroid/nfc/NdefMessage;
    :catch_45
    move-exception v7

    .line 341
    .local v7, "e":Landroid/nfc/FormatException;
    const/4 v11, 0x0

    return v11

    .line 352
    .end local v7    # "e":Landroid/nfc/FormatException;
    .restart local v1    # "acPayload":[B
    .restart local v2    # "alt":Landroid/nfc/NdefRecord;
    .restart local v3    # "buf":Ljava/nio/ByteBuffer;
    .restart local v5    # "carrierRefLength":I
    .restart local v6    # "cps":I
    .restart local v8    # "msg":Landroid/nfc/NdefMessage;
    :cond_48
    new-array v4, v5, [B

    .line 353
    .local v4, "carrierRefId":[B
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 354
    move-object/from16 v0, p2

    invoke-static {v4, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v14

    if-eqz v14, :cond_5c

    .line 356
    const/4 v11, 0x2

    if-ne v6, v11, :cond_5a

    const/4 v11, 0x1

    :goto_59
    return v11

    :cond_5a
    const/4 v11, 0x0

    goto :goto_59

    .line 344
    .end local v3    # "buf":Ljava/nio/ByteBuffer;
    .end local v4    # "carrierRefId":[B
    .end local v5    # "carrierRefLength":I
    .end local v6    # "cps":I
    :cond_5c
    add-int/lit8 v11, v11, 0x1

    goto :goto_24

    .line 361
    .end local v1    # "acPayload":[B
    .end local v2    # "alt":Landroid/nfc/NdefRecord;
    :cond_5f
    const/4 v11, 0x1

    return v11
.end method

.method public isHandoverSupported()Z
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method parseBleOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .registers 13
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 500
    new-instance v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    invoke-direct {v5}, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;-><init>()V

    .line 501
    .local v5, "result":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    iput-boolean v8, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 502
    const/4 v8, 0x2

    iput v8, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->transport:I

    .line 506
    :cond_c
    :goto_c
    :try_start_c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    if-lez v8, :cond_32

    .line 508
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 509
    .local v3, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v7

    .line 510
    .local v7, "type":I
    sparse-switch v7, :sswitch_data_80

    .line 531
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v3

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_27} :catch_28
    .catch Ljava/nio/BufferUnderflowException; {:try_start_c .. :try_end_27} :catch_59

    goto :goto_c

    .line 535
    .end local v3    # "len":I
    .end local v7    # "type":I
    :catch_28
    move-exception v1

    .line 536
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v8, "NfcHandover"

    const-string/jumbo v9, "BT OOB: invalid BT address"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_32
    :goto_32
    iget-boolean v8, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v8, :cond_3f

    iget-object v8, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v8, :cond_3f

    const-string/jumbo v8, ""

    iput-object v8, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 541
    :cond_3f
    return-object v5

    .line 512
    .restart local v3    # "len":I
    .restart local v7    # "type":I
    :sswitch_40
    :try_start_40
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseMacFromBluetoothRecord(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 513
    .local v0, "address":[B
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 514
    iget-object v8, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v8, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    iput-object v8, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 515
    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z
    :try_end_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40 .. :try_end_58} :catch_28
    .catch Ljava/nio/BufferUnderflowException; {:try_start_40 .. :try_end_58} :catch_59

    goto :goto_c

    .line 537
    .end local v0    # "address":[B
    .end local v3    # "len":I
    .end local v7    # "type":I
    :catch_59
    move-exception v2

    .line 538
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string/jumbo v8, "NfcHandover"

    const-string/jumbo v9, "BT OOB: payload shorter than expected"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32

    .line 518
    .end local v2    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v3    # "len":I
    .restart local v7    # "type":I
    :sswitch_64
    :try_start_64
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 519
    .local v6, "role":B
    if-ne v6, v10, :cond_c

    .line 521
    const/4 v8, 0x0

    iput-boolean v8, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 522
    return-object v5

    .line 526
    .end local v6    # "role":B
    :sswitch_6e
    add-int/lit8 v8, v3, -0x1

    new-array v4, v8, [B

    .line 527
    .local v4, "nameBytes":[B
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 528
    new-instance v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v8, v4, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v8, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_7e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_64 .. :try_end_7e} :catch_28
    .catch Ljava/nio/BufferUnderflowException; {:try_start_64 .. :try_end_7e} :catch_59

    goto :goto_c

    .line 510
    nop

    :sswitch_data_80
    .sparse-switch
        0x9 -> :sswitch_6e
        0x1b -> :sswitch_40
        0x1c -> :sswitch_64
    .end sparse-switch
.end method

.method public parseBluetooth(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .registers 8
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v5, 0x2

    .line 388
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 389
    .local v0, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v1

    .line 390
    .local v1, "tnf":S
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    .line 393
    .local v2, "type":[B
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v3

    if-ne v3, v5, :cond_2f

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v4, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 394
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverDataParser;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    return-object v3

    .line 398
    :cond_2f
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v3

    if-ne v3, v5, :cond_4e

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v3

    sget-object v4, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BLE_OOB:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 399
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverDataParser;->parseBleOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    return-object v3

    .line 403
    :cond_4e
    const/4 v3, 0x1

    if-ne v1, v3, :cond_5e

    .line 404
    sget-object v3, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    .line 403
    if-eqz v3, :cond_5e

    .line 405
    invoke-virtual {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseBluetoothHandoverSelect(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    return-object v3

    .line 409
    :cond_5e
    const/4 v3, 0x4

    if-ne v1, v3, :cond_76

    sget-object v3, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_NOKIA:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_76

    .line 410
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v3

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/nfc/handover/HandoverDataParser;->parseNokia(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v3

    return-object v3

    .line 413
    :cond_76
    const/4 v3, 0x0

    return-object v3
.end method

.method parseBluetoothHandoverSelect(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .registers 12
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v3, 0x0

    .line 368
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v4

    array-length v5, v4

    move v2, v3

    :goto_9
    if-ge v2, v5, :cond_63

    aget-object v1, v4, v2

    .line 369
    .local v1, "oob":Landroid/nfc/NdefRecord;
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v6

    if-ne v6, v8, :cond_41

    .line 370
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v6

    sget-object v7, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BT_OOB:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    .line 369
    if-eqz v6, :cond_41

    .line 371
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/HandoverDataParser;->parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v0

    .line 372
    .local v0, "data":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    if-eqz v0, :cond_40

    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getId()[B

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/nfc/handover/HandoverDataParser;->isCarrierActivating(Landroid/nfc/NdefRecord;[B)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 373
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    .line 375
    :cond_40
    return-object v0

    .line 378
    .end local v0    # "data":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    :cond_41
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v6

    if-ne v6, v8, :cond_60

    .line 379
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v6

    sget-object v7, Lcom/android/nfc/handover/HandoverDataParser;->TYPE_BLE_OOB:[B

    invoke-static {v6, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    .line 378
    if-eqz v6, :cond_60

    .line 380
    invoke-virtual {v1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/nfc/handover/HandoverDataParser;->parseBleOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    move-result-object v2

    return-object v2

    .line 368
    :cond_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 384
    .end local v1    # "oob":Landroid/nfc/NdefRecord;
    :cond_63
    return-object v9
.end method

.method parseBtOob(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .registers 11
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v7, 0x0

    .line 441
    new-instance v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    invoke-direct {v5}, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;-><init>()V

    .line 442
    .local v5, "result":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    iput-boolean v7, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 445
    const/4 v7, 0x2

    :try_start_9
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 446
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseMacFromBluetoothRecord(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    .line 447
    .local v0, "address":[B
    iget-object v7, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v7, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    iput-object v7, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 448
    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 450
    :cond_1b
    :goto_1b
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    if-lez v7, :cond_41

    .line 452
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    .line 453
    .local v3, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    .line 454
    .local v6, "type":I
    packed-switch v6, :pswitch_data_aa

    .line 486
    :pswitch_2c
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v3

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_36
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_36} :catch_37
    .catch Ljava/nio/BufferUnderflowException; {:try_start_9 .. :try_end_36} :catch_59

    goto :goto_1b

    .line 490
    .end local v0    # "address":[B
    .end local v3    # "len":I
    .end local v6    # "type":I
    :catch_37
    move-exception v1

    .line 491
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v7, "NfcHandover"

    const-string/jumbo v8, "BT OOB: invalid BT address"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_41
    :goto_41
    iget-boolean v7, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v7, :cond_4e

    iget-object v7, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v7, :cond_4e

    const-string/jumbo v7, ""

    iput-object v7, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 496
    :cond_4e
    return-object v5

    .line 458
    .restart local v0    # "address":[B
    .restart local v3    # "len":I
    .restart local v6    # "type":I
    :pswitch_4f
    add-int/lit8 v7, v3, -0x1

    const/4 v8, 0x2

    .line 457
    :try_start_52
    invoke-static {p1, v8, v7}, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->getServiceUuids(Ljava/nio/ByteBuffer;II)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->uuids:Ljava/util/ArrayList;
    :try_end_58
    .catch Ljava/lang/IllegalArgumentException; {:try_start_52 .. :try_end_58} :catch_37
    .catch Ljava/nio/BufferUnderflowException; {:try_start_52 .. :try_end_58} :catch_59

    goto :goto_1b

    .line 492
    .end local v0    # "address":[B
    .end local v3    # "len":I
    .end local v6    # "type":I
    :catch_59
    move-exception v2

    .line 493
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string/jumbo v7, "NfcHandover"

    const-string/jumbo v8, "BT OOB: payload shorter than expected"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 463
    .end local v2    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v0    # "address":[B
    .restart local v3    # "len":I
    .restart local v6    # "type":I
    :pswitch_64
    add-int/lit8 v7, v3, -0x1

    const/4 v8, 0x4

    .line 462
    :try_start_67
    invoke-static {p1, v8, v7}, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->getServiceUuids(Ljava/nio/ByteBuffer;II)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->uuids:Ljava/util/ArrayList;

    goto :goto_1b

    .line 468
    :pswitch_6e
    add-int/lit8 v7, v3, -0x1

    const/16 v8, 0x10

    .line 467
    invoke-static {p1, v8, v7}, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->getServiceUuids(Ljava/nio/ByteBuffer;II)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->uuids:Ljava/util/ArrayList;

    goto :goto_1b

    .line 471
    :pswitch_79
    add-int/lit8 v7, v3, -0x1

    new-array v4, v7, [B

    .line 472
    .local v4, "nameBytes":[B
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 473
    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v4, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v7, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    goto :goto_1b

    .line 476
    .end local v4    # "nameBytes":[B
    :pswitch_8a
    iget-object v7, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v7, :cond_1b

    .line 477
    add-int/lit8 v7, v3, -0x1

    new-array v4, v7, [B

    .line 478
    .restart local v4    # "nameBytes":[B
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 479
    new-instance v7, Ljava/lang/String;

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v7, v4, v8}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v7, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    goto/16 :goto_1b

    .line 483
    .end local v4    # "nameBytes":[B
    :pswitch_a0
    add-int/lit8 v7, v3, -0x1

    .line 482
    invoke-static {p1, v7}, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->getBluetoothClass(Ljava/nio/ByteBuffer;I)Landroid/bluetooth/BluetoothClass;

    move-result-object v7

    iput-object v7, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->bluetoothClass:Landroid/bluetooth/BluetoothClass;
    :try_end_a8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_67 .. :try_end_a8} :catch_37
    .catch Ljava/nio/BufferUnderflowException; {:try_start_67 .. :try_end_a8} :catch_59

    goto/16 :goto_1b

    .line 454
    :pswitch_data_aa
    .packed-switch 0x2
        :pswitch_4f
        :pswitch_4f
        :pswitch_64
        :pswitch_64
        :pswitch_6e
        :pswitch_6e
        :pswitch_79
        :pswitch_8a
        :pswitch_2c
        :pswitch_2c
        :pswitch_2c
        :pswitch_a0
    .end packed-switch
.end method

.method parseNokia(Ljava/nio/ByteBuffer;)Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    .registers 10
    .param p1, "payload"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 417
    new-instance v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;

    invoke-direct {v5}, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;-><init>()V

    .line 418
    .local v5, "result":Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 421
    const/4 v6, 0x1

    :try_start_9
    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 422
    const/4 v6, 0x6

    new-array v0, v6, [B

    .line 423
    .local v0, "address":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 424
    iget-object v6, p0, Lcom/android/nfc/handover/HandoverDataParser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    iput-object v6, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->device:Landroid/bluetooth/BluetoothDevice;

    .line 425
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 426
    const/16 v6, 0xe

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 427
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    .line 428
    .local v4, "nameLength":I
    new-array v3, v4, [B

    .line 429
    .local v3, "nameBytes":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 430
    new-instance v6, Ljava/lang/String;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v3, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v6, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_34} :catch_4d
    .catch Ljava/nio/BufferUnderflowException; {:try_start_9 .. :try_end_34} :catch_42

    .line 436
    .end local v0    # "address":[B
    .end local v3    # "nameBytes":[B
    .end local v4    # "nameLength":I
    :goto_34
    iget-boolean v6, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    if-eqz v6, :cond_41

    iget-object v6, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    if-nez v6, :cond_41

    const-string/jumbo v6, ""

    iput-object v6, v5, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->name:Ljava/lang/String;

    .line 437
    :cond_41
    return-object v5

    .line 433
    :catch_42
    move-exception v2

    .line 434
    .local v2, "e":Ljava/nio/BufferUnderflowException;
    const-string/jumbo v6, "NfcHandover"

    const-string/jumbo v7, "nokia: payload shorter than expected"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 431
    .end local v2    # "e":Ljava/nio/BufferUnderflowException;
    :catch_4d
    move-exception v1

    .line 432
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "NfcHandover"

    const-string/jumbo v7, "nokia: invalid BT address"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method

.method public parseWifiP2p(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;
    .registers 7
    .param p1, "m"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 786
    invoke-virtual {p1}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v0, v3, v4

    .line 787
    .local v0, "r":Landroid/nfc/NdefRecord;
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getTnf()S

    move-result v1

    .line 788
    .local v1, "tnf":S
    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getType()[B

    move-result-object v2

    .line 791
    .local v2, "type":[B
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1f

    .line 792
    sget-object v3, Landroid/nfc/NdefRecord;->RTD_HANDOVER_SELECT:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    .line 791
    if-eqz v3, :cond_1f

    .line 793
    invoke-direct {p0, p1}, Lcom/android/nfc/handover/HandoverDataParser;->parseWifiP2pHandoverSelect(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;

    move-result-object v3

    return-object v3

    .line 796
    :cond_1f
    const/4 v3, 0x0

    return-object v3
.end method

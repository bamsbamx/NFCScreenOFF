.class public Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;
.super Ljava/lang/Object;
.source "NfcBluetoothUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/handover/NfcBluetoothUtility$1;
    }
.end annotation


# static fields
.field public static final A2DP_UUIDS:[Landroid/os/ParcelUuid;

.field static final BLUETOOTH_CLASS_SIZE:I = 0x3

.field static final DBG:Z = false

.field public static final HEADSET_UUIDS:[Landroid/os/ParcelUuid;

.field static final HID_UUIDS:[Landroid/os/ParcelUuid;

.field static final OPP_UUIDS:[Landroid/os/ParcelUuid;

.field static final PROFILE_LIST:[I

.field static final PROFILE_UUIDS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "NfcBluetoothUtility"


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    const/4 v0, 0x3

    .line 39
    filled-new-array {v2, v3, v4, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->PROFILE_LIST:[I

    .line 46
    new-array v0, v4, [Landroid/os/ParcelUuid;

    .line 47
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    .line 48
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    .line 46
    sput-object v0, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->HEADSET_UUIDS:[Landroid/os/ParcelUuid;

    .line 51
    new-array v0, v4, [Landroid/os/ParcelUuid;

    .line 52
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    .line 53
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v1, v0, v3

    .line 51
    sput-object v0, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->A2DP_UUIDS:[Landroid/os/ParcelUuid;

    .line 56
    new-array v0, v3, [Landroid/os/ParcelUuid;

    .line 57
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    .line 56
    sput-object v0, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->OPP_UUIDS:[Landroid/os/ParcelUuid;

    .line 60
    new-array v0, v3, [Landroid/os/ParcelUuid;

    .line 61
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    .line 60
    sput-object v0, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->HID_UUIDS:[Landroid/os/ParcelUuid;

    .line 65
    new-instance v0, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility$1;

    invoke-direct {v0}, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility$1;-><init>()V

    .line 64
    sput-object v0, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->PROFILE_UUIDS:Ljava/util/HashMap;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bytesToNum([BIILjava/nio/ByteOrder;)I
    .registers 11
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "order"    # Ljava/nio/ByteOrder;

    .prologue
    .line 143
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v5, :cond_1c

    const/4 v0, 0x0

    .line 144
    .local v0, "head":I
    :goto_5
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v5, :cond_1f

    const/4 v4, 0x1

    .line 145
    .local v4, "step":I
    :goto_a
    add-int v2, p1, v0

    .line 146
    .local v2, "pos":I
    const/4 v3, 0x0

    .line 148
    .local v3, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    if-ge v1, p2, :cond_21

    .line 149
    shl-int/lit8 v5, v3, 0x8

    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xff

    or-int v3, v5, v6

    .line 150
    add-int/2addr v2, v4

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 143
    .end local v0    # "head":I
    .end local v1    # "i":I
    .end local v2    # "pos":I
    .end local v3    # "result":I
    .end local v4    # "step":I
    :cond_1c
    add-int/lit8 v0, p2, -0x1

    .restart local v0    # "head":I
    goto :goto_5

    .line 144
    :cond_1f
    const/4 v4, -0x1

    .restart local v4    # "step":I
    goto :goto_a

    .line 152
    .restart local v1    # "i":I
    .restart local v2    # "pos":I
    .restart local v3    # "result":I
    :cond_21
    return v3
.end method

.method private static containsProfileUuid(Ljava/util/ArrayList;I)Z
    .registers 7
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v3, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->PROFILE_UUIDS:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/os/ParcelUuid;

    invoke-static {v3}, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->get16BitUuidSet([Landroid/os/ParcelUuid;)Ljava/util/ArrayList;

    move-result-object v0

    .line 91
    .local v0, "profileUuidSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "uuid$iterator":Ljava/util/Iterator;
    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 92
    .local v1, "uuid":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 94
    const/4 v3, 0x1

    return v3

    .line 97
    .end local v1    # "uuid":I
    :cond_30
    const/4 v3, 0x0

    return v3
.end method

.method private static get16BitUuidSet([Landroid/os/ParcelUuid;)Ljava/util/ArrayList;
    .registers 6
    .param p0, "uuids"    # [Landroid/os/ParcelUuid;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    .local v1, "uuidSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    array-length v3, p0

    :goto_7
    if-ge v2, v3, :cond_19

    aget-object v0, p0, v2

    .line 103
    .local v0, "uuid":Landroid/os/ParcelUuid;
    invoke-static {v0}, Landroid/bluetooth/BluetoothUuid;->getServiceIdentifierFromParcelUuid(Landroid/os/ParcelUuid;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 105
    .end local v0    # "uuid":Landroid/os/ParcelUuid;
    :cond_19
    return-object v1
.end method

.method public static getBluetoothClass(Ljava/nio/ByteBuffer;I)Landroid/bluetooth/BluetoothClass;
    .registers 6
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "len"    # I

    .prologue
    const/4 v1, 0x3

    .line 132
    if-eq p1, v1, :cond_5

    .line 134
    const/4 v1, 0x0

    return-object v1

    .line 137
    :cond_5
    new-array v0, v1, [B

    .line 138
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 139
    new-instance v1, Landroid/bluetooth/BluetoothClass;

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x0

    invoke-static {v0, v3, p1, v2}, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->bytesToNum([BIILjava/nio/ByteOrder;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    return-object v1
.end method

.method public static getServiceUuids(Ljava/nio/ByteBuffer;II)Ljava/util/ArrayList;
    .registers 9
    .param p0, "payload"    # Ljava/nio/ByteBuffer;
    .param p1, "uuidSize"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v2, "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-array v0, p1, [B

    .line 111
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    if-ge v1, p2, :cond_30

    .line 112
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 117
    sparse-switch p1, :sswitch_data_32

    .line 111
    :goto_11
    add-int/2addr v1, p1

    goto :goto_9

    .line 119
    :sswitch_13
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v4, 0x0

    invoke-static {v0, v4, v5, v3}, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->bytesToNum([BIILjava/nio/ByteOrder;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 123
    :sswitch_22
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v0, v5, v5, v3}, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->bytesToNum([BIILjava/nio/ByteOrder;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 128
    :cond_30
    return-object v2

    .line 117
    nop

    :sswitch_data_32
    .sparse-switch
        0x2 -> :sswitch_13
        0x4 -> :sswitch_22
        0x10 -> :sswitch_22
    .end sparse-switch
.end method

.method public static getSupportedProfiles(Ljava/util/ArrayList;Landroid/bluetooth/BluetoothClass;)Ljava/util/ArrayList;
    .registers 9
    .param p1, "bluetoothClass"    # Landroid/bluetooth/BluetoothClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/bluetooth/BluetoothClass;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 75
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v1, "supportedProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v4, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->PROFILE_LIST:[I

    array-length v5, v4

    move v2, v3

    :goto_a
    if-ge v2, v5, :cond_28

    aget v0, v4, v2

    .line 77
    .local v0, "profile":I
    if-eqz p0, :cond_16

    invoke-static {p0, v0}, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->containsProfileUuid(Ljava/util/ArrayList;I)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 78
    :cond_16
    if-eqz p1, :cond_25

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v6

    .line 77
    if-eqz v6, :cond_25

    .line 79
    :cond_1e
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 83
    .end local v0    # "profile":I
    :cond_28
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_35
    return-object v1
.end method

.class final Lcom/android/nfc/beam/BeamTransferRecord$1;
.super Ljava/lang/Object;
.source "BeamTransferRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/beam/BeamTransferRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/android/nfc/beam/BeamTransferRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/nfc/beam/BeamTransferRecord;
    .registers 12
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 81
    .local v6, "deviceType":I
    const/4 v8, 0x0

    .line 82
    .local v8, "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    const/4 v1, 0x0

    .line 83
    .local v1, "remoteMacAddress":Ljava/lang/String;
    const/4 v2, 0x0

    .line 84
    .local v2, "wifiChannel":Landroid/net/wifi/WifiChannel;
    sget v0, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-ne v6, v0, :cond_3a

    .line 85
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferRecord$1;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    .end local v8    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 93
    .end local v1    # "remoteMacAddress":Ljava/lang/String;
    .end local v2    # "wifiChannel":Landroid/net/wifi/WifiChannel;
    :goto_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_52

    const/4 v3, 0x1

    .line 94
    .local v3, "remoteActivating":Z
    :goto_22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 95
    .local v7, "numUris":I
    const/4 v4, 0x0

    .line 96
    .local v4, "uris":[Landroid/net/Uri;
    if-lez v7, :cond_30

    .line 97
    new-array v4, v7, [Landroid/net/Uri;

    .line 98
    .local v4, "uris":[Landroid/net/Uri;
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4, v0}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 101
    .end local v4    # "uris":[Landroid/net/Uri;
    :cond_30
    sget v0, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-ne v6, v0, :cond_54

    .line 102
    new-instance v0, Lcom/android/nfc/beam/BeamTransferRecord;

    invoke-direct {v0, v8, v3, v4, v5}, Lcom/android/nfc/beam/BeamTransferRecord;-><init>(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;Lcom/android/nfc/beam/BeamTransferRecord;)V

    return-object v0

    .line 86
    .end local v3    # "remoteActivating":Z
    .end local v7    # "numUris":I
    .restart local v1    # "remoteMacAddress":Ljava/lang/String;
    .restart local v2    # "wifiChannel":Landroid/net/wifi/WifiChannel;
    .restart local v8    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_3a
    sget v0, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_WIFI_P2P:I

    if-ne v6, v0, :cond_51

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "remoteMacAddress":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/nfc/beam/BeamTransferRecord$1;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    .end local v2    # "wifiChannel":Landroid/net/wifi/WifiChannel;
    check-cast v2, Landroid/net/wifi/WifiChannel;

    .local v2, "wifiChannel":Landroid/net/wifi/WifiChannel;
    goto :goto_1a

    .line 91
    .local v1, "remoteMacAddress":Ljava/lang/String;
    .local v2, "wifiChannel":Landroid/net/wifi/WifiChannel;
    :cond_51
    return-object v5

    .line 93
    .end local v1    # "remoteMacAddress":Ljava/lang/String;
    .end local v2    # "wifiChannel":Landroid/net/wifi/WifiChannel;
    .end local v8    # "remoteDevice":Landroid/bluetooth/BluetoothDevice;
    :cond_52
    const/4 v3, 0x0

    .restart local v3    # "remoteActivating":Z
    goto :goto_22

    .line 104
    .restart local v7    # "numUris":I
    :cond_54
    sget v0, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_WIFI_P2P:I

    if-ne v6, v0, :cond_5e

    .line 105
    new-instance v0, Lcom/android/nfc/beam/BeamTransferRecord;

    invoke-direct/range {v0 .. v5}, Lcom/android/nfc/beam/BeamTransferRecord;-><init>(Ljava/lang/String;Landroid/net/wifi/WifiChannel;Z[Landroid/net/Uri;Lcom/android/nfc/beam/BeamTransferRecord;)V

    return-object v0

    .line 109
    :cond_5e
    return-object v5
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/android/nfc/beam/BeamTransferRecord$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/nfc/beam/BeamTransferRecord;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 114
    new-array v0, p1, [Lcom/android/nfc/beam/BeamTransferRecord;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/android/nfc/beam/BeamTransferRecord$1;->newArray(I)[Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v0

    return-object v0
.end method

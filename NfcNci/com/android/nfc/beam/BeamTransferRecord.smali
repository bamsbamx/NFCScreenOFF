.class public Lcom/android/nfc/beam/BeamTransferRecord;
.super Ljava/lang/Object;
.source "BeamTransferRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/beam/BeamTransferRecord$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/nfc/beam/BeamTransferRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static DATA_LINK_TYPE_BLUETOOTH:I

.field public static DATA_LINK_TYPE_WIFI_P2P:I


# instance fields
.field public dataLinkType:I

.field public id:I

.field public remoteActivating:Z

.field public remoteDevice:Landroid/bluetooth/BluetoothDevice;

.field public remoteMacAddress:Ljava/lang/String;

.field public uris:[Landroid/net/Uri;

.field public wifiChannel:Landroid/net/wifi/WifiChannel;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput v0, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    .line 32
    const/16 v0, 0xb

    sput v0, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_WIFI_P2P:I

    .line 78
    new-instance v0, Lcom/android/nfc/beam/BeamTransferRecord$1;

    invoke-direct {v0}, Lcom/android/nfc/beam/BeamTransferRecord$1;-><init>()V

    .line 77
    sput-object v0, Lcom/android/nfc/beam/BeamTransferRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 29
    return-void
.end method

.method private constructor <init>(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)V
    .registers 5
    .param p1, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "remoteActivating"    # Z
    .param p3, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->id:I

    .line 48
    iput-object p1, p0, Lcom/android/nfc/beam/BeamTransferRecord;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 49
    iput-boolean p2, p0, Lcom/android/nfc/beam/BeamTransferRecord;->remoteActivating:Z

    .line 50
    iput-object p3, p0, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    .line 52
    sget v0, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;Lcom/android/nfc/beam/BeamTransferRecord;)V
    .registers 5
    .param p1, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "remoteActivating"    # Z
    .param p3, "uris"    # [Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/beam/BeamTransferRecord;-><init>(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/net/wifi/WifiChannel;Z[Landroid/net/Uri;)V
    .registers 6
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "wifiChannel"    # Landroid/net/wifi/WifiChannel;
    .param p3, "remoteActivating"    # Z
    .param p4, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->id:I

    .line 58
    iput-object p1, p0, Lcom/android/nfc/beam/BeamTransferRecord;->remoteMacAddress:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/android/nfc/beam/BeamTransferRecord;->wifiChannel:Landroid/net/wifi/WifiChannel;

    .line 60
    iput-boolean p3, p0, Lcom/android/nfc/beam/BeamTransferRecord;->remoteActivating:Z

    .line 61
    iput-object p4, p0, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    .line 63
    sget v0, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_WIFI_P2P:I

    iput v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/net/wifi/WifiChannel;Z[Landroid/net/Uri;Lcom/android/nfc/beam/BeamTransferRecord;)V
    .registers 6
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "wifiChannel"    # Landroid/net/wifi/WifiChannel;
    .param p3, "remoteActivating"    # Z
    .param p4, "uris"    # [Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/nfc/beam/BeamTransferRecord;-><init>(Ljava/lang/String;Landroid/net/wifi/WifiChannel;Z[Landroid/net/Uri;)V

    return-void
.end method

.method public static final forBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)Lcom/android/nfc/beam/BeamTransferRecord;
    .registers 4
    .param p0, "remoteDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "remoteActivating"    # Z
    .param p2, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 69
    new-instance v0, Lcom/android/nfc/beam/BeamTransferRecord;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/nfc/beam/BeamTransferRecord;-><init>(Landroid/bluetooth/BluetoothDevice;Z[Landroid/net/Uri;)V

    return-object v0
.end method

.method public static final forWifiDevice(Ljava/lang/String;Landroid/net/wifi/WifiChannel;Z[Landroid/net/Uri;)Lcom/android/nfc/beam/BeamTransferRecord;
    .registers 5
    .param p0, "macAddress"    # Ljava/lang/String;
    .param p1, "wifiChannel"    # Landroid/net/wifi/WifiChannel;
    .param p2, "remoteActivating"    # Z
    .param p3, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 74
    new-instance v0, Lcom/android/nfc/beam/BeamTransferRecord;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/nfc/beam/BeamTransferRecord;-><init>(Ljava/lang/String;Landroid/net/wifi/WifiChannel;Z[Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 125
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->dataLinkType:I

    sget v2, Lcom/android/nfc/beam/BeamTransferRecord;->DATA_LINK_TYPE_BLUETOOTH:I

    if-ne v0, v2, :cond_32

    .line 127
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->remoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 132
    :goto_11
    iget-boolean v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->remoteActivating:Z

    if-eqz v0, :cond_3d

    const/4 v0, 0x1

    :goto_16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    array-length v0, v0

    :goto_20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    array-length v0, v0

    if-lez v0, :cond_31

    .line 135
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->uris:[Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 124
    :cond_31
    return-void

    .line 129
    :cond_32
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->remoteMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/nfc/beam/BeamTransferRecord;->wifiChannel:Landroid/net/wifi/WifiChannel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_11

    :cond_3d
    move v0, v1

    .line 132
    goto :goto_16

    :cond_3f
    move v0, v1

    .line 133
    goto :goto_20
.end method

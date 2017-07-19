.class Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;
.super Ljava/lang/Object;
.source "LockScreenHeadsetHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandoverInfo"
.end annotation


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothClass:Landroid/bluetooth/BluetoothClass;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mUuids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;)V
    .registers 4
    .param p1, "this$0"    # Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;

    .prologue
    const/4 v1, 0x0

    .line 79
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->this$0:Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->mUuids:Ljava/util/ArrayList;

    .line 81
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 82
    iput-object v1, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->mBluetoothClass:Landroid/bluetooth/BluetoothClass;

    .line 83
    iput-object v1, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;-><init>(Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;)V

    return-void
.end method


# virtual methods
.method hasBtCapability()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->mUuids:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->mBluetoothClass:Landroid/bluetooth/BluetoothClass;

    invoke-static {v1, v2}, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->getSupportedProfiles(Ljava/util/ArrayList;Landroid/bluetooth/BluetoothClass;)Ljava/util/ArrayList;

    move-result-object v0

    .line 110
    .local v0, "supportedProfiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_22

    .line 111
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v4, v1, :cond_23

    .line 112
    :cond_22
    return v4

    .line 114
    :cond_23
    return v3
.end method

.method hasPaired()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 119
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_10

    .line 120
    const-string/jumbo v1, "LockScreenHeadsetHandover"

    const-string/jumbo v2, "hasPaired: BluetoothAdapter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v3

    .line 123
    :cond_10
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 124
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 125
    .local v0, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->this$0:Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v1, v2}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->-wrap2(Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;Landroid/bluetooth/BluetoothAdapter;)V

    .line 126
    if-eqz v0, :cond_43

    iget-object v1, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 128
    return v4

    .line 131
    .end local v0    # "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_30
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->this$0:Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;

    invoke-static {v1}, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;->-get0(Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover;)Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/handover/BondedDeviceInfoAccess;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 133
    return v4

    .line 136
    :cond_43
    return v3
.end method

.method isValid()Z
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method setBluetoothClass(Landroid/bluetooth/BluetoothClass;)V
    .registers 2
    .param p1, "bluetoothClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->mBluetoothClass:Landroid/bluetooth/BluetoothClass;

    .line 98
    return-void
.end method

.method setBluetoothDevice([B)V
    .registers 4
    .param p1, "address"    # [B

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_e

    .line 87
    const-string/jumbo v0, "LockScreenHeadsetHandover"

    const-string/jumbo v1, "setBluetoothDevice: BluetoothAdapter is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void

    .line 90
    :cond_e
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 85
    return-void
.end method

.method setUuids(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "uuids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/LockScreenHeadsetHandover$HandoverInfo;->mUuids:Ljava/util/ArrayList;

    .line 94
    return-void
.end method

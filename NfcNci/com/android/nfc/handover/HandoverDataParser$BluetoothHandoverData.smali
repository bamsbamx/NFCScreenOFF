.class public Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;
.super Ljava/lang/Object;
.source "HandoverDataParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverDataParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BluetoothHandoverData"
.end annotation


# instance fields
.field public bluetoothClass:Landroid/bluetooth/BluetoothClass;

.field public carrierActivating:Z

.field public device:Landroid/bluetooth/BluetoothDevice;

.field public name:Ljava/lang/String;

.field public transport:I

.field public uuids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public valid:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->valid:Z

    .line 97
    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->carrierActivating:Z

    .line 98
    iput v0, p0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->transport:I

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->uuids:Ljava/util/ArrayList;

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser$BluetoothHandoverData;->bluetoothClass:Landroid/bluetooth/BluetoothClass;

    .line 93
    return-void
.end method

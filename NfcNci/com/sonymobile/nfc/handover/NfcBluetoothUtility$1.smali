.class final Lcom/sonymobile/nfc/handover/NfcBluetoothUtility$1;
.super Ljava/util/HashMap;
.source "NfcBluetoothUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

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


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 66
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->HEADSET_UUIDS:[Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->A2DP_UUIDS:[Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->OPP_UUIDS:[Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility;->HID_UUIDS:[Landroid/os/ParcelUuid;

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/nfc/handover/NfcBluetoothUtility$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    return-void
.end method

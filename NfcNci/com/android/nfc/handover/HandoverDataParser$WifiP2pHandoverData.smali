.class public Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;
.super Ljava/lang/Object;
.source "HandoverDataParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverDataParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiP2pHandoverData"
.end annotation


# instance fields
.field public carrierActivating:Z

.field public deviceMacAddr:Ljava/lang/String;

.field public valid:Z

.field public version:I

.field public wifiChannel:Landroid/net/wifi/WifiChannel;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-boolean v1, p0, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;->valid:Z

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;->wifiChannel:Landroid/net/wifi/WifiChannel;

    .line 108
    iput-boolean v1, p0, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;->carrierActivating:Z

    .line 103
    return-void
.end method

.class public Lcom/android/nfc/handover/HandoverDataParser$WifiP2pIncomingHandoverData;
.super Ljava/lang/Object;
.source "HandoverDataParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/handover/HandoverDataParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiP2pIncomingHandoverData"
.end annotation


# instance fields
.field public final handoverData:Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;

.field public final handoverSelect:Landroid/nfc/NdefMessage;


# direct methods
.method public constructor <init>(Landroid/nfc/NdefMessage;Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;)V
    .registers 3
    .param p1, "handoverSelect"    # Landroid/nfc/NdefMessage;
    .param p2, "handoverData"    # Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pIncomingHandoverData;->handoverSelect:Landroid/nfc/NdefMessage;

    .line 129
    iput-object p2, p0, Lcom/android/nfc/handover/HandoverDataParser$WifiP2pIncomingHandoverData;->handoverData:Lcom/android/nfc/handover/HandoverDataParser$WifiP2pHandoverData;

    .line 127
    return-void
.end method

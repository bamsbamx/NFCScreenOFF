.class Lcom/android/nfc/P2pLinkManager$3;
.super Ljava/lang/Object;
.source "P2pLinkManager.java"

# interfaces
.implements Lcom/android/nfc/snep/SnepServer$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/P2pLinkManager;

    .prologue
    .line 981
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$3;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doGet(ILandroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .registers 6
    .param p1, "acceptableLength"    # I
    .param p2, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 990
    const/4 v0, 0x0

    .line 997
    .local v0, "response":Landroid/nfc/NdefMessage;
    if-nez p2, :cond_18

    .line 998
    const-string/jumbo v1, "NfcP2pLinkManager"

    const-string/jumbo v2, "DEBUG> Inavlid params msg"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    .end local v0    # "response":Landroid/nfc/NdefMessage;
    :goto_c
    if-eqz v0, :cond_37

    .line 1005
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager$3;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v1}, Lcom/android/nfc/P2pLinkManager;->onReceiveHandover()V

    .line 1006
    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->getSuccessResponse(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v1

    return-object v1

    .line 999
    .restart local v0    # "response":Landroid/nfc/NdefMessage;
    :cond_18
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager$3;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v1, v1, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v1, p2}, Lcom/android/nfc/handover/HandoverDataParser;->getIncomingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 1000
    const-string/jumbo v1, "NfcP2pLinkManager"

    const-string/jumbo v2, "DEBUG> Inavlid params inCmgHandoverData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1002
    :cond_2c
    iget-object v1, p0, Lcom/android/nfc/P2pLinkManager$3;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v1, v1, Lcom/android/nfc/P2pLinkManager;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    invoke-virtual {v1, p2}, Lcom/android/nfc/handover/HandoverDataParser;->getIncomingHandoverData(Landroid/nfc/NdefMessage;)Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;

    move-result-object v1

    iget-object v0, v1, Lcom/android/nfc/handover/HandoverDataParser$IncomingHandoverData;->handoverSelect:Landroid/nfc/NdefMessage;

    .local v0, "response":Landroid/nfc/NdefMessage;
    goto :goto_c

    .line 1008
    .end local v0    # "response":Landroid/nfc/NdefMessage;
    :cond_37
    const/16 v1, -0x20

    invoke-static {v1}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v1

    return-object v1
.end method

.method public doPut(Landroid/nfc/NdefMessage;)Lcom/android/nfc/snep/SnepMessage;
    .registers 3
    .param p1, "msg"    # Landroid/nfc/NdefMessage;

    .prologue
    .line 984
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$3;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/P2pLinkManager;->onReceiveComplete(Landroid/nfc/NdefMessage;)V

    .line 985
    const/16 v0, -0x7f

    invoke-static {v0}, Lcom/android/nfc/snep/SnepMessage;->getMessage(B)Lcom/android/nfc/snep/SnepMessage;

    move-result-object v0

    return-object v0
.end method

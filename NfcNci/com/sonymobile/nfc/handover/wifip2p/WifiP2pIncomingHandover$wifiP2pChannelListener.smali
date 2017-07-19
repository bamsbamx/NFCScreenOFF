.class Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$wifiP2pChannelListener;
.super Ljava/lang/Object;
.source "WifiP2pIncomingHandover.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "wifiP2pChannelListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$wifiP2pChannelListener;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$wifiP2pChannelListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$wifiP2pChannelListener;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 5
    .param p1, "reason"    # I

    .prologue
    .line 304
    const-string/jumbo v0, "WifiP2pIncomingHandover"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set wifi p2p channels failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void
.end method

.method public onSuccess()V
    .registers 3

    .prologue
    .line 309
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "WifiP2pIncomingHandover"

    const-string/jumbo v1, "Set wifi p2p channels is Successful."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_13
    return-void
.end method

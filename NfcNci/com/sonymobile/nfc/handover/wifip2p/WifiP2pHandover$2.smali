.class Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$2;
.super Ljava/lang/Object;
.source "WifiP2pHandover.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$2;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 4
    .param p1, "reason"    # I

    .prologue
    .line 350
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "WifiP2pHandover"

    const-string/jumbo v1, "Failed to connect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_13
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$2;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->complete(Z)V

    .line 349
    return-void
.end method

.method public onSuccess()V
    .registers 3

    .prologue
    .line 345
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string/jumbo v0, "WifiP2pHandover"

    const-string/jumbo v1, "Connect successful"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_13
    return-void
.end method

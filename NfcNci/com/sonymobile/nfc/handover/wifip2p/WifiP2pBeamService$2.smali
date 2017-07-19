.class Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$2;
.super Ljava/lang/Object;
.source "WifiP2pBeamService.java"

# interfaces
.implements Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$2;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApiReady(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;)V
    .registers 5
    .param p1, "apiClient"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Wi-Fi Api ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_11
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$2;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;

    invoke-static {v0, p1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->-set0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;)Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    .line 82
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$2;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;

    invoke-static {v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->-get2(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 83
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$2;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;

    invoke-static {v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->-get2(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    :cond_2b
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$2;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;

    invoke-static {v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->-get2(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$2;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;

    invoke-static {v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->-get2(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 77
    return-void
.end method

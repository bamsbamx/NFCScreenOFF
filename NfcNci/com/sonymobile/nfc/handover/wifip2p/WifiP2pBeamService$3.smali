.class Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$3;
.super Landroid/os/Handler;
.source "WifiP2pBeamService.java"


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
    .line 89
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$3;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 92
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_50

    .line 91
    :cond_5
    :goto_5
    return-void

    .line 94
    :pswitch_6
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$3;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;

    invoke-static {v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->-get5(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;)Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$3;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;

    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$3;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;

    invoke-static {v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->-get4(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;)Lcom/android/nfc/beam/BeamTransferRecord;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->-wrap0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;Lcom/android/nfc/beam/BeamTransferRecord;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 95
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Starting Wi-Fi P2P Beam transfer"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 97
    :cond_2d
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Starting Wi-Fi P2P Beam transfer failed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_3d
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$3;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->-wrap2(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;Z)V

    .line 99
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$3;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;

    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$3;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;

    invoke-static {v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->-get3(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->stopSelf(I)V

    goto :goto_5

    .line 92
    nop

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

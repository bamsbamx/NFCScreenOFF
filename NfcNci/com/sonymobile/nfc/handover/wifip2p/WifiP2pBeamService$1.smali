.class Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$1;
.super Landroid/content/BroadcastReceiver;
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
    .line 67
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;

    invoke-static {v0, p2}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;->-wrap1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pBeamService;Landroid/content/Intent;)V

    .line 69
    return-void
.end method

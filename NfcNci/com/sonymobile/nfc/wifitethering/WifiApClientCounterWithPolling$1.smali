.class Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling$1;
.super Landroid/os/Handler;
.source "WifiApClientCounterWithPolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling$1;->this$0:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 51
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_46

    .line 52
    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling$1;->this$0:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;

    invoke-static {v1}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;->-get2(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;)Lcom/sonymobile/nfc/WifiManagerEx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/nfc/WifiManagerEx;->getWifiApConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 53
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    if-eqz v0, :cond_35

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling$1;->this$0:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;

    invoke-static {v2}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;->-get1(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;)I

    move-result v2

    if-eq v1, v2, :cond_35

    .line 54
    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling$1;->this$0:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;->-set0(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;I)I

    .line 55
    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling$1;->this$0:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;

    invoke-static {v1}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;->-get0(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;)Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling$1;->this$0:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;

    invoke-static {v2}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;->-get1(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;->onUpdateClientNum(I)V

    .line 57
    :cond_35
    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling$1;->this$0:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;

    iget-object v1, v1, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;->mHandler:Landroid/os/Handler;

    .line 58
    iget-object v2, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling$1;->this$0:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;

    iget-object v2, v2, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0xbb8

    .line 57
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 50
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    :cond_46
    return-void
.end method

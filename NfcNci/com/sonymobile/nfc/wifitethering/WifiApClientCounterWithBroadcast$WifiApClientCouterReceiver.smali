.class Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$WifiApClientCouterReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiApClientCounterWithBroadcast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiApClientCouterReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$WifiApClientCouterReceiver;->this$0:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    const-string/jumbo v0, "com.sonymobile.wifi.AP_CLIENT_UPDATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 101
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$WifiApClientCouterReceiver;->this$0:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;

    invoke-static {v0}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->-get2(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;)Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast$WifiApClientCouterReceiver;->this$0:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;

    invoke-static {v1}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;->-wrap0(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;->onUpdateClientNum(I)V

    .line 99
    :cond_1c
    return-void
.end method

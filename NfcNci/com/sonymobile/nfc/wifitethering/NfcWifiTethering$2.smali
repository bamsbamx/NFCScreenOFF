.class Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$2;
.super Landroid/content/BroadcastReceiver;
.source "NfcWifiTethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$2;->this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 386
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 388
    iget-object v3, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$2;->this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;

    invoke-static {v3}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->-wrap0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 389
    iget-object v3, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$2;->this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;

    invoke-static {v3}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->-wrap1(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;)V

    .line 385
    :cond_1d
    :goto_1d
    return-void

    .line 391
    :cond_1e
    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 392
    const-string/jumbo v3, "wifi_state"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 394
    .local v2, "wifiState":I
    if-ne v2, v5, :cond_37

    .line 395
    iget-object v3, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$2;->this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->-set0(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;Z)Z

    goto :goto_1d

    .line 397
    :cond_37
    iget-object v3, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$2;->this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;

    invoke-static {v3, v4}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->-set0(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;Z)Z

    goto :goto_1d

    .line 399
    .end local v2    # "wifiState":I
    :cond_3d
    const-string/jumbo v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 400
    const-string/jumbo v3, "wifi_state"

    .line 401
    const/16 v4, 0xe

    .line 400
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 402
    .local v1, "state":I
    const/16 v3, 0xd

    if-ne v1, v3, :cond_59

    .line 403
    iget-object v3, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$2;->this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;

    invoke-static {v3}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->-wrap3(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;)V

    goto :goto_1d

    .line 404
    :cond_59
    const/16 v3, 0xa

    if-ne v1, v3, :cond_1d

    .line 405
    iget-object v3, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$2;->this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;

    invoke-static {v3}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->-get1(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;)Z

    move-result v3

    if-nez v3, :cond_6d

    .line 406
    iget-object v3, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$2;->this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;

    invoke-static {v3}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->-get0(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;)I

    move-result v3

    if-ne v3, v6, :cond_73

    .line 408
    :cond_6d
    :goto_6d
    iget-object v3, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$2;->this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;

    invoke-static {v3}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->-wrap1(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;)V

    goto :goto_1d

    .line 406
    :cond_73
    iget-object v3, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$2;->this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;

    invoke-static {v3}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->-get0(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;)I

    move-result v3

    if-eq v3, v5, :cond_6d

    .line 407
    iget-object v3, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$2;->this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;

    invoke-static {v3}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->-get0(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;)I

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_6d
.end method

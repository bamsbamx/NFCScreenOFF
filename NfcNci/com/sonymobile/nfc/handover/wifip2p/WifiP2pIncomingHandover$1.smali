.class Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pIncomingHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    .prologue
    .line 199
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 202
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b9

    .line 205
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_22

    const-string/jumbo v3, "WifiP2pIncomingHandover"

    const-string/jumbo v4, "Wi-Fi P2P connection changed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_22
    const-string/jumbo v3, "networkInfo"

    .line 207
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 210
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_41

    .line 211
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_40

    const-string/jumbo v3, "WifiP2pIncomingHandover"

    const-string/jumbo v4, "Invalid network information"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_40
    return-void

    .line 215
    :cond_41
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_55

    const-string/jumbo v3, "WifiP2pIncomingHandover"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_55
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 218
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    monitor-enter v4

    .line 219
    :try_start_5e
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-static {v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-wrap0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)Z

    move-result v3

    if-nez v3, :cond_6d

    .line 220
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-static {v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-wrap1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)V
    :try_end_6b
    .catchall {:try_start_5e .. :try_end_6b} :catchall_b6

    monitor-exit v4

    .line 221
    return-void

    .line 224
    :cond_6d
    :try_start_6d
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-static {v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get5(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-static {v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v5

    .line 225
    iget-object v6, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    .line 224
    invoke-virtual {v3, v5, v6}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V
    :try_end_7e
    .catchall {:try_start_6d .. :try_end_7e} :catchall_b6

    monitor-exit v4

    .line 233
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-static {v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get4(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;

    move-result-object v3

    if-eqz v3, :cond_b5

    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-static {v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get4(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pFileServerAsyncTask;->isTransferStarted()Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 234
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    .line 235
    const-string/jumbo v3, "p2pGroupInfo"

    .line 234
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-static {v4, v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-set3(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 236
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-static {v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get3(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)Landroid/os/Handler;

    move-result-object v3

    .line 237
    iget-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-static {v4}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get3(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 236
    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_b5
    :goto_b5
    return-void

    .line 218
    .restart local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :catchall_b6
    move-exception v3

    monitor-exit v4

    throw v3

    .line 241
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_b9
    const-string/jumbo v3, "com.sonymobile.nfc.handover.wifip2p.action.CANCEL_WIFI_P2P_HANDOVER_TRANSFER"

    .line 240
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e0

    .line 242
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d5

    const-string/jumbo v3, "WifiP2pIncomingHandover"

    const-string/jumbo v4, "Wi-Fi P2P incoming was cancelled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_d5
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-static {v3, v6}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-set2(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;Z)Z

    .line 245
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-virtual {v3, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->complete(Z)V

    goto :goto_b5

    .line 246
    :cond_e0
    const-string/jumbo v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_102

    .line 247
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_fc

    const-string/jumbo v3, "WifiP2pIncomingHandover"

    const-string/jumbo v4, "Device is shutting down"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_fc
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-virtual {v3, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->complete(Z)V

    goto :goto_b5

    .line 250
    :cond_102
    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_130

    .line 251
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_11e

    const-string/jumbo v3, "WifiP2pIncomingHandover"

    const-string/jumbo v4, "Wi-fi state changed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_11e
    const-string/jumbo v3, "wifi_state"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 255
    .local v2, "state":I
    if-eqz v2, :cond_12a

    .line 256
    if-ne v2, v6, :cond_b5

    .line 257
    :cond_12a
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-virtual {v3, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->complete(Z)V

    goto :goto_b5

    .line 259
    .end local v2    # "state":I
    :cond_130
    const-string/jumbo v3, "com.sonymobile.nfc.action.SONY_WIFI_P2P_NDEF_DETECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 260
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_14c

    const-string/jumbo v3, "WifiP2pIncomingHandover"

    const-string/jumbo v4, "Wi-Fi Display is executed, cancel the ongoing process"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_14c
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-static {v3, v6}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->-set0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;Z)Z

    .line 262
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;

    invoke-virtual {v3, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pIncomingHandover;->complete(Z)V

    goto/16 :goto_b5
.end method

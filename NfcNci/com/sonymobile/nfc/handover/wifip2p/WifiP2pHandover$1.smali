.class Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiP2pHandover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;
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
    .line 262
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

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

    .line 265
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 267
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 268
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_22

    const-string/jumbo v3, "WifiP2pHandover"

    const-string/jumbo v4, "Wi-Fi P2P peers changed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_22
    monitor-enter p0

    .line 271
    :try_start_23
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-static {v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-wrap0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 272
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-static {v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-wrap1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)V
    :try_end_30
    .catchall {:try_start_23 .. :try_end_30} :catchall_45

    monitor-exit p0

    .line 273
    return-void

    .line 276
    :cond_32
    :try_start_32
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-static {v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get6(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-static {v4}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V
    :try_end_43
    .catchall {:try_start_32 .. :try_end_43} :catchall_45

    :goto_43
    monitor-exit p0

    .line 264
    :cond_44
    :goto_44
    return-void

    .line 270
    :catchall_45
    move-exception v3

    monitor-exit p0

    throw v3

    .line 278
    :cond_48
    const-string/jumbo v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 279
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_64

    const-string/jumbo v3, "WifiP2pHandover"

    const-string/jumbo v4, "Wi-Fi P2P connection changed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_64
    const-string/jumbo v3, "networkInfo"

    .line 281
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 284
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-nez v1, :cond_83

    .line 285
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_82

    const-string/jumbo v3, "WifiP2pHandover"

    const-string/jumbo v4, "Invalid network information"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_82
    return-void

    .line 289
    :cond_83
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_97

    const-string/jumbo v3, "WifiP2pHandover"

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_97
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 292
    monitor-enter p0

    .line 293
    :try_start_9e
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-static {v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-wrap0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)Z

    move-result v3

    if-nez v3, :cond_ad

    .line 294
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-static {v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-wrap1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)V
    :try_end_ab
    .catchall {:try_start_9e .. :try_end_ab} :catchall_bf

    monitor-exit p0

    .line 295
    return-void

    .line 298
    :cond_ad
    :try_start_ad
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-static {v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get6(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-static {v4}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->requestConnectionInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;)V
    :try_end_be
    .catchall {:try_start_ad .. :try_end_be} :catchall_bf

    goto :goto_43

    .line 292
    :catchall_bf
    move-exception v3

    monitor-exit p0

    throw v3

    .line 302
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_c2
    const-string/jumbo v3, "com.sonymobile.nfc.handover.wifip2p.action.CANCEL_WIFI_P2P_HANDOVER_TRANSFER"

    .line 301
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ea

    .line 303
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_de

    const-string/jumbo v3, "WifiP2pHandover"

    const-string/jumbo v4, "Wi-Fi P2P outgoing was cancelled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_de
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-static {v3, v6}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-set2(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;Z)Z

    .line 306
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-virtual {v3, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->complete(Z)V

    goto/16 :goto_44

    .line 307
    :cond_ea
    const-string/jumbo v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 308
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_106

    const-string/jumbo v3, "WifiP2pHandover"

    const-string/jumbo v4, "Device is shutting down"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_106
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-virtual {v3, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->complete(Z)V

    goto/16 :goto_44

    .line 311
    :cond_10d
    const-string/jumbo v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13c

    .line 312
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_129

    const-string/jumbo v3, "WifiP2pHandover"

    const-string/jumbo v4, "Wi-fi state changed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_129
    const-string/jumbo v3, "wifi_state"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 316
    .local v2, "state":I
    if-eqz v2, :cond_135

    .line 317
    if-ne v2, v6, :cond_44

    .line 318
    :cond_135
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-virtual {v3, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->complete(Z)V

    goto/16 :goto_44

    .line 320
    .end local v2    # "state":I
    :cond_13c
    const-string/jumbo v3, "com.sonymobile.nfc.action.SONY_WIFI_P2P_NDEF_DETECTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 321
    invoke-static {}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-get0()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_158

    const-string/jumbo v3, "WifiP2pHandover"

    const-string/jumbo v4, "Wi-Fi Display is executed, cancel the ongoing process"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_158
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-static {v3, v6}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->-set0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;Z)Z

    .line 323
    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;

    invoke-virtual {v3, v5}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandover;->complete(Z)V

    goto/16 :goto_44
.end method

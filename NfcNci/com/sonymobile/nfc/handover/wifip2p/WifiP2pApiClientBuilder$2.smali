.class Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$2;
.super Ljava/lang/Object;
.source "WifiP2pApiClientBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->invokeCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$2;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$2;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;

    invoke-static {v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->-get1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;)Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$2;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;

    invoke-static {v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->-get0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;)Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$Callback;->onApiReady(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;)V

    .line 62
    return-void
.end method

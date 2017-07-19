.class Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$1;
.super Ljava/lang/Object;
.source "WifiP2pApiClientBuilder.java"

# interfaces
.implements Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;
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
    .line 33
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientConnected(Z)V
    .registers 3
    .param p1, "isConnected"    # Z

    .prologue
    .line 36
    if-eqz p1, :cond_7

    .line 37
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$1;->this$0:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;

    invoke-static {v0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->-wrap0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;)V

    .line 35
    :cond_7
    return-void
.end method

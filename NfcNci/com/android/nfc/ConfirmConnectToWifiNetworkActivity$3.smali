.class Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;
.super Ljava/lang/Object;
.source "ConfirmConnectToWifiNetworkActivity.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->doConnect(Landroid/net/wifi/WifiManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 3
    .param p1, "reason"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-static {v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->-wrap2(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    .line 115
    return-void
.end method

.method public onSuccess()V
    .registers 6

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-static {v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->-get0(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/content/Context;

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-static {v1}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->-get0(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 111
    iget-object v3, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$3;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-static {v3}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->-get1(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 110
    const v3, 0x7f090027

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-static {v0, v1}, Lcom/sonymobile/nfc/ToastMaster;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method

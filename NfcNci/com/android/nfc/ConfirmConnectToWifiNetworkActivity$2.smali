.class Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;
.super Ljava/lang/Object;
.source "ConfirmConnectToWifiNetworkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->onClick(Landroid/view/View;)V
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
    .line 81
    iput-object p1, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-static {v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->-wrap0(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 85
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-static {v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->-wrap2(Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;)V

    .line 86
    iget-object v0, p0, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity$2;->this$0:Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;

    invoke-virtual {v0}, Lcom/android/nfc/ConfirmConnectToWifiNetworkActivity;->finish()V

    .line 83
    :cond_12
    return-void
.end method

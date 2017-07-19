.class Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$1;
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
    .line 376
    iput-object p1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$1;->this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 379
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$1;->this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;

    invoke-static {v0, p2}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->-wrap2(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;Landroid/content/Intent;)V

    .line 378
    return-void
.end method

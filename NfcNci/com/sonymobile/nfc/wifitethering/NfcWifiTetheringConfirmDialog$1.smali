.class Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcWifiTetheringConfirmDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog$1;->this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog$1;->this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;

    invoke-static {v0, p2}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->-wrap0(Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;Landroid/content/Intent;)V

    .line 49
    return-void
.end method

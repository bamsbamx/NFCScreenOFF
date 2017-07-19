.class Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog$2;
.super Ljava/lang/Object;
.source "NfcWifiTetheringConfirmDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->createAlertDialog(I)Landroid/app/AlertDialog;
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
    .line 100
    iput-object p1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog$2;->this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 103
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 104
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog$2;->this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;->finish()V

    .line 102
    return-void
.end method

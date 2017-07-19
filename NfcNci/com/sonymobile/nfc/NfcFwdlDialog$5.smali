.class Lcom/sonymobile/nfc/NfcFwdlDialog$5;
.super Ljava/lang/Object;
.source "NfcFwdlDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/NfcFwdlDialog;->createCompleteDialog(ZLjava/lang/String;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/NfcFwdlDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/NfcFwdlDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/NfcFwdlDialog;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/sonymobile/nfc/NfcFwdlDialog$5;->this$0:Lcom/sonymobile/nfc/NfcFwdlDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog$5;->this$0:Lcom/sonymobile/nfc/NfcFwdlDialog;

    invoke-static {v0}, Lcom/sonymobile/nfc/NfcFwdlDialog;->-wrap0(Lcom/sonymobile/nfc/NfcFwdlDialog;)V

    .line 178
    return-void
.end method

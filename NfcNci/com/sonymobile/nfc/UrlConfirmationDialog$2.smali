.class Lcom/sonymobile/nfc/UrlConfirmationDialog$2;
.super Ljava/lang/Object;
.source "UrlConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/UrlConfirmationDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/UrlConfirmationDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/UrlConfirmationDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/UrlConfirmationDialog;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonymobile/nfc/UrlConfirmationDialog$2;->this$0:Lcom/sonymobile/nfc/UrlConfirmationDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 76
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 77
    iget-object v0, p0, Lcom/sonymobile/nfc/UrlConfirmationDialog$2;->this$0:Lcom/sonymobile/nfc/UrlConfirmationDialog;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/UrlConfirmationDialog;->finish()V

    .line 75
    return-void
.end method

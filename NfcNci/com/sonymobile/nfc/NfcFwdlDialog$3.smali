.class Lcom/sonymobile/nfc/NfcFwdlDialog$3;
.super Ljava/lang/Object;
.source "NfcFwdlDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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
    .line 154
    iput-object p1, p0, Lcom/sonymobile/nfc/NfcFwdlDialog$3;->this$0:Lcom/sonymobile/nfc/NfcFwdlDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 157
    const/4 v0, 0x1

    return v0
.end method

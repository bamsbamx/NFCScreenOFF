.class Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;
.super Ljava/lang/Object;
.source "NfcDiagTestBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->showDialogOk(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

.field final synthetic val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

.field final synthetic val$endFlg:Z

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;Landroid/app/AlertDialog$Builder;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "this$0"    # Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;
    .param p2, "val$alertDialogBuilder"    # Landroid/app/AlertDialog$Builder;
    .param p3, "val$message"    # Ljava/lang/String;
    .param p4, "val$endFlg"    # Z

    .prologue
    .line 820
    iput-object p1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    iput-object p2, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    iput-object p3, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;->val$message:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;->val$endFlg:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 822
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    const v3, 0x7f090190

    invoke-virtual {v2, v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 823
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;->val$message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 824
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 825
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4$1;

    invoke-direct {v2, p0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4$1;-><init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 832
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    const v3, 0x7f090103

    invoke-virtual {v2, v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 833
    new-instance v3, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4$2;

    iget-boolean v4, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;->val$endFlg:Z

    invoke-direct {v3, p0, v4}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4$2;-><init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;Z)V

    .line 832
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 841
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;->val$alertDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 842
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 821
    return-void
.end method

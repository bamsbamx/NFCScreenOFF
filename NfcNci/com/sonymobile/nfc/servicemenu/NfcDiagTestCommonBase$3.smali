.class Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$3;
.super Ljava/lang/Object;
.source "NfcDiagTestCommonBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->showDialogOk(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

.field final synthetic val$endFlg:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;
    .param p2, "val$endFlg"    # Z

    .prologue
    .line 590
    iput-object p1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$3;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    iput-boolean p2, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$3;->val$endFlg:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$3;->val$endFlg:Z

    if-eqz v0, :cond_9

    .line 594
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$3;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->finish()V

    .line 592
    :cond_9
    return-void
.end method

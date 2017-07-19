.class Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4$2;
.super Ljava/lang/Object;
.source "NfcDiagTestBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;

.field final synthetic val$endFlg:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;Z)V
    .registers 3
    .param p1, "this$1"    # Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;
    .param p2, "val$endFlg"    # Z

    .prologue
    .line 833
    iput-object p1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4$2;->this$1:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;

    iput-boolean p2, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4$2;->val$endFlg:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 835
    iget-boolean v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4$2;->val$endFlg:Z

    if-eqz v0, :cond_b

    .line 836
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4$2;->this$1:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;

    iget-object v0, v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$4;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->finish()V

    .line 834
    :cond_b
    return-void
.end method

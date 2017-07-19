.class Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$2;
.super Ljava/lang/Object;
.source "NfcPRBSTestMode2.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

.field final synthetic val$isFinished:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;
    .param p2, "val$isFinished"    # Z

    .prologue
    .line 559
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$2;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    iput-boolean p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$2;->val$isFinished:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$2;->val$isFinished:Z

    if-eqz v0, :cond_9

    .line 563
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$2;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->finish()V

    .line 561
    :cond_9
    return-void
.end method

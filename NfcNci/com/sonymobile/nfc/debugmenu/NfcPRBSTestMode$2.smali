.class Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$2;
.super Ljava/lang/Object;
.source "NfcPRBSTestMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

.field final synthetic val$isFinished:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;
    .param p2, "val$isFinished"    # Z

    .prologue
    .line 496
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$2;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    iput-boolean p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$2;->val$isFinished:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$2;->val$isFinished:Z

    if-eqz v0, :cond_9

    .line 500
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$2;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->finish()V

    .line 498
    :cond_9
    return-void
.end method

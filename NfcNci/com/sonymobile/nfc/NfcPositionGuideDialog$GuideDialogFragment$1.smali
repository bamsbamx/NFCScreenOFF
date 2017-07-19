.class Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment$1;
.super Ljava/lang/Object;
.source "NfcPositionGuideDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;)V
    .registers 2
    .param p1, "this$1"    # Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment$1;->this$1:Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 75
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment$1;->this$1:Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;

    invoke-virtual {v2}, Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 76
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1d

    .line 77
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.nfc.action.NOTIFICATION_CANCEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.sonymobile.nfc.extra.DIALOG_ID"

    .line 79
    const/4 v3, 0x1

    .line 78
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 81
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 74
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1d
    return-void
.end method

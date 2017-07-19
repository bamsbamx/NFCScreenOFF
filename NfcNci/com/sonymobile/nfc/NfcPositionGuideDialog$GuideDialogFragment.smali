.class public Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;
.super Landroid/app/DialogFragment;
.source "NfcPositionGuideDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/NfcPositionGuideDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GuideDialogFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment$1;
    }
.end annotation


# instance fields
.field private final mClickListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 72
    new-instance v0, Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment$1;-><init>(Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 44
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 65
    invoke-static {}, Lcom/sonymobile/nfc/NfcPositionGuideDialog;->-get0()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string/jumbo v1, "NfcPositionGuideDialog"

    const-string/jumbo v2, "onCancel()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_12
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 67
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1b

    .line 68
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 63
    :cond_1b
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 47
    invoke-static {}, Lcom/sonymobile/nfc/NfcPositionGuideDialog;->-get0()Z

    move-result v4

    if-eqz v4, :cond_10

    const-string/jumbo v4, "NfcPositionGuideDialog"

    const-string/jumbo v5, "onCreateDialog()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_10
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 49
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_44

    .line 50
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 51
    .local v2, "layout":Landroid/view/LayoutInflater;
    const v4, 0x7f030011

    invoke-virtual {v2, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 53
    .local v3, "view":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090059

    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 55
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 56
    const v4, 0x7f09005b

    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sonymobile/nfc/NfcPositionGuideDialog$GuideDialogFragment;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4

    .line 59
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v2    # "layout":Landroid/view/LayoutInflater;
    .end local v3    # "view":Landroid/view/View;
    :cond_44
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v4

    return-object v4
.end method

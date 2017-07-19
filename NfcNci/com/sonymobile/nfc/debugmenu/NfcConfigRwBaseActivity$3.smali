.class Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$3;
.super Ljava/lang/Object;
.source "NfcConfigRwBaseActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->showInputDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

.field final synthetic val$title:Ljava/lang/String;

.field final synthetic val$titleTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;Landroid/widget/TextView;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;
    .param p2, "val$titleTextView"    # Landroid/widget/TextView;
    .param p3, "val$title"    # Ljava/lang/String;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$3;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

    iput-object p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$3;->val$titleTextView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$3;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 7
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$3;->val$titleTextView:Landroid/widget/TextView;

    const-string/jumbo v1, "%s (%d octet)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$3;->val$title:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 322
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 318
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 314
    return-void
.end method

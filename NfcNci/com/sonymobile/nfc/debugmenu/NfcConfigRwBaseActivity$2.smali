.class Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$2;
.super Ljava/lang/Object;
.source "NfcConfigRwBaseActivity.java"

# interfaces
.implements Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->showConfigAddressInputDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$2;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputCompleted(Ljava/lang/String;)Z
    .registers 11
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const v4, 0x7f090167

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 267
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 268
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$2;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 271
    return v8

    .line 274
    :cond_15
    const/16 v3, 0x10

    invoke-static {p1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 275
    .local v2, "value":I
    invoke-static {v2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 276
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$2;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 279
    return v8

    .line 282
    :cond_2b
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$2;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

    iget-object v3, v3, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    invoke-virtual {v3, v2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$2;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

    const v5, 0x7f090156

    invoke-virtual {v4, v5}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 284
    const-string/jumbo v4, " [%04X]"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 283
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "msg":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$2;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

    invoke-static {v3, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 286
    return v8

    .line 289
    .end local v1    # "msg":Ljava/lang/String;
    :cond_68
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    invoke-direct {v0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;-><init>(I)V

    .line 290
    .local v0, "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$2;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

    iget-object v3, v3, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    invoke-virtual {v3, v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;->add(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)V

    .line 291
    return v7
.end method

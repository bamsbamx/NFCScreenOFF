.class Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$1;
.super Ljava/lang/Object;
.source "NfcConfigRwBaseActivity.java"

# interfaces
.implements Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->showNewValueInputDialog(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

.field final synthetic val$item:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;
    .param p2, "val$item"    # Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

    iput-object p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$1;->val$item:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputCompleted(Ljava/lang/String;)Z
    .registers 6
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 243
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1d

    .line 244
    :cond_10
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

    .line 245
    const v1, 0x7f090167

    .line 244
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 247
    return v2

    .line 249
    :cond_1d
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$1;->val$item:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    iget-object v0, v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-static {p1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->set([B)V

    .line 250
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

    iget-object v0, v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;->notifyDataSetChanged()V

    .line 251
    return v3
.end method

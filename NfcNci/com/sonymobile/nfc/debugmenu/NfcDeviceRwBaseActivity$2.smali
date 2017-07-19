.class Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$2;
.super Ljava/lang/Object;
.source "NfcDeviceRwBaseActivity.java"

# interfaces
.implements Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$OnInputCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showNewValueInputDialog(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

.field final synthetic val$item:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;
    .param p2, "val$item"    # Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$2;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    iput-object p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$2;->val$item:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

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

    .line 521
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1d

    .line 522
    :cond_10
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$2;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    .line 523
    const v1, 0x7f09013f

    .line 522
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 525
    return v2

    .line 527
    :cond_1d
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$2;->val$item:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    iget-object v0, v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;

    invoke-static {p1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigValue;->set([B)V

    .line 528
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$2;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    iget-object v0, v0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->notifyDataSetChanged()V

    .line 529
    return v3
.end method

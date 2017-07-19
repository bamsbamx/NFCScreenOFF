.class Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$3;
.super Ljava/lang/Object;
.source "NfcDeviceRwBaseActivity.java"

# interfaces
.implements Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$OnInputCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showConfigAddressInputDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    .prologue
    .line 541
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$3;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputCompleted(Ljava/lang/String;)Z
    .registers 12
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const v5, 0x7f09013f

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 544
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 545
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$3;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 548
    return v9

    .line 551
    :cond_15
    const/16 v4, 0x10

    invoke-static {p1, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 553
    .local v0, "addr":J
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$3;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    iget-object v4, v4, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    invoke-virtual {v4, v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->isValidAddress(J)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 554
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$3;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 557
    return v9

    .line 560
    :cond_2f
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$3;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    iget-object v4, v4, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    invoke-virtual {v4, v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->contains(J)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 561
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$3;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    const v6, 0x7f09012f

    invoke-virtual {v5, v6}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 562
    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$3;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    invoke-virtual {v5}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getAddressFormatString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 561
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 563
    .local v3, "msg":Ljava/lang/String;
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$3;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    invoke-static {v4, v3, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 564
    return v9

    .line 567
    .end local v3    # "msg":Ljava/lang/String;
    :cond_6f
    new-instance v2, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    invoke-direct {v2, v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;-><init>(J)V

    .line 568
    .local v2, "item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$3;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    iget-object v4, v4, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    invoke-virtual {v4, v2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->add(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)V

    .line 569
    return v8
.end method

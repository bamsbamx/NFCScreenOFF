.class Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter$3;
.super Ljava/lang/Object;
.source "NfcDeviceRwBaseActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

.field final synthetic val$item:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)V
    .registers 3

    .prologue
    .line 1012
    .local p1, "this$1":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter<TT;>;"
    .local p2, "val$item":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;, "TT;"
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter$3;->this$1:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    iput-object p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter$3;->val$item:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter$3;->val$item:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    invoke-virtual {v0, p2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->setChecked(Z)V

    .line 1014
    return-void
.end method

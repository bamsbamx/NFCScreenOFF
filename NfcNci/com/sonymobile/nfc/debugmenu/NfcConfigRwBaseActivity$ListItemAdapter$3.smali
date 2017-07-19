.class Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter$3;
.super Ljava/lang/Object;
.source "NfcConfigRwBaseActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

.field final synthetic val$item:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)V
    .registers 3

    .prologue
    .line 697
    .local p1, "this$1":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter<TT;>;"
    .local p2, "val$item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;, "TT;"
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter$3;->this$1:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    iput-object p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter$3;->val$item:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 700
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter$3;->val$item:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    invoke-virtual {v0, p2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->setChecked(Z)V

    .line 699
    return-void
.end method

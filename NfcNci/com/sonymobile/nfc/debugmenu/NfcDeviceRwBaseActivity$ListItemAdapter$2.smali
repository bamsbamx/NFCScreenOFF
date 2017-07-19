.class Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter$2;
.super Ljava/lang/Object;
.source "NfcDeviceRwBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;Landroid/view/ViewGroup;I)V
    .registers 4
    .param p2, "val$parent"    # Landroid/view/ViewGroup;
    .param p3, "val$position"    # I

    .prologue
    .line 988
    .local p1, "this$1":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter<TT;>;"
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter$2;->this$1:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    iput-object p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter$2;->val$parent:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 991
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter$2;->val$parent:Landroid/view/ViewGroup;

    check-cast v0, Landroid/widget/ListView;

    iget v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter$2;->val$position:I

    const-wide/16 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 990
    return-void
.end method

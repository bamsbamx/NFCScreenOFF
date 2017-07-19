.class Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter$1;
.super Ljava/lang/Object;
.source "NfcDeviceRwBaseActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;)V
    .registers 2

    .prologue
    .line 958
    .local p1, "this$1":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter<TT;>;"
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter$1;->this$1:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 961
    .local p1, "o1":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;, "TT;"
    .local p2, "o2":Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;, "TT;"
    iget-object v4, p1, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;

    invoke-virtual {v4}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->get()J

    move-result-wide v0

    .line 962
    .local v0, "lhs":J
    iget-object v4, p2, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;

    invoke-virtual {v4}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->get()J

    move-result-wide v2

    .line 963
    .local v2, "rhs":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_12

    .line 964
    const/4 v4, -0x1

    return v4

    .line 965
    :cond_12
    cmp-long v4, v0, v2

    if-nez v4, :cond_18

    .line 966
    const/4 v4, 0x0

    return v4

    .line 968
    :cond_18
    const/4 v4, 0x1

    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 960
    check-cast p1, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter$1;->compare(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;)I

    move-result v0

    return v0
.end method

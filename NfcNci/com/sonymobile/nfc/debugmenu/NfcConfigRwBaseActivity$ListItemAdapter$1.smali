.class Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter$1;
.super Ljava/lang/Object;
.source "NfcConfigRwBaseActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;
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
.field final synthetic this$1:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;)V
    .registers 2

    .prologue
    .line 651
    .local p1, "this$1":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;, "Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter<TT;>;"
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter$1;->this$1:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .prologue
    .line 654
    .local p1, "o1":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;, "TT;"
    .local p2, "o2":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;, "TT;"
    iget-object v0, p1, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->get()I

    move-result v0

    iget-object v1, p2, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->get()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 653
    check-cast p1, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter$1;->compare(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)I

    move-result v0

    return v0
.end method

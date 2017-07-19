.class Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode2$1;
.super Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;
.source "NfcEepromRwMode2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode2;->createListItemAdatper()Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter",
        "<",
        "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode2;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode2;Landroid/content/Context;ILjava/util/ArrayList;)V
    .registers 5
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode2;
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # I

    .prologue
    .line 130
    .local p4, "$anonymous2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;>;"
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode2$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode2;

    invoke-direct {p0, p2, p3, p4}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    .line 131
    return-void
.end method


# virtual methods
.method protected isValidAddress(J)Z
    .registers 8
    .param p1, "addr"    # J

    .prologue
    .line 139
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode2$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode2;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode2;->getMinAddress()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gtz v0, :cond_20

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode2$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode2;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcEepromRwMode2;->getMaxAddress()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_20

    const-wide/16 v0, 0x4

    rem-long v0, p1, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    .line 140
    const/4 v0, 0x1

    return v0

    .line 142
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method protected trim(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 134
    return-object p1
.end method

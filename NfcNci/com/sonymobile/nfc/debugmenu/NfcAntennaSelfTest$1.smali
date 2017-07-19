.class Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$1;
.super Ljava/lang/Object;
.source "NfcAntennaSelfTest.java"

# interfaces
.implements Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$OnInputCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->showCmdParamInputDialog(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

.field final synthetic val$item:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;
    .param p2, "val$item"    # Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    iput-object p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$1;->val$item:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInputCompleted(Ljava/lang/String;)V
    .registers 4
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 176
    if-eqz p1, :cond_16

    .line 177
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$1;->val$item:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$1;->val$item:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->setCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;)Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;->notifyDataSetChanged()V

    .line 175
    :cond_16
    return-void
.end method

.class Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$3;
.super Ljava/lang/Object;
.source "NfcPollingTestMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

.field final synthetic val$endFlg:Z


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;
    .param p2, "val$endFlg"    # Z

    .prologue
    .line 220
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$3;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    iput-boolean p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$3;->val$endFlg:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$3;->val$endFlg:Z

    if-eqz v0, :cond_9

    .line 224
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$3;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->finish()V

    .line 222
    :cond_9
    return-void
.end method

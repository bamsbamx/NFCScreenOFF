.class Lcom/sonymobile/nfc/NfcFwdlDialog$1;
.super Landroid/os/Handler;
.source "NfcFwdlDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/NfcFwdlDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/NfcFwdlDialog;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/NfcFwdlDialog;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/NfcFwdlDialog;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/sonymobile/nfc/NfcFwdlDialog$1;->this$0:Lcom/sonymobile/nfc/NfcFwdlDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 56
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    .line 66
    const-string/jumbo v0, "NfcFwdlDialog"

    const-string/jumbo v1, "unknown message received."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_e
    return-void

    .line 59
    :pswitch_f
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog$1;->this$0:Lcom/sonymobile/nfc/NfcFwdlDialog;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/nfc/NfcFwdlDialog;->endProgress(ZLjava/lang/String;)V

    goto :goto_e

    .line 63
    :pswitch_17
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcFwdlDialog$1;->this$0:Lcom/sonymobile/nfc/NfcFwdlDialog;

    invoke-static {v0}, Lcom/sonymobile/nfc/NfcFwdlDialog;->-wrap0(Lcom/sonymobile/nfc/NfcFwdlDialog;)V

    goto :goto_e

    .line 56
    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_f
        :pswitch_17
    .end packed-switch
.end method

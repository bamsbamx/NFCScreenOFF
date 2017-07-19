.class Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$1;
.super Landroid/os/Handler;
.source "NfcDiagTestBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$1;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 207
    const/4 v0, 0x0

    .line 210
    .local v0, "data":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_102

    .line 268
    const-string/jumbo v1, "NfcDiagTest"

    const-string/jumbo v2, "Invalid Message ID"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    .end local v0    # "data":Ljava/lang/String;
    :goto_f
    return-void

    .line 212
    .restart local v0    # "data":Ljava/lang/String;
    :pswitch_10
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "TextView-Baseband"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$1;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-get3(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 217
    .local v0, "data":Ljava/lang/String;
    :pswitch_29
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "TextView-BasebandResult"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$1;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-get4(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 222
    .local v0, "data":Ljava/lang/String;
    :pswitch_42
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "TextView-Swp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$1;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-get9(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 227
    .local v0, "data":Ljava/lang/String;
    :pswitch_5b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "TextView-SwpResult"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$1;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-get10(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 232
    .local v0, "data":Ljava/lang/String;
    :pswitch_74
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "TextView-Antenna"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$1;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-get1(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 237
    .local v0, "data":Ljava/lang/String;
    :pswitch_8d
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "TextView-AntennaResult"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$1;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-get2(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 242
    .local v0, "data":Ljava/lang/String;
    :pswitch_a7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "TextView-TagReading"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$1;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->isAntennaSelfTestSupported()Z

    move-result v1

    if-nez v1, :cond_c9

    .line 248
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$1;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-get1(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 250
    :cond_c9
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$1;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-get11(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 255
    .local v0, "data":Ljava/lang/String;
    :pswitch_d4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "TextView-TagReadingResult"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$1;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->isAntennaSelfTestSupported()Z

    move-result v1

    if-nez v1, :cond_f6

    .line 261
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$1;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-get2(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 263
    :cond_f6
    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$1;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-get12(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 210
    nop

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_10
        :pswitch_29
        :pswitch_42
        :pswitch_5b
        :pswitch_74
        :pswitch_8d
        :pswitch_a7
        :pswitch_d4
    .end packed-switch
.end method

.class Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;
.super Landroid/os/AsyncTask;
.source "NfcDiagTestCommonBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiagTestTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    .prologue
    .line 602
    iput-object p1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;-><init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 6
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 616
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    new-instance v1, Lcom/sonymobile/nfc/NfcConfig;

    invoke-direct {v1}, Lcom/sonymobile/nfc/NfcConfig;-><init>()V

    iput-object v1, v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    .line 617
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    iget-object v0, v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/NfcConfig;->connect(Landroid/content/Context;)Z

    .line 619
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-wrap0(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 621
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 624
    :cond_21
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-wrap1(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)V

    .line 625
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->publishProgress([Ljava/lang/Object;)V

    .line 626
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-wrap2(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)V

    .line 627
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->publishProgress([Ljava/lang/Object;)V

    .line 628
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-wrap3(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)V

    .line 629
    new-array v0, v3, [Ljava/lang/Integer;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->publishProgress([Ljava/lang/Object;)V

    .line 631
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    iget-object v0, v0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcConfig;->close()V

    .line 634
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 613
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 6
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 664
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-get6(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 665
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-get6(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 666
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-set0(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 670
    :cond_18
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-get4(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 674
    :cond_26
    :goto_26
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0, v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-wrap4(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;Z)V

    .line 675
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    const-wide/16 v2, 0x3e8

    invoke-static {v0, v2, v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-wrap5(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;J)V

    .line 662
    return-void

    .line 671
    :cond_33
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    const v2, 0x7f090106

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->showDialogOk(Ljava/lang/String;Z)V

    goto :goto_26
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 662
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    .prologue
    .line 606
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-get6(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 607
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-get6(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 604
    :cond_11
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .registers 4
    .param p1, "prog"    # [Ljava/lang/Integer;

    .prologue
    .line 639
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_8a

    .line 656
    const-string/jumbo v0, "NfcDiagTest"

    const-string/jumbo v1, "Invalid Message ID"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :goto_13
    return-void

    .line 641
    :pswitch_14
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-get1(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-get2(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-get3(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-get2(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 646
    :pswitch_3b
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-get7(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-get8(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 647
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-get9(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-get8(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 651
    :pswitch_62
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-get11(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-get10(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 652
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-get12(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;->-get10(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 639
    nop

    :pswitch_data_8a
    .packed-switch 0x0
        :pswitch_14
        :pswitch_3b
        :pswitch_62
    .end packed-switch
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .param p1, "prog"    # [Ljava/lang/Object;

    .prologue
    .line 638
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "prog":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestCommonBase$DiagTestTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

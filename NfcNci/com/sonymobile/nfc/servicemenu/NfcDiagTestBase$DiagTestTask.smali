.class Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;
.super Landroid/os/AsyncTask;
.source "NfcDiagTestBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;
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
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    .prologue
    .line 847
    iput-object p1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;-><init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 3
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 861
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-wrap0(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 863
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 866
    :cond_e
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-wrap2(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)V

    .line 867
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-wrap3(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)V

    .line 869
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->isAntennaSelfTestSupported()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 870
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-wrap1(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)V

    .line 873
    :cond_25
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-wrap4(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)V

    .line 876
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 858
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const/4 v1, 0x0

    .line 882
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-get8(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 883
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-get8(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 884
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-set0(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 888
    :cond_17
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-get6(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Z

    move-result v0

    if-eqz v0, :cond_27

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 880
    :cond_27
    :goto_27
    return-void

    .line 889
    :cond_28
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    iget-object v1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    const v2, 0x7f090106

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->showDialogOk(Ljava/lang/String;Z)V

    goto :goto_27
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 880
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-get8(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 852
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$DiagTestTask;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-static {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->-get8(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 849
    :cond_11
    return-void
.end method

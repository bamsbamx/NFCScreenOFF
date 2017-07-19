.class Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;
.super Landroid/os/AsyncTask;
.source "NfcPollingTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExecuteSettingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TEST_FAILURE:I = 0xff

.field private static final TEST_SUCCESS:I


# instance fields
.field private final mDialogTitle:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 101
    iput-object p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;->mDialogTitle:Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 122
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    invoke-static {v2}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->-get1(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    invoke-static {v2}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->-get1(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 128
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->-get0()Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 129
    const/4 v0, 0x2

    .line 134
    .local v0, "polling_mode":I
    :goto_1f
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    invoke-static {v2}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->-get1(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonymobile/nfc/NfcConfig;->setPollingMode(I)I

    move-result v1

    .line 137
    .local v1, "result":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 123
    .end local v0    # "polling_mode":I
    .end local v1    # "result":I
    :cond_2e
    const-string/jumbo v2, "NfcPollingTestMode"

    const-string/jumbo v3, "Cannot perform Setting test due to no service connection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/16 v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2

    .line 131
    :cond_3e
    const/4 v0, 0x1

    .restart local v0    # "polling_mode":I
    goto :goto_1f
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 119
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final onPostExecute(Ljava/lang/Integer;)V
    .registers 7
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    .line 144
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 149
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_20

    .line 150
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    const v3, 0x7f090104

    invoke-virtual {v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    .local v1, "dialogMessage":Ljava/lang/String;
    const v0, 0x108009b

    .line 156
    .local v0, "dialogIcon":I
    :goto_18
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;->mDialogTitle:Ljava/lang/String;

    invoke-static {v2, v3, v1, v0, v4}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->-wrap0(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 141
    return-void

    .line 153
    .end local v0    # "dialogIcon":I
    .end local v1    # "dialogMessage":Ljava/lang/String;
    :cond_20
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    const v3, 0x7f090105

    invoke-virtual {v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 154
    .restart local v1    # "dialogMessage":Ljava/lang/String;
    const v0, 0x1080027

    .restart local v0    # "dialogIcon":I
    goto :goto_18
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 141
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected final onPreExecute()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 108
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 109
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 110
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    const v2, 0x7f090102

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 112
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 113
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 105
    return-void
.end method

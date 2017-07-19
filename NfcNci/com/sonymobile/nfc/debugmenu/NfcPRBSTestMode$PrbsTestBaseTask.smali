.class abstract Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;
.super Landroid/os/AsyncTask;
.source "NfcPRBSTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PrbsTestBaseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<TT;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field protected static final PRBS_TEST_DEVICE_UNAVAILABLE:I = 0xf001

.field protected static final PRBS_TEST_FAILURE:I = 0xff

.field protected static final PRBS_TEST_INVALID_STATE:I = 0xf000

.field protected static final PRBS_TEST_SUCCESS:I


# instance fields
.field private final mDialogTitle:Ljava/lang/String;

.field private final mIsUiRequired:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;Ljava/lang/String;Z)V
    .registers 4
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "isUiRequired"    # Z

    .prologue
    .line 365
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;, "Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask<TT;>;"
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 366
    iput-object p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->mDialogTitle:Ljava/lang/String;

    .line 367
    iput-boolean p3, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->mIsUiRequired:Z

    .line 365
    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;, "Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask<TT;>;"
    .local p1, "params":[Ljava/lang/Object;, "[TT;"
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v1

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 401
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->onBackgroundTask([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    .line 404
    .local v0, "result":Ljava/lang/Integer;
    return-object v0

    .line 396
    .end local v0    # "result":Ljava/lang/Integer;
    :cond_19
    const-string/jumbo v1, "NfcPRBSTestMode"

    const-string/jumbo v2, "Cannot perform PRBS test due to no service connection."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const v1, 0xf000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 392
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;, "Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask<TT;>;"
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected varargs abstract onBackgroundTask([Ljava/lang/Object;)Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)",
            "Ljava/lang/Integer;"
        }
    .end annotation
.end method

.method protected final onPostExecute(Ljava/lang/Integer;)V
    .registers 7
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;, "Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask<TT;>;"
    const/4 v4, 0x0

    .line 411
    iget-boolean v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->mIsUiRequired:Z

    if-eqz v2, :cond_23

    .line 412
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 417
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_24

    .line 418
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    const v3, 0x7f090104

    invoke-virtual {v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 419
    .local v1, "dialogMessage":Ljava/lang/String;
    const v0, 0x108009b

    .line 425
    .local v0, "dialogIcon":I
    :goto_1c
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->mDialogTitle:Ljava/lang/String;

    invoke-static {v2, v3, v1, v0, v4}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->-wrap0(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 408
    .end local v0    # "dialogIcon":I
    .end local v1    # "dialogMessage":Ljava/lang/String;
    :cond_23
    return-void

    .line 421
    :cond_24
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    const v3, 0x7f090105

    invoke-virtual {v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 422
    .restart local v1    # "dialogMessage":Ljava/lang/String;
    const v0, 0x1080027

    .line 423
    .restart local v0    # "dialogIcon":I
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->-wrap1(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;Z)V

    goto :goto_1c
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 408
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;, "Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask<TT;>;"
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected final onPreExecute()V
    .registers 5

    .prologue
    .local p0, "this":Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;, "Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask<TT;>;"
    const/4 v3, 0x0

    .line 379
    iget-boolean v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->mIsUiRequired:Z

    if-eqz v0, :cond_30

    .line 380
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 381
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 382
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    const v2, 0x7f090102

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 384
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 385
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestBaseTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 376
    :cond_30
    return-void
.end method

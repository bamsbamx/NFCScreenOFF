.class public abstract Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;
.super Landroid/os/AsyncTask;
.source "NfcConfigRwBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "BasicRwTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field protected final STATE_ENABLING:I

.field protected final STATE_READING:I

.field protected final STATE_VERIFYING:I

.field protected final STATE_WRINTING:I

.field protected mContext:Landroid/content/Context;

.field protected mErrorMessage:Ljava/lang/String;

.field protected mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

.field protected mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

    .prologue
    .line 821
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 822
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->STATE_ENABLING:I

    .line 823
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->STATE_READING:I

    .line 824
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->STATE_WRINTING:I

    .line 825
    const/4 v0, 0x3

    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->STATE_VERIFYING:I

    .line 821
    return-void
.end method


# virtual methods
.method protected convertEndian([B)[B
    .registers 6
    .param p1, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 901
    if-nez p1, :cond_4

    .line 902
    return-object v2

    .line 905
    :cond_4
    array-length v2, p1

    new-array v0, v2, [B

    .line 906
    .local v0, "buffer":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_16

    .line 907
    array-length v2, p1

    add-int/lit8 v3, v1, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    .line 906
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 909
    :cond_16
    return-object v0
.end method

.method protected enable()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 866
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/NfcConfig;->connect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 867
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->mContext:Landroid/content/Context;

    const v1, 0x7f09014d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->mErrorMessage:Ljava/lang/String;

    .line 868
    const-string/jumbo v0, "NfcConfigRwBaseActivity"

    const-string/jumbo v1, "BasicRwTask: Failed to connect Nfc service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return v2

    .line 875
    :cond_20
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcConfig;->enable()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 876
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->mContext:Landroid/content/Context;

    const v1, 0x7f09014e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->mErrorMessage:Ljava/lang/String;

    .line 877
    const-string/jumbo v0, "NfcConfigRwBaseActivity"

    const-string/jumbo v1, "BasicRwTask: Failed to enable Nfc service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    return v2

    .line 882
    :cond_3d
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract getTitleId()I
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 851
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->setFixedOrientation(Z)V

    .line 852
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/NfcConfig;->close()V

    .line 853
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 855
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->getTitleId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 857
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

    invoke-virtual {v1, v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->showCompleteDialog(Ljava/lang/String;)V

    .line 861
    :goto_23
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

    iget-object v1, v1, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;->notifyDataSetChanged()V

    .line 850
    return-void

    .line 859
    :cond_2b
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 850
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 838
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->setFixedOrientation(Z)V

    .line 839
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->setContext()V

    .line 840
    new-instance v0, Lcom/sonymobile/nfc/NfcConfig;

    invoke-direct {v0}, Lcom/sonymobile/nfc/NfcConfig;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    .line 841
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 842
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 843
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->getTitleId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 844
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

    const v2, 0x7f09015e

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 845
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 846
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 836
    return-void
.end method

.method protected abstract setContext()V
.end method

.method protected setFixedOrientation(Z)V
    .registers 5
    .param p1, "isFixed"    # Z

    .prologue
    .line 886
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;

    .line 888
    .local v0, "activity":Landroid/app/Activity;
    if-eqz p1, :cond_1b

    .line 889
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 890
    .local v1, "orientation":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    .line 891
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 885
    .end local v1    # "orientation":I
    :goto_15
    return-void

    .line 893
    .restart local v1    # "orientation":I
    :cond_16
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_15

    .line 896
    .end local v1    # "orientation":I
    :cond_1b
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_15
.end method

.class public abstract Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;
.super Landroid/os/AsyncTask;
.source "NfcDeviceRwBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "BasicRwTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItem;",
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

.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1144
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->STATE_ENABLING:I

    .line 1145
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->STATE_READING:I

    .line 1146
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->STATE_WRINTING:I

    .line 1147
    const/4 v0, 0x3

    iput v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->STATE_VERIFYING:I

    .line 1143
    return-void
.end method


# virtual methods
.method protected enable()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1188
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/NfcConfig;->connect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1189
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->mContext:Landroid/content/Context;

    const v1, 0x7f090126

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->mErrorMessage:Ljava/lang/String;

    .line 1190
    const-string/jumbo v0, "NfcDeviceRwBaseActivity"

    const-string/jumbo v1, "BasicRwTask: Failed to connect Nfc service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    return v2

    .line 1197
    :cond_20
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcConfig;->enable()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1198
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->mContext:Landroid/content/Context;

    const v1, 0x7f090127

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->mErrorMessage:Ljava/lang/String;

    .line 1199
    const-string/jumbo v0, "NfcDeviceRwBaseActivity"

    const-string/jumbo v1, "BasicRwTask: Failed to enable Nfc service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    return v2

    .line 1204
    :cond_3d
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract getTitle()Ljava/lang/String;
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 1173
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->setFixedOrientation(Z)V

    .line 1174
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/NfcConfig;->close()V

    .line 1175
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1177
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 1178
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1179
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    invoke-virtual {v1, v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showCompleteDialog(Ljava/lang/String;)V

    .line 1183
    :goto_1d
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    iget-object v1, v1, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ListItemAdapter;->notifyDataSetChanged()V

    .line 1172
    return-void

    .line 1181
    :cond_25
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 1172
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1160
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->setFixedOrientation(Z)V

    .line 1161
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->setContext()V

    .line 1162
    new-instance v0, Lcom/sonymobile/nfc/NfcConfig;

    invoke-direct {v0}, Lcom/sonymobile/nfc/NfcConfig;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->mNfcConfig:Lcom/sonymobile/nfc/NfcConfig;

    .line 1163
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1164
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 1165
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1166
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    const v2, 0x7f090136

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1167
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1168
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1158
    return-void
.end method

.method protected abstract setContext()V
.end method

.method protected setFixedOrientation(Z)V
    .registers 5
    .param p1, "isFixed"    # Z

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$BasicRwTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;

    .line 1210
    .local v0, "activity":Landroid/app/Activity;
    if-eqz p1, :cond_1b

    .line 1211
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 1212
    .local v1, "orientation":I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    .line 1213
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1207
    .end local v1    # "orientation":I
    :goto_15
    return-void

    .line 1215
    .restart local v1    # "orientation":I
    :cond_16
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_15

    .line 1218
    .end local v1    # "orientation":I
    :cond_1b
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_15
.end method

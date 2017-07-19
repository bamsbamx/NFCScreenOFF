.class Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;
.super Landroid/os/AsyncTask;
.source "NfcAntennaSelfTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AntennaTestTask"
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
.field private mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 9
    .param p1, "param"    # [Ljava/lang/Void;

    .prologue
    .line 260
    const/4 v4, 0x0

    .line 263
    .local v4, "result":Z
    new-instance v0, Lcom/sonymobile/nfc/NfcConfig;

    invoke-direct {v0}, Lcom/sonymobile/nfc/NfcConfig;-><init>()V

    .line 264
    .local v0, "config":Lcom/sonymobile/nfc/NfcConfig;
    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    invoke-virtual {v0, v5}, Lcom/sonymobile/nfc/NfcConfig;->connect(Landroid/content/Context;)Z

    .line 266
    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z

    move-result v5

    if-nez v5, :cond_22

    .line 267
    const-string/jumbo v5, "NfcAntennaSelfTest"

    const-string/jumbo v6, "Cannot perform Antenna Self test due to no service connection."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :goto_1a
    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcConfig;->close()V

    .line 291
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    .line 269
    :cond_22
    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcConfig;->saveOriginalNfcSetting()V

    .line 270
    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcConfig;->enable()Z

    .line 278
    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    invoke-static {v5}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->-wrap0(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;)[B

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sonymobile/nfc/NfcConfig;->antennaTest([B)[B

    move-result-object v3

    .line 279
    .local v3, "res":[B
    if-eqz v3, :cond_57

    .line 280
    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    invoke-static {v5}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;)Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;->getItem()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "item$iterator":Ljava/util/Iterator;
    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;

    .line 281
    .local v1, "item":Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;
    invoke-virtual {v1}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v3}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->setResponse(Ljava/lang/String;[B)V

    goto :goto_42

    .line 283
    .end local v1    # "item":Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;
    :cond_56
    const/4 v4, 0x1

    .line 286
    .end local v2    # "item$iterator":Ljava/util/Iterator;
    :cond_57
    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcConfig;->loadOriginalNfcSetting()V

    goto :goto_1a
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "param"    # [Ljava/lang/Object;

    .prologue
    .line 259
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "param":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 7
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 297
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 303
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 304
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    const v4, 0x7f090012

    invoke-virtual {v3, v4}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    const v4, 0x7f090014

    invoke-virtual {v3, v4}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, "message":Ljava/lang/String;
    const v0, 0x108009b

    .line 312
    .local v0, "icon":I
    :goto_20
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v0, v4}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->-wrap1(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 314
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    invoke-static {v3}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;)Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;->notifyDataSetChanged()V

    .line 295
    return-void

    .line 308
    .end local v0    # "icon":I
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_30
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    const v4, 0x7f090013

    invoke-virtual {v3, v4}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 309
    .restart local v2    # "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    const v4, 0x7f090015

    invoke-virtual {v3, v4}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 310
    .restart local v1    # "message":Ljava/lang/String;
    const v0, 0x1080027

    .restart local v0    # "icon":I
    goto :goto_20
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 295
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 248
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 249
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 250
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 252
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 253
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 246
    return-void
.end method

.class Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;
.super Landroid/os/AsyncTask;
.source "NfcSettingTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;
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
.field protected static final SETTING_TEST_FAILURE:I = 0xff

.field protected static final SETTING_TEST_SUCCESS:I


# instance fields
.field private final mDialogTitle:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 316
    iput-object p2, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->mDialogTitle:Ljava/lang/String;

    .line 315
    return-void
.end method

.method private executeSetting()Ljava/lang/Integer;
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 404
    filled-new-array {v9, v9}, [I

    move-result-object v7

    .line 405
    .local v7, "p2pValues":[I
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get3(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/debugmenu/P2pPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->getP2pValues()[I

    move-result-object v7

    .line 406
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get4(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/debugmenu/RwPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/RwPreference;->getRwValue()I

    move-result v0

    aget v1, v7, v9

    or-int v4, v0, v1

    .line 408
    .local v4, "pollingTech":I
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get5(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->getSeValue()I

    move-result v1

    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v2}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get5(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->getSeValue()I

    move-result v2

    .line 409
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v3}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get5(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->getCeValue()I

    move-result v3

    aget v5, v7, v6

    .line 408
    invoke-virtual/range {v0 .. v6}, Lcom/sonymobile/nfc/NfcConfig;->renewRouting(IIIIIZ)I

    move-result v8

    .line 410
    .local v8, "result":I
    if-eqz v8, :cond_5a

    .line 411
    const-string/jumbo v0, "NfcSettingTestMode"

    const-string/jumbo v1, "renewRouting failure"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/16 v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 415
    :cond_5a
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .registers 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 335
    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 339
    .local v0, "result":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v1

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/nfc/NfcConfig;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 344
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get1(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 345
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/nfc/NfcConfig;->enable()Z

    .line 348
    :cond_2f
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isCustomSetting()Z

    move-result v1

    if-eqz v1, :cond_44

    .line 350
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->executeSetting()Ljava/lang/Integer;

    move-result-object v0

    .line 363
    :cond_39
    :goto_39
    return-object v0

    .line 340
    :cond_3a
    const-string/jumbo v1, "NfcSettingTestMode"

    const-string/jumbo v2, "Cannot perform Setting test due to no service connection"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    return-object v0

    .line 353
    :cond_44
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/nfc/NfcConfig;->disable()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 355
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/nfc/NfcConfig;->enable()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 357
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_39
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 334
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final onPostExecute(Ljava/lang/Integer;)V
    .registers 10
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    const/4 v7, 0x0

    .line 370
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 375
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_64

    .line 376
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    const v5, 0x7f090104

    invoke-virtual {v4, v5}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, "message":Ljava/lang/String;
    const v1, 0x108009b

    .line 380
    .local v1, "icon":I
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 381
    .local v3, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 383
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "mode"

    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get7()I

    move-result v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 384
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 386
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->isCustomSetting()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 387
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get4(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/debugmenu/RwPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/nfc/debugmenu/RwPreference;->savePref()V

    .line 388
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get5(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/debugmenu/SeCePreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/nfc/debugmenu/SeCePreference;->savePref()V

    .line 389
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get3(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)Lcom/sonymobile/nfc/debugmenu/P2pPreference;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/nfc/debugmenu/P2pPreference;->savePref()V

    .line 395
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "prefs":Landroid/content/SharedPreferences;
    :cond_50
    :goto_50
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    iget-object v5, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    const v6, 0x7f090091

    invoke-virtual {v5, v6}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v1, v7}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 397
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v4}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-wrap1(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)V

    .line 367
    return-void

    .line 392
    .end local v1    # "icon":I
    .end local v2    # "message":Ljava/lang/String;
    :cond_64
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    const v5, 0x7f090105

    invoke-virtual {v4, v5}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 393
    .restart local v2    # "message":Ljava/lang/String;
    const v1, 0x1080027

    .restart local v1    # "icon":I
    goto :goto_50
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 367
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected final onPreExecute()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 323
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 324
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 325
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    const v2, 0x7f090102

    invoke-virtual {v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 327
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 328
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 320
    return-void
.end method

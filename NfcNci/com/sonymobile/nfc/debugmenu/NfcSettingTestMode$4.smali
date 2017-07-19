.class Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$4;
.super Ljava/lang/Object;
.source "NfcSettingTestMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->initContentViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$4;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 252
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$4;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 253
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$4;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    const-string/jumbo v2, "NfcSettingTestMode"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;Ljava/lang/String;)V

    .line 254
    .local v0, "settingTask":Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;
    sget-object v1, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$ExecuteSettingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 251
    return-void
.end method

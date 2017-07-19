.class Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$1;
.super Ljava/lang/Object;
.source "NfcPollingTestMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$1;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    const-string/jumbo v2, "NfcPollingTestMode"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;Ljava/lang/String;)V

    .line 62
    .local v0, "settingTask":Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;
    sget-object v1, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ExecuteSettingTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 60
    return-void
.end method

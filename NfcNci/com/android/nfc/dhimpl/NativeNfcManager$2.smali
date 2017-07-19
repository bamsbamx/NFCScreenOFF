.class Lcom/android/nfc/dhimpl/NativeNfcManager$2;
.super Landroid/content/BroadcastReceiver;
.source "NativeNfcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/dhimpl/NativeNfcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/dhimpl/NativeNfcManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/dhimpl/NativeNfcManager;

    .prologue
    .line 748
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$2;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 751
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.sonymobile.nfc.action.UPDATE_LISTEN_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 753
    const-string/jumbo v2, "listenmode"

    .line 754
    const/4 v3, -0x1

    .line 753
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 755
    .local v1, "request":I
    invoke-static {}, Lcom/android/nfc/dhimpl/NativeNfcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_36

    const-string/jumbo v2, "NativeNfcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Intent ACTION_UPDATE_LISTEN_MODE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :cond_36
    new-instance v2, Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;

    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$2;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;-><init>(Lcom/android/nfc/dhimpl/NativeNfcManager;Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Integer;

    .line 757
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 756
    invoke-virtual {v2, v3}, Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 750
    .end local v1    # "request":I
    :cond_51
    return-void
.end method

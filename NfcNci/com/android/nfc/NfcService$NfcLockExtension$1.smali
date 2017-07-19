.class Lcom/android/nfc/NfcService$NfcLockExtension$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService$NfcLockExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/NfcService$NfcLockExtension;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService$NfcLockExtension;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/nfc/NfcService$NfcLockExtension;

    .prologue
    .line 1593
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcLockExtension$1;->this$1:Lcom/android/nfc/NfcService$NfcLockExtension;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1596
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1597
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 1598
    const-string/jumbo v3, "android.intent.extra.user_handle"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1599
    .local v2, "userId":I
    sget-boolean v3, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v3, :cond_33

    const-string/jumbo v3, "NfcLockExtension"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ACTION_USER_SWITCHED received: userid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    :cond_33
    invoke-virtual {p2}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 1601
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string/jumbo v3, "com.sonymobile.nfclock"

    const-string/jumbo v4, "com.sonymobile.nfclock.NfcLockService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1602
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcLockExtension$1;->this$1:Lcom/android/nfc/NfcService$NfcLockExtension;

    invoke-static {v3}, Lcom/android/nfc/NfcService$NfcLockExtension;->-get0(Lcom/android/nfc/NfcService$NfcLockExtension;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1595
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    .end local v2    # "userId":I
    :cond_4b
    return-void
.end method

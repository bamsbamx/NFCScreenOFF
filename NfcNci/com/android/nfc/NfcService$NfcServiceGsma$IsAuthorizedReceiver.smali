.class Lcom/android/nfc/NfcService$NfcServiceGsma$IsAuthorizedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService$NfcServiceGsma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IsAuthorizedReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/NfcService$NfcServiceGsma;


# direct methods
.method private constructor <init>(Lcom/android/nfc/NfcService$NfcServiceGsma;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/nfc/NfcService$NfcServiceGsma;

    .prologue
    .line 2373
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcServiceGsma$IsAuthorizedReceiver;->this$1:Lcom/android/nfc/NfcService$NfcServiceGsma;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/NfcService$NfcServiceGsma;Lcom/android/nfc/NfcService$NfcServiceGsma$IsAuthorizedReceiver;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/nfc/NfcService$NfcServiceGsma;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceGsma$IsAuthorizedReceiver;-><init>(Lcom/android/nfc/NfcService$NfcServiceGsma;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2376
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.sonymobile.nfc.action.VERIFY_CERTIFICATE_RSP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 2378
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceGsma$IsAuthorizedReceiver;->this$1:Lcom/android/nfc/NfcService$NfcServiceGsma;

    .line 2379
    const-string/jumbo v2, "com.sonymobile.nfc.extra.VERIFY_CERTIFICATE_RESULT"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 2378
    invoke-static {v1, v2}, Lcom/android/nfc/NfcService$NfcServiceGsma;->-set0(Lcom/android/nfc/NfcService$NfcServiceGsma;Z)Z

    .line 2382
    const-string/jumbo v1, "com.sonymobile.nfc.extra.VERIFY_CERTIFICATE_PACKAGENAME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2383
    .local v0, "packageName":Ljava/lang/String;
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_50

    const-string/jumbo v1, "NfcServiceGsma"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ACTION_VERIFY_CERTIFICATE_RSP for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2384
    const-string/jumbo v3, " :"

    .line 2383
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2384
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceGsma$IsAuthorizedReceiver;->this$1:Lcom/android/nfc/NfcService$NfcServiceGsma;

    invoke-static {v3}, Lcom/android/nfc/NfcService$NfcServiceGsma;->-get1(Lcom/android/nfc/NfcService$NfcServiceGsma;)Z

    move-result v3

    .line 2383
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    :cond_50
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceGsma$IsAuthorizedReceiver;->this$1:Lcom/android/nfc/NfcService$NfcServiceGsma;

    invoke-static {v1}, Lcom/android/nfc/NfcService$NfcServiceGsma;->-get0(Lcom/android/nfc/NfcService$NfcServiceGsma;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    .line 2375
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_59
    return-void
.end method

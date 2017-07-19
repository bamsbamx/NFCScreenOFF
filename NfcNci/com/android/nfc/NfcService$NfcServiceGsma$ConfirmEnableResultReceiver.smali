.class Lcom/android/nfc/NfcService$NfcServiceGsma$ConfirmEnableResultReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService$NfcServiceGsma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfirmEnableResultReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/NfcService$NfcServiceGsma;


# direct methods
.method private constructor <init>(Lcom/android/nfc/NfcService$NfcServiceGsma;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/nfc/NfcService$NfcServiceGsma;

    .prologue
    .line 2257
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcServiceGsma$ConfirmEnableResultReceiver;->this$1:Lcom/android/nfc/NfcService$NfcServiceGsma;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/NfcService$NfcServiceGsma;Lcom/android/nfc/NfcService$NfcServiceGsma$ConfirmEnableResultReceiver;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/nfc/NfcService$NfcServiceGsma;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceGsma$ConfirmEnableResultReceiver;-><init>(Lcom/android/nfc/NfcService$NfcServiceGsma;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2260
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2261
    .local v1, "intentAction":Ljava/lang/String;
    const-string/jumbo v2, "com.nfc.services.nfc.CONFIRM_ENABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 2263
    const-string/jumbo v2, "confirmed"

    const/4 v3, 0x0

    .line 2262
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2264
    .local v0, "answer":Z
    sget-boolean v2, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v2, :cond_33

    const-string/jumbo v2, "NfcServiceGsma"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ConfirmEnableResultReceiver onReceive answer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    :cond_33
    if-eqz v0, :cond_3b

    .line 2266
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceGsma$ConfirmEnableResultReceiver;->this$1:Lcom/android/nfc/NfcService$NfcServiceGsma;

    invoke-static {v2}, Lcom/android/nfc/NfcService$NfcServiceGsma;->-wrap1(Lcom/android/nfc/NfcService$NfcServiceGsma;)V

    .line 2259
    .end local v0    # "answer":Z
    :cond_3a
    :goto_3a
    return-void

    .line 2268
    .restart local v0    # "answer":Z
    :cond_3b
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceGsma$ConfirmEnableResultReceiver;->this$1:Lcom/android/nfc/NfcService$NfcServiceGsma;

    invoke-static {v2}, Lcom/android/nfc/NfcService$NfcServiceGsma;->-wrap0(Lcom/android/nfc/NfcService$NfcServiceGsma;)V

    goto :goto_3a
.end method

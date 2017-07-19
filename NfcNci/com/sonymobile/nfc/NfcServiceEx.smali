.class public Lcom/sonymobile/nfc/NfcServiceEx;
.super Landroid/app/Service;
.source "NfcServiceEx.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.sonymobile.nfc.INfcConfig"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 38
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->getNfcConfigInterface()Lcom/sonymobile/nfc/INfcConfig$Stub;

    move-result-object v1

    return-object v1

    .line 40
    :cond_16
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->getNfcAdapterExInterface()Lcom/sonymobile/nfc/INfcAdapterEx$Stub;

    move-result-object v1

    return-object v1
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 31
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 30
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .prologue
    .line 50
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 49
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

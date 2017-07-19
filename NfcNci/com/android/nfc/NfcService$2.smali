.class Lcom/android/nfc/NfcService$2;
.super Landroid/content/BroadcastReceiver;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 4902
    iput-object p1, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4905
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4906
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 4907
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4906
    if-nez v1, :cond_28

    .line 4908
    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4906
    if-nez v1, :cond_28

    .line 4909
    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4906
    if-eqz v1, :cond_59

    .line 4910
    :cond_28
    iget-object v1, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get0(Lcom/android/nfc/NfcService;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 4911
    invoke-static {}, Lcom/sonymobile/nfc/InstalledPackageCache;->getInstance()Lcom/sonymobile/nfc/InstalledPackageCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/nfc/InstalledPackageCache;->update()V

    .line 4914
    :cond_37
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 4916
    iget-object v1, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mNfceeAccessControl:Lcom/android/nfc/NfceeAccessControl;

    invoke-virtual {v1}, Lcom/android/nfc/NfceeAccessControl;->invalidateCache()V

    .line 4917
    iget-object v1, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get36(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ServiceExtension;

    move-result-object v1

    if-eqz v1, :cond_58

    .line 4918
    iget-object v1, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get36(Lcom/android/nfc/NfcService;)Lcom/android/nfc/ServiceExtension;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/nfc/ServiceExtension;->onReceivePackageRemoved()V

    .line 4904
    :cond_58
    :goto_58
    return-void

    .line 4922
    :cond_59
    const-string/jumbo v1, "com.sonyericsson.settings.MASTERRESET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    .line 4923
    iget-object v1, p0, Lcom/android/nfc/NfcService$2;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-wrap6(Lcom/android/nfc/NfcService;)V

    goto :goto_58
.end method

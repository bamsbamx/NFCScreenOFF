.class Lcom/android/nfc/dhimpl/NativeNfcManager$1;
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
    .line 714
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$1;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 717
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 718
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 719
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$1;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    invoke-static {v4, v3}, Lcom/android/nfc/dhimpl/NativeNfcManager;->-set0(Lcom/android/nfc/dhimpl/NativeNfcManager;Z)Z

    .line 720
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$1;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    invoke-static {v4}, Lcom/android/nfc/dhimpl/NativeNfcManager;->-get2(Lcom/android/nfc/dhimpl/NativeNfcManager;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 721
    const-string/jumbo v3, "NativeNfcManager"

    const-string/jumbo v4, "Receiving SHUTDOWN event during FW upate"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    return-void

    .line 724
    :cond_25
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->onReceiveShutdownToServiceExtension()V

    .line 725
    const/4 v2, 0x0

    .line 726
    .local v2, "isNfcLocked":Z
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$1;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    invoke-static {v4}, Lcom/android/nfc/dhimpl/NativeNfcManager;->-get1(Lcom/android/nfc/dhimpl/NativeNfcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 728
    :try_start_40
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->getNfcAdapterExInterface()Lcom/sonymobile/nfc/INfcAdapterEx$Stub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->isNfcLocked()Z
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_40 .. :try_end_4b} :catch_68

    move-result v2

    .line 736
    .end local v2    # "isNfcLocked":Z
    :goto_4c
    if-nez v2, :cond_5f

    .line 737
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->hasDiscoveryManager()Z

    move-result v4

    if-eqz v4, :cond_81

    .line 738
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->enableSwitchedOffDiscovery()V

    .line 743
    :cond_5f
    :goto_5f
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$1;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    if-eqz v2, :cond_64

    const/4 v3, 0x0

    :cond_64
    invoke-static {v4, v3}, Lcom/android/nfc/dhimpl/NativeNfcManager;->-wrap0(Lcom/android/nfc/dhimpl/NativeNfcManager;I)V

    .line 716
    :cond_67
    return-void

    .line 730
    .restart local v2    # "isNfcLocked":Z
    :catch_68
    move-exception v1

    .line 731
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "NativeNfcManager"

    const-string/jumbo v5, "Got remote exception on shutdown"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 734
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_73
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v4

    if-eqz v4, :cond_7f

    const/4 v2, 0x0

    goto :goto_4c

    :cond_7f
    const/4 v2, 0x1

    goto :goto_4c

    .line 740
    .end local v2    # "isNfcLocked":Z
    :cond_81
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$1;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    invoke-virtual {v4}, Lcom/android/nfc/dhimpl/NativeNfcManager;->disableDiscovery()V

    goto :goto_5f
.end method

.class Lcom/android/nfc/NfcService$8;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcService;->scheduleRebuildingRoutingTable()V
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
    .line 5126
    iput-object p1, p0, Lcom/android/nfc/NfcService$8;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 5129
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_e

    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "Rebuild routing table with accurate default route"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5130
    :cond_e
    iget-object v0, p0, Lcom/android/nfc/NfcService$8;->this$0:Lcom/android/nfc/NfcService;

    iput-boolean v2, v0, Lcom/android/nfc/NfcService;->mIsRoutingTableDirty:Z

    .line 5131
    iget-object v0, p0, Lcom/android/nfc/NfcService$8;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get14(Lcom/android/nfc/NfcService;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 5132
    iget-object v0, p0, Lcom/android/nfc/NfcService$8;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0, v2}, Lcom/android/nfc/NfcService;->-set1(Lcom/android/nfc/NfcService;Z)Z

    .line 5134
    :cond_1f
    iget-object v0, p0, Lcom/android/nfc/NfcService$8;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get7(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/NfcService$8;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->onUserSwitched(I)V

    .line 5128
    return-void
.end method

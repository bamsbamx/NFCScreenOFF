.class Lcom/android/nfc/NfcService$5;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
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
    .line 5624
    iput-object p1, p0, Lcom/android/nfc/NfcService$5;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .registers 7
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 5627
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_1f

    const-string/jumbo v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCameraAvailable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5628
    :cond_1f
    iget-object v1, p0, Lcom/android/nfc/NfcService$5;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get6(Lcom/android/nfc/NfcService;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5629
    iget-object v1, p0, Lcom/android/nfc/NfcService$5;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-wrap0(Lcom/android/nfc/NfcService;)Z

    move-result v0

    .line 5630
    .local v0, "status":Z
    iget-object v1, p0, Lcom/android/nfc/NfcService$5;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get15(Lcom/android/nfc/NfcService;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_45

    .line 5631
    iget-object v1, p0, Lcom/android/nfc/NfcService$5;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1, v0}, Lcom/android/nfc/NfcService;->-set4(Lcom/android/nfc/NfcService;Z)Z

    .line 5632
    iget-object v1, p0, Lcom/android/nfc/NfcService$5;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, v4}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 5626
    :cond_45
    return-void
.end method

.method public onCameraUnavailable(Ljava/lang/String;)V
    .registers 6
    .param p1, "cameraId"    # Ljava/lang/String;

    .prologue
    .line 5638
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_1e

    const-string/jumbo v1, "NfcService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCameraUnavailable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5639
    :cond_1e
    iget-object v1, p0, Lcom/android/nfc/NfcService$5;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get6(Lcom/android/nfc/NfcService;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5640
    iget-object v1, p0, Lcom/android/nfc/NfcService$5;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-wrap0(Lcom/android/nfc/NfcService;)Z

    move-result v0

    .line 5641
    .local v0, "status":Z
    iget-object v1, p0, Lcom/android/nfc/NfcService$5;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get15(Lcom/android/nfc/NfcService;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_46

    .line 5642
    iget-object v1, p0, Lcom/android/nfc/NfcService$5;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1, v0}, Lcom/android/nfc/NfcService;->-set4(Lcom/android/nfc/NfcService;Z)Z

    .line 5643
    iget-object v1, p0, Lcom/android/nfc/NfcService$5;->this$0:Lcom/android/nfc/NfcService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/nfc/NfcService;->applyRouting(Z)V

    .line 5637
    :cond_46
    return-void
.end method

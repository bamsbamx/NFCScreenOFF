.class Lcom/android/nfc/NfcService$OpenSecureElement;
.super Ljava/lang/Object;
.source "NfcService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenSecureElement"
.end annotation


# instance fields
.field public binder:Landroid/os/IBinder;

.field public handle:I

.field public pid:I

.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>(Lcom/android/nfc/NfcService;IILandroid/os/IBinder;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;
    .param p2, "pid"    # I
    .param p3, "handle"    # I
    .param p4, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 3498
    iput-object p1, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3499
    iput p2, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->pid:I

    .line 3500
    iput p3, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->handle:I

    .line 3501
    iput-object p4, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->binder:Landroid/os/IBinder;

    .line 3498
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 6

    .prologue
    .line 3505
    iget-object v2, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v2

    .line 3506
    :try_start_3
    const-string/jumbo v1, "NfcService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Tracked app "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " died"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3507
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->pid:I
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_33

    .line 3509
    :try_start_29
    iget-object v1, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->binder:Landroid/os/IBinder;

    const/4 v4, -0x1

    invoke-virtual {v1, v4, v3}, Lcom/android/nfc/NfcService;->_nfcEeClose(ILandroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_31} :catch_36
    .catchall {:try_start_29 .. :try_end_31} :catchall_33

    :goto_31
    monitor-exit v2

    .line 3504
    return-void

    .line 3505
    :catchall_33
    move-exception v1

    monitor-exit v2

    throw v1

    .line 3510
    :catch_36
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_31
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3515
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lcom/android/nfc/NfcService$OpenSecureElement;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "[pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3516
    iget v1, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->pid:I

    .line 3515
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3516
    const-string/jumbo v1, " handle="

    .line 3515
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3516
    iget v1, p0, Lcom/android/nfc/NfcService$OpenSecureElement;->handle:I

    .line 3515
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3516
    const-string/jumbo v1, "]"

    .line 3515
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

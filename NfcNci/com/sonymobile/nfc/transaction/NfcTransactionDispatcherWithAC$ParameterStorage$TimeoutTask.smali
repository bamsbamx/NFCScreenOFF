.class Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage$TimeoutTask;
.super Ljava/util/TimerTask;
.source "NfcTransactionDispatcherWithAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutTask"
.end annotation


# instance fields
.field private mKey:J

.field private mParam:[B

.field final synthetic this$1:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;


# direct methods
.method public constructor <init>(Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;[BJ)V
    .registers 6
    .param p1, "this$1"    # Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;
    .param p2, "param"    # [B
    .param p3, "key"    # J

    .prologue
    .line 200
    iput-object p1, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage$TimeoutTask;->this$1:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 201
    iput-object p2, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage$TimeoutTask;->mParam:[B

    .line 202
    iput-wide p3, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage$TimeoutTask;->mKey:J

    .line 200
    return-void
.end method


# virtual methods
.method public getParam()[B
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage$TimeoutTask;->mParam:[B

    return-object v0
.end method

.method public run()V
    .registers 5

    .prologue
    .line 207
    const-string/jumbo v0, "NfcTransactionDispatcherWithAC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timed out for key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage$TimeoutTask;->mKey:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage$TimeoutTask;->this$1:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;

    iget-wide v2, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage$TimeoutTask;->mKey:J

    invoke-virtual {v0, v2, v3}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;->unregister(J)[B

    .line 206
    return-void
.end method

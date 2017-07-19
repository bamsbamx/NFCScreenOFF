.class Lcom/sonymobile/nfc/transaction/NfcMultipleTransactionDispatcher;
.super Ljava/lang/Object;
.source "NfcMultipleTransactionDispatcher.java"

# interfaces
.implements Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcher;


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "NfcMultipleTransactionDispatcher"


# instance fields
.field private final mDispatchers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->DBG:Z

    sput-boolean v0, Lcom/sonymobile/nfc/transaction/NfcMultipleTransactionDispatcher;->DBG:Z

    .line 23
    return-void
.end method

.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "dispatchers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/sonymobile/nfc/transaction/NfcMultipleTransactionDispatcher;->mDispatchers:Ljava/util/List;

    .line 28
    return-void
.end method


# virtual methods
.method public dispatch([B[B)V
    .registers 8
    .param p1, "aid"    # [B
    .param p2, "param"    # [B

    .prologue
    .line 33
    iget-object v2, p0, Lcom/sonymobile/nfc/transaction/NfcMultipleTransactionDispatcher;->mDispatchers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dispatcher$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;

    .line 34
    .local v0, "dispatcher":Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;
    sget-boolean v2, Lcom/sonymobile/nfc/transaction/NfcMultipleTransactionDispatcher;->DBG:Z

    if-eqz v2, :cond_34

    const-string/jumbo v2, "NfcMultipleTransactionDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dispatch: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-object v4, v4, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->specificationName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_34
    invoke-virtual {v0, p1, p2}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->dispatch([B[B)V

    goto :goto_6

    .line 32
    .end local v0    # "dispatcher":Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;
    :cond_38
    return-void
.end method

.method public setEnableMultiEvtTransaction()V
    .registers 4

    .prologue
    .line 41
    iget-object v2, p0, Lcom/sonymobile/nfc/transaction/NfcMultipleTransactionDispatcher;->mDispatchers:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "dispatcher$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;

    .line 42
    .local v0, "dispatcher":Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;
    invoke-virtual {v0}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->setEnableMultiEvtTransaction()V

    goto :goto_6

    .line 40
    .end local v0    # "dispatcher":Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;
    :cond_16
    return-void
.end method

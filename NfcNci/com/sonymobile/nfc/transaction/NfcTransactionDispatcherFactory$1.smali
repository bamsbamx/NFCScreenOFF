.class final Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$1;
.super Ljava/util/HashMap;
.source "NfcTransactionDispatcherFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 72
    invoke-static {}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->-get0()Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->specificationName:Ljava/lang/String;

    invoke-static {}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->-get0()Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->-get1()Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->specificationName:Ljava/lang/String;

    invoke-static {}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->-get1()Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-static {}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->-get2()Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->specificationName:Ljava/lang/String;

    invoke-static {}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->-get2()Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method

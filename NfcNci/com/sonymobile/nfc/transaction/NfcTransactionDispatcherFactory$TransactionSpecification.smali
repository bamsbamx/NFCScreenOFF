.class Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$TransactionSpecification;
.super Ljava/lang/Object;
.source "NfcTransactionDispatcherFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransactionSpecification"
.end annotation


# instance fields
.field public final name:Ljava/lang/String;

.field public final supportAccessControl:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, "slashIndex":I
    if-lez v0, :cond_22

    .line 86
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$TransactionSpecification;->name:Ljava/lang/String;

    .line 91
    :goto_13
    if-lez v0, :cond_25

    const-string/jumbo v1, "/AC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$TransactionSpecification;->supportAccessControl:Z

    .line 82
    :goto_21
    return-void

    .line 88
    :cond_22
    iput-object p1, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$TransactionSpecification;->name:Ljava/lang/String;

    goto :goto_13

    .line 94
    :cond_25
    iput-boolean v2, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$TransactionSpecification;->supportAccessControl:Z

    goto :goto_21
.end method

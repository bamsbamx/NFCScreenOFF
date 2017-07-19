.class public Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;
.super Ljava/lang/Object;
.source "NfcTransactionConfig.java"


# instance fields
.field public final actionName:Ljava/lang/String;

.field public final dataSeInUri:Z

.field public final extraAidName:Ljava/lang/String;

.field public final extraDataName:Ljava/lang/String;

.field public final morePermissionName:Ljava/lang/String;

.field public final nfcPermNeeded:Z

.field public final specificationName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .registers 8
    .param p1, "specification"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "extraAid"    # Ljava/lang/String;
    .param p5, "nfcPerm"    # Z
    .param p6, "morePermission"    # Ljava/lang/String;
    .param p7, "seInUri"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->specificationName:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->actionName:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->extraDataName:Ljava/lang/String;

    .line 37
    iput-object p4, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->extraAidName:Ljava/lang/String;

    .line 38
    iput-boolean p5, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->nfcPermNeeded:Z

    .line 39
    iput-object p6, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->morePermissionName:Ljava/lang/String;

    .line 40
    iput-boolean p7, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->dataSeInUri:Z

    .line 33
    return-void
.end method

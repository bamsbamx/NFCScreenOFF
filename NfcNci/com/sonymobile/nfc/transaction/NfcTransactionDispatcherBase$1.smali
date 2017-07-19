.class Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase$1;
.super Ljava/lang/Object;
.source "NfcTransactionDispatcherBase.java"

# interfaces
.implements Lcom/sonymobile/nfc/InstalledPackageCache$OnPackageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;

    .prologue
    .line 247
    iput-object p1, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase$1;->this$0:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageUpdated(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v5, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase$1;->this$0:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;

    iget-boolean v5, v5, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mEnableMultiEvtTransaction:Z

    if-nez v5, :cond_7

    .line 251
    return-void

    .line 254
    :cond_7
    iget-object v5, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase$1;->this$0:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;

    iget-object v5, v5, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 255
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 257
    .local v3, "transactionPackageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pkg$iterator":Ljava/util/Iterator;
    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 258
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_18

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_18

    .line 259
    iget-object v5, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase$1;->this$0:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;

    iget-object v5, v5, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-object v5, v5, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->morePermissionName:Ljava/lang/String;

    if-eqz v5, :cond_40

    .line 260
    iget-object v5, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase$1;->this$0:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;

    iget-object v5, v5, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-object v5, v5, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->morePermissionName:Ljava/lang/String;

    .line 261
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 260
    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_18

    .line 264
    :cond_40
    iget-object v5, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase$1;->this$0:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;

    iget-object v5, v5, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-boolean v5, v5, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->nfcPermNeeded:Z

    if-eqz v5, :cond_53

    .line 265
    const-string/jumbo v5, "android.permission.NFC"

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_18

    .line 270
    :cond_53
    iget-object v5, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 274
    .end local v0    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_59
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 275
    .local v4, "transactionPackages":[Ljava/lang/String;
    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 276
    iget-object v5, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase$1;->this$0:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;

    iput-object v4, v5, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mTransactionPackages:[Ljava/lang/String;

    .line 249
    return-void
.end method

.class public abstract Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;
.super Ljava/lang/Object;
.source "NfcTransactionDispatcherBase.java"

# interfaces
.implements Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase$1;
    }
.end annotation


# static fields
.field protected static final DBG:Z

.field protected static final NFC_PERM:Ljava/lang/String; = "android.permission.NFC"

.field private static final TAG:Ljava/lang/String; = "NfcTransactionDispatcher"

.field protected static final URI_PREFIX:Ljava/lang/String; = "nfc://secure:0/"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mEnableMultiEvtTransaction:Z

.field private mMulticastPackageCacheUpdator:Lcom/sonymobile/nfc/InstalledPackageCache$OnPackageUpdateListener;

.field protected final mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

.field private final mProperty:Lcom/android/nfc/DeviceHost$NfcProperty;

.field protected mTransactionPackages:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 49
    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v1, "user"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    .line 48
    :goto_14
    sput-boolean v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->DBG:Z

    .line 46
    return-void

    .line 49
    :cond_17
    const/4 v0, 0x1

    goto :goto_14
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$NfcProperty;Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "prop"    # Lcom/android/nfc/DeviceHost$NfcProperty;
    .param p3, "config"    # Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mEnableMultiEvtTransaction:Z

    .line 247
    new-instance v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase$1;-><init>(Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mMulticastPackageCacheUpdator:Lcom/sonymobile/nfc/InstalledPackageCache$OnPackageUpdateListener;

    .line 66
    iput-object p1, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mProperty:Lcom/android/nfc/DeviceHost$NfcProperty;

    .line 68
    iput-object p3, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    .line 70
    sget-boolean v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->DBG:Z

    if-eqz v0, :cond_e9

    .line 71
    const-string/jumbo v0, "NfcTransactionDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "specificationName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-object v2, v2, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->specificationName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const-string/jumbo v0, "NfcTransactionDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "actionName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-object v2, v2, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->actionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string/jumbo v0, "NfcTransactionDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "extraDataName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-object v2, v2, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->extraDataName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string/jumbo v0, "NfcTransactionDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "extraAidName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-object v2, v2, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->extraAidName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string/jumbo v0, "NfcTransactionDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nfcPermNeeded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-boolean v2, v2, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->nfcPermNeeded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string/jumbo v0, "NfcTransactionDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "morePermissionName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-object v2, v2, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->morePermissionName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    const-string/jumbo v0, "NfcTransactionDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "dataSeInUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-boolean v2, v2, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->dataSeInUri:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_e9
    return-void
.end method

.method protected static byte2String([B)Ljava/lang/String;
    .registers 5
    .param p0, "byteData"    # [B

    .prologue
    const/4 v2, 0x0

    .line 208
    if-nez p0, :cond_4

    .line 209
    return-object v2

    .line 212
    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 213
    .local v1, "value":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    array-length v2, p0

    if-ge v0, v2, :cond_43

    .line 214
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0x10

    if-ge v2, v3, :cond_37

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    :goto_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 217
    :cond_37
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_34

    .line 220
    :cond_43
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected createIntent([B[BLjava/lang/String;)Landroid/content/Intent;
    .registers 8
    .param p1, "aid"    # [B
    .param p2, "data"    # [B
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 180
    if-nez p1, :cond_4

    .line 181
    return-object v2

    .line 185
    :cond_4
    iget-object v2, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-boolean v2, v2, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->dataSeInUri:Z

    if-eqz v2, :cond_69

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nfc://secure:0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->getCurrentSeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->byte2String([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 191
    .local v1, "uri":Landroid/net/Uri;
    :goto_35
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 192
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-object v2, v2, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->actionName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 194
    iget-object v2, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-object v2, v2, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->extraDataName:Ljava/lang/String;

    if-eqz v2, :cond_51

    .line 195
    iget-object v2, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-object v2, v2, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->extraDataName:Ljava/lang/String;

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 197
    :cond_51
    iget-object v2, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-object v2, v2, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->extraAidName:Ljava/lang/String;

    if-eqz v2, :cond_5e

    .line 198
    iget-object v2, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-object v2, v2, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->extraAidName:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 200
    :cond_5e
    if-eqz p3, :cond_63

    .line 201
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    :cond_63
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 204
    return-object v0

    .line 188
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nfc://secure:0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->byte2String([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_35
.end method

.method protected getCurrentSeName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 227
    iget-object v1, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mProperty:Lcom/android/nfc/DeviceHost$NfcProperty;

    const-string/jumbo v2, "se.active"

    invoke-interface {v1, v2}, Lcom/android/nfc/DeviceHost$NfcProperty;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "currentSE":Ljava/lang/String;
    const-string/jumbo v1, "SMX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 229
    iget-object v1, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mContext:Landroid/content/Context;

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 230
    :cond_1c
    const-string/jumbo v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 231
    iget-object v1, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mContext:Landroid/content/Context;

    const v2, 0x7f09001a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 233
    :cond_2f
    const-string/jumbo v1, ""

    return-object v1
.end method

.method protected queryMulticastReceiverPackages()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 175
    invoke-static {}, Lcom/sonymobile/nfc/InstalledPackageCache;->getInstance()Lcom/sonymobile/nfc/InstalledPackageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/nfc/InstalledPackageCache;->waitUpdated()V

    .line 176
    iget-object v0, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mTransactionPackages:[Ljava/lang/String;

    return-object v0
.end method

.method protected queryTransactionRelolveInfo([B)Ljava/util/ArrayList;
    .registers 12
    .param p1, "aid"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 82
    sget-boolean v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->DBG:Z

    if-eqz v7, :cond_e

    const-string/jumbo v7, "NfcTransactionDispatcher"

    const-string/jumbo v8, "queryTransactionRelolveInfo [start]"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v4, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0, p1, v9, v9}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->createIntent([B[BLjava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 86
    .local v3, "intent":Landroid/content/Intent;
    if-nez v3, :cond_27

    .line 87
    sget-boolean v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->DBG:Z

    if-eqz v7, :cond_26

    const-string/jumbo v7, "NfcTransactionDispatcher"

    const-string/jumbo v8, "Created intent is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_26
    return-object v4

    .line 91
    :cond_27
    const-string/jumbo v7, "NfcTransactionDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Getting packages for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v7, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 95
    .local v5, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 94
    const v8, 0x10040

    .line 93
    invoke-virtual {v5, v3, v8, v7}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v6

    .line 97
    .local v6, "riList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->DBG:Z

    if-eqz v7, :cond_80

    .line 98
    if-eqz v6, :cond_a6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_a6

    .line 99
    const-string/jumbo v7, "NfcTransactionDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "PackageManager Query size is: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_80
    :goto_80
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_84
    :goto_84
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_13b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 106
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 107
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_98

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez v7, :cond_b0

    .line 108
    :cond_98
    sget-boolean v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->DBG:Z

    if-eqz v7, :cond_84

    const-string/jumbo v7, "NfcTransactionDispatcher"

    const-string/jumbo v8, "Invalid ActivityInfo"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 101
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v2    # "info$iterator":Ljava/util/Iterator;
    :cond_a6
    const-string/jumbo v7, "NfcTransactionDispatcher"

    const-string/jumbo v8, "PackageManager Query could not query target intent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    .line 111
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v2    # "info$iterator":Ljava/util/Iterator;
    :cond_b0
    sget-boolean v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->DBG:Z

    if-eqz v7, :cond_d0

    const-string/jumbo v7, "NfcTransactionDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "ActivityInfo PackageName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_d0
    iget-object v7, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-boolean v7, v7, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->nfcPermNeeded:Z

    if-eqz v7, :cond_ef

    .line 115
    const-string/jumbo v7, "android.permission.NFC"

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_ef

    .line 117
    sget-boolean v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->DBG:Z

    if-eqz v7, :cond_84

    const-string/jumbo v7, "NfcTransactionDispatcher"

    const-string/jumbo v8, "ActivityInfo: PERMISSION NOT GRANTED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_84

    .line 120
    :cond_ef
    iget-object v7, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-object v7, v7, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->morePermissionName:Ljava/lang/String;

    if-eqz v7, :cond_110

    .line 121
    iget-object v7, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-object v7, v7, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->morePermissionName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_110

    .line 123
    sget-boolean v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->DBG:Z

    if-eqz v7, :cond_84

    const-string/jumbo v7, "NfcTransactionDispatcher"

    const-string/jumbo v8, "ActivityInfo: MORE PERMISSION NOT GRANTED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_84

    .line 127
    :cond_110
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_84

    .line 128
    sget-boolean v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->DBG:Z

    if-eqz v7, :cond_136

    const-string/jumbo v7, "NfcTransactionDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Package found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_136
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_84

    .line 133
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    :cond_13b
    new-instance v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase$2;

    invoke-direct {v7, p0, v5}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase$2;-><init>(Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;Landroid/content/pm/PackageManager;)V

    invoke-static {v4, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 170
    sget-boolean v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->DBG:Z

    if-eqz v7, :cond_150

    const-string/jumbo v7, "NfcTransactionDispatcher"

    const-string/jumbo v8, "queryTransactionRelolveInfo [end]"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_150
    return-object v4
.end method

.method public setEnableMultiEvtTransaction()V
    .registers 3

    .prologue
    .line 239
    sget-boolean v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "NfcTransactionDispatcher"

    const-string/jumbo v1, "MultiEvtTransaction is enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_d
    iget-boolean v0, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mEnableMultiEvtTransaction:Z

    if-nez v0, :cond_24

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mEnableMultiEvtTransaction:Z

    .line 242
    invoke-static {}, Lcom/sonymobile/nfc/InstalledPackageCache;->getInstance()Lcom/sonymobile/nfc/InstalledPackageCache;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->mMulticastPackageCacheUpdator:Lcom/sonymobile/nfc/InstalledPackageCache$OnPackageUpdateListener;

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/InstalledPackageCache;->addListener(Lcom/sonymobile/nfc/InstalledPackageCache$OnPackageUpdateListener;)V

    .line 243
    invoke-static {}, Lcom/sonymobile/nfc/InstalledPackageCache;->getInstance()Lcom/sonymobile/nfc/InstalledPackageCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/nfc/InstalledPackageCache;->update()V

    .line 238
    :cond_24
    return-void
.end method

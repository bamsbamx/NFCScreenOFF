.class Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithoutAC;
.super Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;
.source "NfcTransactionDispatcherWithoutAC.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "NfcTransactionDispatcherWithoutAC"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->DBG:Z

    sput-boolean v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithoutAC;->DBG:Z

    .line 37
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$NfcProperty;Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;)V
    .registers 4
    .param p1, "con"    # Landroid/content/Context;
    .param p2, "prop"    # Lcom/android/nfc/DeviceHost$NfcProperty;
    .param p3, "config"    # Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;-><init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$NfcProperty;Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;)V

    .line 41
    return-void
.end method

.method private hasMatchedDataPath(Landroid/content/pm/ResolveInfo;[B)Z
    .registers 9
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "aid"    # [B

    .prologue
    const/4 v5, 0x0

    .line 90
    iget v3, p1, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v4, 0xfff0000

    and-int/2addr v3, v4

    .line 91
    const/high16 v4, 0x500000

    .line 90
    if-ge v3, v4, :cond_b

    .line 92
    return v5

    .line 95
    :cond_b
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-nez v3, :cond_10

    .line 96
    return v5

    .line 99
    :cond_10
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v3}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 100
    .local v1, "paths":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-nez v1, :cond_19

    .line 101
    return v5

    .line 104
    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithoutAC;->byte2String([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "data":Ljava/lang/String;
    iget-object v3, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithoutAC;->mNfcTransactionConfig:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-boolean v3, v3, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->dataSeInUri:Z

    if-eqz v3, :cond_5c

    .line 106
    const-string/jumbo v3, "NfcTransactionDispatcherWithoutAC"

    const-string/jumbo v4, "GSMA without AC?????"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithoutAC;->getCurrentSeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    :cond_5c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_84

    .line 111
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PatternMatcher;

    .line 112
    .local v2, "pe":Landroid/os/PatternMatcher;
    sget-boolean v3, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithoutAC;->DBG:Z

    if-eqz v3, :cond_76

    const-string/jumbo v3, "NfcTransactionDispatcherWithoutAC"

    invoke-virtual {v2}, Landroid/os/PatternMatcher;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_76
    invoke-virtual {v2}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    if-nez v3, :cond_5c

    invoke-virtual {v2, v0}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 114
    const/4 v3, 0x1

    return v3

    .line 118
    .end local v2    # "pe":Landroid/os/PatternMatcher;
    :cond_84
    return v5
.end method


# virtual methods
.method public dispatch([B[B)V
    .registers 13
    .param p1, "aid"    # [B
    .param p2, "param"    # [B

    .prologue
    const/4 v9, 0x0

    .line 47
    sget-boolean v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithoutAC;->DBG:Z

    if-eqz v7, :cond_e

    const-string/jumbo v7, "NfcTransactionDispatcherWithoutAC"

    const-string/jumbo v8, "dispatch [start]"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_e
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithoutAC;->queryTransactionRelolveInfo([B)Ljava/util/ArrayList;

    move-result-object v5

    .line 50
    .local v5, "riList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v4, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "info$iterator":Ljava/util/Iterator;
    :cond_1b
    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_60

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 52
    .local v2, "info":Landroid/content/pm/ResolveInfo;
    sget-boolean v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithoutAC;->DBG:Z

    if-eqz v7, :cond_35

    const-string/jumbo v7, "NfcTransactionDispatcherWithoutAC"

    invoke-virtual {v2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_35
    invoke-direct {p0, v2, p1}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithoutAC;->hasMatchedDataPath(Landroid/content/pm/ResolveInfo;[B)Z

    move-result v7

    if-nez v7, :cond_49

    .line 55
    sget-boolean v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithoutAC;->DBG:Z

    if-eqz v7, :cond_1b

    const-string/jumbo v7, "NfcTransactionDispatcherWithoutAC"

    const-string/jumbo v8, "The package data path does not matched"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 59
    :cond_49
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1b

    .line 60
    sget-boolean v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithoutAC;->DBG:Z

    if-eqz v7, :cond_5c

    const-string/jumbo v7, "NfcTransactionDispatcherWithoutAC"

    const-string/jumbo v8, "Matched ResolveInfo"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_5c
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    .line 65
    .end local v2    # "info":Landroid/content/pm/ResolveInfo;
    :cond_60
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_9f

    .line 66
    const/4 v7, 0x0

    invoke-virtual {p0, p1, p2, v7}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithoutAC;->createIntent([B[BLjava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 68
    .local v6, "targetIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    iget-object v7, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithoutAC;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/nfc/TechListChooserActivity;

    invoke-direct {v0, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    .local v0, "chooserintent":Landroid/content/Intent;
    const/high16 v7, 0x18000000

    .line 72
    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    const-string/jumbo v7, "android.intent.extra.INTENT"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 76
    const-string/jumbo v7, "rlist"

    .line 75
    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 78
    const-string/jumbo v7, "use_option"

    .line 77
    invoke-virtual {v0, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 80
    :try_start_8b
    sget-boolean v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithoutAC;->DBG:Z

    if-eqz v7, :cond_98

    const-string/jumbo v7, "NfcTransactionDispatcherWithoutAC"

    const-string/jumbo v8, "Starting the target Intent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_98
    iget-object v7, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithoutAC;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v0, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_9f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8b .. :try_end_9f} :catch_ad

    .line 86
    .end local v0    # "chooserintent":Landroid/content/Intent;
    .end local v6    # "targetIntent":Landroid/content/Intent;
    :cond_9f
    :goto_9f
    sget-boolean v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithoutAC;->DBG:Z

    if-eqz v7, :cond_ac

    const-string/jumbo v7, "NfcTransactionDispatcherWithoutAC"

    const-string/jumbo v8, "dispatch [end]"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_ac
    return-void

    .line 82
    .restart local v0    # "chooserintent":Landroid/content/Intent;
    .restart local v6    # "targetIntent":Landroid/content/Intent;
    :catch_ad
    move-exception v1

    .line 83
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    sget-boolean v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithoutAC;->DBG:Z

    if-eqz v7, :cond_9f

    const-string/jumbo v7, "NfcTransactionDispatcherWithoutAC"

    const-string/jumbo v8, "No activity found"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f
.end method

.method public setEnableMultiEvtTransaction()V
    .registers 1

    .prologue
    .line 122
    return-void
.end method

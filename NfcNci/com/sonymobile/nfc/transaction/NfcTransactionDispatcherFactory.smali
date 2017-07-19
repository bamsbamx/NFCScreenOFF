.class public Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;
.super Ljava/lang/Object;
.source "NfcTransactionDispatcherFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$1;,
        Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$TransactionSpecification;
    }
.end annotation


# static fields
.field private static CONFIG_ANDROID_2_3_5:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig; = null

.field private static CONFIG_GSMA_4_1:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig; = null

.field private static CONFIG_JP_KOTO:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig; = null

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "NfcTransactionDispatcherFactory"

.field private static final sConfigurationHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;
    .registers 1

    sget-object v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->CONFIG_ANDROID_2_3_5:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    return-object v0
.end method

.method static synthetic -get1()Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;
    .registers 1

    sget-object v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->CONFIG_GSMA_4_1:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    return-object v0
.end method

.method static synthetic -get2()Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;
    .registers 1

    sget-object v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->CONFIG_JP_KOTO:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 16

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 36
    sget-boolean v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->DBG:Z

    sput-boolean v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->DBG:Z

    .line 38
    new-instance v0, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    .line 39
    const-string/jumbo v1, "Android_2.3.5"

    .line 40
    const-string/jumbo v2, "android.nfc.action.TRANSACTION_DETECTED"

    .line 41
    const-string/jumbo v3, "android.nfc.extra.DATA"

    move-object v6, v4

    .line 38
    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    sput-object v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->CONFIG_ANDROID_2_3_5:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    .line 48
    new-instance v8, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    .line 49
    const-string/jumbo v9, "GSMA_4.1"

    .line 50
    const-string/jumbo v10, "com.gsma.services.nfc.action.TRANSACTION_EVENT"

    .line 51
    const-string/jumbo v11, "com.gsma.services.nfc.extra.DATA"

    .line 52
    const-string/jumbo v12, "com.gsma.services.nfc.extra.AID"

    .line 54
    const-string/jumbo v14, "com.gsma.services.nfc.permission.TRANSACTION_EVENT"

    move v13, v5

    move v15, v5

    .line 48
    invoke-direct/range {v8 .. v15}, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    sput-object v8, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->CONFIG_GSMA_4_1:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    .line 58
    new-instance v0, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    .line 59
    const-string/jumbo v1, "JP_Koto"

    .line 60
    const-string/jumbo v2, "com.sony.nfc.action.TRANSACTION_DETECTED"

    .line 61
    const-string/jumbo v3, "com.sony.extra.DATA"

    move-object v6, v4

    .line 58
    invoke-direct/range {v0 .. v7}, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    sput-object v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->CONFIG_JP_KOTO:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    .line 70
    new-instance v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$1;

    invoke-direct {v0}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$1;-><init>()V

    .line 69
    sput-object v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->sConfigurationHashMap:Ljava/util/HashMap;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/nfc/DeviceHost$NfcProperty;)Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcher;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prop"    # Lcom/android/nfc/DeviceHost$NfcProperty;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 103
    sget-boolean v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->DBG:Z

    if-eqz v7, :cond_f

    const-string/jumbo v7, "NfcTransactionDispatcherFactory"

    const-string/jumbo v10, "newInstance [start]"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_f
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v5, "dispatchers":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;>;"
    const v7, 0x7f090019

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 107
    .local v4, "configStr":Ljava/lang/String;
    const-string/jumbo v7, ";"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "configNames":[Ljava/lang/String;
    array-length v11, v3

    move v10, v9

    :goto_24
    if-ge v10, v11, :cond_b0

    aget-object v2, v3, v10

    .line 110
    .local v2, "configName":Ljava/lang/String;
    new-instance v6, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$TransactionSpecification;

    invoke-direct {v6, v2}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$TransactionSpecification;-><init>(Ljava/lang/String;)V

    .line 112
    .local v6, "transSpec":Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$TransactionSpecification;
    sget-object v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->sConfigurationHashMap:Ljava/util/HashMap;

    iget-object v12, v6, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$TransactionSpecification;->name:Ljava/lang/String;

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    .line 113
    .local v0, "config":Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;
    if-eqz v0, :cond_ca

    move v1, v8

    .line 115
    .local v1, "configExist":Z
    :goto_3a
    if-nez v1, :cond_77

    .line 118
    sget-boolean v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->DBG:Z

    if-eqz v7, :cond_72

    const-string/jumbo v7, "NfcTransactionDispatcherFactory"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Configuration name "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v6, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$TransactionSpecification;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "Doesn\'t exist, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 119
    sget-object v13, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->CONFIG_GSMA_4_1:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    iget-object v13, v13, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->specificationName:Ljava/lang/String;

    .line 118
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 119
    const-string/jumbo v13, "will be used as default dispatcher"

    .line 118
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_72
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 121
    sget-object v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->CONFIG_GSMA_4_1:Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    .line 124
    :cond_77
    sget-boolean v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->DBG:Z

    if-eqz v7, :cond_a2

    const-string/jumbo v12, "NfcTransactionDispatcherFactory"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "transaction format is "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v13, v0, Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;->specificationName:Ljava/lang/String;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 125
    iget-boolean v7, v6, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$TransactionSpecification;->supportAccessControl:Z

    if-eqz v7, :cond_cd

    const-string/jumbo v7, " with AC"

    .line 124
    :goto_97
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v12, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_a2
    iget-boolean v7, v6, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$TransactionSpecification;->supportAccessControl:Z

    if-eqz v7, :cond_d1

    .line 128
    new-instance v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;

    invoke-direct {v7, p0, p1, v0}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;-><init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$NfcProperty;Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    :goto_ae
    if-nez v1, :cond_da

    .line 138
    .end local v0    # "config":Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;
    .end local v1    # "configExist":Z
    .end local v2    # "configName":Ljava/lang/String;
    .end local v6    # "transSpec":Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$TransactionSpecification;
    :cond_b0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ne v7, v8, :cond_df

    .line 139
    sget-boolean v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->DBG:Z

    if-eqz v7, :cond_c3

    const-string/jumbo v7, "NfcTransactionDispatcherFactory"

    const-string/jumbo v8, "newInstance [end] return single dispatcher"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_c3
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcher;

    return-object v7

    .restart local v0    # "config":Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;
    .restart local v2    # "configName":Ljava/lang/String;
    .restart local v6    # "transSpec":Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$TransactionSpecification;
    :cond_ca
    move v1, v9

    .line 113
    goto/16 :goto_3a

    .line 125
    .restart local v1    # "configExist":Z
    :cond_cd
    const-string/jumbo v7, " without AC"

    goto :goto_97

    .line 130
    :cond_d1
    new-instance v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithoutAC;

    invoke-direct {v7, p0, p1, v0}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithoutAC;-><init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$NfcProperty;Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_ae

    .line 109
    :cond_da
    add-int/lit8 v7, v10, 0x1

    move v10, v7

    goto/16 :goto_24

    .line 142
    .end local v0    # "config":Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;
    .end local v1    # "configExist":Z
    .end local v2    # "configName":Ljava/lang/String;
    .end local v6    # "transSpec":Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory$TransactionSpecification;
    :cond_df
    sget-boolean v7, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherFactory;->DBG:Z

    if-eqz v7, :cond_ec

    const-string/jumbo v7, "NfcTransactionDispatcherFactory"

    const-string/jumbo v8, "newInstance [end] return multiple dispatchers"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_ec
    new-instance v7, Lcom/sonymobile/nfc/transaction/NfcMultipleTransactionDispatcher;

    invoke-direct {v7, v5}, Lcom/sonymobile/nfc/transaction/NfcMultipleTransactionDispatcher;-><init>(Ljava/util/List;)V

    return-object v7
.end method

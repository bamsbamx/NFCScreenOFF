.class Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;
.super Ljava/lang/Object;
.source "NfcTransactionDispatcherWithAC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ParameterStorage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage$TimeoutTask;
    }
.end annotation


# static fields
.field private static AUTO_REMOVE_TIMER_MS:J


# instance fields
.field private mAutoRemoveTimer:Ljava/util/Timer;

.field private mParameterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage$TimeoutTask;",
            ">;"
        }
    .end annotation
.end field

.field private mRandomKey:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 190
    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;->AUTO_REMOVE_TIMER_MS:J

    .line 189
    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;->mAutoRemoveTimer:Ljava/util/Timer;

    .line 193
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;->mParameterMap:Ljava/util/HashMap;

    .line 194
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;->mRandomKey:Ljava/util/Random;

    .line 189
    return-void
.end method


# virtual methods
.method public register([B)J
    .registers 10
    .param p1, "param"    # [B

    .prologue
    .line 217
    const-wide/16 v2, 0x0

    .line 219
    .local v2, "key":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    const/4 v4, 0x5

    if-ge v0, v4, :cond_5a

    .line 220
    iget-object v4, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;->mRandomKey:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    .line 221
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_15

    .line 219
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 224
    :cond_15
    iget-object v5, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;->mParameterMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 225
    :try_start_18
    iget-object v4, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;->mParameterMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5b

    .line 226
    new-instance v1, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage$TimeoutTask;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage$TimeoutTask;-><init>(Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;[BJ)V

    .line 227
    .local v1, "task":Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage$TimeoutTask;
    iget-object v4, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;->mParameterMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v4, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;->mAutoRemoveTimer:Ljava/util/Timer;

    sget-wide v6, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;->AUTO_REMOVE_TIMER_MS:J

    invoke-virtual {v4, v1, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 229
    invoke-static {}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->-get0()Z

    move-result v4

    if-eqz v4, :cond_59

    const-string/jumbo v4, "NfcTransactionDispatcherWithAC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Register Transaction Param: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catchall {:try_start_18 .. :try_end_59} :catchall_5f

    :cond_59
    monitor-exit v5

    .line 237
    .end local v1    # "task":Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage$TimeoutTask;
    :cond_5a
    return-wide v2

    .line 232
    :cond_5b
    const-wide/16 v2, 0x0

    monitor-exit v5

    goto :goto_12

    .line 224
    :catchall_5f
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public unregister(J)[B
    .registers 10
    .param p1, "key"    # J

    .prologue
    const/4 v4, 0x0

    .line 241
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-nez v2, :cond_8

    return-object v4

    .line 243
    :cond_8
    const/4 v0, 0x0

    .line 246
    .local v0, "param":[B
    iget-object v3, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;->mParameterMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 247
    :try_start_c
    iget-object v2, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;->mParameterMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage$TimeoutTask;

    .line 248
    .local v1, "task":Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage$TimeoutTask;
    if-eqz v1, :cond_41

    .line 249
    invoke-static {}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->-get0()Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string/jumbo v2, "NfcTransactionDispatcherWithAC"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unregister Transaction Param: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_3a
    invoke-virtual {v1}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage$TimeoutTask;->cancel()Z

    .line 251
    invoke-virtual {v1}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage$TimeoutTask;->getParam()[B
    :try_end_40
    .catchall {:try_start_c .. :try_end_40} :catchall_43

    move-result-object v0

    .end local v0    # "param":[B
    :cond_41
    monitor-exit v3

    .line 255
    return-object v0

    .line 246
    .end local v1    # "task":Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage$TimeoutTask;
    .restart local v0    # "param":[B
    :catchall_43
    move-exception v2

    monitor-exit v3

    throw v2
.end method

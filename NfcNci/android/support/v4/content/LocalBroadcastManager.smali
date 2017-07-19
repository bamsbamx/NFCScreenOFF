.class public final Landroid/support/v4/content/LocalBroadcastManager;
.super Ljava/lang/Object;
.source "LocalBroadcastManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;,
        Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final MSG_EXEC_PENDING_BROADCASTS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LocalBroadcastManager"

.field private static mInstance:Landroid/support/v4/content/LocalBroadcastManager;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private final mActions:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAppContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingBroadcasts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/BroadcastReceiver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/IntentFilter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Landroid/support/v4/content/LocalBroadcastManager;)V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/content/LocalBroadcastManager;->executePendingBroadcasts()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 86
    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    .line 109
    iput-object p1, p0, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    .line 110
    new-instance v0, Landroid/support/v4/content/LocalBroadcastManager$1;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/v4/content/LocalBroadcastManager$1;-><init>(Landroid/support/v4/content/LocalBroadcastManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    .line 108
    return-void
.end method

.method private executePendingBroadcasts()V
    .registers 9

    .prologue
    .line 284
    :cond_0
    const/4 v2, 0x0

    .line 285
    .local v2, "brs":[Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    iget-object v6, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v6

    .line 286
    :try_start_4
    iget-object v5, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
    :try_end_9
    .catchall {:try_start_4 .. :try_end_9} :catchall_3e

    move-result v0

    .line 287
    .local v0, "N":I
    if-gtz v0, :cond_e

    monitor-exit v6

    .line 288
    return-void

    .line 290
    :cond_e
    :try_start_e
    new-array v2, v0, [Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;

    .line 291
    .local v2, "brs":[Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    iget-object v5, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 292
    iget-object v5, p0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_3e

    monitor-exit v6

    .line 294
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 295
    aget-object v1, v2, v3

    .line 296
    .local v1, "br":Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_22
    iget-object v5, v1, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_41

    .line 297
    iget-object v5, v1, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->receivers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    iget-object v5, v5, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    iget-object v7, v1, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6, v7}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 296
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 285
    .end local v0    # "N":I
    .end local v1    # "br":Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    .end local v2    # "brs":[Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    .end local v3    # "i":I
    .end local v4    # "j":I
    :catchall_3e
    move-exception v5

    monitor-exit v6

    throw v5

    .line 294
    .restart local v0    # "N":I
    .restart local v1    # "br":Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    .restart local v2    # "brs":[Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    sget-object v1, Landroid/support/v4/content/LocalBroadcastManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 101
    :try_start_3
    sget-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    if-nez v0, :cond_12

    .line 102
    new-instance v0, Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;

    .line 104
    :cond_12
    sget-object v0, Landroid/support/v4/content/LocalBroadcastManager;->mInstance:Landroid/support/v4/content/LocalBroadcastManager;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    .line 100
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    .registers 10
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 134
    iget-object v6, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v6

    .line 135
    :try_start_3
    new-instance v2, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    invoke-direct {v2, p2, p1}, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;-><init>(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 136
    .local v2, "entry":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    iget-object v5, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 137
    .local v3, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    if-nez v3, :cond_1d

    .line 138
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .restart local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    iget-object v5, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_1d
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_21
    invoke-virtual {p2}, Landroid/content/IntentFilter;->countActions()I

    move-result v5

    if-ge v4, v5, :cond_46

    .line 143
    invoke-virtual {p2, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "action":Ljava/lang/String;
    iget-object v5, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 145
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-nez v1, :cond_40

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v5, 0x1

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .restart local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    iget-object v5, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_40
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_43
    .catchall {:try_start_3 .. :try_end_43} :catchall_48

    .line 142
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_46
    monitor-exit v6

    .line 133
    return-void

    .line 134
    .end local v2    # "entry":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    .end local v3    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v4    # "i":I
    :catchall_48
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public sendBroadcast(Landroid/content/Intent;)Z
    .registers 19
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 201
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v15

    .line 202
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "action":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 203
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "type":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 206
    .local v5, "data":Landroid/net/Uri;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "scheme":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v6

    .line 210
    .local v6, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_d8

    const/4 v8, 0x1

    .line 211
    .local v8, "debug":Z
    :goto_2c
    if-eqz v8, :cond_66

    .line 212
    const-string/jumbo v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Resolving type "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v16, " scheme "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 213
    const-string/jumbo v16, " of intent "

    .line 212
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 211
    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_66
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .line 216
    .local v9, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v9, :cond_189

    .line 217
    if-eqz v8, :cond_94

    const-string/jumbo v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Action list: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_94
    const/4 v14, 0x0

    .line 220
    .local v14, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    const/4 v10, 0x0

    .end local v14    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .local v10, "i":I
    :goto_96
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_150

    .line 221
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    .line 222
    .local v13, "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    if-eqz v8, :cond_c6

    const-string/jumbo v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Matching against filter "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v0, v13, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_c6
    iget-boolean v1, v13, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    if-eqz v1, :cond_db

    .line 225
    if-eqz v8, :cond_d5

    .line 226
    const-string/jumbo v1, "LocalBroadcastManager"

    const-string/jumbo v7, "  Filter\'s target already added"

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_d5
    :goto_d5
    add-int/lit8 v10, v10, 0x1

    goto :goto_96

    .line 210
    .end local v8    # "debug":Z
    .end local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v10    # "i":I
    .end local v13    # "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    :cond_d8
    const/4 v8, 0x0

    goto/16 :goto_2c

    .line 231
    .restart local v8    # "debug":Z
    .restart local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v10    # "i":I
    .restart local v13    # "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    :cond_db
    iget-object v1, v13, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    .line 232
    const-string/jumbo v7, "LocalBroadcastManager"

    .line 231
    invoke-virtual/range {v1 .. v7}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v11

    .line 233
    .local v11, "match":I
    if-ltz v11, :cond_11b

    .line 234
    if-eqz v8, :cond_10a

    const-string/jumbo v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "  Filter matched!  match=0x"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 235
    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v16

    .line 234
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_10a
    if-nez v14, :cond_111

    .line 237
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 239
    :cond_111
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    const/4 v1, 0x1

    iput-boolean v1, v13, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z
    :try_end_117
    .catchall {:try_start_5 .. :try_end_117} :catchall_118

    goto :goto_d5

    .line 201
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "type":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    .end local v5    # "data":Landroid/net/Uri;
    .end local v6    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "debug":Z
    .end local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .end local v10    # "i":I
    .end local v11    # "match":I
    .end local v13    # "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    :catchall_118
    move-exception v1

    monitor-exit v15

    throw v1

    .line 242
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v3    # "type":Ljava/lang/String;
    .restart local v4    # "scheme":Ljava/lang/String;
    .restart local v5    # "data":Landroid/net/Uri;
    .restart local v6    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v8    # "debug":Z
    .restart local v9    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    .restart local v10    # "i":I
    .restart local v11    # "match":I
    .restart local v13    # "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    :cond_11b
    if-eqz v8, :cond_d5

    .line 244
    packed-switch v11, :pswitch_data_18c

    .line 249
    :try_start_120
    const-string/jumbo v12, "unknown reason"

    .line 251
    .local v12, "reason":Ljava/lang/String;
    :goto_123
    const-string/jumbo v1, "LocalBroadcastManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "  Filter did not match: "

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d5

    .line 245
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_140
    const-string/jumbo v12, "action"

    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_123

    .line 246
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_144
    const-string/jumbo v12, "category"

    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_123

    .line 247
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_148
    const-string/jumbo v12, "data"

    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_123

    .line 248
    .end local v12    # "reason":Ljava/lang/String;
    :pswitch_14c
    const-string/jumbo v12, "type"

    .restart local v12    # "reason":Ljava/lang/String;
    goto :goto_123

    .line 256
    .end local v11    # "match":I
    .end local v12    # "reason":Ljava/lang/String;
    .end local v13    # "receiver":Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;
    :cond_150
    if-eqz v14, :cond_189

    .line 257
    const/4 v10, 0x0

    :goto_153
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_165

    .line 258
    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    const/4 v7, 0x0

    iput-boolean v7, v1, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    .line 257
    add-int/lit8 v10, v10, 0x1

    goto :goto_153

    .line 260
    :cond_165
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    new-instance v7, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v14}, Landroid/support/v4/content/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_186

    .line 262
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/content/LocalBroadcastManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_186
    .catchall {:try_start_120 .. :try_end_186} :catchall_118

    .line 264
    :cond_186
    const/4 v1, 0x1

    monitor-exit v15

    return v1

    .end local v10    # "i":I
    :cond_189
    monitor-exit v15

    .line 268
    const/4 v1, 0x0

    return v1

    .line 244
    :pswitch_data_18c
    .packed-switch -0x4
        :pswitch_144
        :pswitch_140
        :pswitch_148
        :pswitch_14c
    .end packed-switch
.end method

.method public sendBroadcastSync(Landroid/content/Intent;)V
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 278
    invoke-direct {p0}, Landroid/support/v4/content/LocalBroadcastManager;->executePendingBroadcasts()V

    .line 276
    :cond_9
    return-void
.end method

.method public unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    .registers 11
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 164
    iget-object v8, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v8

    .line 165
    :try_start_3
    iget-object v7, p0, Landroid/support/v4/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_5d

    .line 166
    .local v2, "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    if-nez v2, :cond_f

    monitor-exit v8

    .line 167
    return-void

    .line 169
    :cond_f
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    :try_start_10
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_5b

    .line 170
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/IntentFilter;

    .line 171
    .local v1, "filter":Landroid/content/IntentFilter;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1d
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    move-result v7

    if-ge v4, v7, :cond_58

    .line 172
    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "action":Ljava/lang/String;
    iget-object v7, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 174
    .local v6, "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    if-eqz v6, :cond_55

    .line 175
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_32
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_4a

    .line 176
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;

    iget-object v7, v7, Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;->receiver:Landroid/content/BroadcastReceiver;

    if-ne v7, p1, :cond_47

    .line 177
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 178
    add-int/lit8 v5, v5, -0x1

    .line 175
    :cond_47
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 181
    :cond_4a
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-gtz v7, :cond_55

    .line 182
    iget-object v7, p0, Landroid/support/v4/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_55
    .catchall {:try_start_10 .. :try_end_55} :catchall_5d

    .line 171
    .end local v5    # "k":I
    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 169
    .end local v0    # "action":Ljava/lang/String;
    .end local v6    # "receivers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/content/LocalBroadcastManager$ReceiverRecord;>;"
    :cond_58
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "j":I
    :cond_5b
    monitor-exit v8

    .line 163
    return-void

    .line 164
    .end local v2    # "filters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/IntentFilter;>;"
    .end local v3    # "i":I
    :catchall_5d
    move-exception v7

    monitor-exit v8

    throw v7
.end method

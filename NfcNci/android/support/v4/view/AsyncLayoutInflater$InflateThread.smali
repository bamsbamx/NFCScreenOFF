.class Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;
.super Ljava/lang/Thread;
.source "AsyncLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/AsyncLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflateThread"
.end annotation


# static fields
.field private static final sInstance:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;


# instance fields
.field private mQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SynchronizedPool",
            "<",
            "Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 158
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    invoke-direct {v0}, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;-><init>()V

    sput-object v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    .line 159
    sget-object v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 155
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0xa

    .line 155
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 167
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 166
    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 169
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    .line 168
    iput-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    .line 155
    return-void
.end method

.method public static getInstance()Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;
    .registers 1

    .prologue
    .line 163
    sget-object v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->sInstance:Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;

    return-object v0
.end method


# virtual methods
.method public enqueue(Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;)V
    .registers 5
    .param p1, "request"    # Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;

    .prologue
    .line 215
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 213
    return-void

    .line 216
    :catch_6
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v1, Ljava/lang/RuntimeException;

    .line 218
    const-string/jumbo v2, "Failed to enqueue async inflate request"

    .line 217
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public obtainRequest()Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 197
    iget-object v1, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;

    .line 198
    .local v0, "obj":Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;
    if-nez v0, :cond_10

    .line 199
    new-instance v0, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;

    .end local v0    # "obj":Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;
    invoke-direct {v0, v2}, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;-><init>(Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;)V

    .line 201
    .restart local v0    # "obj":Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;
    :cond_10
    return-object v0
.end method

.method public releaseRequest(Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;)V
    .registers 4
    .param p1, "obj"    # Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;

    .prologue
    const/4 v1, 0x0

    .line 205
    iput-object v1, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->callback:Landroid/support/v4/view/AsyncLayoutInflater$OnInflateFinishedListener;

    .line 206
    iput-object v1, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroid/support/v4/view/AsyncLayoutInflater;

    .line 207
    iput-object v1, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    .line 208
    const/4 v0, 0x0

    iput v0, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->resid:I

    .line 209
    iput-object v1, p1, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;

    .line 210
    iget-object v0, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mRequestPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 204
    return-void
.end method

.method public run()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 176
    :goto_1
    :try_start_1
    iget-object v3, p0, Landroid/support/v4/view/AsyncLayoutInflater$InflateThread;->mQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_9} :catch_28

    .line 184
    .local v2, "request":Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;
    :try_start_9
    iget-object v3, v2, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroid/support/v4/view/AsyncLayoutInflater;

    invoke-static {v3}, Landroid/support/v4/view/AsyncLayoutInflater;->-get2(Landroid/support/v4/view/AsyncLayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 185
    iget v4, v2, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->resid:I

    iget-object v5, v2, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->parent:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    .line 184
    invoke-virtual {v3, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->view:Landroid/view/View;
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_1a} :catch_30

    .line 191
    :goto_1a
    iget-object v3, v2, Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;->inflater:Landroid/support/v4/view/AsyncLayoutInflater;

    invoke-static {v3}, Landroid/support/v4/view/AsyncLayoutInflater;->-get0(Landroid/support/v4/view/AsyncLayoutInflater;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v3, v7, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 177
    .end local v2    # "request":Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;
    :catch_28
    move-exception v0

    .line 179
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string/jumbo v3, "AsyncLayoutInflater"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 186
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    .restart local v2    # "request":Landroid/support/v4/view/AsyncLayoutInflater$InflateRequest;
    :catch_30
    move-exception v1

    .line 188
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "AsyncLayoutInflater"

    const-string/jumbo v4, "Failed to inflate resource in the background! Retrying on the UI thread"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a
.end method

.class public abstract Landroid/support/v4/content/AsyncTaskLoader;
.super Landroid/support/v4/content/Loader;
.source "AsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/content/Loader",
        "<TD;>;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AsyncTaskLoader"


# instance fields
.field volatile mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field mHandler:Landroid/os/Handler;

.field mLastLoadCompleteTime:J

.field volatile mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field mUpdateThrottle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    sget-object v0, Landroid/support/v4/content/ModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-direct {p0, p1, v0}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    .line 121
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .prologue
    .line 126
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    invoke-direct {p0, p1}, Landroid/support/v4/content/Loader;-><init>(Landroid/content/Context;)V

    .line 118
    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 127
    iput-object p2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;

    .line 125
    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .registers 1

    .prologue
    .line 310
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    return-void
.end method

.method dispatchOnCancelled(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    .local p1, "task":Landroid/support/v4/content/AsyncTaskLoader$LoadTask;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    invoke-virtual {p0, p2}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-ne v0, p1, :cond_19

    .line 227
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->rollbackContentChanged()V

    .line 228
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 231
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->deliverCancellation()V

    .line 232
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->executePendingTask()V

    .line 223
    :cond_19
    return-void
.end method

.method dispatchOnLoadComplete(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    .local p1, "task":Landroid/support/v4/content/AsyncTaskLoader$LoadTask;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eq v0, p1, :cond_8

    .line 239
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/content/AsyncTaskLoader;->dispatchOnCancelled(Landroid/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V

    .line 236
    :goto_7
    return-void

    .line 241
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->isAbandoned()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 243
    invoke-virtual {p0, p2}, Landroid/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    goto :goto_7

    .line 245
    :cond_12
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->commitContentChanged()V

    .line 246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 249
    invoke-virtual {p0, p2}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_7
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 343
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_22

    .line 345
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 346
    const-string/jumbo v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 348
    :cond_22
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_41

    .line 349
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCancellingTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 350
    const-string/jumbo v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 352
    :cond_41
    iget-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_69

    .line 353
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUpdateThrottle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    iget-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    invoke-static {v0, v1, p3}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 355
    const-string/jumbo v0, " mLastLoadCompleteTime="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 356
    iget-wide v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 357
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 356
    invoke-static {v0, v1, v2, v3, p3}, Landroid/support/v4/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 358
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 342
    :cond_69
    return-void
.end method

.method executePendingTask()V
    .registers 9

    .prologue
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    const/4 v2, 0x0

    .line 201
    iget-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-nez v3, :cond_4b

    iget-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v3, :cond_4b

    .line 202
    iget-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v3, v3, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v3, :cond_1b

    .line 203
    iget-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 204
    iget-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 206
    :cond_1b
    iget-wide v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_42

    .line 207
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 208
    .local v0, "now":J
    iget-wide v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    iget-wide v6, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    add-long/2addr v4, v6

    cmp-long v3, v0, v4

    if-gez v3, :cond_42

    .line 213
    iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 214
    iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-wide v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    iget-wide v6, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 215
    return-void

    .line 219
    .end local v0    # "now":J
    :cond_42
    iget-object v3, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-object v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->mExecutor:Ljava/util/concurrent/Executor;

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v2}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/support/v4/content/ModernAsyncTask;

    .line 200
    :cond_4b
    return-void
.end method

.method public isLoadInBackgroundCanceled()Z
    .registers 2

    .prologue
    .line 321
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public abstract loadInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method protected onCancelLoad()Z
    .registers 6

    .prologue
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 156
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v1, :cond_44

    .line 157
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v1, :cond_1e

    .line 162
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v1, v1, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v1, :cond_1b

    .line 163
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iput-boolean v3, v1, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 164
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    :cond_1b
    iput-object v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 167
    return v3

    .line 168
    :cond_1e
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v1, v1, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v1, :cond_32

    .line 172
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iput-boolean v3, v1, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 173
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 174
    iput-object v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 175
    return v3

    .line 177
    :cond_32
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v1, v3}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->cancel(Z)Z

    move-result v0

    .line 179
    .local v0, "cancelled":Z
    if-eqz v0, :cond_41

    .line 180
    iget-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    iput-object v1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mCancellingTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 181
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->cancelLoadInBackground()V

    .line 183
    :cond_41
    iput-object v4, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 184
    return v0

    .line 187
    .end local v0    # "cancelled":Z
    :cond_44
    return v3
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    return-void
.end method

.method protected onForceLoad()V
    .registers 2

    .prologue
    .line 146
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    invoke-super {p0}, Landroid/support/v4/content/Loader;->onForceLoad()V

    .line 147
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->cancelLoad()Z

    .line 148
    new-instance v0, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-direct {v0, p0}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;-><init>(Landroid/support/v4/content/AsyncTaskLoader;)V

    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 150
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->executePendingTask()V

    .line 145
    return-void
.end method

.method protected onLoadInBackground()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    invoke-virtual {p0}, Landroid/support/v4/content/AsyncTaskLoader;->loadInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setUpdateThrottle(J)V
    .registers 6
    .param p1, "delayMS"    # J

    .prologue
    .line 138
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    iput-wide p1, p0, Landroid/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    .line 139
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_f

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    .line 137
    :cond_f
    return-void
.end method

.method public waitForLoader()V
    .registers 2

    .prologue
    .line 335
    .local p0, "this":Landroid/support/v4/content/AsyncTaskLoader;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>;"
    iget-object v0, p0, Landroid/support/v4/content/AsyncTaskLoader;->mTask:Landroid/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 336
    .local v0, "task":Landroid/support/v4/content/AsyncTaskLoader$LoadTask;, "Landroid/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;"
    if-eqz v0, :cond_7

    .line 337
    invoke-virtual {v0}, Landroid/support/v4/content/AsyncTaskLoader$LoadTask;->waitForLoader()V

    .line 334
    :cond_7
    return-void
.end method

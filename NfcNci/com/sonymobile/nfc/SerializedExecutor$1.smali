.class Lcom/sonymobile/nfc/SerializedExecutor$1;
.super Ljava/lang/Object;
.source "SerializedExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/SerializedExecutor;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/SerializedExecutor;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/SerializedExecutor;Ljava/lang/Runnable;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/SerializedExecutor;
    .param p2, "val$r"    # Ljava/lang/Runnable;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/sonymobile/nfc/SerializedExecutor$1;->this$0:Lcom/sonymobile/nfc/SerializedExecutor;

    iput-object p2, p0, Lcom/sonymobile/nfc/SerializedExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/sonymobile/nfc/SerializedExecutor$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_b

    .line 43
    iget-object v0, p0, Lcom/sonymobile/nfc/SerializedExecutor$1;->this$0:Lcom/sonymobile/nfc/SerializedExecutor;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/SerializedExecutor;->scheduleNext()V

    .line 39
    return-void

    .line 42
    :catchall_b
    move-exception v0

    .line 43
    iget-object v1, p0, Lcom/sonymobile/nfc/SerializedExecutor$1;->this$0:Lcom/sonymobile/nfc/SerializedExecutor;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/SerializedExecutor;->scheduleNext()V

    .line 42
    throw v0
.end method

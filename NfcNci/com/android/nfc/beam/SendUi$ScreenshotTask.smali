.class final Lcom/android/nfc/beam/SendUi$ScreenshotTask;
.super Landroid/os/AsyncTask;
.source "SendUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/beam/SendUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ScreenshotTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/beam/SendUi;


# direct methods
.method constructor <init>(Lcom/android/nfc/beam/SendUi;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/beam/SendUi;

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->createScreenshot()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 568
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .registers 8
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 574
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iget v1, v1, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 576
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iput-object p1, v1, Lcom/android/nfc/beam/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 577
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iput v5, v1, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 573
    :goto_12
    return-void

    .line 578
    :cond_13
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iget v1, v1, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1f

    .line 580
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iput v3, v1, Lcom/android/nfc/beam/SendUi;->mState:I

    goto :goto_12

    .line 581
    :cond_1f
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iget v1, v1, Lcom/android/nfc/beam/SendUi;->mState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2c

    .line 582
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iget v1, v1, Lcom/android/nfc/beam/SendUi;->mState:I

    if-ne v1, v4, :cond_53

    .line 583
    :cond_2c
    if-eqz p1, :cond_45

    .line 584
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iput-object p1, v1, Lcom/android/nfc/beam/SendUi;->mScreenshotBitmap:Landroid/graphics/Bitmap;

    .line 585
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iget v1, v1, Lcom/android/nfc/beam/SendUi;->mState:I

    if-ne v1, v4, :cond_43

    const/4 v0, 0x1

    .line 586
    .local v0, "requestTap":Z
    :goto_39
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iput v5, v1, Lcom/android/nfc/beam/SendUi;->mState:I

    .line 587
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v1, v0}, Lcom/android/nfc/beam/SendUi;->showPreSend(Z)V

    goto :goto_12

    .line 585
    .end local v0    # "requestTap":Z
    :cond_43
    const/4 v0, 0x0

    .restart local v0    # "requestTap":Z
    goto :goto_39

    .line 591
    .end local v0    # "requestTap":Z
    :cond_45
    const-string/jumbo v1, "SendUi"

    const-string/jumbo v2, "Failed to create screenshot"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-object v1, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iput v3, v1, Lcom/android/nfc/beam/SendUi;->mState:I

    goto :goto_12

    .line 595
    :cond_53
    const-string/jumbo v1, "SendUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid state on screenshot completion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->this$0:Lcom/android/nfc/beam/SendUi;

    iget v3, v3, Lcom/android/nfc/beam/SendUi;->mState:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 573
    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/beam/SendUi$ScreenshotTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

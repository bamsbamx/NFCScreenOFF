.class Landroid/support/v4/print/PrintHelperKitkat$2;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintHelperKitkat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAttributes:Landroid/print/PrintAttributes;

.field mBitmap:Landroid/graphics/Bitmap;

.field mLoadBitmap:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/support/v4/print/PrintHelperKitkat;

.field final synthetic val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

.field final synthetic val$fittingMode:I

.field final synthetic val$imageFile:Landroid/net/Uri;

.field final synthetic val$jobName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Landroid/support/v4/print/PrintHelperKitkat$2;)Landroid/print/PrintAttributes;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mAttributes:Landroid/print/PrintAttributes;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/support/v4/print/PrintHelperKitkat$2;)V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/print/PrintHelperKitkat$2;->cancelLoad()V

    return-void
.end method

.method constructor <init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;ILandroid/net/Uri;)V
    .registers 7
    .param p1, "this$0"    # Landroid/support/v4/print/PrintHelperKitkat;
    .param p2, "val$jobName"    # Ljava/lang/String;
    .param p3, "val$callback"    # Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    .param p4, "val$fittingMode"    # I
    .param p5, "val$imageFile"    # Landroid/net/Uri;

    .prologue
    .line 417
    iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$jobName:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    iput p4, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fittingMode:I

    iput-object p5, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$imageFile:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    .line 420
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    .line 417
    return-void
.end method

.method private cancelLoad()V
    .registers 4

    .prologue
    .line 524
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    invoke-static {v0}, Landroid/support/v4/print/PrintHelperKitkat;->-get0(Landroid/support/v4/print/PrintHelperKitkat;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 525
    :try_start_7
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v0, :cond_19

    .line 526
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iget-object v0, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v0}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 527
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_1b

    :cond_19
    monitor-exit v1

    .line 523
    return-void

    .line 524
    :catchall_1b
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 534
    invoke-super {p0}, Landroid/print/PrintDocumentAdapter;->onFinish()V

    .line 535
    invoke-direct {p0}, Landroid/support/v4/print/PrintHelperKitkat$2;->cancelLoad()V

    .line 536
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mLoadBitmap:Landroid/os/AsyncTask;

    if-eqz v0, :cond_11

    .line 537
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mLoadBitmap:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 539
    :cond_11
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    if-eqz v0, :cond_1a

    .line 540
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    invoke-interface {v0}, Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;->onFinish()V

    .line 542
    :cond_1a
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_25

    .line 543
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 544
    iput-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    .line 533
    :cond_25
    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .registers 16
    .param p1, "oldPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "layoutResultCallback"    # Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v0, 0x1

    .line 429
    monitor-enter p0

    .line 430
    :try_start_3
    iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mAttributes:Landroid/print/PrintAttributes;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_10

    monitor-exit p0

    .line 433
    invoke-virtual {p3}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 434
    invoke-virtual {p4}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutCancelled()V

    .line 435
    return-void

    .line 429
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    .line 438
    :cond_13
    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_36

    .line 439
    new-instance v1, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$jobName:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v9

    .line 443
    .local v9, "info":Landroid/print/PrintDocumentInfo;
    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 444
    .local v8, "changed":Z
    :goto_30
    invoke-virtual {p4, v9, v8}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 445
    return-void

    .end local v8    # "changed":Z
    :cond_34
    move v8, v0

    .line 443
    goto :goto_30

    .line 448
    .end local v9    # "info":Landroid/print/PrintDocumentInfo;
    :cond_36
    new-instance v0, Landroid/support/v4/print/PrintHelperKitkat$2$1;

    iget-object v3, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$imageFile:Landroid/net/Uri;

    iget-object v4, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$jobName:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p3

    move-object v5, p2

    move-object v6, p1

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/support/v4/print/PrintHelperKitkat$2$1;-><init>(Landroid/support/v4/print/PrintHelperKitkat$2;Landroid/os/CancellationSignal;Landroid/net/Uri;Ljava/lang/String;Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;)V

    new-array v1, v8, [Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/support/v4/print/PrintHelperKitkat$2$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mLoadBitmap:Landroid/os/AsyncTask;

    .line 427
    return-void
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 11
    .param p1, "pageRanges"    # [Landroid/print/PageRange;
    .param p2, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .prologue
    .line 552
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mAttributes:Landroid/print/PrintAttributes;

    iget v2, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->val$fittingMode:I

    iget-object v3, p0, Landroid/support/v4/print/PrintHelperKitkat$2;->mBitmap:Landroid/graphics/Bitmap;

    move-object v4, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/print/PrintHelperKitkat;->-wrap2(Landroid/support/v4/print/PrintHelperKitkat;Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    .line 551
    return-void
.end method

.class Landroid/support/v4/print/PrintHelperKitkat$1;
.super Landroid/print/PrintDocumentAdapter;
.source "PrintHelperKitkat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/print/PrintHelperKitkat;->printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mAttributes:Landroid/print/PrintAttributes;

.field final synthetic this$0:Landroid/support/v4/print/PrintHelperKitkat;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

.field final synthetic val$fittingMode:I

.field final synthetic val$jobName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
    .registers 6
    .param p1, "this$0"    # Landroid/support/v4/print/PrintHelperKitkat;
    .param p2, "val$jobName"    # Ljava/lang/String;
    .param p3, "val$fittingMode"    # I
    .param p4, "val$bitmap"    # Landroid/graphics/Bitmap;
    .param p5, "val$callback"    # Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    .prologue
    .line 245
    iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$jobName:Ljava/lang/String;

    iput p3, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$fittingMode:I

    iput-object p4, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p5, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    invoke-direct {p0}, Landroid/print/PrintDocumentAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    if-eqz v0, :cond_9

    .line 276
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$callback:Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    invoke-interface {v0}, Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;->onFinish()V

    .line 274
    :cond_9
    return-void
.end method

.method public onLayout(Landroid/print/PrintAttributes;Landroid/print/PrintAttributes;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$LayoutResultCallback;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "oldPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p2, "newPrintAttributes"    # Landroid/print/PrintAttributes;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "layoutResultCallback"    # Landroid/print/PrintDocumentAdapter$LayoutResultCallback;
    .param p5, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x1

    .line 255
    iput-object p2, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;

    .line 257
    new-instance v2, Landroid/print/PrintDocumentInfo$Builder;

    iget-object v3, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$jobName:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/print/PrintDocumentInfo$Builder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/print/PrintDocumentInfo$Builder;->setContentType(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/print/PrintDocumentInfo$Builder;->setPageCount(I)Landroid/print/PrintDocumentInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/print/PrintDocumentInfo$Builder;->build()Landroid/print/PrintDocumentInfo;

    move-result-object v1

    .line 261
    .local v1, "info":Landroid/print/PrintDocumentInfo;
    invoke-virtual {p2, p1}, Landroid/print/PrintAttributes;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v0, 0x0

    .line 262
    .local v0, "changed":Z
    :cond_1d
    invoke-virtual {p4, v1, v0}, Landroid/print/PrintDocumentAdapter$LayoutResultCallback;->onLayoutFinished(Landroid/print/PrintDocumentInfo;Z)V

    .line 253
    return-void
.end method

.method public onWrite([Landroid/print/PageRange;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 11
    .param p1, "pageRanges"    # [Landroid/print/PageRange;
    .param p2, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p4, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .prologue
    .line 269
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->this$0:Landroid/support/v4/print/PrintHelperKitkat;

    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->mAttributes:Landroid/print/PrintAttributes;

    iget v2, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$fittingMode:I

    iget-object v3, p0, Landroid/support/v4/print/PrintHelperKitkat$1;->val$bitmap:Landroid/graphics/Bitmap;

    move-object v4, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/support/v4/print/PrintHelperKitkat;->-wrap2(Landroid/support/v4/print/PrintHelperKitkat;Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    .line 268
    return-void
.end method

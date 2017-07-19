.class Landroid/support/v4/print/PrintHelperKitkat;
.super Ljava/lang/Object;
.source "PrintHelperKitkat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    }
.end annotation


# static fields
.field public static final COLOR_MODE_COLOR:I = 0x2

.field public static final COLOR_MODE_MONOCHROME:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PrintHelperKitkat"

.field private static final MAX_PRINT_SIZE:I = 0xdac

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I = 0x2

.field public static final SCALE_MODE_FILL:I = 0x2

.field public static final SCALE_MODE_FIT:I = 0x1


# instance fields
.field mColorMode:I

.field final mContext:Landroid/content/Context;

.field mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

.field protected mIsMinMarginsHandlingCorrect:Z

.field private final mLock:Ljava/lang/Object;

.field mOrientation:I

.field protected mPrintActivityRespectsOrientation:Z

.field mScaleMode:I


# direct methods
.method static synthetic -get0(Landroid/support/v4/print/PrintHelperKitkat;)Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/support/v4/print/PrintHelperKitkat;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxSideLength"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/support/v4/print/PrintHelperKitkat;->loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/graphics/Bitmap;)Z
    .registers 2
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    invoke-static {p0}, Landroid/support/v4/print/PrintHelperKitkat;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Landroid/support/v4/print/PrintHelperKitkat;Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 6
    .param p1, "attributes"    # Landroid/print/PrintAttributes;
    .param p2, "fittingMode"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/support/v4/print/PrintHelperKitkat;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    .line 102
    iput v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 104
    iput v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    .line 109
    iput-boolean v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mPrintActivityRespectsOrientation:Z

    .line 110
    iput-boolean v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mIsMinMarginsHandlingCorrect:Z

    .line 112
    iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    .line 108
    return-void
.end method

.method private convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "colorMode"    # I

    .prologue
    const/4 v8, 0x0

    .line 648
    const/4 v5, 0x1

    if-eq p2, v5, :cond_5

    .line 649
    return-object p1

    .line 652
    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 653
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 652
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 654
    .local v3, "grayscale":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 655
    .local v0, "c":Landroid/graphics/Canvas;
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 656
    .local v4, "p":Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 657
    .local v1, "cm":Landroid/graphics/ColorMatrix;
    invoke-virtual {v1, v8}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 658
    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 659
    .local v2, "f":Landroid/graphics/ColorMatrixColorFilter;
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 660
    invoke-virtual {v0, p1, v8, v8, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 661
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 663
    return-object v3
.end method

.method private getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
    .registers 12
    .param p1, "imageWidth"    # I
    .param p2, "imageHeight"    # I
    .param p3, "content"    # Landroid/graphics/RectF;
    .param p4, "fittingMode"    # I

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 292
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 295
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    int-to-float v5, p1

    div-float v1, v4, v5

    .line 296
    .local v1, "scale":F
    const/4 v4, 0x2

    if-ne p4, v4, :cond_34

    .line 297
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, p2

    div-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 301
    :goto_1b
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 304
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result v4

    .line 305
    int-to-float v5, p1

    mul-float/2addr v5, v1

    .line 304
    sub-float/2addr v4, v5

    div-float v2, v4, v6

    .line 306
    .local v2, "translateX":F
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 307
    int-to-float v5, p2

    mul-float/2addr v5, v1

    .line 306
    sub-float/2addr v4, v5

    div-float v3, v4, v6

    .line 308
    .local v3, "translateY":F
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 309
    return-object v0

    .line 299
    .end local v2    # "translateX":F
    .end local v3    # "translateY":F
    :cond_34
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result v4

    int-to-float v5, p2

    div-float/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_1b
.end method

.method private static isPortrait(Landroid/graphics/Bitmap;)Z
    .registers 3
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 192
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_c

    .line 193
    const/4 v0, 0x1

    return v0

    .line 195
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "o"    # Landroid/graphics/BitmapFactory$Options;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 629
    if-eqz p1, :cond_6

    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    if-nez v2, :cond_f

    .line 630
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "bad argument to loadBitmap"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 632
    :cond_f
    const/4 v0, 0x0

    .line 634
    .local v0, "is":Ljava/io/InputStream;
    :try_start_10
    iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 635
    .local v0, "is":Ljava/io/InputStream;
    const/4 v2, 0x0

    invoke-static {v0, v2, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_30

    move-result-object v2

    .line 637
    if-eqz v0, :cond_24

    .line 639
    :try_start_21
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_25

    .line 635
    :cond_24
    :goto_24
    return-object v2

    .line 640
    :catch_25
    move-exception v1

    .line 641
    .local v1, "t":Ljava/io/IOException;
    const-string/jumbo v3, "PrintHelperKitkat"

    const-string/jumbo v4, "close fail "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 636
    .end local v0    # "is":Ljava/io/InputStream;
    .end local v1    # "t":Ljava/io/IOException;
    :catchall_30
    move-exception v2

    .line 637
    if-eqz v0, :cond_36

    .line 639
    :try_start_33
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_37

    .line 636
    :cond_36
    :goto_36
    throw v2

    .line 640
    :catch_37
    move-exception v1

    .line 641
    .restart local v1    # "t":Ljava/io/IOException;
    const-string/jumbo v3, "PrintHelperKitkat"

    const-string/jumbo v4, "close fail "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36
.end method

.method private loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .registers 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "maxSideLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 579
    if-lez p2, :cond_6

    if-nez p1, :cond_f

    .line 580
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "bad argument to getScaledBitmap"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 579
    :cond_f
    iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    if-eqz v6, :cond_6

    .line 583
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 584
    .local v3, "opt":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 585
    invoke-direct {p0, p1, v3}, Landroid/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 587
    iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 588
    .local v5, "w":I
    iget v1, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 591
    .local v1, "h":I
    if-lez v5, :cond_25

    if-gtz v1, :cond_26

    .line 592
    :cond_25
    return-object v7

    .line 596
    :cond_26
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 598
    .local v2, "imageSide":I
    const/4 v4, 0x1

    .line 599
    .local v4, "sampleSize":I
    :goto_2b
    if-le v2, p2, :cond_32

    .line 600
    ushr-int/lit8 v2, v2, 0x1

    .line 601
    shl-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 605
    :cond_32
    if-lez v4, :cond_3b

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    div-int/2addr v6, v4

    if-gtz v6, :cond_3c

    .line 606
    :cond_3b
    return-object v7

    .line 608
    :cond_3c
    const/4 v0, 0x0

    .line 609
    .local v0, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 610
    :try_start_40
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    .line 611
    iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    const/4 v8, 0x1

    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 612
    iget-object v6, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;

    iput v4, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 613
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_52
    .catchall {:try_start_40 .. :try_end_52} :catchall_5f

    .local v0, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    monitor-exit v7

    .line 616
    :try_start_53
    invoke-direct {p0, p1, v0}, Landroid/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_65

    move-result-object v6

    .line 618
    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 619
    const/4 v8, 0x0

    :try_start_5b
    iput-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_5d
    .catchall {:try_start_5b .. :try_end_5d} :catchall_62

    monitor-exit v7

    .line 616
    return-object v6

    .line 609
    .local v0, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_5f
    move-exception v6

    monitor-exit v7

    throw v6

    .line 618
    .local v0, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    :catchall_62
    move-exception v6

    monitor-exit v7

    throw v6

    .line 617
    :catchall_65
    move-exception v6

    .line 618
    iget-object v7, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 619
    const/4 v8, 0x0

    :try_start_6a
    iput-object v8, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_6c
    .catchall {:try_start_6a .. :try_end_6c} :catchall_6e

    monitor-exit v7

    .line 617
    throw v6

    .line 618
    :catchall_6e
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .registers 23
    .param p1, "attributes"    # Landroid/print/PrintAttributes;
    .param p2, "fittingMode"    # I
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;
    .param p4, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p5, "writeResultCallback"    # Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    .prologue
    .line 325
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/support/v4/print/PrintHelperKitkat;->mIsMinMarginsHandlingCorrect:Z

    if-eqz v11, :cond_7f

    .line 326
    move-object/from16 v9, p1

    .line 334
    .local v9, "pdfAttributes":Landroid/print/PrintAttributes;
    :goto_8
    new-instance v10, Landroid/print/pdf/PrintedPdfDocument;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v9}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 338
    .local v10, "pdfDocument":Landroid/print/pdf/PrintedPdfDocument;
    invoke-virtual {v9}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v11

    .line 337
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v11}, Landroid/support/v4/print/PrintHelperKitkat;->convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 340
    .local v7, "maybeGrayscale":Landroid/graphics/Bitmap;
    const/4 v11, 0x1

    :try_start_1e
    invoke-virtual {v10, v11}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v8

    .line 343
    .local v8, "page":Landroid/graphics/pdf/PdfDocument$Page;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/support/v4/print/PrintHelperKitkat;->mIsMinMarginsHandlingCorrect:Z

    if-eqz v11, :cond_97

    .line 344
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 358
    .local v2, "contentRect":Landroid/graphics/RectF;
    :goto_35
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    .line 357
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v11, v12, v2, v1}, Landroid/support/v4/print/PrintHelperKitkat;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v6

    .line 361
    .local v6, "matrix":Landroid/graphics/Matrix;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Landroid/support/v4/print/PrintHelperKitkat;->mIsMinMarginsHandlingCorrect:Z

    if-eqz v11, :cond_cd

    .line 372
    :goto_4b
    invoke-virtual {v8}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v7, v6, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 375
    invoke-virtual {v10, v8}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
    :try_end_56
    .catchall {:try_start_1e .. :try_end_56} :catchall_bc

    .line 379
    :try_start_56
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-virtual/range {p4 .. p4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {v10, v11}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V

    .line 381
    const/4 v11, 0x1

    new-array v11, v11, [Landroid/print/PageRange;

    sget-object v12, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_6f} :catch_dd
    .catchall {:try_start_56 .. :try_end_6f} :catchall_bc

    .line 388
    :goto_6f
    invoke-virtual {v10}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 390
    if-eqz p4, :cond_77

    .line 392
    :try_start_74
    invoke-virtual/range {p4 .. p4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_ee

    .line 398
    :cond_77
    :goto_77
    move-object/from16 v0, p3

    if-eq v7, v0, :cond_7e

    .line 399
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 323
    :cond_7e
    return-void

    .line 330
    .end local v2    # "contentRect":Landroid/graphics/RectF;
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v7    # "maybeGrayscale":Landroid/graphics/Bitmap;
    .end local v8    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    .end local v9    # "pdfAttributes":Landroid/print/PrintAttributes;
    .end local v10    # "pdfDocument":Landroid/print/pdf/PrintedPdfDocument;
    :cond_7f
    invoke-virtual/range {p0 .. p1}, Landroid/support/v4/print/PrintHelperKitkat;->copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;

    move-result-object v11

    .line 331
    new-instance v12, Landroid/print/PrintAttributes$Margins;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-direct/range {v12 .. v16}, Landroid/print/PrintAttributes$Margins;-><init>(IIII)V

    .line 330
    invoke-virtual {v11, v12}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v9

    .restart local v9    # "pdfAttributes":Landroid/print/PrintAttributes;
    goto/16 :goto_8

    .line 348
    .restart local v7    # "maybeGrayscale":Landroid/graphics/Bitmap;
    .restart local v8    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    .restart local v10    # "pdfDocument":Landroid/print/pdf/PrintedPdfDocument;
    :cond_97
    :try_start_97
    new-instance v3, Landroid/print/pdf/PrintedPdfDocument;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    invoke-direct {v3, v11, v0}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    .line 350
    .local v3, "dummyDocument":Landroid/print/pdf/PrintedPdfDocument;
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v4

    .line 351
    .local v4, "dummyPage":Landroid/graphics/pdf/PdfDocument$Page;
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 352
    .restart local v2    # "contentRect":Landroid/graphics/RectF;
    invoke-virtual {v3, v4}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    .line 353
    invoke-virtual {v3}, Landroid/print/pdf/PrintedPdfDocument;->close()V
    :try_end_ba
    .catchall {:try_start_97 .. :try_end_ba} :catchall_bc

    goto/16 :goto_35

    .line 387
    .end local v2    # "contentRect":Landroid/graphics/RectF;
    .end local v3    # "dummyDocument":Landroid/print/pdf/PrintedPdfDocument;
    .end local v4    # "dummyPage":Landroid/graphics/pdf/PdfDocument$Page;
    .end local v8    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    :catchall_bc
    move-exception v11

    .line 388
    invoke-virtual {v10}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    .line 390
    if-eqz p4, :cond_c5

    .line 392
    :try_start_c2
    invoke-virtual/range {p4 .. p4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_f0

    .line 398
    :cond_c5
    :goto_c5
    move-object/from16 v0, p3

    if-eq v7, v0, :cond_cc

    .line 399
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 387
    :cond_cc
    throw v11

    .line 365
    .restart local v2    # "contentRect":Landroid/graphics/RectF;
    .restart local v6    # "matrix":Landroid/graphics/Matrix;
    .restart local v8    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    :cond_cd
    :try_start_cd
    iget v11, v2, Landroid/graphics/RectF;->left:F

    iget v12, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 368
    invoke-virtual {v8}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    goto/16 :goto_4b

    .line 382
    :catch_dd
    move-exception v5

    .line 384
    .local v5, "ioe":Ljava/io/IOException;
    const-string/jumbo v11, "PrintHelperKitkat"

    const-string/jumbo v12, "Error writing printed content"

    invoke-static {v11, v12, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    const/4 v11, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v11}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V
    :try_end_ed
    .catchall {:try_start_cd .. :try_end_ed} :catchall_bc

    goto :goto_6f

    .line 393
    .end local v5    # "ioe":Ljava/io/IOException;
    :catch_ee
    move-exception v5

    .restart local v5    # "ioe":Ljava/io/IOException;
    goto :goto_77

    .end local v2    # "contentRect":Landroid/graphics/RectF;
    .end local v5    # "ioe":Ljava/io/IOException;
    .end local v6    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "page":Landroid/graphics/pdf/PdfDocument$Page;
    :catch_f0
    move-exception v5

    .restart local v5    # "ioe":Ljava/io/IOException;
    goto :goto_c5
.end method


# virtual methods
.method protected copyAttributes(Landroid/print/PrintAttributes;)Landroid/print/PrintAttributes$Builder;
    .registers 5
    .param p1, "other"    # Landroid/print/PrintAttributes;

    .prologue
    .line 207
    new-instance v1, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v1}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 208
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getMediaSize()Landroid/print/PrintAttributes$MediaSize;

    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v1

    .line 209
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getResolution()Landroid/print/PrintAttributes$Resolution;

    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Landroid/print/PrintAttributes$Builder;->setResolution(Landroid/print/PrintAttributes$Resolution;)Landroid/print/PrintAttributes$Builder;

    move-result-object v1

    .line 210
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getMinMargins()Landroid/print/PrintAttributes$Margins;

    move-result-object v2

    .line 207
    invoke-virtual {v1, v2}, Landroid/print/PrintAttributes$Builder;->setMinMargins(Landroid/print/PrintAttributes$Margins;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 212
    .local v0, "b":Landroid/print/PrintAttributes$Builder;
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    if-eqz v1, :cond_2a

    .line 213
    invoke-virtual {p1}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 216
    :cond_2a
    return-object v0
.end method

.method public getColorMode()I
    .registers 2

    .prologue
    .line 182
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    return v0
.end method

.method public getOrientation()I
    .registers 2

    .prologue
    .line 169
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    if-nez v0, :cond_6

    .line 170
    const/4 v0, 0x1

    return v0

    .line 172
    :cond_6
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    return v0
.end method

.method public getScaleMode()I
    .registers 2

    .prologue
    .line 136
    iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    return v0
.end method

.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
    .registers 13
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;

    .prologue
    .line 228
    if-nez p2, :cond_3

    .line 229
    return-void

    .line 231
    :cond_3
    iget v3, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 232
    .local v3, "fittingMode":I
    iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "print"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/print/PrintManager;

    .line 234
    .local v8, "printManager":Landroid/print/PrintManager;
    invoke-static {p2}, Landroid/support/v4/print/PrintHelperKitkat;->isPortrait(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 235
    sget-object v7, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    .line 239
    .local v7, "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :goto_18
    new-instance v0, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v0}, Landroid/print/PrintAttributes$Builder;-><init>()V

    invoke-virtual {v0, v7}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    .line 241
    iget v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    .line 239
    invoke-virtual {v0, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v6

    .line 245
    .local v6, "attr":Landroid/print/PrintAttributes;
    new-instance v0, Landroid/support/v4/print/PrintHelperKitkat$1;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelperKitkat$1;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;ILandroid/graphics/Bitmap;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V

    .line 244
    invoke-virtual {v8, p1, v0, v6}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 227
    return-void

    .line 237
    .end local v6    # "attr":Landroid/print/PrintAttributes;
    .end local v7    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    :cond_38
    sget-object v7, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    .restart local v7    # "mediaSize":Landroid/print/PrintAttributes$MediaSize;
    goto :goto_18
.end method

.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;)V
    .registers 13
    .param p1, "jobName"    # Ljava/lang/String;
    .param p2, "imageFile"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 415
    iget v4, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 417
    .local v4, "fittingMode":I
    new-instance v0, Landroid/support/v4/print/PrintHelperKitkat$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/print/PrintHelperKitkat$2;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/support/v4/print/PrintHelperKitkat$OnPrintFinishCallback;ILandroid/net/Uri;)V

    .line 556
    .local v0, "printDocumentAdapter":Landroid/print/PrintDocumentAdapter;
    iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "print"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/print/PrintManager;

    .line 557
    .local v8, "printManager":Landroid/print/PrintManager;
    new-instance v7, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v7}, Landroid/print/PrintAttributes$Builder;-><init>()V

    .line 558
    .local v7, "builder":Landroid/print/PrintAttributes$Builder;
    iget v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    invoke-virtual {v7, v1}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;

    .line 560
    iget v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_29

    iget v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    if-nez v1, :cond_36

    .line 561
    :cond_29
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v7, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    .line 565
    :cond_2e
    :goto_2e
    invoke-virtual {v7}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v6

    .line 567
    .local v6, "attr":Landroid/print/PrintAttributes;
    invoke-virtual {v8, p1, v0, v6}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    .line 414
    return-void

    .line 562
    .end local v6    # "attr":Landroid/print/PrintAttributes;
    :cond_36
    iget v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2e

    .line 563
    sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;

    invoke-virtual {v7, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;

    goto :goto_2e
.end method

.method public setColorMode(I)V
    .registers 2
    .param p1, "colorMode"    # I

    .prologue
    .line 148
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I

    .line 147
    return-void
.end method

.method public setOrientation(I)V
    .registers 2
    .param p1, "orientation"    # I

    .prologue
    .line 158
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I

    .line 157
    return-void
.end method

.method public setScaleMode(I)V
    .registers 2
    .param p1, "scaleMode"    # I

    .prologue
    .line 126
    iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I

    .line 125
    return-void
.end method

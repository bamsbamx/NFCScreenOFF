.class Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/BidiFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectionalityEstimator"
.end annotation


# static fields
.field private static final DIR_TYPE_CACHE:[B

.field private static final DIR_TYPE_CACHE_SIZE:I = 0x700


# instance fields
.field private charIndex:I

.field private final isHtml:Z

.field private lastChar:C

.field private final length:I

.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x700

    .line 508
    new-array v1, v3, [B

    sput-object v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    .line 509
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    if-ge v0, v3, :cond_14

    .line 510
    sget-object v1, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    aput-byte v2, v1, v0

    .line 509
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 489
    :cond_14
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "isHtml"    # Z

    .prologue
    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 553
    iput-object p1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    .line 554
    iput-boolean p2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    .line 555
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    .line 552
    return-void
.end method

.method private static getCachedDirectionality(C)B
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 727
    const/16 v0, 0x700

    if-ge p0, v0, :cond_9

    sget-object v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->DIR_TYPE_CACHE:[B

    aget-byte v0, v0, p0

    :goto_8
    return v0

    :cond_9
    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    goto :goto_8
.end method

.method private skipEntityBackward()B
    .registers 5

    .prologue
    const/16 v3, 0x3b

    .line 868
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 869
    .local v0, "initialCharIndex":I
    :cond_4
    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v1, :cond_23

    .line 870
    iget-object v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 871
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v2, 0x26

    if-ne v1, v2, :cond_1f

    .line 872
    const/16 v1, 0xc

    return v1

    .line 874
    :cond_1f
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v1, v3, :cond_4

    .line 878
    :cond_23
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 879
    iput-char v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 880
    const/16 v1, 0xd

    return v1
.end method

.method private skipEntityForward()B
    .registers 4

    .prologue
    .line 853
    :cond_0
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v0, v1, :cond_18

    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_0

    .line 854
    :cond_18
    const/16 v0, 0xc

    return v0
.end method

.method private skipTagBackward()B
    .registers 6

    .prologue
    const/16 v4, 0x3e

    .line 825
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 826
    .local v0, "initialCharIndex":I
    :cond_4
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_23

    .line 827
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 828
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_1f

    .line 830
    const/16 v2, 0xc

    return v2

    .line 832
    :cond_1f
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-ne v2, v4, :cond_2a

    .line 842
    :cond_23
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 843
    iput-char v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 844
    const/16 v2, 0xd

    return v2

    .line 835
    :cond_2a
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x22

    if-eq v2, v3, :cond_36

    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x27

    if-ne v2, v3, :cond_4

    .line 837
    :cond_36
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 838
    .local v1, "quote":C
    :goto_38
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_4

    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_4

    goto :goto_38
.end method

.method private skipTagForward()B
    .registers 6

    .prologue
    .line 796
    iget v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 797
    .local v0, "initialCharIndex":I
    :cond_2
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_44

    .line 798
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 799
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_1f

    .line 801
    const/16 v2, 0xc

    return v2

    .line 803
    :cond_1f
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x22

    if-eq v2, v3, :cond_2b

    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x27

    if-ne v2, v3, :cond_2

    .line 805
    :cond_2b
    iget-char v1, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 806
    .local v1, "quote":C
    :goto_2d
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    if-eq v2, v1, :cond_2

    goto :goto_2d

    .line 810
    .end local v1    # "quote":C
    :cond_44
    iput v0, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 811
    const/16 v2, 0x3c

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 812
    const/16 v2, 0xd

    return v2
.end method


# virtual methods
.method dirTypeBackward()B
    .registers 5

    .prologue
    .line 770
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 771
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 772
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 773
    .local v0, "codePoint":I
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 774
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    return v2

    .line 776
    .end local v0    # "codePoint":I
    :cond_2a
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 777
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v1

    .line 778
    .local v1, "dirType":B
    iget-boolean v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v2, :cond_44

    .line 780
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_45

    .line 781
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagBackward()B

    move-result v1

    .line 786
    :cond_44
    :goto_44
    return v1

    .line 782
    :cond_45
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_44

    .line 783
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityBackward()B

    move-result v1

    goto :goto_44
.end method

.method dirTypeForward()B
    .registers 5

    .prologue
    .line 740
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    .line 741
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 742
    iget-object v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->text:Ljava/lang/String;

    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v2, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 743
    .local v0, "codePoint":I
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 744
    invoke-static {v0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result v2

    return v2

    .line 746
    .end local v0    # "codePoint":I
    :cond_28
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 747
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    invoke-static {v2}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getCachedDirectionality(C)B

    move-result v1

    .line 748
    .local v1, "dirType":B
    iget-boolean v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->isHtml:Z

    if-eqz v2, :cond_42

    .line 750
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_43

    .line 751
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipTagForward()B

    move-result v1

    .line 756
    :cond_42
    :goto_42
    return v1

    .line 752
    :cond_43
    iget-char v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->lastChar:C

    const/16 v3, 0x26

    if-ne v2, v3, :cond_42

    .line 753
    invoke-direct {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->skipEntityForward()B

    move-result v1

    goto :goto_42
.end method

.method getEntryDir()I
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 570
    iput v5, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 571
    const/4 v0, 0x0

    .line 572
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    .line 573
    .local v1, "embeddingLevelDir":I
    const/4 v2, 0x0

    .line 574
    .local v2, "firstNonEmptyEmbeddingLevel":I
    :goto_8
    :pswitch_8
    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    iget v4, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    if-ge v3, v4, :cond_2f

    if-nez v2, :cond_2f

    .line 575
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeForward()B

    move-result v3

    packed-switch v3, :pswitch_data_52

    .line 609
    :pswitch_17
    move v2, v0

    .line 610
    goto :goto_8

    .line 578
    :pswitch_19
    add-int/lit8 v0, v0, 0x1

    .line 579
    const/4 v1, -0x1

    .line 580
    goto :goto_8

    .line 583
    :pswitch_1d
    add-int/lit8 v0, v0, 0x1

    .line 584
    const/4 v1, 0x1

    .line 585
    goto :goto_8

    .line 587
    :pswitch_21
    add-int/lit8 v0, v0, -0x1

    .line 591
    const/4 v1, 0x0

    .line 592
    goto :goto_8

    .line 596
    :pswitch_25
    if-nez v0, :cond_28

    .line 597
    return v6

    .line 599
    :cond_28
    move v2, v0

    .line 600
    goto :goto_8

    .line 603
    :pswitch_2a
    if-nez v0, :cond_2d

    .line 604
    return v7

    .line 606
    :cond_2d
    move v2, v0

    .line 607
    goto :goto_8

    .line 616
    :cond_2f
    if-nez v2, :cond_32

    .line 619
    return v5

    .line 623
    :cond_32
    if-eqz v1, :cond_35

    .line 625
    return v1

    .line 630
    :cond_35
    :goto_35
    iget v3, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v3, :cond_50

    .line 631
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v3

    packed-switch v3, :pswitch_data_7c

    goto :goto_35

    .line 634
    :pswitch_41
    if-ne v2, v0, :cond_44

    .line 635
    return v6

    .line 637
    :cond_44
    add-int/lit8 v0, v0, -0x1

    .line 638
    goto :goto_35

    .line 641
    :pswitch_47
    if-ne v2, v0, :cond_4a

    .line 642
    return v7

    .line 644
    :cond_4a
    add-int/lit8 v0, v0, -0x1

    .line 645
    goto :goto_35

    .line 647
    :pswitch_4d
    add-int/lit8 v0, v0, 0x1

    .line 648
    goto :goto_35

    .line 652
    :cond_50
    return v5

    .line 575
    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_25
        :pswitch_2a
        :pswitch_2a
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_8
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_19
        :pswitch_19
        :pswitch_1d
        :pswitch_1d
        :pswitch_21
    .end packed-switch

    .line 631
    :pswitch_data_7c
    .packed-switch 0xe
        :pswitch_41
        :pswitch_41
        :pswitch_47
        :pswitch_47
        :pswitch_4d
    .end packed-switch
.end method

.method getExitDir()I
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 668
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->length:I

    iput v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    .line 669
    const/4 v0, 0x0

    .line 670
    .local v0, "embeddingLevel":I
    const/4 v1, 0x0

    .line 671
    .local v1, "lastNonEmptyEmbeddingLevel":I
    :cond_9
    :goto_9
    :pswitch_9
    iget v2, p0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->charIndex:I

    if-lez v2, :cond_35

    .line 672
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->dirTypeBackward()B

    move-result v2

    packed-switch v2, :pswitch_data_36

    .line 710
    :pswitch_14
    if-nez v1, :cond_9

    .line 711
    move v1, v0

    goto :goto_9

    .line 674
    :pswitch_18
    if-nez v0, :cond_1b

    .line 675
    return v4

    .line 677
    :cond_1b
    if-nez v1, :cond_9

    .line 678
    move v1, v0

    goto :goto_9

    .line 683
    :pswitch_1f
    if-ne v1, v0, :cond_22

    .line 684
    return v4

    .line 686
    :cond_22
    add-int/lit8 v0, v0, -0x1

    .line 687
    goto :goto_9

    .line 690
    :pswitch_25
    if-nez v0, :cond_28

    .line 691
    return v5

    .line 693
    :cond_28
    if-nez v1, :cond_9

    .line 694
    move v1, v0

    goto :goto_9

    .line 699
    :pswitch_2c
    if-ne v1, v0, :cond_2f

    .line 700
    return v5

    .line 702
    :cond_2f
    add-int/lit8 v0, v0, -0x1

    .line 703
    goto :goto_9

    .line 705
    :pswitch_32
    add-int/lit8 v0, v0, 0x1

    .line 706
    goto :goto_9

    .line 716
    :cond_35
    return v3

    .line 672
    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_18
        :pswitch_25
        :pswitch_25
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_9
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_1f
        :pswitch_1f
        :pswitch_2c
        :pswitch_2c
        :pswitch_32
    .end packed-switch
.end method

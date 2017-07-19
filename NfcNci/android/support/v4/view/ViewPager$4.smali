.class Landroid/support/v4/view/ViewPager$4;
.super Ljava/lang/Object;
.source "ViewPager.java"

# interfaces
.implements Landroid/support/v4/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/view/ViewPager;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/support/v4/view/ViewPager;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPager;)V
    .registers 3
    .param p1, "this$0"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 426
    iput-object p1, p0, Landroid/support/v4/view/ViewPager$4;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager$4;->mTempRect:Landroid/graphics/Rect;

    .line 426
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "originalInsets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 434
    invoke-static {p1, p2}, Landroid/support/v4/view/ViewCompat;->onApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v0

    .line 435
    .local v0, "applied":Landroid/support/v4/view/WindowInsetsCompat;
    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 437
    return-object v0

    .line 447
    :cond_b
    iget-object v4, p0, Landroid/support/v4/view/ViewPager$4;->mTempRect:Landroid/graphics/Rect;

    .line 448
    .local v4, "res":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 449
    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 450
    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 451
    invoke-virtual {v0}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 453
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v5, p0, Landroid/support/v4/view/ViewPager$4;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .local v2, "count":I
    :goto_2c
    if-ge v3, v2, :cond_6b

    .line 455
    iget-object v5, p0, Landroid/support/v4/view/ViewPager$4;->this$0:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 454
    invoke-static {v5, v0}, Landroid/support/v4/view/ViewCompat;->dispatchApplyWindowInsets(Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v1

    .line 458
    .local v1, "childInsets":Landroid/support/v4/view/WindowInsetsCompat;
    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v5

    .line 459
    iget v6, v4, Landroid/graphics/Rect;->left:I

    .line 458
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 460
    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v5

    .line 461
    iget v6, v4, Landroid/graphics/Rect;->top:I

    .line 460
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 462
    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v5

    .line 463
    iget v6, v4, Landroid/graphics/Rect;->right:I

    .line 462
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 464
    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v5

    .line 465
    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    .line 464
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 453
    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 470
    .end local v1    # "childInsets":Landroid/support/v4/view/WindowInsetsCompat;
    :cond_6b
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iget v7, v4, Landroid/graphics/Rect;->right:I

    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    .line 469
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/support/v4/view/WindowInsetsCompat;->replaceSystemWindowInsets(IIII)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object v5

    return-object v5
.end method

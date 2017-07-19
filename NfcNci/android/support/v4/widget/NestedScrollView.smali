.class public Landroid/support/v4/widget/NestedScrollView;
.super Landroid/widget/FrameLayout;
.source "NestedScrollView.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent;
.implements Landroid/support/v4/view/NestedScrollingChild;
.implements Landroid/support/v4/view/ScrollingView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;,
        Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;,
        Landroid/support/v4/widget/NestedScrollView$SavedState;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_DELEGATE:Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final SCROLLVIEW_STYLEABLE:[I

.field private static final TAG:Ljava/lang/String; = "NestedScrollView"


# instance fields
.field private mActivePointerId:I

.field private final mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mFillViewport:Z

.field private mIsBeingDragged:Z

.field private mIsLaidOut:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNestedYOffset:I

.field private mOnScrollChangeListener:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

.field private final mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

.field private final mScrollConsumed:[I

.field private final mScrollOffset:[I

.field private mScroller:Landroid/support/v4/widget/ScrollerCompat;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollFactor:F


# direct methods
.method static synthetic -wrap0(Landroid/support/v4/widget/NestedScrollView;)I
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 167
    new-instance v0, Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

    invoke-direct {v0}, Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;-><init>()V

    sput-object v0, Landroid/support/v4/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

    .line 169
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 170
    const v1, 0x101017a

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 169
    sput-object v0, Landroid/support/v4/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 189
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 95
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    .line 109
    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 110
    iput-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 124
    iput-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 140
    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    .line 150
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 155
    new-array v1, v4, [I

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    .line 156
    new-array v1, v4, [I

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    .line 190
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->initScrollView()V

    .line 193
    sget-object v1, Landroid/support/v4/widget/NestedScrollView;->SCROLLVIEW_STYLEABLE:[I

    .line 192
    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 195
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->setFillViewport(Z)V

    .line 197
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    new-instance v1, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v1, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 200
    new-instance v1, Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-direct {v1, p0}, Landroid/support/v4/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    .line 203
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    .line 205
    sget-object v1, Landroid/support/v4/widget/NestedScrollView;->ACCESSIBILITY_DELEGATE:Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 188
    return-void
.end method

.method private canScroll()Z
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 419
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 420
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_1d

    .line 421
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 422
    .local v1, "childHeight":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    return v2

    .line 424
    .end local v1    # "childHeight":I
    :cond_1d
    return v2
.end method

.method private static clamp(III)I
    .registers 4
    .param p0, "n"    # I
    .param p1, "my"    # I
    .param p2, "child"    # I

    .prologue
    const/4 v0, 0x0

    .line 1794
    if-ge p1, p2, :cond_5

    if-gez p0, :cond_6

    .line 1810
    :cond_5
    return v0

    .line 1812
    :cond_6
    add-int v0, p1, p0

    if-le v0, p2, :cond_d

    .line 1818
    sub-int v0, p2, p1

    return v0

    .line 1820
    :cond_d
    return p0
.end method

.method private doScrollY(I)V
    .registers 4
    .param p1, "delta"    # I

    .prologue
    const/4 v1, 0x0

    .line 1285
    if-eqz p1, :cond_a

    .line 1286
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_b

    .line 1287
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    .line 1284
    :cond_a
    :goto_a
    return-void

    .line 1289
    :cond_b
    invoke-virtual {p0, v1, p1}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_a
.end method

.method private endDrag()V
    .registers 2

    .prologue
    .line 1718
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 1720
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 1721
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    .line 1723
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v0, :cond_17

    .line 1724
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 1725
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 1717
    :cond_17
    return-void
.end method

.method private ensureGlows()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1748
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1f

    .line 1749
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    if-nez v1, :cond_1e

    .line 1750
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1751
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1752
    new-instance v1, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1747
    .end local v0    # "context":Landroid/content/Context;
    :cond_1e
    :goto_1e
    return-void

    .line 1755
    :cond_1f
    iput-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 1756
    iput-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    goto :goto_1e
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .registers 15
    .param p1, "topFocus"    # Z
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1031
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Landroid/support/v4/widget/NestedScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1032
    .local v2, "focusables":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1041
    .local v1, "focusCandidate":Landroid/view/View;
    const/4 v3, 0x0

    .line 1043
    .local v3, "foundFullyContainedFocusable":Z
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1044
    .local v0, "count":I
    const/4 v4, 0x0

    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v3    # "foundFullyContainedFocusable":Z
    .local v4, "i":I
    :goto_c
    if-ge v4, v0, :cond_56

    .line 1045
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1046
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    .line 1047
    .local v9, "viewTop":I
    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1049
    .local v6, "viewBottom":I
    if-ge p2, v6, :cond_29

    if-ge v9, p3, :cond_29

    .line 1055
    if-ge p2, v9, :cond_2e

    .line 1056
    if-ge v6, p3, :cond_2c

    const/4 v8, 0x1

    .line 1058
    .local v8, "viewIsFullyContained":Z
    :goto_25
    if-nez v1, :cond_30

    .line 1060
    move-object v1, v5

    .line 1061
    .local v1, "focusCandidate":Landroid/view/View;
    move v3, v8

    .line 1044
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v8    # "viewIsFullyContained":Z
    :cond_29
    :goto_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1056
    :cond_2c
    const/4 v8, 0x0

    .restart local v8    # "viewIsFullyContained":Z
    goto :goto_25

    .line 1055
    .end local v8    # "viewIsFullyContained":Z
    :cond_2e
    const/4 v8, 0x0

    .restart local v8    # "viewIsFullyContained":Z
    goto :goto_25

    .line 1064
    :cond_30
    if-eqz p1, :cond_41

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-ge v9, v10, :cond_41

    const/4 v7, 0x1

    .line 1068
    .local v7, "viewIsCloserToBoundary":Z
    :goto_39
    if-eqz v3, :cond_4d

    .line 1069
    if-eqz v8, :cond_29

    if-eqz v7, :cond_29

    .line 1075
    move-object v1, v5

    .restart local v1    # "focusCandidate":Landroid/view/View;
    goto :goto_29

    .line 1065
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v7    # "viewIsCloserToBoundary":Z
    :cond_41
    if-nez p1, :cond_4b

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_4b

    const/4 v7, 0x1

    .restart local v7    # "viewIsCloserToBoundary":Z
    goto :goto_39

    .end local v7    # "viewIsCloserToBoundary":Z
    :cond_4b
    const/4 v7, 0x0

    .restart local v7    # "viewIsCloserToBoundary":Z
    goto :goto_39

    .line 1078
    :cond_4d
    if-eqz v8, :cond_52

    .line 1080
    move-object v1, v5

    .line 1081
    .restart local v1    # "focusCandidate":Landroid/view/View;
    const/4 v3, 0x1

    .restart local v3    # "foundFullyContainedFocusable":Z
    goto :goto_29

    .line 1082
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v3    # "foundFullyContainedFocusable":Z
    :cond_52
    if-eqz v7, :cond_29

    .line 1087
    move-object v1, v5

    .restart local v1    # "focusCandidate":Landroid/view/View;
    goto :goto_29

    .line 1094
    .end local v1    # "focusCandidate":Landroid/view/View;
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "viewBottom":I
    .end local v7    # "viewIsCloserToBoundary":Z
    .end local v8    # "viewIsFullyContained":Z
    .end local v9    # "viewTop":I
    :cond_56
    return-object v1
.end method

.method private flingWithNestedDispatch(I)V
    .registers 6
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 1706
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 1707
    .local v1, "scrollY":I
    if-gtz v1, :cond_9

    if-lez p1, :cond_25

    .line 1708
    :cond_9
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v2

    if-lt v1, v2, :cond_11

    if-gez p1, :cond_23

    :cond_11
    const/4 v0, 0x1

    .line 1709
    .local v0, "canFling":Z
    :goto_12
    int-to-float v2, p1

    invoke-virtual {p0, v3, v2}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v2

    if-nez v2, :cond_22

    .line 1710
    int-to-float v2, p1

    invoke-virtual {p0, v3, v2, v0}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedFling(FFZ)Z

    .line 1711
    if-eqz v0, :cond_22

    .line 1712
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->fling(I)V

    .line 1705
    :cond_22
    return-void

    .line 1708
    .end local v0    # "canFling":Z
    :cond_23
    const/4 v0, 0x0

    .restart local v0    # "canFling":Z
    goto :goto_12

    .line 1707
    .end local v0    # "canFling":Z
    :cond_25
    const/4 v0, 0x0

    .restart local v0    # "canFling":Z
    goto :goto_12
.end method

.method private getScrollRange()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1005
    const/4 v1, 0x0

    .line 1006
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_23

    .line 1007
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1009
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 1008
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1011
    .end local v0    # "child":Landroid/view/View;
    :cond_23
    return v1
.end method

.method private getVerticalScrollFactorCompat()F
    .registers 6

    .prologue
    .line 927
    iget v2, p0, Landroid/support/v4/widget/NestedScrollView;->mVerticalScrollFactor:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_35

    .line 928
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 929
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 930
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 931
    const v3, 0x101004d

    const/4 v4, 0x1

    .line 930
    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v2

    if-nez v2, :cond_27

    .line 932
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 933
    const-string/jumbo v3, "Expected theme to define listPreferredItemHeight."

    .line 932
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 936
    :cond_27
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 935
    invoke-virtual {v1, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v2

    iput v2, p0, Landroid/support/v4/widget/NestedScrollView;->mVerticalScrollFactor:F

    .line 938
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    :cond_35
    iget v2, p0, Landroid/support/v4/widget/NestedScrollView;->mVerticalScrollFactor:F

    return v2
.end method

.method private inChild(II)Z
    .registers 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 566
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2b

    .line 567
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 568
    .local v1, "scrollY":I
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 569
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_2a

    .line 570
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_2a

    .line 571
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_2a

    .line 572
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_2a

    const/4 v2, 0x1

    .line 569
    :cond_2a
    return v2

    .line 574
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "scrollY":I
    :cond_2b
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .registers 2

    .prologue
    .line 578
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_b

    .line 579
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 577
    :goto_a
    return-void

    .line 581
    :cond_b
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_a
.end method

.method private initScrollView()V
    .registers 4

    .prologue
    .line 356
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;Landroid/view/animation/Interpolator;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 357
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->setFocusable(Z)V

    .line 358
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 359
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->setWillNotDraw(Z)V

    .line 360
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 361
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    .line 362
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->mMinimumVelocity:I

    .line 363
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->mMaximumVelocity:I

    .line 355
    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .registers 2

    .prologue
    .line 586
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_a

    .line 587
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 585
    :cond_a
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .registers 4
    .param p1, "descendant"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 1264
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-eqz v1, :cond_c

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .registers 4
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .prologue
    .line 1678
    if-ne p0, p1, :cond_4

    .line 1679
    const/4 v1, 0x1

    return v1

    .line 1682
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1683
    .local v0, "theParent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_13

    check-cast v0, Landroid/view/View;

    .end local v0    # "theParent":Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/support/v4/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    :goto_12
    return v1

    .restart local v0    # "theParent":Landroid/view/ViewParent;
    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .registers 7
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "delta"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x0

    .line 1272
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1273
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1275
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    if-lt v1, v2, :cond_23

    .line 1276
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v2, p3

    if-gt v1, v2, :cond_23

    const/4 v0, 0x1

    .line 1275
    :cond_23
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 881
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 883
    .local v2, "pointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 884
    .local v1, "pointerId":I
    iget v3, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_2c

    .line 888
    if-nez v2, :cond_16

    const/4 v0, 0x1

    .line 889
    .local v0, "newPointerIndex":I
    :cond_16
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 890
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 891
    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_2c

    .line 892
    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 880
    .end local v0    # "newPointerIndex":I
    :cond_2c
    return-void
.end method

.method private recycleVelocityTracker()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 592
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_c

    .line 593
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 594
    iput-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 591
    :cond_c
    return-void
.end method

.method private scrollAndFocus(III)Z
    .registers 12
    .param p1, "direction"    # I
    .param p2, "top"    # I
    .param p3, "bottom"    # I

    .prologue
    .line 1177
    const/4 v3, 0x1

    .line 1179
    .local v3, "handled":Z
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v4

    .line 1180
    .local v4, "height":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 1181
    .local v1, "containerTop":I
    add-int v0, v1, v4

    .line 1182
    .local v0, "containerBottom":I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_26

    const/4 v6, 0x1

    .line 1184
    .local v6, "up":Z
    :goto_10
    invoke-direct {p0, v6, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    .line 1185
    .local v5, "newFocused":Landroid/view/View;
    if-nez v5, :cond_17

    .line 1186
    move-object v5, p0

    .line 1189
    :cond_17
    if-lt p2, v1, :cond_28

    if-gt p3, v0, :cond_28

    .line 1190
    const/4 v3, 0x0

    .line 1196
    :goto_1c
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_25

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1198
    :cond_25
    return v3

    .line 1182
    .end local v5    # "newFocused":Landroid/view/View;
    .end local v6    # "up":Z
    :cond_26
    const/4 v6, 0x0

    goto :goto_10

    .line 1192
    .restart local v5    # "newFocused":Landroid/view/View;
    .restart local v6    # "up":Z
    :cond_28
    if-eqz v6, :cond_30

    sub-int v2, p2, v1

    .line 1193
    .local v2, "delta":I
    :goto_2c
    invoke-direct {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->doScrollY(I)V

    goto :goto_1c

    .line 1192
    .end local v2    # "delta":I
    :cond_30
    sub-int v2, p3, v0

    goto :goto_2c
.end method

.method private scrollToChild(Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 1453
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1456
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1458
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1460
    .local v0, "scrollDelta":I
    if-eqz v0, :cond_16

    .line 1461
    invoke-virtual {p0, v2, v0}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    .line 1452
    :cond_16
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .registers 6
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1474
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    .line 1475
    .local v0, "delta":I
    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 1476
    .local v1, "scroll":Z
    :goto_8
    if-eqz v1, :cond_f

    .line 1477
    if-eqz p2, :cond_12

    .line 1478
    invoke-virtual {p0, v2, v0}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    .line 1483
    :cond_f
    :goto_f
    return v1

    .end local v1    # "scroll":Z
    :cond_10
    move v1, v2

    .line 1475
    goto :goto_8

    .line 1480
    .restart local v1    # "scroll":Z
    :cond_12
    invoke-virtual {p0, v2, v0}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    goto :goto_f
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 368
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 369
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 372
    :cond_f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 367
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 377
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 378
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 381
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 376
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 395
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 396
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 399
    :cond_f
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 394
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 386
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_f

    .line 387
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 13
    .param p1, "direction"    # I

    .prologue
    const/16 v10, 0x82

    const/4 v9, 0x0

    .line 1210
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1211
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_a

    const/4 v0, 0x0

    .line 1213
    .end local v0    # "currentFocused":Landroid/view/View;
    :cond_a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v7

    invoke-virtual {v7, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1215
    .local v4, "nextFocused":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getMaxScrollAmount()I

    move-result v3

    .line 1217
    .local v3, "maxJump":I
    if-eqz v4, :cond_57

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v7

    invoke-direct {p0, v4, v3, v7}, Landroid/support/v4/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 1218
    iget-object v7, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1219
    iget-object v7, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1220
    iget-object v7, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    .line 1221
    .local v6, "scrollDelta":I
    invoke-direct {p0, v6}, Landroid/support/v4/widget/NestedScrollView;->doScrollY(I)V

    .line 1222
    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    .line 1244
    .end local v6    # "scrollDelta":I
    :goto_38
    if-eqz v0, :cond_55

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_55

    .line 1245
    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    .line 1244
    if-eqz v7, :cond_55

    .line 1251
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getDescendantFocusability()I

    move-result v2

    .line 1252
    .local v2, "descendantFocusability":I
    const/high16 v7, 0x20000

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 1253
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestFocus()Z

    .line 1254
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->setDescendantFocusability(I)V

    .line 1256
    .end local v2    # "descendantFocusability":I
    :cond_55
    const/4 v7, 0x1

    return v7

    .line 1225
    :cond_57
    move v6, v3

    .line 1227
    .restart local v6    # "scrollDelta":I
    const/16 v7, 0x21

    if-ne p1, v7, :cond_69

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v7

    if-ge v7, v3, :cond_69

    .line 1228
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v6

    .line 1238
    :cond_66
    :goto_66
    if-nez v6, :cond_8f

    .line 1239
    return v9

    .line 1229
    :cond_69
    if-ne p1, v10, :cond_66

    .line 1230
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_66

    .line 1231
    invoke-virtual {p0, v9}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 1232
    .local v1, "daBottom":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v7

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v8

    sub-int v5, v7, v8

    .line 1233
    .local v5, "screenBottom":I
    sub-int v7, v1, v5

    if-ge v7, v3, :cond_66

    .line 1234
    sub-int v6, v1, v5

    goto :goto_66

    .line 1241
    .end local v1    # "daBottom":I
    .end local v5    # "screenBottom":I
    :cond_8f
    if-ne p1, v10, :cond_95

    .end local v6    # "scrollDelta":I
    :goto_91
    invoke-direct {p0, v6}, Landroid/support/v4/widget/NestedScrollView;->doScrollY(I)V

    goto :goto_38

    .restart local v6    # "scrollDelta":I
    :cond_95
    neg-int v6, v6

    goto :goto_91
.end method

.method public computeHorizontalScrollExtent()I
    .registers 2

    .prologue
    .line 1386
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .registers 2

    .prologue
    .line 1380
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .registers 2

    .prologue
    .line 1374
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .registers 15

    .prologue
    const/4 v5, 0x0

    .line 1420
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1421
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    .line 1422
    .local v3, "oldX":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    .line 1423
    .local v4, "oldY":I
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v12

    .line 1424
    .local v12, "x":I
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v13

    .line 1426
    .local v13, "y":I
    if-ne v3, v12, :cond_21

    if-eq v4, v13, :cond_51

    .line 1427
    :cond_21
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    .line 1428
    .local v6, "range":I
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v11

    .line 1429
    .local v11, "overscrollMode":I
    if-eqz v11, :cond_52

    .line 1430
    const/4 v0, 0x1

    if-ne v11, v0, :cond_54

    if-lez v6, :cond_54

    const/4 v10, 0x1

    .line 1432
    .local v10, "canOverscroll":Z
    :goto_31
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    move-object v0, p0

    move v7, v5

    move v8, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/support/v4/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    .line 1435
    if-eqz v10, :cond_51

    .line 1436
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->ensureGlows()V

    .line 1437
    if-gtz v13, :cond_56

    if-lez v4, :cond_56

    .line 1438
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    .line 1419
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v6    # "range":I
    .end local v10    # "canOverscroll":Z
    .end local v11    # "overscrollMode":I
    .end local v12    # "x":I
    .end local v13    # "y":I
    :cond_51
    :goto_51
    return-void

    .line 1429
    .restart local v3    # "oldX":I
    .restart local v4    # "oldY":I
    .restart local v6    # "range":I
    .restart local v11    # "overscrollMode":I
    .restart local v12    # "x":I
    .restart local v13    # "y":I
    :cond_52
    const/4 v10, 0x1

    .restart local v10    # "canOverscroll":Z
    goto :goto_31

    .line 1430
    .end local v10    # "canOverscroll":Z
    :cond_54
    const/4 v10, 0x0

    .restart local v10    # "canOverscroll":Z
    goto :goto_31

    .line 1439
    :cond_56
    if-lt v13, v6, :cond_51

    if-ge v4, v6, :cond_51

    .line 1440
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onAbsorb(I)Z

    goto :goto_51
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .registers 12
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    .line 1495
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v7

    if-nez v7, :cond_8

    return v9

    .line 1497
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    .line 1498
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v5

    .line 1499
    .local v5, "screenTop":I
    add-int v4, v5, v3

    .line 1501
    .local v4, "screenBottom":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    .line 1504
    .local v2, "fadingEdge":I
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-lez v7, :cond_1b

    .line 1505
    add-int/2addr v5, v2

    .line 1509
    :cond_1b
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v9}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_28

    .line 1510
    sub-int/2addr v4, v2

    .line 1513
    :cond_28
    const/4 v6, 0x0

    .line 1515
    .local v6, "scrollYDelta":I
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v4, :cond_51

    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-le v7, v5, :cond_51

    .line 1520
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_4b

    .line 1522
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v5

    add-int/lit8 v6, v7, 0x0

    .line 1529
    :goto_3c
    invoke-virtual {p0, v9}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 1530
    .local v0, "bottom":I
    sub-int v1, v0, v4

    .line 1531
    .local v1, "distanceToBottom":I
    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1549
    .end local v0    # "bottom":I
    .end local v1    # "distanceToBottom":I
    :cond_4a
    :goto_4a
    return v6

    .line 1525
    :cond_4b
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v4

    add-int/lit8 v6, v7, 0x0

    goto :goto_3c

    .line 1533
    :cond_51
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_4a

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_4a

    .line 1538
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6f

    .line 1540
    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    rsub-int/lit8 v6, v7, 0x0

    .line 1547
    :goto_65
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_4a

    .line 1543
    :cond_6f
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    rsub-int/lit8 v6, v7, 0x0

    goto :goto_65
.end method

.method public computeVerticalScrollExtent()I
    .registers 2

    .prologue
    .line 1368
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .registers 3

    .prologue
    .line 1362
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public computeVerticalScrollRange()I
    .registers 9

    .prologue
    const/4 v7, 0x0

    .line 1341
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v1

    .line 1342
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v6

    sub-int v0, v5, v6

    .line 1343
    .local v0, "contentHeight":I
    if-nez v1, :cond_17

    .line 1344
    return v0

    .line 1347
    :cond_17
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    .line 1348
    .local v3, "scrollRange":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    .line 1349
    .local v4, "scrollY":I
    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1350
    .local v2, "overscrollBottom":I
    if-gez v4, :cond_2d

    .line 1351
    sub-int/2addr v3, v4

    .line 1356
    :cond_2c
    :goto_2c
    return v3

    .line 1352
    :cond_2d
    if-le v4, v2, :cond_2c

    .line 1353
    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_2c
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 512
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .prologue
    .line 249
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    .line 254
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .prologue
    .line 244
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .prologue
    .line 238
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1762
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 1763
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v4, :cond_98

    .line 1764
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    .line 1765
    .local v2, "scrollY":I
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_4b

    .line 1766
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1767
    .local v1, "restoreCount":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 1769
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1770
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1771
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1772
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1774
    :cond_48
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1776
    .end local v1    # "restoreCount":I
    .end local v3    # "width":I
    :cond_4b
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v4

    if-nez v4, :cond_98

    .line 1777
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 1778
    .restart local v1    # "restoreCount":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v5

    sub-int v3, v4, v5

    .line 1779
    .restart local v3    # "width":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    .line 1781
    .local v0, "height":I
    neg-int v4, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 1782
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    .line 1781
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1783
    const/high16 v4, 0x43340000    # 180.0f

    int-to-float v5, v3

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 1784
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, v3, v0}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 1785
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v4, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_95

    .line 1786
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1788
    :cond_95
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1761
    .end local v0    # "height":I
    .end local v1    # "restoreCount":I
    .end local v2    # "scrollY":I
    .end local v3    # "width":I
    :cond_98
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x21

    const/4 v3, 0x0

    const/16 v5, 0x82

    .line 524
    iget-object v6, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    .line 526
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_36

    .line 527
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_35

    .line 528
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 529
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_24

    const/4 v0, 0x0

    .line 530
    .end local v0    # "currentFocused":Landroid/view/View;
    :cond_24
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 532
    .local v2, "nextFocused":Landroid/view/View;
    if-eqz v2, :cond_34

    .line 533
    if-eq v2, p0, :cond_34

    .line 534
    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v3

    .line 532
    :cond_34
    return v3

    .line 536
    .end local v2    # "nextFocused":Landroid/view/View;
    :cond_35
    return v3

    .line 539
    :cond_36
    const/4 v1, 0x0

    .line 540
    .local v1, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_44

    .line 541
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_72

    .line 562
    .end local v1    # "handled":Z
    :cond_44
    :goto_44
    return v1

    .line 543
    .restart local v1    # "handled":Z
    :sswitch_45
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_50

    .line 544
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_44

    .line 546
    .local v1, "handled":Z
    :cond_50
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->fullScroll(I)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_44

    .line 550
    .local v1, "handled":Z
    :sswitch_55
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_60

    .line 551
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/NestedScrollView;->arrowScroll(I)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_44

    .line 553
    .local v1, "handled":Z
    :cond_60
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/NestedScrollView;->fullScroll(I)Z

    move-result v1

    .local v1, "handled":Z
    goto :goto_44

    .line 557
    .local v1, "handled":Z
    :sswitch_65
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_70

    move v3, v4

    :goto_6c
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->pageScroll(I)Z

    goto :goto_44

    :cond_70
    move v3, v5

    goto :goto_6c

    .line 541
    :sswitch_data_72
    .sparse-switch
        0x13 -> :sswitch_45
        0x14 -> :sswitch_55
        0x3e -> :sswitch_65
    .end sparse-switch
.end method

.method public fling(I)V
    .registers 15
    .param p1, "velocityY"    # I

    .prologue
    const/4 v3, 0x0

    .line 1694
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3b

    .line 1695
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v1

    sub-int v12, v0, v1

    .line 1696
    .local v12, "height":I
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 1698
    .local v11, "bottom":I
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    .line 1699
    sub-int v4, v11, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v12, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    .line 1698
    invoke-virtual/range {v0 .. v10}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIIIII)V

    .line 1701
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1693
    .end local v11    # "bottom":I
    .end local v12    # "height":I
    :cond_3b
    return-void
.end method

.method public fullScroll(I)Z
    .registers 9
    .param p1, "direction"    # I

    .prologue
    const/4 v5, 0x0

    .line 1146
    const/16 v4, 0x82

    if-ne p1, v4, :cond_43

    const/4 v1, 0x1

    .line 1147
    .local v1, "down":Z
    :goto_6
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    .line 1149
    .local v2, "height":I
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1150
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 1152
    if-eqz v1, :cond_36

    .line 1153
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    .line 1154
    .local v0, "count":I
    if-lez v0, :cond_36

    .line 1155
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1156
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1157
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1161
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_36
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/support/v4/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .line 1146
    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_43
    const/4 v1, 0x0

    .restart local v1    # "down":Z
    goto :goto_6
.end method

.method protected getBottomFadingEdgeStrength()F
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 333
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_9

    .line 334
    const/4 v3, 0x0

    return v3

    .line 337
    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    .line 338
    .local v1, "length":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    .line 339
    .local v0, "bottomEdge":I
    invoke-virtual {p0, v5}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    .line 340
    .local v2, "span":I
    if-ge v2, v1, :cond_2c

    .line 341
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    return v3

    .line 344
    :cond_2c
    const/high16 v3, 0x3f800000    # 1.0f

    return v3
.end method

.method public getMaxScrollAmount()I
    .registers 3

    .prologue
    .line 352
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getNestedScrollAxes()I
    .registers 2

    .prologue
    .line 307
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .registers 5

    .prologue
    .line 318
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_8

    .line 319
    const/4 v2, 0x0

    return v2

    .line 322
    :cond_8
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    .line 323
    .local v0, "length":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    .line 324
    .local v1, "scrollY":I
    if-ge v1, v0, :cond_16

    .line 325
    int-to-float v2, v1

    int-to-float v3, v0

    div-float/2addr v2, v3

    return v2

    .line 328
    :cond_16
    const/high16 v2, 0x3f800000    # 1.0f

    return v2
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public isFillViewport()Z
    .registers 2

    .prologue
    .line 435
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mFillViewport:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method public isSmoothScrollingEnabled()Z
    .registers 2

    .prologue
    .line 458
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 1391
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1396
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    .line 1397
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v4

    .line 1396
    add-int/2addr v3, v4

    .line 1397
    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1396
    invoke-static {p2, v3, v4}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1399
    .local v1, "childWidthMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1401
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1390
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 1407
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1410
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    .line 1411
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1409
    invoke-static {p2, v3, v4}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 1413
    .local v1, "childWidthMeasureSpec":I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    .line 1412
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1415
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 1406
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 1650
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 1652
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    .line 1649
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 898
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getSource(Landroid/view/MotionEvent;)I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_10

    .line 899
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_42

    .line 923
    :cond_10
    return v6

    .line 901
    :pswitch_11
    iget-boolean v5, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_10

    .line 903
    const/16 v5, 0x9

    .line 902
    invoke-static {p1, v5}, Landroid/support/v4/view/MotionEventCompat;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 904
    .local v4, "vscroll":F
    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_10

    .line 905
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getVerticalScrollFactorCompat()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 906
    .local v0, "delta":I
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v3

    .line 907
    .local v3, "range":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    .line 908
    .local v2, "oldScrollY":I
    sub-int v1, v2, v0

    .line 909
    .local v1, "newScrollY":I
    if-gez v1, :cond_3e

    .line 910
    const/4 v1, 0x0

    .line 914
    :cond_33
    :goto_33
    if-eq v1, v2, :cond_10

    .line 915
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v5

    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 916
    const/4 v5, 0x1

    return v5

    .line 911
    :cond_3e
    if-le v1, v3, :cond_33

    .line 912
    move v1, v3

    goto :goto_33

    .line 899
    :pswitch_data_42
    .packed-switch 0x8
        :pswitch_11
    .end packed-switch
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 620
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 621
    .local v7, "action":I
    if-ne v7, v4, :cond_f

    iget-boolean v1, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_f

    .line 622
    return v0

    .line 625
    :cond_f
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_da

    .line 715
    :cond_14
    :goto_14
    :pswitch_14
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    return v0

    .line 636
    :pswitch_17
    iget v8, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 637
    .local v8, "activePointerId":I
    if-eq v8, v2, :cond_14

    .line 642
    invoke-static {p1, v8}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v10

    .line 643
    .local v10, "pointerIndex":I
    if-ne v10, v2, :cond_43

    .line 644
    const-string/jumbo v0, "NestedScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 645
    const-string/jumbo v2, " in onInterceptTouchEvent"

    .line 644
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 649
    :cond_43
    invoke-static {p1, v10}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v1

    float-to-int v11, v1

    .line 650
    .local v11, "y":I
    iget v1, p0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 651
    .local v12, "yDiff":I
    iget v1, p0, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_14

    .line 652
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getNestedScrollAxes()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_14

    .line 653
    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 654
    iput v11, p0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 655
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 656
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 657
    iput v3, p0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    .line 658
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    .line 659
    .local v9, "parent":Landroid/view/ViewParent;
    if-eqz v9, :cond_14

    .line 660
    invoke-interface {v9, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_14

    .line 667
    .end local v8    # "activePointerId":I
    .end local v9    # "parent":Landroid/view/ViewParent;
    .end local v10    # "pointerIndex":I
    .end local v11    # "y":I
    .end local v12    # "yDiff":I
    :pswitch_74
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v11, v1

    .line 668
    .restart local v11    # "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1, v11}, Landroid/support/v4/widget/NestedScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_8a

    .line 669
    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 670
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    goto :goto_14

    .line 678
    :cond_8a
    iput v11, p0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 679
    invoke-static {p1, v3}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 681
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->initOrResetVelocityTracker()V

    .line 682
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 689
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    .line 690
    iget-object v1, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_ae

    :goto_a7
    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 691
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    goto/16 :goto_14

    :cond_ae
    move v3, v0

    .line 690
    goto :goto_a7

    .line 698
    .end local v11    # "y":I
    :pswitch_b0
    iput-boolean v3, p0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 699
    iput v2, p0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 700
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 701
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/support/v4/widget/ScrollerCompat;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 702
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 704
    :cond_d0
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    goto/16 :goto_14

    .line 707
    :pswitch_d5
    invoke-direct {p0, p1}, Landroid/support/v4/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_14

    .line 625
    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_74
        :pswitch_b0
        :pswitch_17
        :pswitch_b0
        :pswitch_14
        :pswitch_14
        :pswitch_d5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 12
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1617
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1618
    iput-boolean v4, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 1620
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v2, :cond_18

    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v2, p0}, Landroid/support/v4/widget/NestedScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1621
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1623
    :cond_18
    iput-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    .line 1625
    iget-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    if-nez v2, :cond_5c

    .line 1626
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

    if-eqz v2, :cond_2f

    .line 1627
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v2

    iget-object v3, p0, Landroid/support/v4/widget/NestedScrollView;->mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

    iget v3, v3, Landroid/support/v4/widget/NestedScrollView$SavedState;->scrollPosition:I

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 1628
    iput-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

    .line 1631
    :cond_2f
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_6b

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1633
    .local v0, "childHeight":I
    :goto_3d
    sub-int v2, p5, p3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v2, v0, v2

    .line 1632
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1636
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    if-le v2, v1, :cond_6d

    .line 1637
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 1644
    .end local v0    # "childHeight":I
    .end local v1    # "scrollRange":I
    :cond_5c
    :goto_5c
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    .line 1645
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLaidOut:Z

    .line 1616
    return-void

    .line 1631
    :cond_6b
    const/4 v0, 0x0

    .restart local v0    # "childHeight":I
    goto :goto_3d

    .line 1638
    .restart local v1    # "scrollRange":I
    :cond_6d
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    if-gez v2, :cond_5c

    .line 1639
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v2

    invoke-virtual {p0, v2, v4}, Landroid/support/v4/widget/NestedScrollView;->scrollTo(II)V

    goto :goto_5c
.end method

.method protected onMeasure(II)V
    .registers 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x0

    .line 480
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 482
    iget-boolean v6, p0, Landroid/support/v4/widget/NestedScrollView;->mFillViewport:Z

    if-nez v6, :cond_9

    .line 483
    return-void

    .line 486
    :cond_9
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 487
    .local v4, "heightMode":I
    if-nez v4, :cond_10

    .line 488
    return-void

    .line 491
    :cond_10
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_4c

    .line 492
    invoke-virtual {p0, v7}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 493
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getMeasuredHeight()I

    move-result v3

    .line 494
    .local v3, "height":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_4c

    .line 495
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 498
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 497
    invoke-static {p1, v6, v7}, Landroid/support/v4/widget/NestedScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 499
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v3, v6

    .line 500
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v3, v6

    .line 502
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 504
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 479
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v3    # "height":I
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_4c
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 293
    if-nez p4, :cond_8

    .line 294
    float-to-int v0, p3

    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->flingWithNestedDispatch(I)V

    .line 295
    const/4 v0, 0x1

    return v0

    .line 297
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 5
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 302
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 6
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p3, p4, v0}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[I)Z

    .line 287
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 13
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    const/4 v1, 0x0

    .line 279
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v6

    .line 280
    .local v6, "oldScrollY":I
    invoke-virtual {p0, v1, p5}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    .line 281
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v0

    sub-int v2, v0, v6

    .line 282
    .local v2, "myConsumed":I
    sub-int v4, p5, v2

    .line 283
    .local v4, "myUnconsumed":I
    const/4 v5, 0x0

    move-object v0, p0

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[I)Z

    .line 278
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 266
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    .line 267
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    .line 265
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .registers 5
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    .line 943
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 942
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 7
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1577
    const/4 v1, 0x2

    if-ne p1, v1, :cond_14

    .line 1578
    const/16 p1, 0x82

    .line 1583
    :cond_7
    :goto_7
    if-nez p2, :cond_1a

    .line 1584
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, v2, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1588
    .local v0, "nextFocus":Landroid/view/View;
    :goto_11
    if-nez v0, :cond_23

    .line 1589
    return v3

    .line 1579
    .end local v0    # "nextFocus":Landroid/view/View;
    :cond_14
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7

    .line 1580
    const/16 p1, 0x21

    goto :goto_7

    .line 1585
    :cond_1a
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_11

    .line 1592
    .restart local v0    # "nextFocus":Landroid/view/View;
    :cond_23
    invoke-direct {p0, v0}, Landroid/support/v4/widget/NestedScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 1593
    return v3

    .line 1596
    :cond_2a
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1825
    instance-of v1, p1, Landroid/support/v4/widget/NestedScrollView$SavedState;

    if-nez v1, :cond_8

    .line 1826
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1827
    return-void

    :cond_8
    move-object v0, p1

    .line 1830
    check-cast v0, Landroid/support/v4/widget/NestedScrollView$SavedState;

    .line 1831
    .local v0, "ss":Landroid/support/v4/widget/NestedScrollView$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1832
    iput-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mSavedState:Landroid/support/v4/widget/NestedScrollView$SavedState;

    .line 1833
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestLayout()V

    .line 1824
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .prologue
    .line 1838
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1839
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/support/v4/widget/NestedScrollView$SavedState;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/NestedScrollView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1840
    .local v0, "ss":Landroid/support/v4/widget/NestedScrollView$SavedState;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView$SavedState;->scrollPosition:I

    .line 1841
    return-object v0
.end method

.method protected onScrollChanged(IIII)V
    .registers 11
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 471
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 473
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mOnScrollChangeListener:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    if-eqz v0, :cond_11

    .line 474
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mOnScrollChangeListener:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;->onScrollChange(Landroid/support/v4/widget/NestedScrollView;IIII)V

    .line 470
    :cond_11
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 8
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 1657
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 1659
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1660
    .local v0, "currentFocused":Landroid/view/View;
    if-eqz v0, :cond_b

    if-ne p0, v0, :cond_c

    .line 1661
    :cond_b
    return-void

    .line 1666
    :cond_c
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Landroid/support/v4/widget/NestedScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1667
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 1668
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/widget/NestedScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1669
    iget-object v2, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    .line 1670
    .local v1, "scrollDelta":I
    invoke-direct {p0, v1}, Landroid/support/v4/widget/NestedScrollView;->doScrollY(I)V

    .line 1656
    .end local v1    # "scrollDelta":I
    :cond_26
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    const/4 v0, 0x0

    .line 261
    and-int/lit8 v1, p3, 0x2

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 272
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;)V

    .line 273
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->stopNestedScroll()V

    .line 271
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 35
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 720
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->initVelocityTrackerIfNotExists()V

    .line 722
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v31

    .line 724
    .local v31, "vtev":Landroid/view/MotionEvent;
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v21

    .line 726
    .local v21, "actionMasked":I
    if-nez v21, :cond_12

    .line 727
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    .line 729
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 731
    packed-switch v21, :pswitch_data_328

    .line 873
    :cond_20
    :goto_20
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_2f

    .line 874
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 876
    :cond_2f
    invoke-virtual/range {v31 .. v31}, Landroid/view/MotionEvent;->recycle()V

    .line 877
    const/4 v2, 0x1

    return v2

    .line 733
    :pswitch_34
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_3c

    .line 734
    const/4 v2, 0x0

    return v2

    .line 736
    :cond_3c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_85

    const/4 v2, 0x0

    :goto_47
    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_59

    .line 737
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 738
    .local v28, "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_59

    .line 739
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 747
    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_59
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_6a

    .line 748
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 752
    :cond_6a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 753
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 754
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->startNestedScroll(I)Z

    goto :goto_20

    .line 736
    :cond_85
    const/4 v2, 0x1

    goto :goto_47

    .line 759
    :pswitch_87
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 758
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v22

    .line 760
    .local v22, "activePointerIndex":I
    const/4 v2, -0x1

    move/from16 v0, v22

    if-ne v0, v2, :cond_bd

    .line 761
    const-string/jumbo v2, "NestedScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Invalid pointerId="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " in onTouchEvent"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 765
    :cond_bd
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v32, v0

    .line 766
    .local v32, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    sub-int v4, v2, v32

    .line 767
    .local v4, "deltaY":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4, v2, v3}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedPreScroll(II[I[I)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 768
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollConsumed:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int/2addr v4, v2

    .line 769
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 770
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    .line 772
    :cond_105
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_12d

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    if-le v2, v3, :cond_12d

    .line 773
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v28

    .line 774
    .restart local v28    # "parent":Landroid/view/ViewParent;
    if-eqz v28, :cond_121

    .line 775
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 777
    :cond_121
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    .line 778
    if-lez v4, :cond_1b5

    .line 779
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    sub-int/2addr v4, v2

    .line 784
    .end local v28    # "parent":Landroid/view/ViewParent;
    :cond_12d
    :goto_12d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_20

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    sub-int v2, v32, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 788
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v26

    .line 789
    .local v26, "oldY":I
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v8

    .line 790
    .local v8, "range":I
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v27

    .line 791
    .local v27, "overscrollMode":I
    if-eqz v27, :cond_1bc

    .line 792
    const/4 v2, 0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_1c2

    .line 793
    if-lez v8, :cond_1bf

    const/16 v23, 0x1

    .line 797
    .local v23, "canOverscroll":Z
    :goto_157
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v6

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 798
    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    .line 797
    invoke-virtual/range {v2 .. v11}, Landroid/support/v4/widget/NestedScrollView;->overScrollByCompat(IIIIIIIIZ)Z

    move-result v2

    if-eqz v2, :cond_16f

    .line 798
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->hasNestedScrollingParent()Z

    move-result v2

    if-eqz v2, :cond_1c5

    .line 803
    :cond_16f
    :goto_16f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    sub-int v11, v2, v26

    .line 804
    .local v11, "scrolledDeltaY":I
    sub-int v13, v4, v11

    .line 805
    .local v13, "unconsumedY":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Landroid/support/v4/widget/NestedScrollView;->dispatchNestedScroll(IIII[I)Z

    move-result v2

    if-eqz v2, :cond_1cd

    .line 806
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 807
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    int-to-float v3, v3

    move-object/from16 v0, v31

    invoke-virtual {v0, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 808
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/NestedScrollView;->mScrollOffset:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mNestedYOffset:I

    goto/16 :goto_20

    .line 781
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v23    # "canOverscroll":Z
    .end local v26    # "oldY":I
    .end local v27    # "overscrollMode":I
    .restart local v28    # "parent":Landroid/view/ViewParent;
    :cond_1b5
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mTouchSlop:I

    add-int/2addr v4, v2

    goto/16 :goto_12d

    .line 791
    .end local v28    # "parent":Landroid/view/ViewParent;
    .restart local v8    # "range":I
    .restart local v26    # "oldY":I
    .restart local v27    # "overscrollMode":I
    :cond_1bc
    const/16 v23, 0x1

    .restart local v23    # "canOverscroll":Z
    goto :goto_157

    .line 793
    .end local v23    # "canOverscroll":Z
    :cond_1bf
    const/16 v23, 0x0

    .restart local v23    # "canOverscroll":Z
    goto :goto_157

    .line 792
    .end local v23    # "canOverscroll":Z
    :cond_1c2
    const/16 v23, 0x0

    .restart local v23    # "canOverscroll":Z
    goto :goto_157

    .line 800
    :cond_1c5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_16f

    .line 809
    .restart local v11    # "scrolledDeltaY":I
    .restart local v13    # "unconsumedY":I
    :cond_1cd
    if-eqz v23, :cond_20

    .line 810
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->ensureGlows()V

    .line 811
    add-int v29, v26, v4

    .line 812
    .local v29, "pulledToY":I
    if-gez v29, :cond_222

    .line 813
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 814
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 813
    invoke-virtual {v2, v3, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_203

    .line 816
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    .line 826
    :cond_203
    :goto_203
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    if-eqz v2, :cond_20

    .line 827
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_21d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_20

    .line 828
    :cond_21d
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto/16 :goto_20

    .line 818
    :cond_222
    move/from16 v0, v29

    if-le v0, v8, :cond_203

    .line 819
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowBottom:Landroid/support/v4/widget/EdgeEffectCompat;

    int-to-float v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    .line 820
    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 821
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 820
    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    .line 819
    invoke-virtual {v2, v3, v5}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(FF)Z

    .line 822
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_203

    .line 823
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/widget/NestedScrollView;->mEdgeGlowTop:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    goto :goto_203

    .line 834
    .end local v4    # "deltaY":I
    .end local v8    # "range":I
    .end local v11    # "scrolledDeltaY":I
    .end local v13    # "unconsumedY":I
    .end local v22    # "activePointerIndex":I
    .end local v23    # "canOverscroll":Z
    .end local v26    # "oldY":I
    .end local v27    # "overscrollMode":I
    .end local v29    # "pulledToY":I
    .end local v32    # "y":I
    :pswitch_258
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_28f

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/NestedScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v30, v0

    .line 836
    .local v30, "velocityTracker":Landroid/view/VelocityTracker;
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mMaximumVelocity:I

    int-to-float v2, v2

    const/16 v3, 0x3e8

    move-object/from16 v0, v30

    invoke-virtual {v0, v3, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 838
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 837
    move-object/from16 v0, v30

    invoke-static {v0, v2}, Landroid/support/v4/view/VelocityTrackerCompat;->getYVelocity(Landroid/view/VelocityTracker;I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 840
    .local v25, "initialVelocity":I
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/NestedScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_299

    .line 841
    move/from16 v0, v25

    neg-int v2, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/support/v4/widget/NestedScrollView;->flingWithNestedDispatch(I)V

    .line 847
    .end local v25    # "initialVelocity":I
    .end local v30    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_28f
    :goto_28f
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 848
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->endDrag()V

    goto/16 :goto_20

    .line 842
    .restart local v25    # "initialVelocity":I
    .restart local v30    # "velocityTracker":Landroid/view/VelocityTracker;
    :cond_299
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v16

    .line 843
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v20

    .line 842
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v20}, Landroid/support/v4/widget/ScrollerCompat;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_28f

    .line 844
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_28f

    .line 851
    .end local v25    # "initialVelocity":I
    .end local v30    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_2b9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v4/widget/NestedScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_2e4

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2e4

    .line 852
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v16

    .line 853
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v20

    .line 852
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v20}, Landroid/support/v4/widget/ScrollerCompat;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_2e4

    .line 854
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 857
    :cond_2e4
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    .line 858
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->endDrag()V

    goto/16 :goto_20

    .line 861
    :pswitch_2ee
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v24

    .line 862
    .local v24, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    .line 863
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    goto/16 :goto_20

    .line 867
    .end local v24    # "index":I
    :pswitch_30d
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/widget/NestedScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 869
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/widget/NestedScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 868
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/support/v4/widget/NestedScrollView;->mLastMotionY:I

    goto/16 :goto_20

    .line 731
    nop

    :pswitch_data_328
    .packed-switch 0x0
        :pswitch_34
        :pswitch_258
        :pswitch_87
        :pswitch_2b9
        :pswitch_20
        :pswitch_2ee
        :pswitch_30d
    .end packed-switch
.end method

.method overScrollByCompat(IIIIIIIIZ)Z
    .registers 29
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I
    .param p3, "scrollX"    # I
    .param p4, "scrollY"    # I
    .param p5, "scrollRangeX"    # I
    .param p6, "scrollRangeY"    # I
    .param p7, "maxOverScrollX"    # I
    .param p8, "maxOverScrollY"    # I
    .param p9, "isTouchEvent"    # Z

    .prologue
    .line 951
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v15

    .line 953
    .local v15, "overScrollMode":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->computeHorizontalScrollRange()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->computeHorizontalScrollExtent()I

    move-result v4

    if-le v1, v4, :cond_64

    const/4 v9, 0x1

    .line 955
    .local v9, "canScrollHorizontal":Z
    :goto_f
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->computeVerticalScrollExtent()I

    move-result v4

    if-le v1, v4, :cond_66

    const/4 v10, 0x1

    .line 956
    .local v10, "canScrollVertical":Z
    :goto_1a
    if-eqz v15, :cond_68

    .line 957
    const/4 v1, 0x1

    if-ne v15, v1, :cond_6a

    move v14, v9

    .line 958
    :goto_20
    if-eqz v15, :cond_6c

    .line 959
    const/4 v1, 0x1

    if-ne v15, v1, :cond_6f

    move/from16 v16, v10

    .line 961
    :goto_27
    add-int v2, p3, p1

    .line 962
    .local v2, "newScrollX":I
    if-nez v14, :cond_2d

    .line 963
    const/16 p7, 0x0

    .line 966
    :cond_2d
    add-int v3, p4, p2

    .line 967
    .local v3, "newScrollY":I
    if-nez v16, :cond_33

    .line 968
    const/16 p8, 0x0

    .line 972
    :cond_33
    move/from16 v0, p7

    neg-int v13, v0

    .line 973
    .local v13, "left":I
    add-int v17, p7, p5

    .line 974
    .local v17, "right":I
    move/from16 v0, p8

    neg-int v0, v0

    move/from16 v18, v0

    .line 975
    .local v18, "top":I
    add-int v8, p8, p6

    .line 977
    .local v8, "bottom":I
    const/4 v11, 0x0

    .line 978
    .local v11, "clampedX":Z
    move/from16 v0, v17

    if-le v2, v0, :cond_72

    .line 979
    move/from16 v2, v17

    .line 980
    const/4 v11, 0x1

    .line 986
    :cond_47
    :goto_47
    const/4 v12, 0x0

    .line 987
    .local v12, "clampedY":Z
    if-le v3, v8, :cond_77

    .line 988
    move v3, v8

    .line 989
    const/4 v12, 0x1

    .line 995
    :cond_4c
    :goto_4c
    if-eqz v12, :cond_5c

    .line 996
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollRange()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/support/v4/widget/ScrollerCompat;->springBack(IIIIII)Z

    .line 999
    :cond_5c
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v11, v12}, Landroid/support/v4/widget/NestedScrollView;->onOverScrolled(IIZZ)V

    .line 1001
    if-nez v11, :cond_7f

    .end local v12    # "clampedY":Z
    :goto_63
    return v12

    .line 953
    .end local v2    # "newScrollX":I
    .end local v3    # "newScrollY":I
    .end local v8    # "bottom":I
    .end local v9    # "canScrollHorizontal":Z
    .end local v10    # "canScrollVertical":Z
    .end local v11    # "clampedX":Z
    .end local v13    # "left":I
    .end local v17    # "right":I
    .end local v18    # "top":I
    :cond_64
    const/4 v9, 0x0

    .restart local v9    # "canScrollHorizontal":Z
    goto :goto_f

    .line 955
    :cond_66
    const/4 v10, 0x0

    .restart local v10    # "canScrollVertical":Z
    goto :goto_1a

    .line 956
    :cond_68
    const/4 v14, 0x1

    .local v14, "overScrollHorizontal":Z
    goto :goto_20

    .line 957
    .end local v14    # "overScrollHorizontal":Z
    :cond_6a
    const/4 v14, 0x0

    .restart local v14    # "overScrollHorizontal":Z
    goto :goto_20

    .line 958
    .end local v14    # "overScrollHorizontal":Z
    :cond_6c
    const/16 v16, 0x1

    .local v16, "overScrollVertical":Z
    goto :goto_27

    .line 959
    .end local v16    # "overScrollVertical":Z
    :cond_6f
    const/16 v16, 0x0

    .restart local v16    # "overScrollVertical":Z
    goto :goto_27

    .line 981
    .end local v16    # "overScrollVertical":Z
    .restart local v2    # "newScrollX":I
    .restart local v3    # "newScrollY":I
    .restart local v8    # "bottom":I
    .restart local v11    # "clampedX":Z
    .restart local v13    # "left":I
    .restart local v17    # "right":I
    .restart local v18    # "top":I
    :cond_72
    if-ge v2, v13, :cond_47

    .line 982
    move v2, v13

    .line 983
    const/4 v11, 0x1

    goto :goto_47

    .line 990
    .restart local v12    # "clampedY":Z
    :cond_77
    move/from16 v0, v18

    if-ge v3, v0, :cond_4c

    .line 991
    move/from16 v3, v18

    .line 992
    const/4 v12, 0x1

    goto :goto_4c

    .line 1001
    :cond_7f
    const/4 v12, 0x1

    goto :goto_63
.end method

.method public pageScroll(I)Z
    .registers 9
    .param p1, "direction"    # I

    .prologue
    const/4 v6, 0x0

    .line 1110
    const/16 v4, 0x82

    if-ne p1, v4, :cond_4b

    const/4 v1, 0x1

    .line 1111
    .local v1, "down":Z
    :goto_6
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v2

    .line 1113
    .local v2, "height":I
    if-eqz v1, :cond_4d

    .line 1114
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1115
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v0

    .line 1116
    .local v0, "count":I
    if-lez v0, :cond_35

    .line 1117
    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1118
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_35

    .line 1119
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1128
    .end local v0    # "count":I
    .end local v3    # "view":Landroid/view/View;
    :cond_35
    :goto_35
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1130
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Landroid/support/v4/widget/NestedScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    .line 1110
    .end local v1    # "down":Z
    .end local v2    # "height":I
    :cond_4b
    const/4 v1, 0x0

    .restart local v1    # "down":Z
    goto :goto_6

    .line 1123
    .restart local v2    # "height":I
    :cond_4d
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1124
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_35

    .line 1125
    iget-object v4, p0, Landroid/support/v4/widget/NestedScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v6, v4, Landroid/graphics/Rect;->top:I

    goto :goto_35
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 1554
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_b

    .line 1555
    invoke-direct {p0, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollToChild(Landroid/view/View;)V

    .line 1560
    :goto_7
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 1553
    return-void

    .line 1558
    :cond_b
    iput-object p2, p0, Landroid/support/v4/widget/NestedScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_7
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 1603
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1604
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1603
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1606
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/NestedScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 2
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 600
    if-eqz p1, :cond_5

    .line 601
    invoke-direct {p0}, Landroid/support/v4/widget/NestedScrollView;->recycleVelocityTracker()V

    .line 603
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 599
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .prologue
    .line 1611
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mIsLayoutDirty:Z

    .line 1612
    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 1610
    return-void
.end method

.method public scrollTo(II)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v2, 0x0

    .line 1737
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_46

    .line 1738
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1739
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->clamp(III)I

    move-result p1

    .line 1740
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Landroid/support/v4/widget/NestedScrollView;->clamp(III)I

    move-result p2

    .line 1741
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v1

    if-ne p1, v1, :cond_43

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    if-eq p2, v1, :cond_46

    .line 1742
    :cond_43
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    .line 1735
    .end local v0    # "child":Landroid/view/View;
    :cond_46
    return-void
.end method

.method public setFillViewport(Z)V
    .registers 3
    .param p1, "fillViewport"    # Z

    .prologue
    .line 448
    iget-boolean v0, p0, Landroid/support/v4/widget/NestedScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_9

    .line 449
    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->mFillViewport:Z

    .line 450
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->requestLayout()V

    .line 447
    :cond_9
    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 212
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 211
    return-void
.end method

.method public setOnScrollChangeListener(Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;)V
    .registers 2
    .param p1, "l"    # Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    .prologue
    .line 412
    iput-object p1, p0, Landroid/support/v4/widget/NestedScrollView;->mOnScrollChangeListener:Landroid/support/v4/widget/NestedScrollView$OnScrollChangeListener;

    .line 411
    return-void
.end method

.method public setSmoothScrollingEnabled(Z)V
    .registers 2
    .param p1, "smoothScrollingEnabled"    # Z

    .prologue
    .line 466
    iput-boolean p1, p0, Landroid/support/v4/widget/NestedScrollView;->mSmoothScrollingEnabled:Z

    .line 465
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .registers 14
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    const/4 v10, 0x0

    .line 1301
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_8

    .line 1303
    return-void

    .line 1305
    :cond_8
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Landroid/support/v4/widget/NestedScrollView;->mLastScroll:J

    sub-long v2, v6, v8

    .line 1306
    .local v2, "duration":J
    const-wide/16 v6, 0xfa

    cmp-long v6, v2, v6

    if-lez v6, :cond_56

    .line 1307
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v7

    sub-int v1, v6, v7

    .line 1308
    .local v1, "height":I
    invoke-virtual {p0, v10}, Landroid/support/v4/widget/NestedScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1309
    .local v0, "bottom":I
    sub-int v6, v0, v1

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1310
    .local v4, "maxY":I
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v5

    .line 1311
    .local v5, "scrollY":I
    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    .line 1313
    iget-object v6, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v7

    invoke-virtual {v6, v7, v5, v10, p2}, Landroid/support/v4/widget/ScrollerCompat;->startScroll(IIII)V

    .line 1314
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1321
    .end local v0    # "bottom":I
    .end local v1    # "height":I
    .end local v4    # "maxY":I
    .end local v5    # "scrollY":I
    :goto_4f
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/support/v4/widget/NestedScrollView;->mLastScroll:J

    .line 1300
    return-void

    .line 1316
    :cond_56
    iget-object v6, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result v6

    if-nez v6, :cond_63

    .line 1317
    iget-object v6, p0, Landroid/support/v4/widget/NestedScrollView;->mScroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v6}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 1319
    :cond_63
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/NestedScrollView;->scrollBy(II)V

    goto :goto_4f
.end method

.method public final smoothScrollTo(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1331
    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollBy(II)V

    .line 1330
    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3
    .param p1, "axes"    # I

    .prologue
    .line 222
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Landroid/support/v4/widget/NestedScrollView;->mChildHelper:Landroid/support/v4/view/NestedScrollingChildHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 226
    return-void
.end method

.class public abstract Landroid/support/v4/widget/ExploreByTouchHelper;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "ExploreByTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/ExploreByTouchHelper$1;,
        Landroid/support/v4/widget/ExploreByTouchHelper$2;,
        Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;
    }
.end annotation


# static fields
.field private static final DEFAULT_CLASS_NAME:Ljava/lang/String; = "android.view.View"

.field public static final HOST_ID:I = -0x1

.field public static final INVALID_ID:I = -0x80000000

.field private static final INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

.field private static final NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/widget/FocusStrategy$BoundsAdapter",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/widget/FocusStrategy$CollectionAdapter",
            "<",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessibilityFocusedVirtualViewId:I

.field private final mHost:Landroid/view/View;

.field private mHoveredVirtualViewId:I

.field private mKeyboardFocusedVirtualViewId:I

.field private final mManager:Landroid/view/accessibility/AccessibilityManager;

.field private mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

.field private final mTempGlobalRect:[I

.field private final mTempParentRect:Landroid/graphics/Rect;

.field private final mTempScreenRect:Landroid/graphics/Rect;

.field private final mTempVisibleRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -wrap0(Landroid/support/v4/widget/ExploreByTouchHelper;I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3
    .param p1, "virtualViewId"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/support/v4/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    const v2, 0x7fffffff

    const/high16 v1, -0x80000000

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    .line 337
    new-instance v0, Landroid/support/v4/widget/ExploreByTouchHelper$1;

    invoke-direct {v0}, Landroid/support/v4/widget/ExploreByTouchHelper$1;-><init>()V

    .line 336
    sput-object v0, Landroid/support/v4/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;

    .line 349
    new-instance v0, Landroid/support/v4/widget/ExploreByTouchHelper$2;

    invoke-direct {v0}, Landroid/support/v4/widget/ExploreByTouchHelper$2;-><init>()V

    .line 348
    sput-object v0, Landroid/support/v4/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 6
    .param p1, "host"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/high16 v2, -0x80000000

    .line 135
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    .line 106
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    .line 107
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    .line 108
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    .line 109
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    .line 121
    iput v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 124
    iput v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 127
    iput v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 136
    if-nez p1, :cond_31

    .line 137
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "View may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    :cond_31
    iput-object p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    .local v0, "context":Landroid/content/Context;
    const-string/jumbo v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    .line 147
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 148
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_4e

    .line 150
    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 135
    :cond_4e
    return-void
.end method

.method private clearAccessibilityFocus(I)Z
    .registers 3
    .param p1, "virtualViewId"    # I

    .prologue
    .line 985
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-ne v0, p1, :cond_14

    .line 986
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 987
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 989
    const/high16 v0, 0x10000

    .line 988
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 990
    const/4 v0, 0x1

    return v0

    .line 992
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method private clickKeyboardFocusedVirtualView()Z
    .registers 4

    .prologue
    .line 482
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_10

    .line 483
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    .line 482
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private createEvent(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 638
    packed-switch p1, :pswitch_data_e

    .line 642
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0

    .line 640
    :pswitch_8
    invoke-direct {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    return-object v0

    .line 638
    nop

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_8
    .end packed-switch
.end method

.method private createEventForChild(II)Landroid/view/accessibility/AccessibilityEvent;
    .registers 8
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 678
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 679
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v2

    .line 680
    .local v2, "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 683
    .local v1, "node":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->getText()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 685
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isScrollable()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 686
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isPassword()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setPassword(Z)V

    .line 687
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setEnabled(Z)V

    .line 688
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setChecked(Z)V

    .line 691
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V

    .line 694
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-nez v3, :cond_56

    .line 695
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Callbacks must add text or a content description in populateEventForVirtualViewId()"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 700
    :cond_56
    invoke-virtual {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getClassName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2, v3, p1}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/View;I)V

    .line 702
    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 704
    return-object v0
.end method

.method private createEventForHost(I)Landroid/view/accessibility/AccessibilityEvent;
    .registers 4
    .param p1, "eventType"    # I

    .prologue
    .line 654
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 655
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 656
    return-object v0
.end method

.method private createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 9
    .param p1, "virtualViewId"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 793
    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    .line 796
    .local v2, "node":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setEnabled(Z)V

    .line 797
    invoke-virtual {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 798
    const-string/jumbo v5, "android.view.View"

    invoke-virtual {v2, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 799
    sget-object v5, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 800
    sget-object v5, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 803
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 806
    invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_34

    invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_34

    .line 807
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Callbacks must add text or a content description in populateNodeForVirtualViewId()"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 811
    :cond_34
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 812
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 813
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Callbacks must set parent bounds in populateNodeForVirtualViewId()"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 817
    :cond_4c
    invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getActions()I

    move-result v0

    .line 818
    .local v0, "actions":I
    and-int/lit8 v5, v0, 0x40

    if-eqz v5, :cond_5d

    .line 819
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 822
    :cond_5d
    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_6a

    .line 823
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 828
    :cond_6a
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setPackageName(Ljava/lang/CharSequence;)V

    .line 829
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2, v5, p1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setSource(Landroid/view/View;I)V

    .line 830
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setParent(Landroid/view/View;)V

    .line 833
    iget v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-ne v5, p1, :cond_e7

    .line 834
    invoke-virtual {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 835
    const/16 v5, 0x80

    invoke-virtual {v2, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 842
    :goto_8d
    iget v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-ne v5, p1, :cond_f0

    move v1, v3

    .line 843
    .local v1, "isFocused":Z
    :goto_92
    if-eqz v1, :cond_f2

    .line 844
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 848
    :cond_98
    :goto_98
    invoke-virtual {v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setFocused(Z)V

    .line 851
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-direct {p0, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->intersectVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_ab

    .line 852
    invoke-virtual {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setVisibleToUser(Z)V

    .line 853
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempParentRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 858
    :cond_ab
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 859
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    sget-object v6, Landroid/support/v4/widget/ExploreByTouchHelper;->INVALID_PARENT_BOUNDS:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e6

    .line 860
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    iget-object v6, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    invoke-virtual {v5, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 861
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 862
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    iget-object v6, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v4, v6, v4

    iget-object v6, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScrollX()I

    move-result v6

    sub-int/2addr v4, v6

    .line 863
    iget-object v6, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempGlobalRect:[I

    aget v3, v6, v3

    iget-object v6, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getScrollY()I

    move-result v6

    sub-int/2addr v3, v6

    .line 862
    invoke-virtual {v5, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 864
    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 867
    :cond_e6
    return-object v2

    .line 837
    .end local v1    # "isFocused":Z
    :cond_e7
    invoke-virtual {v2, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    .line 838
    const/16 v5, 0x40

    invoke-virtual {v2, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_8d

    :cond_f0
    move v1, v4

    .line 842
    goto :goto_92

    .line 845
    .restart local v1    # "isFocused":Z
    :cond_f2
    invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_98

    .line 846
    invoke-virtual {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_98
.end method

.method private createNodeForHost()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 8
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 736
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->obtain(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v2

    .line 737
    .local v2, "info":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    iget-object v5, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v5, v2}, Landroid/support/v4/view/ViewCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 740
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 741
    .local v4, "virtualViewIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 743
    invoke-virtual {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getChildCount()I

    move-result v3

    .line 744
    .local v3, "realNodeCount":I
    if-lez v3, :cond_28

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_28

    .line 745
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Views cannot have both real and virtual children"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 748
    :cond_28
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_2d
    if-ge v1, v0, :cond_41

    .line 749
    iget-object v6, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v6, v5}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addChild(Landroid/view/View;I)V

    .line 748
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d

    .line 752
    :cond_41
    return-object v2
.end method

.method private getAllNodes()Landroid/support/v4/util/SparseArrayCompat;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v3, "virtualViewIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVisibleVirtualViews(Ljava/util/List;)V

    .line 431
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    .line 432
    .local v0, "allNodes":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    const/4 v2, 0x0

    .local v2, "virtualViewId":I
    :goto_e
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1e

    .line 433
    invoke-direct {p0, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    .line 434
    .local v1, "virtualView":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v0, v2, v1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 432
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 437
    .end local v1    # "virtualView":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_1e
    return-object v0
.end method

.method private getBoundsInParent(ILandroid/graphics/Rect;)V
    .registers 4
    .param p1, "virtualViewId"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 329
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    .line 330
    .local v0, "node":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    invoke-virtual {v0, p2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 328
    return-void
.end method

.method private static guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 7
    .param p0, "host"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "direction"    # I
    .param p2, "outBounds"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 451
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 452
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 454
    .local v0, "h":I
    sparse-switch p1, :sswitch_data_26

    .line 468
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 456
    :sswitch_16
    invoke-virtual {p2, v1, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 472
    :goto_19
    return-object p2

    .line 459
    :sswitch_1a
    invoke-virtual {p2, v3, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_19

    .line 462
    :sswitch_1e
    invoke-virtual {p2, v2, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_19

    .line 465
    :sswitch_22
    invoke-virtual {p2, v3, v2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_19

    .line 454
    :sswitch_data_26
    .sparse-switch
        0x11 -> :sswitch_16
        0x21 -> :sswitch_1a
        0x42 -> :sswitch_1e
        0x82 -> :sswitch_22
    .end sparse-switch
.end method

.method private intersectVisibleToUser(Landroid/graphics/Rect;)Z
    .registers 7
    .param p1, "localRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 908
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 909
    :cond_9
    return v4

    .line 913
    :cond_a
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowVisibility()I

    move-result v2

    if-eqz v2, :cond_13

    .line 914
    return v4

    .line 918
    :cond_13
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 919
    .local v1, "viewParent":Landroid/view/ViewParent;
    :goto_19
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_35

    move-object v0, v1

    .line 920
    check-cast v0, Landroid/view/View;

    .line 921
    .local v0, "view":Landroid/view/View;
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_2f

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_30

    .line 922
    :cond_2f
    return v4

    .line 924
    :cond_30
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_19

    .line 928
    .end local v0    # "view":Landroid/view/View;
    :cond_35
    if-nez v1, :cond_38

    .line 929
    return v4

    .line 933
    :cond_38
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 934
    return v4

    .line 938
    :cond_43
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mTempVisibleRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v2

    return v2
.end method

.method private static keyToDirection(I)I
    .registers 2
    .param p0, "keyCode"    # I

    .prologue
    .line 310
    packed-switch p0, :pswitch_data_10

    .line 318
    :pswitch_3
    const/16 v0, 0x82

    return v0

    .line 312
    :pswitch_6
    const/16 v0, 0x11

    return v0

    .line 314
    :pswitch_9
    const/16 v0, 0x21

    return v0

    .line 316
    :pswitch_c
    const/16 v0, 0x42

    return v0

    .line 310
    nop

    :pswitch_data_10
    .packed-switch 0x13
        :pswitch_9
        :pswitch_3
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method

.method private moveFocus(ILandroid/graphics/Rect;)Z
    .registers 21
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 373
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->getAllNodes()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v2

    .line 375
    .local v2, "allNodes":Landroid/support/v4/util/SparseArrayCompat;, "Landroid/support/v4/util/SparseArrayCompat<Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    move-object/from16 v0, p0

    iget v14, v0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 377
    .local v14, "focusedNodeId":I
    const/high16 v3, -0x80000000

    if-ne v14, v3, :cond_19

    const/4 v5, 0x0

    .line 380
    :goto_d
    sparse-switch p1, :sswitch_data_8a

    .line 411
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 377
    :cond_19
    invoke-virtual {v2, v14}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .local v5, "focusedNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    goto :goto_d

    .line 384
    .end local v5    # "focusedNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_46

    const/4 v7, 0x1

    .line 386
    .local v7, "isLayoutRtl":Z
    :goto_2c
    sget-object v3, Landroid/support/v4/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;

    sget-object v4, Landroid/support/v4/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;

    .line 387
    const/4 v8, 0x0

    move/from16 v6, p1

    .line 385
    invoke-static/range {v2 .. v8}, Landroid/support/v4/widget/FocusStrategy;->findNextFocusInRelativeDirection(Ljava/lang/Object;Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;IZZ)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .line 417
    .end local v7    # "isLayoutRtl":Z
    .local v16, "nextFocusedNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :goto_39
    if-nez v16, :cond_7f

    .line 418
    const/high16 v17, -0x80000000

    .line 424
    .local v17, "nextFocusedNodeId":I
    :goto_3d
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v3

    return v3

    .line 384
    .end local v16    # "nextFocusedNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .end local v17    # "nextFocusedNodeId":I
    :cond_46
    const/4 v7, 0x0

    .restart local v7    # "isLayoutRtl":Z
    goto :goto_2c

    .line 393
    .end local v7    # "isLayoutRtl":Z
    :sswitch_48
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    .line 394
    .local v12, "selectedRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v4, -0x80000000

    if-eq v3, v4, :cond_6d

    .line 396
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v12}, Landroid/support/v4/widget/ExploreByTouchHelper;->getBoundsInParent(ILandroid/graphics/Rect;)V

    .line 408
    :goto_5e
    sget-object v9, Landroid/support/v4/widget/ExploreByTouchHelper;->SPARSE_VALUES_ADAPTER:Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;

    sget-object v10, Landroid/support/v4/widget/ExploreByTouchHelper;->NODE_ADAPTER:Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;

    move-object v8, v2

    move-object v11, v5

    move/from16 v13, p1

    .line 407
    invoke-static/range {v8 .. v13}, Landroid/support/v4/widget/FocusStrategy;->findNextFocusInAbsoluteDirection(Ljava/lang/Object;Landroid/support/v4/widget/FocusStrategy$CollectionAdapter;Landroid/support/v4/widget/FocusStrategy$BoundsAdapter;Ljava/lang/Object;Landroid/graphics/Rect;I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .restart local v16    # "nextFocusedNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    goto :goto_39

    .line 397
    .end local v16    # "nextFocusedNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_6d
    if-eqz p2, :cond_75

    .line 399
    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_5e

    .line 405
    :cond_75
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    move/from16 v0, p1

    invoke-static {v3, v0, v12}, Landroid/support/v4/widget/ExploreByTouchHelper;->guessPreviouslyFocusedRect(Landroid/view/View;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_5e

    .line 420
    .end local v12    # "selectedRect":Landroid/graphics/Rect;
    .restart local v16    # "nextFocusedNode":Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    :cond_7f
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/support/v4/util/SparseArrayCompat;->indexOfValue(Ljava/lang/Object;)I

    move-result v15

    .line 421
    .local v15, "index":I
    invoke-virtual {v2, v15}, Landroid/support/v4/util/SparseArrayCompat;->keyAt(I)I

    move-result v17

    .restart local v17    # "nextFocusedNodeId":I
    goto :goto_3d

    .line 380
    :sswitch_data_8a
    .sparse-switch
        0x1 -> :sswitch_20
        0x2 -> :sswitch_20
        0x11 -> :sswitch_48
        0x21 -> :sswitch_48
        0x42 -> :sswitch_48
        0x82 -> :sswitch_48
    .end sparse-switch
.end method

.method private obtainAccessibilityNodeInfo(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 3
    .param p1, "virtualViewId"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 721
    const/4 v0, -0x1

    if-ne p1, v0, :cond_8

    .line 722
    invoke-direct {p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForHost()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0

    .line 725
    :cond_8
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->createNodeForChild(I)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method private performAction(IILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 871
    packed-switch p1, :pswitch_data_e

    .line 875
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->performActionForChild(IILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 873
    :pswitch_8
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->performActionForHost(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 871
    nop

    :pswitch_data_e
    .packed-switch -0x1
        :pswitch_8
    .end packed-switch
.end method

.method private performActionForChild(IILandroid/os/Bundle;)Z
    .registers 5
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 884
    sparse-switch p2, :sswitch_data_1c

    .line 894
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPerformActionForVirtualView(IILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 886
    :sswitch_8
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->requestAccessibilityFocus(I)Z

    move-result v0

    return v0

    .line 888
    :sswitch_d
    invoke-direct {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    move-result v0

    return v0

    .line 890
    :sswitch_12
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->requestKeyboardFocusForVirtualView(I)Z

    move-result v0

    return v0

    .line 892
    :sswitch_17
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    move-result v0

    return v0

    .line 884
    :sswitch_data_1c
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_17
        0x40 -> :sswitch_8
        0x80 -> :sswitch_d
    .end sparse-switch
.end method

.method private performActionForHost(ILandroid/os/Bundle;)Z
    .registers 4
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 880
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v0, p1, p2}, Landroid/support/v4/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private requestAccessibilityFocus(I)Z
    .registers 4
    .param p1, "virtualViewId"    # I

    .prologue
    const/4 v1, 0x0

    .line 954
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 955
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 959
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-eq v0, p1, :cond_30

    .line 961
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_20

    .line 962
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    invoke-direct {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearAccessibilityFocus(I)Z

    .line 966
    :cond_20
    iput p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    .line 969
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 971
    const v0, 0x8000

    .line 970
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 972
    const/4 v0, 0x1

    return v0

    .line 956
    :cond_2f
    return v1

    .line 974
    :cond_30
    return v1
.end method

.method private updateHoveredVirtualView(I)V
    .registers 4
    .param p1, "virtualViewId"    # I

    .prologue
    .line 613
    iget v1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    if-ne v1, p1, :cond_5

    .line 614
    return-void

    .line 617
    :cond_5
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 618
    .local v0, "previousVirtualViewId":I
    iput p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHoveredVirtualViewId:I

    .line 622
    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 624
    const/16 v1, 0x100

    .line 623
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 612
    return-void
.end method


# virtual methods
.method public final clearKeyboardFocusForVirtualView(I)Z
    .registers 4
    .param p1, "virtualViewId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1033
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-eq v0, p1, :cond_6

    .line 1035
    return v1

    .line 1038
    :cond_6
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 1040
    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 1041
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 1043
    const/4 v0, 0x1

    return v0
.end method

.method public final dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/high16 v5, -0x80000000

    const/4 v2, 0x0

    .line 182
    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 183
    iget-object v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-static {v3}, Landroid/support/v4/view/accessibility/AccessibilityManagerCompat;->isTouchExplorationEnabled(Landroid/view/accessibility/AccessibilityManager;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 187
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_3a

    .line 200
    :pswitch_1b
    return v2

    .line 184
    :cond_1c
    return v2

    .line 190
    :pswitch_1d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {p0, v3, v4}, Landroid/support/v4/widget/ExploreByTouchHelper;->getVirtualViewAt(FF)I

    move-result v0

    .line 191
    .local v0, "virtualViewId":I
    invoke-direct {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    .line 192
    if-eq v0, v5, :cond_2f

    :goto_2e
    return v1

    :cond_2f
    move v1, v2

    goto :goto_2e

    .line 194
    .end local v0    # "virtualViewId":I
    :pswitch_31
    iget v3, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    if-eq v3, v5, :cond_39

    .line 195
    invoke-direct {p0, v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->updateHoveredVirtualView(I)V

    .line 196
    return v1

    .line 198
    :cond_39
    return v2

    .line 187
    :pswitch_data_3a
    .packed-switch 0x7
        :pswitch_1d
        :pswitch_1b
        :pswitch_1d
        :pswitch_31
    .end packed-switch
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 11
    .param p1, "event"    # Landroid/view/KeyEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 217
    const/4 v3, 0x0

    .line 219
    .local v3, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 220
    .local v0, "action":I
    if-eq v0, v7, :cond_10

    .line 221
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    .line 222
    .local v5, "keyCode":I
    sparse-switch v5, :sswitch_data_56

    .line 258
    .end local v3    # "handled":Z
    .end local v5    # "keyCode":I
    :cond_10
    :goto_10
    return v3

    .line 227
    .restart local v3    # "handled":Z
    .restart local v5    # "keyCode":I
    :sswitch_11
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 228
    invoke-static {v5}, Landroid/support/v4/widget/ExploreByTouchHelper;->keyToDirection(I)I

    move-result v2

    .line 229
    .local v2, "direction":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    add-int/lit8 v1, v6, 0x1

    .line 230
    .local v1, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_22
    if-ge v4, v1, :cond_10

    .line 231
    invoke-direct {p0, v2, v8}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 232
    const/4 v3, 0x1

    .line 230
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 241
    .end local v1    # "count":I
    .end local v2    # "direction":I
    .end local v4    # "i":I
    :sswitch_2e
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 242
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v6

    if-nez v6, :cond_10

    .line 243
    invoke-direct {p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->clickKeyboardFocusedVirtualView()Z

    .line 244
    const/4 v3, 0x1

    goto :goto_10

    .line 249
    :sswitch_3f
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 250
    const/4 v6, 0x2

    invoke-direct {p0, v6, v8}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    .local v3, "handled":Z
    goto :goto_10

    .line 251
    .local v3, "handled":Z
    :cond_4b
    invoke-static {p1, v7}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 252
    invoke-direct {p0, v7, v8}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    .local v3, "handled":Z
    goto :goto_10

    .line 222
    :sswitch_data_56
    .sparse-switch
        0x13 -> :sswitch_11
        0x14 -> :sswitch_11
        0x15 -> :sswitch_11
        0x16 -> :sswitch_11
        0x17 -> :sswitch_2e
        0x3d -> :sswitch_3f
        0x42 -> :sswitch_2e
    .end sparse-switch
.end method

.method public final getAccessibilityFocusedVirtualViewId()I
    .registers 2

    .prologue
    .line 291
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mAccessibilityFocusedVirtualViewId:I

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/support/v4/view/accessibility/AccessibilityNodeProviderCompat;
    .registers 4
    .param p1, "host"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    if-nez v0, :cond_c

    .line 158
    new-instance v0, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    invoke-direct {v0, p0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;-><init>(Landroid/support/v4/widget/ExploreByTouchHelper;Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;)V

    iput-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    .line 160
    :cond_c
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mNodeProvider:Landroid/support/v4/widget/ExploreByTouchHelper$MyNodeProvider;

    return-object v0
.end method

.method public getFocusedVirtualView()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 590
    invoke-virtual {p0}, Landroid/support/v4/widget/ExploreByTouchHelper;->getAccessibilityFocusedVirtualViewId()I

    move-result v0

    return v0
.end method

.method public final getKeyboardFocusedVirtualViewId()I
    .registers 2

    .prologue
    .line 299
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    return v0
.end method

.method protected abstract getVirtualViewAt(FF)I
.end method

.method protected abstract getVisibleVirtualViews(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public final invalidateRoot()V
    .registers 3

    .prologue
    .line 527
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 526
    return-void
.end method

.method public final invalidateVirtualView(I)V
    .registers 3
    .param p1, "virtualViewId"    # I

    .prologue
    .line 544
    const/4 v0, 0x0

    .line 543
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->invalidateVirtualView(II)V

    .line 542
    return-void
.end method

.method public final invalidateVirtualView(II)V
    .registers 6
    .param p1, "virtualViewId"    # I
    .param p2, "changeTypes"    # I

    .prologue
    .line 567
    const/high16 v2, -0x80000000

    if-eq p1, v2, :cond_22

    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 568
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 569
    .local v1, "parent":Landroid/view/ViewParent;
    if-eqz v1, :cond_22

    .line 572
    const/16 v2, 0x800

    .line 571
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 573
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-static {v0, p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->setContentChangeTypes(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 574
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v1, v2, v0}, Landroid/support/v4/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 566
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_22
    return-void
.end method

.method public final onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 6
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 276
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_b

    .line 277
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    .line 280
    :cond_b
    if-eqz p1, :cond_10

    .line 281
    invoke-direct {p0, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->moveFocus(ILandroid/graphics/Rect;)Z

    .line 275
    :cond_10
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 661
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 664
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 660
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 3
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 757
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 760
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onPopulateNodeForHost(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 756
    return-void
.end method

.method protected abstract onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
.end method

.method protected onPopulateEventForHost(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1112
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .registers 3
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1100
    return-void
.end method

.method protected onPopulateNodeForHost(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 2
    .param p1, "node"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 1190
    return-void
.end method

.method protected abstract onPopulateNodeForVirtualView(ILandroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
.end method

.method protected onVirtualViewKeyboardFocusChanged(IZ)V
    .registers 3
    .param p1, "virtualViewId"    # I
    .param p2, "hasFocus"    # Z

    .prologue
    .line 600
    return-void
.end method

.method public final requestKeyboardFocusForVirtualView(I)Z
    .registers 5
    .param p1, "virtualViewId"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1003
    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1008
    :cond_12
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    if-ne v0, p1, :cond_18

    .line 1010
    return v1

    .line 1005
    :cond_17
    return v1

    .line 1013
    :cond_18
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_23

    .line 1014
    iget v0, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->clearKeyboardFocusForVirtualView(I)Z

    .line 1017
    :cond_23
    iput p1, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mKeyboardFocusedVirtualViewId:I

    .line 1019
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/widget/ExploreByTouchHelper;->onVirtualViewKeyboardFocusChanged(IZ)V

    .line 1020
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 1022
    return v2
.end method

.method public final sendEventForVirtualView(II)Z
    .registers 7
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    const/4 v3, 0x0

    .line 506
    const/high16 v2, -0x80000000

    if-eq p1, v2, :cond_16

    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 510
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 511
    .local v1, "parent":Landroid/view/ViewParent;
    if-nez v1, :cond_17

    .line 512
    return v3

    .line 507
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_16
    return v3

    .line 515
    .restart local v1    # "parent":Landroid/view/ViewParent;
    :cond_17
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/ExploreByTouchHelper;->createEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 516
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Landroid/support/v4/widget/ExploreByTouchHelper;->mHost:Landroid/view/View;

    invoke-static {v1, v2, v0}, Landroid/support/v4/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2
.end method

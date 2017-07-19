.class Landroid/support/v4/widget/NestedScrollView$AccessibilityDelegate;
.super Landroid/support/v4/view/AccessibilityDelegateCompat;
.source "NestedScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/NestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityDelegate"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1881
    invoke-direct {p0}, Landroid/support/v4/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 7
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x0

    .line 1938
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    move-object v0, p1

    .line 1939
    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    .line 1940
    .local v0, "nsvHost":Landroid/support/v4/widget/NestedScrollView;
    const-class v3, Landroid/widget/ScrollView;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1941
    invoke-static {p2}, Landroid/support/v4/view/accessibility/AccessibilityEventCompat;->asRecord(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;

    move-result-object v1

    .line 1942
    .local v1, "record":Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;
    invoke-static {v0}, Landroid/support/v4/widget/NestedScrollView;->-wrap0(Landroid/support/v4/widget/NestedScrollView;)I

    move-result v3

    if-lez v3, :cond_1b

    const/4 v2, 0x1

    .line 1943
    .local v2, "scrollable":Z
    :cond_1b
    invoke-virtual {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollable(Z)V

    .line 1944
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollX(I)V

    .line 1945
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setScrollY(I)V

    .line 1946
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollX()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(I)V

    .line 1947
    invoke-static {v0}, Landroid/support/v4/widget/NestedScrollView;->-wrap0(Landroid/support/v4/widget/NestedScrollView;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/support/v4/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(I)V

    .line 1937
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .registers 6
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    .prologue
    .line 1919
    invoke-super {p0, p1, p2}, Landroid/support/v4/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    move-object v0, p1

    .line 1920
    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    .line 1921
    .local v0, "nsvHost":Landroid/support/v4/widget/NestedScrollView;
    const-class v2, Landroid/widget/ScrollView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 1922
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 1923
    invoke-static {v0}, Landroid/support/v4/widget/NestedScrollView;->-wrap0(Landroid/support/v4/widget/NestedScrollView;)I

    move-result v1

    .line 1924
    .local v1, "scrollRange":I
    if-lez v1, :cond_35

    .line 1925
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setScrollable(Z)V

    .line 1926
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    if-lez v2, :cond_2a

    .line 1927
    const/16 v2, 0x2000

    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1929
    :cond_2a
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v2

    if-ge v2, v1, :cond_35

    .line 1930
    const/16 v2, 0x1000

    invoke-virtual {p2, v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 1918
    .end local v1    # "scrollRange":I
    :cond_35
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .registers 11
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1884
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1885
    return v6

    :cond_9
    move-object v0, p1

    .line 1887
    check-cast v0, Landroid/support/v4/widget/NestedScrollView;

    .line 1888
    .local v0, "nsvHost":Landroid/support/v4/widget/NestedScrollView;
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_13

    .line 1889
    return v5

    .line 1891
    :cond_13
    sparse-switch p2, :sswitch_data_62

    .line 1914
    return v5

    .line 1893
    :sswitch_17
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1894
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v4

    .line 1893
    sub-int v2, v3, v4

    .line 1895
    .local v2, "viewportHeight":I
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    add-int/2addr v3, v2

    .line 1896
    invoke-static {v0}, Landroid/support/v4/widget/NestedScrollView;->-wrap0(Landroid/support/v4/widget/NestedScrollView;)I

    move-result v4

    .line 1895
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1897
    .local v1, "targetScrollY":I
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    if-eq v1, v3, :cond_3d

    .line 1898
    invoke-virtual {v0, v5, v1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollTo(II)V

    .line 1899
    return v6

    .line 1902
    :cond_3d
    return v5

    .line 1904
    .end local v1    # "targetScrollY":I
    .end local v2    # "viewportHeight":I
    :sswitch_3e
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1905
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getPaddingTop()I

    move-result v4

    .line 1904
    sub-int v2, v3, v4

    .line 1906
    .restart local v2    # "viewportHeight":I
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1907
    .restart local v1    # "targetScrollY":I
    invoke-virtual {v0}, Landroid/support/v4/widget/NestedScrollView;->getScrollY()I

    move-result v3

    if-eq v1, v3, :cond_60

    .line 1908
    invoke-virtual {v0, v5, v1}, Landroid/support/v4/widget/NestedScrollView;->smoothScrollTo(II)V

    .line 1909
    return v6

    .line 1912
    :cond_60
    return v5

    .line 1891
    nop

    :sswitch_data_62
    .sparse-switch
        0x1000 -> :sswitch_17
        0x2000 -> :sswitch_3e
    .end sparse-switch
.end method

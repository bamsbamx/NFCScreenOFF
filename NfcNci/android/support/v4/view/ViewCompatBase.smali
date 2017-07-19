.class Landroid/support/v4/view/ViewCompatBase;
.super Ljava/lang/Object;
.source "ViewCompatBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewCompatBase"

.field private static sMinHeightField:Ljava/lang/reflect/Field;

.field private static sMinHeightFieldFetched:Z

.field private static sMinWidthField:Ljava/lang/reflect/Field;

.field private static sMinWidthFieldFetched:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 36
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_b

    .line 37
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 36
    :goto_a
    return-object v0

    .line 38
    .restart local p0    # "view":Landroid/view/View;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 48
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_b

    .line 49
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0}, Landroid/support/v4/view/TintableBackgroundView;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    .line 48
    :goto_a
    return-object v0

    .line 50
    .restart local p0    # "view":Landroid/view/View;
    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method static getMinimumHeight(Landroid/view/View;)I
    .registers 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 87
    sget-boolean v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightFieldFetched:Z

    if-nez v2, :cond_18

    .line 89
    :try_start_5
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "mMinHeight"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    .line 90
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_16} :catch_2c

    .line 94
    :goto_16
    sput-boolean v4, Landroid/support/v4/view/ViewCompatBase;->sMinHeightFieldFetched:Z

    .line 97
    :cond_18
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_2a

    .line 99
    :try_start_1c
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinHeightField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_27} :catch_29

    move-result v2

    return v2

    .line 100
    :catch_29
    move-exception v0

    .line 106
    :cond_2a
    const/4 v2, 0x0

    return v2

    .line 91
    :catch_2c
    move-exception v1

    .local v1, "e":Ljava/lang/NoSuchFieldException;
    goto :goto_16
.end method

.method static getMinimumWidth(Landroid/view/View;)I
    .registers 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 64
    sget-boolean v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthFieldFetched:Z

    if-nez v2, :cond_18

    .line 66
    :try_start_5
    const-class v2, Landroid/view/View;

    const-string/jumbo v3, "mMinWidth"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    .line 67
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_16} :catch_2c

    .line 71
    :goto_16
    sput-boolean v4, Landroid/support/v4/view/ViewCompatBase;->sMinWidthFieldFetched:Z

    .line 74
    :cond_18
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_2a

    .line 76
    :try_start_1c
    sget-object v2, Landroid/support/v4/view/ViewCompatBase;->sMinWidthField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_27} :catch_29

    move-result v2

    return v2

    .line 77
    :catch_29
    move-exception v0

    .line 83
    :cond_2a
    const/4 v2, 0x0

    return v2

    .line 68
    :catch_2c
    move-exception v1

    .local v1, "e":Ljava/lang/NoSuchFieldException;
    goto :goto_16
.end method

.method static isAttachedToWindow(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method static isLaidOut(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_e

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method static offsetLeftAndRight(Landroid/view/View;I)V
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 135
    .local v1, "currentLeft":I
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 137
    if-eqz p1, :cond_2a

    .line 139
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 140
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_2b

    .line 141
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 142
    .local v0, "absOffset":I
    check-cast v2, Landroid/view/View;

    .line 143
    .end local v2    # "parent":Landroid/view/ViewParent;
    sub-int v3, v1, v0

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v1

    add-int/2addr v5, v0

    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 142
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 133
    .end local v0    # "absOffset":I
    :cond_2a
    :goto_2a
    return-void

    .line 148
    .restart local v2    # "parent":Landroid/view/ViewParent;
    :cond_2b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2a
.end method

.method static offsetTopAndBottom(Landroid/view/View;I)V
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .prologue
    .line 114
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    .line 115
    .local v1, "currentTop":I
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 117
    if-eqz p1, :cond_2a

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 120
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_2b

    .line 121
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 122
    .local v0, "absOffset":I
    check-cast v2, Landroid/view/View;

    .line 123
    .end local v2    # "parent":Landroid/view/ViewParent;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 124
    sub-int v4, v1, v0

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v1

    add-int/2addr v6, v0

    .line 122
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 113
    .end local v0    # "absOffset":I
    :cond_2a
    :goto_2a
    return-void

    .line 128
    .restart local v2    # "parent":Landroid/view/ViewParent;
    :cond_2b
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2a
.end method

.method static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 42
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_9

    .line 43
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0, p1}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 41
    :cond_9
    return-void
.end method

.method static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 54
    instance-of v0, p0, Landroid/support/v4/view/TintableBackgroundView;

    if-eqz v0, :cond_9

    .line 55
    check-cast p0, Landroid/support/v4/view/TintableBackgroundView;

    .end local p0    # "view":Landroid/view/View;
    invoke-interface {p0, p1}, Landroid/support/v4/view/TintableBackgroundView;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 53
    :cond_9
    return-void
.end method

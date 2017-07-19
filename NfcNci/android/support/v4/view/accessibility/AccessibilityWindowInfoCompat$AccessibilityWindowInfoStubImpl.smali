.class Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfoCompat.java"

# interfaces
.implements Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityWindowInfoStubImpl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnchor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 124
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 85
    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 4
    .param p1, "info"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public getId(Ljava/lang/Object;)I
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 81
    const/4 v0, -0x1

    return v0
.end method

.method public getLayer(Ljava/lang/Object;)I
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 66
    const/4 v0, -0x1

    return v0
.end method

.method public getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRoot(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 119
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType(Ljava/lang/Object;)I
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 61
    const/4 v0, -0x1

    return v0
.end method

.method public isAccessibilityFocused(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 100
    const/4 v0, 0x1

    return v0
.end method

.method public isActive(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public isFocused(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method public obtain()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 56
    const/4 v0, 0x0

    return-object v0
.end method

.method public recycle(Ljava/lang/Object;)V
    .registers 2
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 114
    return-void
.end method

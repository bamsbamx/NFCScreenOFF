.class Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi24Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;
.source "AccessibilityWindowInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityWindowInfoApi24Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;-><init>(Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi24Impl;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi24Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnchor(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 208
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi24;->getAnchor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .registers 3
    .param p1, "info"    # Ljava/lang/Object;

    .prologue
    .line 203
    invoke-static {p1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi24;->getTitle(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

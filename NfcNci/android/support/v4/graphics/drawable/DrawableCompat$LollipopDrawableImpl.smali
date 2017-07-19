.class Landroid/support/v4/graphics/drawable/DrawableCompat$LollipopDrawableImpl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;
.source "DrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LollipopDrawableImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 211
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$KitKatDrawableImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 244
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->applyTheme(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources$Theme;)V

    .line 243
    return-void
.end method

.method public canApplyTheme(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 249
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    return v0
.end method

.method public getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 254
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->getColorFilter(Landroid/graphics/drawable/Drawable;)Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "res"    # Landroid/content/res/Resources;
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .param p5, "t"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 260
    return-void
.end method

.method public setHotspot(Landroid/graphics/drawable/Drawable;FF)V
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 214
    invoke-static {p1, p2, p3}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 213
    return-void
.end method

.method public setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V
    .registers 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 219
    invoke-static {p1, p2, p3, p4, p5}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->setHotspotBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 218
    return-void
.end method

.method public setTint(Landroid/graphics/drawable/Drawable;I)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "tint"    # I

    .prologue
    .line 224
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 223
    return-void
.end method

.method public setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 229
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 228
    return-void
.end method

.method public setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 234
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    .line 233
    return-void
.end method

.method public wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 239
    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompatLollipop;->wrapForTinting(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.class Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
.super Landroid/graphics/drawable/InsetDrawable;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideDrawable"
.end annotation


# instance fields
.field private final mHasMirroring:Z

.field private mOffset:F

.field private mPosition:F

.field private final mTmpRect:Landroid/graphics/Rect;

.field final synthetic this$0:Landroid/support/v4/app/ActionBarDrawerToggle;


# direct methods
.method private constructor <init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "this$0"    # Landroid/support/v4/app/ActionBarDrawerToggle;
    .param p2, "wrapped"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v0, 0x0

    .line 508
    iput-object p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->this$0:Landroid/support/v4/app/ActionBarDrawerToggle;

    .line 509
    invoke-direct {p0, p2, v0}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 502
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-le v1, v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    iput-boolean v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z

    .line 503
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 508
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;)V
    .registers 4
    .param p1, "this$0"    # Landroid/support/v4/app/ActionBarDrawerToggle;
    .param p2, "wrapped"    # Landroid/graphics/drawable/Drawable;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;-><init>(Landroid/support/v4/app/ActionBarDrawerToggle;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 540
    iget-object v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v3}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 541
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 545
    iget-object v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->this$0:Landroid/support/v4/app/ActionBarDrawerToggle;

    invoke-static {v3}, Landroid/support/v4/app/ActionBarDrawerToggle;->-get0(Landroid/support/v4/app/ActionBarDrawerToggle;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    .line 544
    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    if-ne v3, v1, :cond_41

    .line 546
    .local v1, "isLayoutRTL":Z
    :goto_1e
    if-eqz v1, :cond_43

    const/4 v0, -0x1

    .line 547
    .local v0, "flipRtl":I
    :goto_21
    iget-object v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 548
    .local v2, "width":I
    iget v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    neg-float v3, v3

    int-to-float v4, v2

    mul-float/2addr v3, v4

    iget v4, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    mul-float/2addr v3, v4

    int-to-float v4, v0

    mul-float/2addr v3, v4

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 551
    if-eqz v1, :cond_3a

    iget-boolean v3, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mHasMirroring:Z

    if-eqz v3, :cond_45

    .line 556
    :cond_3a
    :goto_3a
    invoke-super {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 557
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 539
    return-void

    .line 544
    .end local v0    # "flipRtl":I
    .end local v1    # "isLayoutRTL":Z
    .end local v2    # "width":I
    :cond_41
    const/4 v1, 0x0

    goto :goto_1e

    .line 546
    .restart local v1    # "isLayoutRTL":Z
    :cond_43
    const/4 v0, 0x1

    .restart local v0    # "flipRtl":I
    goto :goto_21

    .line 552
    .restart local v2    # "width":I
    :cond_45
    int-to-float v3, v2

    invoke-virtual {p1, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 553
    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_3a
.end method

.method public getPosition()F
    .registers 2

    .prologue
    .line 523
    iget v0, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    return v0
.end method

.method public setOffset(F)V
    .registers 2
    .param p1, "offset"    # F

    .prologue
    .line 534
    iput p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    .line 535
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    .line 533
    return-void
.end method

.method public setPosition(F)V
    .registers 2
    .param p1, "position"    # F

    .prologue
    .line 518
    iput p1, p0, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mPosition:F

    .line 519
    invoke-virtual {p0}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    .line 517
    return-void
.end method

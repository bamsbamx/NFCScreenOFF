.class Landroid/support/v4/widget/CompoundButtonCompatDonut;
.super Ljava/lang/Object;
.source "CompoundButtonCompatDonut.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CompoundButtonCompatDonut"

.field private static sButtonDrawableField:Ljava/lang/reflect/Field;

.field private static sButtonDrawableFieldFetched:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p0, "button"    # Landroid/widget/CompoundButton;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 61
    sget-boolean v2, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableFieldFetched:Z

    if-nez v2, :cond_19

    .line 63
    :try_start_6
    const-class v2, Landroid/widget/CompoundButton;

    const-string/jumbo v3, "mButtonDrawable"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .line 64
    sget-object v2, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_17
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_17} :catch_26

    .line 68
    :goto_17
    sput-boolean v5, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableFieldFetched:Z

    .line 71
    :cond_19
    sget-object v2, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_3d

    .line 73
    :try_start_1d
    sget-object v2, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;
    :try_end_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_25} :catch_31

    return-object v2

    .line 65
    :catch_26
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v2, "CompoundButtonCompatDonut"

    const-string/jumbo v3, "Failed to retrieve mButtonDrawable field"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_17

    .line 74
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_31
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "CompoundButtonCompatDonut"

    const-string/jumbo v3, "Failed to get button drawable via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    sput-object v4, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .line 79
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_3d
    return-object v4
.end method

.method static getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .registers 2
    .param p0, "button"    # Landroid/widget/CompoundButton;

    .prologue
    .line 41
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_b

    .line 42
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    .end local p0    # "button":Landroid/widget/CompoundButton;
    invoke-interface {p0}, Landroid/support/v4/widget/TintableCompoundButton;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 44
    .restart local p0    # "button":Landroid/widget/CompoundButton;
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method static getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .registers 2
    .param p0, "button"    # Landroid/widget/CompoundButton;

    .prologue
    .line 54
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_b

    .line 55
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    .end local p0    # "button":Landroid/widget/CompoundButton;
    invoke-interface {p0}, Landroid/support/v4/widget/TintableCompoundButton;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    .line 57
    .restart local p0    # "button":Landroid/widget/CompoundButton;
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method static setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .registers 3
    .param p0, "button"    # Landroid/widget/CompoundButton;
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 35
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_9

    .line 36
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    .end local p0    # "button":Landroid/widget/CompoundButton;
    invoke-interface {p0, p1}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 34
    :cond_9
    return-void
.end method

.method static setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .registers 3
    .param p0, "button"    # Landroid/widget/CompoundButton;
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 48
    instance-of v0, p0, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v0, :cond_9

    .line 49
    check-cast p0, Landroid/support/v4/widget/TintableCompoundButton;

    .end local p0    # "button":Landroid/widget/CompoundButton;
    invoke-interface {p0, p1}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 47
    :cond_9
    return-void
.end method

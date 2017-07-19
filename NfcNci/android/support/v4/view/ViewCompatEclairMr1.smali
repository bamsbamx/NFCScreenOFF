.class Landroid/support/v4/view/ViewCompatEclairMr1;
.super Ljava/lang/Object;
.source "ViewCompatEclairMr1.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ViewCompat"

.field private static sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOpaque(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public static setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .registers 12
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "enabled"    # Z

    .prologue
    const/4 v9, 0x1

    .line 37
    sget-object v4, Landroid/support/v4/view/ViewCompatEclairMr1;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    if-nez v4, :cond_1d

    .line 39
    :try_start_5
    const-class v4, Landroid/view/ViewGroup;

    .line 40
    const-string/jumbo v5, "setChildrenDrawingOrderEnabled"

    .line 39
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    .line 40
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    .line 39
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Landroid/support/v4/view/ViewCompatEclairMr1;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_5 .. :try_end_18} :catch_2d

    .line 44
    :goto_18
    sget-object v4, Landroid/support/v4/view/ViewCompatEclairMr1;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 47
    :cond_1d
    :try_start_1d
    sget-object v4, Landroid/support/v4/view/ViewCompatEclairMr1;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_2c} :catch_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_2c} :catch_43
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_2c} :catch_38

    .line 36
    :goto_2c
    return-void

    .line 41
    :catch_2d
    move-exception v2

    .line 42
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "ViewCompat"

    const-string/jumbo v5, "Unable to find childrenDrawingOrderEnabled"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_18

    .line 52
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_38
    move-exception v3

    .line 53
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v4, "ViewCompat"

    const-string/jumbo v5, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 50
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_43
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "ViewCompat"

    const-string/jumbo v5, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c

    .line 48
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_4e
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "ViewCompat"

    const-string/jumbo v5, "Unable to invoke childrenDrawingOrderEnabled"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method

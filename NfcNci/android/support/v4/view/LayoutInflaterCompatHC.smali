.class Landroid/support/v4/view/LayoutInflaterCompatHC;
.super Ljava/lang/Object;
.source "LayoutInflaterCompatHC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LayoutInflaterCompatHC"

.field private static sCheckedField:Z

.field private static sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .registers 8
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    .prologue
    const/4 v5, 0x1

    .line 71
    sget-boolean v2, Landroid/support/v4/view/LayoutInflaterCompatHC;->sCheckedField:Z

    if-nez v2, :cond_18

    .line 73
    :try_start_5
    const-class v2, Landroid/view/LayoutInflater;

    const-string/jumbo v3, "mFactory2"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v4/view/LayoutInflaterCompatHC;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    .line 74
    sget-object v2, Landroid/support/v4/view/LayoutInflaterCompatHC;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_16
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_16} :catch_22

    .line 80
    :goto_16
    sput-boolean v5, Landroid/support/v4/view/LayoutInflaterCompatHC;->sCheckedField:Z

    .line 82
    :cond_18
    sget-object v2, Landroid/support/v4/view/LayoutInflaterCompatHC;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_21

    .line 84
    :try_start_1c
    sget-object v2, Landroid/support/v4/view/LayoutInflaterCompatHC;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_21} :catch_4b

    .line 70
    :cond_21
    :goto_21
    return-void

    .line 75
    :catch_22
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v2, "LayoutInflaterCompatHC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "forceSetFactory2 Could not find field \'mFactory2\' on class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 77
    const-class v4, Landroid/view/LayoutInflater;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 78
    const-string/jumbo v4, "; inflation may have unexpected results."

    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 85
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_4b
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "LayoutInflaterCompatHC"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "forceSetFactory2 could not set the Factory2 on LayoutInflater "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 87
    const-string/jumbo v4, "; inflation may have unexpected results."

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21
.end method

.method static setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
    .registers 5
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "factory"    # Landroid/support/v4/view/LayoutInflaterFactory;

    .prologue
    const/4 v1, 0x0

    .line 49
    if-eqz p1, :cond_8

    .line 50
    new-instance v1, Landroid/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;

    invoke-direct {v1, p1}, Landroid/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;-><init>(Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 51
    .local v1, "factory2":Landroid/view/LayoutInflater$Factory2;
    :cond_8
    invoke-virtual {p0, v1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    .line 53
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v0

    .line 54
    .local v0, "f":Landroid/view/LayoutInflater$Factory;
    instance-of v2, v0, Landroid/view/LayoutInflater$Factory2;

    if-eqz v2, :cond_19

    .line 57
    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    .end local v0    # "f":Landroid/view/LayoutInflater$Factory;
    invoke-static {p0, v0}, Landroid/support/v4/view/LayoutInflaterCompatHC;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 48
    :goto_18
    return-void

    .line 60
    .restart local v0    # "f":Landroid/view/LayoutInflater$Factory;
    :cond_19
    invoke-static {p0, v1}, Landroid/support/v4/view/LayoutInflaterCompatHC;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_18
.end method

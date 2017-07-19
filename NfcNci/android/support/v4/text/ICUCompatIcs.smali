.class Landroid/support/v4/text/ICUCompatIcs;
.super Ljava/lang/Object;
.source "ICUCompatIcs.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ICUCompatIcs"

.field private static sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

.field private static sGetScriptMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x0

    .line 34
    :try_start_1
    const-string/jumbo v2, "libcore.icu.ICU"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 35
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_2c

    .line 36
    const-string/jumbo v2, "getScript"

    .line 37
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 36
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    .line 38
    const-string/jumbo v2, "addLikelySubtags"

    .line 39
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    .line 38
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d

    .line 25
    :cond_2c
    :goto_2c
    return-void

    .line 41
    :catch_2d
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Exception;
    sput-object v6, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    .line 43
    sput-object v6, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    .line 46
    const-string/jumbo v2, "ICUCompatIcs"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2c
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;
    .registers 7
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 77
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "localeStr":Ljava/lang/String;
    :try_start_4
    sget-object v4, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_1f

    .line 80
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 81
    .local v0, "args":[Ljava/lang/Object;
    sget-object v4, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_17} :catch_20
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_17} :catch_18

    return-object v4

    .line 87
    .end local v0    # "args":[Ljava/lang/Object;
    :catch_18
    move-exception v2

    .line 89
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v4, "ICUCompatIcs"

    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1f
    :goto_1f
    return-object v3

    .line 83
    :catch_20
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "ICUCompatIcs"

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f
.end method

.method private static getScript(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "localeStr"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 61
    :try_start_1
    sget-object v3, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1c

    .line 62
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v0, v3

    .line 63
    .local v0, "args":[Ljava/lang/Object;
    sget-object v3, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_14} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_14} :catch_15

    return-object v3

    .line 69
    .end local v0    # "args":[Ljava/lang/Object;
    :catch_15
    move-exception v2

    .line 71
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v3, "ICUCompatIcs"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_1c
    :goto_1c
    return-object v5

    .line 65
    :catch_1d
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v3, "ICUCompatIcs"

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1c
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-static {p0}, Landroid/support/v4/text/ICUCompatIcs;->addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "localeWithSubtags":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 53
    invoke-static {v0}, Landroid/support/v4/text/ICUCompatIcs;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 56
    :cond_c
    return-object v1
.end method

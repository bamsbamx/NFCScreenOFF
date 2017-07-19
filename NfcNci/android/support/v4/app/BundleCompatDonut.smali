.class Landroid/support/v4/app/BundleCompatDonut;
.super Ljava/lang/Object;
.source "BundleCompatDonut.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BundleCompatDonut"

.field private static sGetIBinderMethod:Ljava/lang/reflect/Method;

.field private static sGetIBinderMethodFetched:Z

.field private static sPutIBinderMethod:Ljava/lang/reflect/Method;

.field private static sPutIBinderMethodFetched:Z


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBinder(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .registers 11
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 39
    sget-boolean v2, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethodFetched:Z

    if-nez v2, :cond_21

    .line 41
    :try_start_6
    const-class v2, Landroid/os/Bundle;

    const-string/jumbo v3, "getIBinder"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    .line 42
    sget-object v2, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_1f} :catch_34

    .line 46
    :goto_1f
    sput-boolean v7, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethodFetched:Z

    .line 49
    :cond_21
    sget-object v2, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_4b

    .line 51
    :try_start_25
    sget-object v2, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;
    :try_end_33
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_25 .. :try_end_33} :catch_3f
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_33} :catch_3f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_33} :catch_3f

    return-object v2

    .line 43
    :catch_34
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "BundleCompatDonut"

    const-string/jumbo v3, "Failed to retrieve getIBinder method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1f

    .line 53
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_3f
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BundleCompatDonut"

    const-string/jumbo v3, "Failed to invoke getIBinder via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    sput-object v8, Landroid/support/v4/app/BundleCompatDonut;->sGetIBinderMethod:Ljava/lang/reflect/Method;

    .line 58
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4b
    return-object v8
.end method

.method public static putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 12
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 62
    sget-boolean v2, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethodFetched:Z

    if-nez v2, :cond_26

    .line 65
    :try_start_6
    const-class v2, Landroid/os/Bundle;

    const-string/jumbo v3, "putIBinder"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/IBinder;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 64
    sput-object v2, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    .line 66
    sget-object v2, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_24
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_24} :catch_39

    .line 70
    :goto_24
    sput-boolean v7, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethodFetched:Z

    .line 73
    :cond_26
    sget-object v2, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_38

    .line 75
    :try_start_2a
    sget-object v2, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2a .. :try_end_38} :catch_44
    .catch Ljava/lang/IllegalAccessException; {:try_start_2a .. :try_end_38} :catch_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2a .. :try_end_38} :catch_44

    .line 61
    :cond_38
    :goto_38
    return-void

    .line 67
    :catch_39
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "BundleCompatDonut"

    const-string/jumbo v3, "Failed to retrieve putIBinder method"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_24

    .line 77
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_44
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "BundleCompatDonut"

    const-string/jumbo v3, "Failed to invoke putIBinder via reflection"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    sput-object v8, Landroid/support/v4/app/BundleCompatDonut;->sPutIBinderMethod:Ljava/lang/reflect/Method;

    goto :goto_38
.end method

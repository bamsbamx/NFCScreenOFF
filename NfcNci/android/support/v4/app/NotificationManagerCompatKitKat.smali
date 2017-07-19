.class Landroid/support/v4/app/NotificationManagerCompatKitKat;
.super Ljava/lang/Object;
.source "NotificationManagerCompatKitKat.java"


# static fields
.field private static final CHECK_OP_NO_THROW:Ljava/lang/String; = "checkOpNoThrow"

.field private static final OP_POST_NOTIFICATION:Ljava/lang/String; = "OP_POST_NOTIFICATION"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areNotificationsEnabled(Landroid/content/Context;)Z
    .registers 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 31
    const-string/jumbo v9, "appops"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    .line 32
    .local v1, "appOps":Landroid/app/AppOpsManager;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 33
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 34
    .local v6, "pkg":Ljava/lang/String;
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 36
    .local v7, "uid":I
    :try_start_19
    const-class v9, Landroid/app/AppOpsManager;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 37
    .local v2, "appOpsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v9, "checkOpNoThrow"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v13, v12, v14

    .line 38
    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x1

    aput-object v13, v12, v14

    const-class v13, Ljava/lang/String;

    const/4 v14, 0x2

    aput-object v13, v12, v14

    .line 37
    invoke-virtual {v2, v9, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 39
    .local v3, "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    const-string/jumbo v9, "OP_POST_NOTIFICATION"

    invoke-virtual {v2, v9}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 40
    .local v5, "opPostNotificationValue":Ljava/lang/reflect/Field;
    const-class v9, Ljava/lang/Integer;

    invoke-virtual {v5, v9}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 41
    .local v8, "value":I
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    aput-object v12, v9, v13

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v9, v13

    const/4 v12, 0x2

    aput-object v6, v9, v12

    invoke-virtual {v3, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_6c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_6c} :catch_73
    .catch Ljava/lang/NoSuchMethodException; {:try_start_19 .. :try_end_6c} :catch_73
    .catch Ljava/lang/NoSuchFieldException; {:try_start_19 .. :try_end_6c} :catch_73
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_19 .. :try_end_6c} :catch_73
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_6c} :catch_73
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_6c} :catch_73

    move-result v9

    if-nez v9, :cond_71

    move v9, v10

    :goto_70
    return v9

    :cond_71
    move v9, v11

    goto :goto_70

    .line 44
    .end local v2    # "appOpsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "checkOpNoThrowMethod":Ljava/lang/reflect/Method;
    .end local v5    # "opPostNotificationValue":Ljava/lang/reflect/Field;
    .end local v8    # "value":I
    :catch_73
    move-exception v4

    .line 45
    .local v4, "e":Ljava/lang/Exception;
    return v10
.end method

.class Landroid/support/v4/media/session/MediaSessionCompatApi24;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi24.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;,
        Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaSessionCompatApi24"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;)Ljava/lang/Object;
    .registers 2
    .param p0, "callback"    # Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;

    .prologue
    .line 31
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;)V

    return-object v0
.end method

.method public static getCallingPackage(Ljava/lang/Object;)Ljava/lang/String;
    .registers 7
    .param p0, "sessionObj"    # Ljava/lang/Object;

    .prologue
    move-object v2, p0

    .line 35
    check-cast v2, Landroid/media/session/MediaSession;

    .line 37
    .local v2, "session":Landroid/media/session/MediaSession;
    :try_start_3
    invoke-virtual {v2}, Landroid/media/session/MediaSession;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "getCallingPackage"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 38
    .local v1, "getCallingPackageMethod":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_1a} :catch_1b

    return-object v3

    .line 39
    .end local v1    # "getCallingPackageMethod":Ljava/lang/reflect/Method;
    :catch_1b
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    const-string/jumbo v3, "MediaSessionCompatApi24"

    const-string/jumbo v4, "Cannot execute MediaSession.getCallingPackage()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    const/4 v3, 0x0

    return-object v3
.end method

.class public Landroid/support/v4/os/UserManagerCompat;
.super Ljava/lang/Object;
.source "UserManagerCompat.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUserRunningAndLocked(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 40
    invoke-static {p0}, Landroid/support/v4/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static isUserRunningAndUnlocked(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    invoke-static {p0}, Landroid/support/v4/os/UserManagerCompat;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isUserUnlocked(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastN()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 65
    invoke-static {p0}, Landroid/support/v4/os/UserManagerCompatApi24;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 67
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

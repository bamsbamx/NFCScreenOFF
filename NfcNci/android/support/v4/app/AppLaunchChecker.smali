.class public Landroid/support/v4/app/AppLaunchChecker;
.super Ljava/lang/Object;
.source "AppLaunchChecker.java"


# static fields
.field private static final KEY_STARTED_FROM_LAUNCHER:Ljava/lang/String; = "startedFromLauncher"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "android.support.AppLaunchChecker"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasStartedFromLauncher(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 51
    const-string/jumbo v0, "android.support.AppLaunchChecker"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "startedFromLauncher"

    .line 51
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static onActivityCreate(Landroid/app/Activity;)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 67
    const-string/jumbo v2, "android.support.AppLaunchChecker"

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 68
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v2, "startedFromLauncher"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 69
    return-void

    .line 72
    :cond_12
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, "launchIntent":Landroid/content/Intent;
    if-nez v0, :cond_19

    .line 74
    return-void

    .line 77
    :cond_19
    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    .line 78
    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_38

    .line 79
    const-string/jumbo v2, "android.intent.category.LEANBACK_LAUNCHER"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v2

    .line 77
    if-eqz v2, :cond_4b

    .line 80
    :cond_38
    invoke-static {}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->getInstance()Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;

    move-result-object v2

    .line 81
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "startedFromLauncher"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 80
    invoke-virtual {v2, v3}, Landroid/support/v4/content/SharedPreferencesCompat$EditorCompat;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 66
    :cond_4b
    return-void
.end method

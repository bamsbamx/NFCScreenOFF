.class Landroid/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;
.super Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;
.source "ConfigurationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/res/ConfigurationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "JellybeanMr1Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;-><init>(Landroid/support/v4/content/res/ConfigurationHelper$HoneycombMr2Impl;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Landroid/support/v4/content/res/ConfigurationHelper$JellybeanMr1Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getDensityDpi(Landroid/content/res/Resources;)I
    .registers 3
    .param p1, "resources"    # Landroid/content/res/Resources;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 93
    invoke-static {p1}, Landroid/support/v4/content/res/ConfigurationHelperJellybeanMr1;->getDensityDpi(Landroid/content/res/Resources;)I

    move-result v0

    return v0
.end method

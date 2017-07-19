.class public interface abstract Lcom/sonymobile/nfc/InstalledPackageCache$OnPackageUpdateListener;
.super Ljava/lang/Object;
.source "InstalledPackageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/InstalledPackageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPackageUpdateListener"
.end annotation


# virtual methods
.method public abstract onPackageUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation
.end method

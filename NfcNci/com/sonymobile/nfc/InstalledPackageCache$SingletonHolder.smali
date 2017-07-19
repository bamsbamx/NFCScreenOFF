.class Lcom/sonymobile/nfc/InstalledPackageCache$SingletonHolder;
.super Ljava/lang/Object;
.source "InstalledPackageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/InstalledPackageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/sonymobile/nfc/InstalledPackageCache;


# direct methods
.method static synthetic -get0()Lcom/sonymobile/nfc/InstalledPackageCache;
    .registers 1

    sget-object v0, Lcom/sonymobile/nfc/InstalledPackageCache$SingletonHolder;->sInstance:Lcom/sonymobile/nfc/InstalledPackageCache;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 66
    new-instance v0, Lcom/sonymobile/nfc/InstalledPackageCache;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/nfc/InstalledPackageCache;-><init>(Landroid/content/Context;Lcom/sonymobile/nfc/InstalledPackageCache;)V

    .line 65
    sput-object v0, Lcom/sonymobile/nfc/InstalledPackageCache$SingletonHolder;->sInstance:Lcom/sonymobile/nfc/InstalledPackageCache;

    .line 64
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

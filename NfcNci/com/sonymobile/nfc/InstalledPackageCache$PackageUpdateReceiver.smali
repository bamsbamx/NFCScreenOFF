.class Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InstalledPackageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/InstalledPackageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PackageUpdateReceiver"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 228
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateReceiver;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 230
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 232
    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 231
    if-nez v1, :cond_28

    .line 233
    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 231
    if-nez v1, :cond_28

    .line 234
    const-string/jumbo v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 231
    if-eqz v1, :cond_2f

    .line 235
    :cond_28
    invoke-static {}, Lcom/sonymobile/nfc/InstalledPackageCache;->getInstance()Lcom/sonymobile/nfc/InstalledPackageCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/nfc/InstalledPackageCache;->update()V

    .line 229
    :cond_2f
    return-void
.end method

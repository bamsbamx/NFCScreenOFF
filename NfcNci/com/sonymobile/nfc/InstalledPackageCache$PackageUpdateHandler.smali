.class Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateHandler;
.super Landroid/os/Handler;
.source "InstalledPackageCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/InstalledPackageCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageUpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/InstalledPackageCache;


# direct methods
.method public constructor <init>(Lcom/sonymobile/nfc/InstalledPackageCache;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/InstalledPackageCache;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateHandler;->this$0:Lcom/sonymobile/nfc/InstalledPackageCache;

    .line 211
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 210
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 216
    invoke-static {}, Lcom/sonymobile/nfc/InstalledPackageCache;->-get0()Z

    move-result v3

    if-eqz v3, :cond_f

    const-string/jumbo v3, "InstalledPackageCache"

    const-string/jumbo v4, "updating package cache..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_f
    iget-object v3, p0, Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateHandler;->this$0:Lcom/sonymobile/nfc/InstalledPackageCache;

    invoke-static {v3}, Lcom/sonymobile/nfc/InstalledPackageCache;->-get1(Lcom/sonymobile/nfc/InstalledPackageCache;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 218
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v3, p0, Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateHandler;->this$0:Lcom/sonymobile/nfc/InstalledPackageCache;

    iget v4, p1, Landroid/os/Message;->arg1:I

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v4}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonymobile/nfc/InstalledPackageCache;->-set0(Lcom/sonymobile/nfc/InstalledPackageCache;Ljava/util/List;)Ljava/util/List;

    .line 220
    iget-object v3, p0, Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateHandler;->this$0:Lcom/sonymobile/nfc/InstalledPackageCache;

    invoke-static {v3}, Lcom/sonymobile/nfc/InstalledPackageCache;->-get3(Lcom/sonymobile/nfc/InstalledPackageCache;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 221
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    if-ge v0, v2, :cond_4a

    .line 222
    iget-object v3, p0, Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateHandler;->this$0:Lcom/sonymobile/nfc/InstalledPackageCache;

    invoke-static {v3}, Lcom/sonymobile/nfc/InstalledPackageCache;->-get3(Lcom/sonymobile/nfc/InstalledPackageCache;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/nfc/InstalledPackageCache$OnPackageUpdateListener;

    iget-object v4, p0, Lcom/sonymobile/nfc/InstalledPackageCache$PackageUpdateHandler;->this$0:Lcom/sonymobile/nfc/InstalledPackageCache;

    invoke-static {v4}, Lcom/sonymobile/nfc/InstalledPackageCache;->-get2(Lcom/sonymobile/nfc/InstalledPackageCache;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/sonymobile/nfc/InstalledPackageCache$OnPackageUpdateListener;->onPackageUpdated(Ljava/util/List;)V

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 224
    :cond_4a
    invoke-static {}, Lcom/sonymobile/nfc/InstalledPackageCache;->-get0()Z

    move-result v3

    if-eqz v3, :cond_59

    const-string/jumbo v3, "InstalledPackageCache"

    const-string/jumbo v4, "updating package cache... finished."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_59
    return-void
.end method

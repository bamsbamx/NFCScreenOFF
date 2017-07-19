.class Lcom/sonymobile/nfc/InstalledPackageCache$1;
.super Ljava/lang/Object;
.source "InstalledPackageCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/InstalledPackageCache;->waitUpdated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/InstalledPackageCache;

.field final synthetic val$condition:Landroid/os/ConditionVariable;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/InstalledPackageCache;Landroid/os/ConditionVariable;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/InstalledPackageCache;
    .param p2, "val$condition"    # Landroid/os/ConditionVariable;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/sonymobile/nfc/InstalledPackageCache$1;->this$0:Lcom/sonymobile/nfc/InstalledPackageCache;

    iput-object p2, p0, Lcom/sonymobile/nfc/InstalledPackageCache$1;->val$condition:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonymobile/nfc/InstalledPackageCache$1;->val$condition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 129
    return-void
.end method

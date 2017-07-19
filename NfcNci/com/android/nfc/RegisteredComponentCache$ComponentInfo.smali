.class public Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;
.super Ljava/lang/Object;
.source "RegisteredComponentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/RegisteredComponentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ComponentInfo"
.end annotation


# instance fields
.field public final resolveInfo:Landroid/content/pm/ResolveInfo;

.field public final techs:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/pm/ResolveInfo;[Ljava/lang/String;)V
    .registers 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "techs"    # [Ljava/lang/String;

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    .line 93
    iput-object p2, p0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->techs:[Ljava/lang/String;

    .line 91
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ComponentInfo: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "out":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    const-string/jumbo v2, ", techs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v3, p0, Lcom/android/nfc/RegisteredComponentCache$ComponentInfo;->techs:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_17
    if-ge v2, v4, :cond_27

    aget-object v1, v3, v2

    .line 102
    .local v1, "tech":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string/jumbo v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 105
    .end local v1    # "tech":Ljava/lang/String;
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

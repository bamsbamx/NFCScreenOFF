.class final Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
.super Ljava/lang/Object;
.source "RegisteredAidCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/RegisteredAidCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ServiceAidInfo"
.end annotation


# instance fields
.field aid:Ljava/lang/String;

.field category:Ljava/lang/String;

.field service:Landroid/nfc/cardemulation/ApduServiceInfo;

.field final synthetic this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/RegisteredAidCache;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->this$0:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    if-ne p0, p1, :cond_5

    return v4

    .line 87
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    :cond_11
    return v3

    :cond_12
    move-object v0, p1

    .line 89
    check-cast v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;

    .line 91
    .local v0, "that":Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    return v3

    .line 92
    :cond_20
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v3

    .line 93
    :cond_2b
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v1, v2}, Landroid/nfc/cardemulation/ApduServiceInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_36

    return v3

    .line 95
    :cond_36
    return v4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->hashCode()I

    move-result v0

    .line 101
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 102
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 103
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ServiceAidInfo{service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->service:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    const-string/jumbo v1, ", aid=\'"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->aid:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    const-string/jumbo v1, ", category=\'"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredAidCache$ServiceAidInfo;->category:Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    const/16 v1, 0x7d

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

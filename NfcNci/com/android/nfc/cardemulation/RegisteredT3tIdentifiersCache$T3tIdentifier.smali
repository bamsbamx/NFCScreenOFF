.class final Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
.super Ljava/lang/Object;
.source "RegisteredT3tIdentifiersCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "T3tIdentifier"
.end annotation


# instance fields
.field public final nfcid2:Ljava/lang/String;

.field public final systemCode:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;


# direct methods
.method constructor <init>(Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;
    .param p2, "systemCode"    # Ljava/lang/String;
    .param p3, "nfcid2"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->this$0:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->systemCode:Ljava/lang/String;

    .line 52
    iput-object p3, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->nfcid2:Ljava/lang/String;

    .line 50
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    if-ne p0, p1, :cond_5

    return v4

    .line 58
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_12

    :cond_11
    return v3

    :cond_12
    move-object v0, p1

    .line 60
    check-cast v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;

    .line 61
    .local v0, "that":Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->systemCode:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->systemCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    return v3

    .line 62
    :cond_20
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->nfcid2:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->nfcid2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v3

    .line 64
    :cond_2b
    return v4
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->systemCode:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 70
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache$T3tIdentifier;->nfcid2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 71
    return v0
.end method

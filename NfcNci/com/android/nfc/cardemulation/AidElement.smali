.class public Lcom/android/nfc/cardemulation/AidElement;
.super Ljava/lang/Object;
.source "AidElement.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field static final ROUTE_WIEGHT_FOREGROUND:I = 0x3

.field static final ROUTE_WIEGHT_OTHER:I = 0x1

.field static final ROUTE_WIEGHT_PAYMENT:I = 0x2


# instance fields
.field private mAid:Ljava/lang/String;

.field private mPowerState:I

.field private mRouteLocation:I

.field private mWeight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;III)V
    .registers 5
    .param p1, "aid"    # Ljava/lang/String;
    .param p2, "weight"    # I
    .param p3, "route"    # I
    .param p4, "power"    # I

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/nfc/cardemulation/AidElement;->mAid:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/android/nfc/cardemulation/AidElement;->mWeight:I

    .line 41
    iput p3, p0, Lcom/android/nfc/cardemulation/AidElement;->mRouteLocation:I

    .line 42
    iput p4, p0, Lcom/android/nfc/cardemulation/AidElement;->mPowerState:I

    .line 38
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    move-object v0, p1

    .line 76
    check-cast v0, Lcom/android/nfc/cardemulation/AidElement;

    .line 78
    .local v0, "elem":Lcom/android/nfc/cardemulation/AidElement;
    iget v1, p0, Lcom/android/nfc/cardemulation/AidElement;->mWeight:I

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->getWeight()I

    move-result v2

    if-le v1, v2, :cond_d

    .line 79
    const/4 v1, -0x1

    return v1

    .line 81
    :cond_d
    iget v1, p0, Lcom/android/nfc/cardemulation/AidElement;->mWeight:I

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->getWeight()I

    move-result v2

    if-ge v1, v2, :cond_17

    .line 82
    const/4 v1, 0x1

    return v1

    .line 84
    :cond_17
    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/AidElement;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/android/nfc/cardemulation/AidElement;->mAid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public getAid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AidElement;->mAid:Ljava/lang/String;

    return-object v0
.end method

.method public getPowerState()I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/android/nfc/cardemulation/AidElement;->mPowerState:I

    return v0
.end method

.method public getRouteLocation()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/android/nfc/cardemulation/AidElement;->mRouteLocation:I

    return v0
.end method

.method public getWeight()I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lcom/android/nfc/cardemulation/AidElement;->mWeight:I

    return v0
.end method

.method public setAid(Ljava/lang/String;)V
    .registers 2
    .param p1, "aid"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/nfc/cardemulation/AidElement;->mAid:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setPowerState(I)V
    .registers 2
    .param p1, "powerState"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/android/nfc/cardemulation/AidElement;->mPowerState:I

    .line 57
    return-void
.end method

.method public setRouteLocation(I)V
    .registers 2
    .param p1, "routeLocation"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/android/nfc/cardemulation/AidElement;->mRouteLocation:I

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "aid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/AidElement;->mAid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/cardemulation/AidElement;->mRouteLocation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    const-string/jumbo v1, ", power: "

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    iget v1, p0, Lcom/android/nfc/cardemulation/AidElement;->mPowerState:I

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    const-string/jumbo v1, ",weight: "

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 90
    iget v1, p0, Lcom/android/nfc/cardemulation/AidElement;->mWeight:I

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

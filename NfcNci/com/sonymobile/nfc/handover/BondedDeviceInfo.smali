.class Lcom/sonymobile/nfc/handover/BondedDeviceInfo;
.super Ljava/lang/Object;
.source "BondedDeviceInfoAccess.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mAddrList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfo;->mAddrList:Ljava/util/ArrayList;

    .line 34
    return-void
.end method


# virtual methods
.method contains(Ljava/lang/String;)Z
    .registers 3
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfo;->mAddrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getAddress()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfo;->mAddrList:Ljava/util/ArrayList;

    return-object v0
.end method

.method removeAddress(Ljava/lang/String;)Z
    .registers 3
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfo;->mAddrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 53
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfo;->mAddrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 54
    const/4 v0, 0x1

    return v0

    .line 56
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method setAddress(Ljava/lang/String;)Z
    .registers 3
    .param p1, "addr"    # Ljava/lang/String;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfo;->mAddrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 45
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/BondedDeviceInfo;->mAddrList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    const/4 v0, 0x1

    return v0

    .line 48
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

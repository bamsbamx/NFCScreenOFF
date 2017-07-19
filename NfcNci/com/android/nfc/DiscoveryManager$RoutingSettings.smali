.class Lcom/android/nfc/DiscoveryManager$RoutingSettings;
.super Ljava/lang/Object;
.source "DiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/DiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RoutingSettings"
.end annotation


# instance fields
.field private final protoRoutingEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/nfc/DiscoveryManager$Routing;",
            ">;"
        }
    .end annotation
.end field

.field private final techRoutingEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/nfc/DiscoveryManager$Routing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/nfc/DiscoveryManager$RoutingSettings;ILcom/android/nfc/DiscoveryManager$Routing;)Z
    .registers 4
    .param p1, "seId"    # I
    .param p2, "r"    # Lcom/android/nfc/DiscoveryManager$Routing;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/DiscoveryManager$RoutingSettings;->hasProtoRouting(ILcom/android/nfc/DiscoveryManager$Routing;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/nfc/DiscoveryManager$RoutingSettings;ILcom/android/nfc/DiscoveryManager$Routing;)Z
    .registers 4
    .param p1, "seId"    # I
    .param p2, "r"    # Lcom/android/nfc/DiscoveryManager$Routing;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/DiscoveryManager$RoutingSettings;->hasTechRouting(ILcom/android/nfc/DiscoveryManager$Routing;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/nfc/DiscoveryManager$RoutingSettings;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/nfc/DiscoveryManager$RoutingSettings;->clearRouting()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/nfc/DiscoveryManager$RoutingSettings;IIII)V
    .registers 5
    .param p1, "seId"    # I
    .param p2, "switchOn"    # I
    .param p3, "switchOff"    # I
    .param p4, "batteryOff"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/nfc/DiscoveryManager$RoutingSettings;->setProtoRouting(IIII)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/nfc/DiscoveryManager$RoutingSettings;IIII)V
    .registers 5
    .param p1, "seId"    # I
    .param p2, "switchOn"    # I
    .param p3, "switchOff"    # I
    .param p4, "batteryOff"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/nfc/DiscoveryManager$RoutingSettings;->setTechRouting(IIII)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    iput-object v0, p0, Lcom/android/nfc/DiscoveryManager$RoutingSettings;->techRoutingEntries:Ljava/util/HashMap;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    iput-object v0, p0, Lcom/android/nfc/DiscoveryManager$RoutingSettings;->protoRoutingEntries:Ljava/util/HashMap;

    .line 120
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/DiscoveryManager$RoutingSettings;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/nfc/DiscoveryManager$RoutingSettings;-><init>()V

    return-void
.end method

.method private clearRouting()V
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/nfc/DiscoveryManager$RoutingSettings;->techRoutingEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 133
    iget-object v0, p0, Lcom/android/nfc/DiscoveryManager$RoutingSettings;->protoRoutingEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 131
    return-void
.end method

.method private getProtoRouting(I)Lcom/android/nfc/DiscoveryManager$Routing;
    .registers 5
    .param p1, "seId"    # I

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/nfc/DiscoveryManager$RoutingSettings;->protoRoutingEntries:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DiscoveryManager$Routing;

    .line 143
    .local v0, "r":Lcom/android/nfc/DiscoveryManager$Routing;
    return-object v0
.end method

.method private getTechRouting(I)Lcom/android/nfc/DiscoveryManager$Routing;
    .registers 5
    .param p1, "seId"    # I

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/nfc/DiscoveryManager$RoutingSettings;->techRoutingEntries:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DiscoveryManager$Routing;

    .line 138
    .local v0, "r":Lcom/android/nfc/DiscoveryManager$Routing;
    return-object v0
.end method

.method private hasProtoRouting(ILcom/android/nfc/DiscoveryManager$Routing;)Z
    .registers 7
    .param p1, "seId"    # I
    .param p2, "r"    # Lcom/android/nfc/DiscoveryManager$Routing;

    .prologue
    .line 162
    const/4 v1, 0x0

    .line 163
    .local v1, "ret":Z
    const/4 v0, 0x0

    .line 164
    .local v0, "cr":Lcom/android/nfc/DiscoveryManager$Routing;
    invoke-direct {p0, p1}, Lcom/android/nfc/DiscoveryManager$RoutingSettings;->getProtoRouting(I)Lcom/android/nfc/DiscoveryManager$Routing;

    move-result-object v0

    .line 165
    .local v0, "cr":Lcom/android/nfc/DiscoveryManager$Routing;
    if-eqz v0, :cond_1e

    if-eqz p2, :cond_1e

    .line 166
    iget v2, v0, Lcom/android/nfc/DiscoveryManager$Routing;->switchOn:I

    iget v3, p2, Lcom/android/nfc/DiscoveryManager$Routing;->switchOn:I

    if-ne v2, v3, :cond_1d

    iget v2, v0, Lcom/android/nfc/DiscoveryManager$Routing;->switchOff:I

    iget v3, p2, Lcom/android/nfc/DiscoveryManager$Routing;->switchOff:I

    if-ne v2, v3, :cond_1d

    .line 167
    iget v2, v0, Lcom/android/nfc/DiscoveryManager$Routing;->batteryOff:I

    iget v3, p2, Lcom/android/nfc/DiscoveryManager$Routing;->batteryOff:I

    if-ne v2, v3, :cond_1d

    .line 168
    const/4 v1, 0x1

    .line 173
    :cond_1d
    :goto_1d
    return v1

    .line 170
    :cond_1e
    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    .line 171
    const/4 v1, 0x1

    goto :goto_1d
.end method

.method private hasTechRouting(ILcom/android/nfc/DiscoveryManager$Routing;)Z
    .registers 7
    .param p1, "seId"    # I
    .param p2, "r"    # Lcom/android/nfc/DiscoveryManager$Routing;

    .prologue
    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, "ret":Z
    const/4 v0, 0x0

    .line 149
    .local v0, "cr":Lcom/android/nfc/DiscoveryManager$Routing;
    invoke-direct {p0, p1}, Lcom/android/nfc/DiscoveryManager$RoutingSettings;->getTechRouting(I)Lcom/android/nfc/DiscoveryManager$Routing;

    move-result-object v0

    .line 150
    .local v0, "cr":Lcom/android/nfc/DiscoveryManager$Routing;
    if-eqz v0, :cond_1e

    if-eqz p2, :cond_1e

    .line 151
    iget v2, v0, Lcom/android/nfc/DiscoveryManager$Routing;->switchOn:I

    iget v3, p2, Lcom/android/nfc/DiscoveryManager$Routing;->switchOn:I

    if-ne v2, v3, :cond_1d

    iget v2, v0, Lcom/android/nfc/DiscoveryManager$Routing;->switchOff:I

    iget v3, p2, Lcom/android/nfc/DiscoveryManager$Routing;->switchOff:I

    if-ne v2, v3, :cond_1d

    .line 152
    iget v2, v0, Lcom/android/nfc/DiscoveryManager$Routing;->batteryOff:I

    iget v3, p2, Lcom/android/nfc/DiscoveryManager$Routing;->batteryOff:I

    if-ne v2, v3, :cond_1d

    .line 153
    const/4 v1, 0x1

    .line 158
    :cond_1d
    :goto_1d
    return v1

    .line 155
    :cond_1e
    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    .line 156
    const/4 v1, 0x1

    goto :goto_1d
.end method

.method private setProtoRouting(IIII)V
    .registers 8
    .param p1, "seId"    # I
    .param p2, "switchOn"    # I
    .param p3, "switchOff"    # I
    .param p4, "batteryOff"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/nfc/DiscoveryManager$RoutingSettings;->protoRoutingEntries:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/nfc/DiscoveryManager$Routing;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/nfc/DiscoveryManager$Routing;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method private setTechRouting(IIII)V
    .registers 8
    .param p1, "seId"    # I
    .param p2, "switchOn"    # I
    .param p3, "switchOff"    # I
    .param p4, "batteryOff"    # I

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/nfc/DiscoveryManager$RoutingSettings;->techRoutingEntries:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/android/nfc/DiscoveryManager$Routing;

    invoke-direct {v2, p1, p2, p3, p4}, Lcom/android/nfc/DiscoveryManager$Routing;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

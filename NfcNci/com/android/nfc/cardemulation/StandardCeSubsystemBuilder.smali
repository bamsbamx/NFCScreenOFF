.class public Lcom/android/nfc/cardemulation/StandardCeSubsystemBuilder;
.super Ljava/lang/Object;
.source "StandardCeSubsystemBuilder.java"

# interfaces
.implements Lcom/android/nfc/cardemulation/CeSubsystemBuilder;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAidRoutingManager()Lcom/android/nfc/cardemulation/AidRoutingManager;
    .registers 2

    .prologue
    .line 23
    new-instance v0, Lcom/android/nfc/cardemulation/AidRoutingManager;

    invoke-direct {v0}, Lcom/android/nfc/cardemulation/AidRoutingManager;-><init>()V

    return-object v0
.end method

.method public createAidRoutingSimulator(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)Lcom/android/nfc/cardemulation/AidRoutingSimulator;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "routingManager"    # Lcom/android/nfc/cardemulation/AidRoutingManager;

    .prologue
    .line 41
    new-instance v0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;

    invoke-direct {v0, p1, p2}, Lcom/android/nfc/cardemulation/AidRoutingSimulator;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V

    return-object v0
.end method

.method public createHostEmulationManager(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)Lcom/android/nfc/cardemulation/HostEmulationManager;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aidCache"    # Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .prologue
    .line 35
    new-instance v0, Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-direct {v0, p1, p2}, Lcom/android/nfc/cardemulation/HostEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    return-object v0
.end method

.method public createRegisteredAidCache(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)Lcom/android/nfc/cardemulation/RegisteredAidCache;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "routingManager"    # Lcom/android/nfc/cardemulation/AidRoutingManager;

    .prologue
    .line 29
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V

    return-object v0
.end method

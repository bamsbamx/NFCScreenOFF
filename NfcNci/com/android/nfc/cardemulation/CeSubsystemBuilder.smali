.class public interface abstract Lcom/android/nfc/cardemulation/CeSubsystemBuilder;
.super Ljava/lang/Object;
.source "CeSubsystemBuilder.java"


# virtual methods
.method public abstract createAidRoutingManager()Lcom/android/nfc/cardemulation/AidRoutingManager;
.end method

.method public abstract createAidRoutingSimulator(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)Lcom/android/nfc/cardemulation/AidRoutingSimulator;
.end method

.method public abstract createHostEmulationManager(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)Lcom/android/nfc/cardemulation/HostEmulationManager;
.end method

.method public abstract createRegisteredAidCache(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)Lcom/android/nfc/cardemulation/RegisteredAidCache;
.end method

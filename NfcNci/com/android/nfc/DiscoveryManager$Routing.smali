.class public Lcom/android/nfc/DiscoveryManager$Routing;
.super Ljava/lang/Object;
.source "DiscoveryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/DiscoveryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Routing"
.end annotation


# instance fields
.field public final batteryOff:I

.field public final seId:I

.field public final switchOff:I

.field public final switchOn:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "seId"    # I
    .param p2, "switchOn"    # I
    .param p3, "switchOff"    # I
    .param p4, "batteryOff"    # I

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput p1, p0, Lcom/android/nfc/DiscoveryManager$Routing;->seId:I

    .line 108
    iput p2, p0, Lcom/android/nfc/DiscoveryManager$Routing;->switchOn:I

    .line 109
    iput p3, p0, Lcom/android/nfc/DiscoveryManager$Routing;->switchOff:I

    .line 110
    iput p4, p0, Lcom/android/nfc/DiscoveryManager$Routing;->batteryOff:I

    .line 106
    return-void
.end method

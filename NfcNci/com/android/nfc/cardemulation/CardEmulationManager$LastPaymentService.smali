.class Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;
.super Ljava/lang/Object;
.source "CardEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/CardEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LastPaymentService"
.end annotation


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public defaultRemoved:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1019
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1020
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;->componentName:Landroid/content/ComponentName;

    .line 1021
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;->defaultRemoved:Z

    .line 1019
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;)V
    .registers 2

    .prologue
    invoke-direct {p0}, Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;-><init>()V

    return-void
.end method

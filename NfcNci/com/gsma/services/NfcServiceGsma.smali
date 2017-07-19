.class public Lcom/gsma/services/NfcServiceGsma;
.super Landroid/app/Service;
.source "NfcServiceGsma.java"


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "NfcServiceGsma"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 29
    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v1, "user"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    .line 28
    :goto_14
    sput-boolean v0, Lcom/gsma/services/NfcServiceGsma;->DBG:Z

    .line 27
    return-void

    .line 29
    :cond_17
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    if-nez v0, :cond_15

    .line 35
    sget-boolean v0, Lcom/gsma/services/NfcServiceGsma;->DBG:Z

    if-eqz v0, :cond_14

    const-string/jumbo v0, "NfcServiceGsma"

    const-string/jumbo v1, "NfcService is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_14
    return-object v2

    .line 39
    :cond_15
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->getNfcAdapterGsmaInterface()Lcom/gsma/services/INfcAdapterGsma$Stub;

    move-result-object v0

    return-object v0
.end method

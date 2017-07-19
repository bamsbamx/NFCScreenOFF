.class public Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterBuilder;
.super Ljava/lang/Object;
.source "WifiApClientCounterBuilder.java"


# static fields
.field private static final WIFI_LIB_NAME:Ljava/lang/String; = "com.sonymobile.wifi.api_1"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;)Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;

    .prologue
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "libs":[Ljava/lang/String;
    if-eqz v0, :cond_1d

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "com.sonymobile.wifi.api_1"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 22
    new-instance v1, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithBroadcast;-><init>(Landroid/content/Context;Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;)V

    return-object v1

    .line 24
    :cond_1d
    new-instance v1, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;-><init>(Landroid/content/Context;Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;)V

    return-object v1
.end method

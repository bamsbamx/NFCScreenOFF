.class public Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;
.super Ljava/lang/Object;
.source "WifiP2pApiClientBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$1;,
        Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$Callback;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static TAG:Ljava/lang/String; = null

.field private static final WIFI_LIB_NAME:Ljava/lang/String; = "com.sonymobile.wifi.api_1"


# instance fields
.field private mApiClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

.field private final mCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$Callback;

.field private final mClientCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$Callback;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;)Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->mApiClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;)Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$Callback;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->mCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$Callback;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->invokeCallback()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string/jumbo v0, "WifiP2pApiClientBuilder"

    sput-object v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->TAG:Ljava/lang/String;

    .line 20
    sget-boolean v0, Lcom/android/nfc/beam/BeamManager;->DBG:Z

    sput-boolean v0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->DBG:Z

    .line 18
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$Callback;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cb"    # Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$Callback;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$1;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;)V

    iput-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->mClientCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$Callback;

    .line 43
    iput-object p1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->mCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$Callback;

    .line 46
    iget-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "libs":[Ljava/lang/String;
    if-eqz v0, :cond_3f

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string/jumbo v2, "com.sonymobile.wifi.api_1"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 49
    sget-boolean v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->DBG:Z

    if-eqz v1, :cond_33

    sget-object v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Wi-Fi Api is supported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_33
    new-instance v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->mClientCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$Callback;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient;-><init>(Landroid/content/Context;Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClient$Callback;)V

    iput-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->mApiClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    .line 42
    :goto_3e
    return-void

    .line 52
    :cond_3f
    sget-boolean v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->DBG:Z

    if-eqz v1, :cond_4b

    sget-object v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Wi-Fi Api is not supported, use Java reflect instead"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_4b
    new-instance v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClientEx;

    iget-object v2, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sonymobile/nfc/handover/wifip2p/WifiApiClientEx;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->mApiClient:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pHandoverApiClient;

    .line 54
    invoke-direct {p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->invokeCallback()V

    goto :goto_3e
.end method

.method private invokeCallback()V
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;->mCallback:Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$Callback;

    if-eqz v0, :cond_15

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder$2;-><init>(Lcom/sonymobile/nfc/handover/wifip2p/WifiP2pApiClientBuilder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    :cond_15
    return-void
.end method

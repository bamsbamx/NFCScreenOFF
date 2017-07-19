.class public Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;
.super Ljava/lang/Object;
.source "WifiApClientCounterWithPolling.java"

# interfaces
.implements Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling$1;
    }
.end annotation


# static fields
.field private static final LOOP_PERIOD_MS:I = 0xbb8

.field private static final MSG_CONFIRM_CLIENT_NUM:I = 0x1


# instance fields
.field private final mCallback:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;

.field private mClientNum:I

.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private final mWifiManagerEx:Lcom/sonymobile/nfc/WifiManagerEx;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;)Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;->mCallback:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;)I
    .registers 2

    iget v0, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;->mClientNum:I

    return v0
.end method

.method static synthetic -get2(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;)Lcom/sonymobile/nfc/WifiManagerEx;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;->mWifiManagerEx:Lcom/sonymobile/nfc/WifiManagerEx;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;I)I
    .registers 2

    iput p1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;->mClientNum:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v1, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling$1;-><init>(Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;)V

    iput-object v1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;->mHandler:Landroid/os/Handler;

    .line 30
    iput-object p1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;->mContext:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;->mCallback:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;

    .line 32
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;->mClientNum:I

    .line 34
    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 35
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    new-instance v1, Lcom/sonymobile/nfc/WifiManagerEx;

    invoke-direct {v1, v0}, Lcom/sonymobile/nfc/WifiManagerEx;-><init>(Landroid/net/wifi/WifiManager;)V

    iput-object v1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;->mWifiManagerEx:Lcom/sonymobile/nfc/WifiManagerEx;

    .line 29
    return-void
.end method


# virtual methods
.method public start()V
    .registers 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 39
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterWithPolling;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 44
    return-void
.end method

.class Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$OnStartTetheringCallback;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "NfcWifiTethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnStartTetheringCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$OnStartTetheringCallback;->this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$OnStartTetheringCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$OnStartTetheringCallback;-><init>(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;)V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$OnStartTetheringCallback;->this$0:Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;

    invoke-static {v0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->-wrap1(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;)V

    .line 444
    return-void
.end method

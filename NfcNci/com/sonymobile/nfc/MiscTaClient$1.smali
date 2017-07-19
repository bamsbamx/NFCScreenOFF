.class Lcom/sonymobile/nfc/MiscTaClient$1;
.super Ljava/lang/Object;
.source "MiscTaClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/MiscTaClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/MiscTaClient;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/MiscTaClient;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/MiscTaClient;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/sonymobile/nfc/MiscTaClient$1;->this$0:Lcom/sonymobile/nfc/MiscTaClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 60
    if-eqz p1, :cond_4

    if-nez p2, :cond_5

    .line 61
    :cond_4
    return-void

    .line 65
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/nfc/MiscTaClient$1;->this$0:Lcom/sonymobile/nfc/MiscTaClient;

    invoke-static {p2}, Lcom/sonyericsson/android/bootinfoif/IMiscTaService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/android/bootinfoif/IMiscTaService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/MiscTaClient;->-set0(Lcom/sonymobile/nfc/MiscTaClient;Lcom/sonyericsson/android/bootinfoif/IMiscTaService;)Lcom/sonyericsson/android/bootinfoif/IMiscTaService;

    .line 66
    iget-object v0, p0, Lcom/sonymobile/nfc/MiscTaClient$1;->this$0:Lcom/sonymobile/nfc/MiscTaClient;

    invoke-static {v0}, Lcom/sonymobile/nfc/MiscTaClient;->-get0(Lcom/sonymobile/nfc/MiscTaClient;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 59
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 70
    return-void
.end method

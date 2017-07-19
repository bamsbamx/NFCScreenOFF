.class Lcom/sonymobile/nfc/NfcConfig$1;
.super Ljava/lang/Object;
.source "NfcConfig.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/NfcConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/NfcConfig;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/NfcConfig;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/NfcConfig;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/sonymobile/nfc/NfcConfig$1;->this$0:Lcom/sonymobile/nfc/NfcConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 58
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcConfig$1;->this$0:Lcom/sonymobile/nfc/NfcConfig;

    iget-object v1, p0, Lcom/sonymobile/nfc/NfcConfig$1;->this$0:Lcom/sonymobile/nfc/NfcConfig;

    invoke-static {v1}, Lcom/sonymobile/nfc/NfcConfig;->-get1(Lcom/sonymobile/nfc/NfcConfig;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/NfcConfig;->-set2(Lcom/sonymobile/nfc/NfcConfig;Landroid/nfc/NfcAdapter;)Landroid/nfc/NfcAdapter;

    .line 59
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcConfig$1;->this$0:Lcom/sonymobile/nfc/NfcConfig;

    invoke-static {p2}, Lcom/sonymobile/nfc/INfcConfig$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/nfc/INfcConfig;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/NfcConfig;->-set1(Lcom/sonymobile/nfc/NfcConfig;Lcom/sonymobile/nfc/INfcConfig;)Lcom/sonymobile/nfc/INfcConfig;

    .line 60
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcConfig$1;->this$0:Lcom/sonymobile/nfc/NfcConfig;

    iget-object v1, p0, Lcom/sonymobile/nfc/NfcConfig$1;->this$0:Lcom/sonymobile/nfc/NfcConfig;

    invoke-static {v1}, Lcom/sonymobile/nfc/NfcConfig;->-get2(Lcom/sonymobile/nfc/NfcConfig;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/nfc/NfcConfig$1;->this$0:Lcom/sonymobile/nfc/NfcConfig;

    invoke-static {v2}, Lcom/sonymobile/nfc/NfcConfig;->-get1(Lcom/sonymobile/nfc/NfcConfig;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonymobile/nfc/NfcConfig;->-wrap0(Lcom/sonymobile/nfc/NfcConfig;Landroid/os/IBinder;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcConfig$1;->this$0:Lcom/sonymobile/nfc/NfcConfig;

    invoke-static {v0}, Lcom/sonymobile/nfc/NfcConfig;->-get0(Lcom/sonymobile/nfc/NfcConfig;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 57
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 66
    iget-object v1, p0, Lcom/sonymobile/nfc/NfcConfig$1;->this$0:Lcom/sonymobile/nfc/NfcConfig;

    monitor-enter v1

    .line 67
    :try_start_3
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcConfig$1;->this$0:Lcom/sonymobile/nfc/NfcConfig;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sonymobile/nfc/NfcConfig;->-set0(Lcom/sonymobile/nfc/NfcConfig;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 68
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcConfig$1;->this$0:Lcom/sonymobile/nfc/NfcConfig;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sonymobile/nfc/NfcConfig;->-set2(Lcom/sonymobile/nfc/NfcConfig;Landroid/nfc/NfcAdapter;)Landroid/nfc/NfcAdapter;

    .line 69
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcConfig$1;->this$0:Lcom/sonymobile/nfc/NfcConfig;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sonymobile/nfc/NfcConfig;->-set1(Lcom/sonymobile/nfc/NfcConfig;Lcom/sonymobile/nfc/INfcConfig;)Lcom/sonymobile/nfc/INfcConfig;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    .line 65
    return-void

    .line 66
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.class Lcom/sonymobile/nfc/LocalNfcAdapterEx$1;
.super Ljava/lang/Object;
.source "LocalNfcAdapterEx.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/LocalNfcAdapterEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/LocalNfcAdapterEx;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/LocalNfcAdapterEx;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx$1;->this$0:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx$1;->this$0:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    iget-object v1, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx$1;->this$0:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    invoke-static {v1}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->-get1(Lcom/sonymobile/nfc/LocalNfcAdapterEx;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->-set2(Lcom/sonymobile/nfc/LocalNfcAdapterEx;Landroid/nfc/NfcAdapter;)Landroid/nfc/NfcAdapter;

    .line 53
    iget-object v0, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx$1;->this$0:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    invoke-static {p2}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/nfc/INfcAdapterEx;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->-set1(Lcom/sonymobile/nfc/LocalNfcAdapterEx;Lcom/sonymobile/nfc/INfcAdapterEx;)Lcom/sonymobile/nfc/INfcAdapterEx;

    .line 54
    iget-object v0, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx$1;->this$0:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    iget-object v1, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx$1;->this$0:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    invoke-static {v1}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->-get2(Lcom/sonymobile/nfc/LocalNfcAdapterEx;)Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx$1;->this$0:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    invoke-static {v2}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->-get1(Lcom/sonymobile/nfc/LocalNfcAdapterEx;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->-wrap0(Lcom/sonymobile/nfc/LocalNfcAdapterEx;Landroid/os/IBinder;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx$1;->this$0:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    invoke-static {v0}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->-get0(Lcom/sonymobile/nfc/LocalNfcAdapterEx;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 51
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 60
    iget-object v1, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx$1;->this$0:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    monitor-enter v1

    .line 61
    :try_start_3
    iget-object v0, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx$1;->this$0:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->-set0(Lcom/sonymobile/nfc/LocalNfcAdapterEx;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 62
    iget-object v0, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx$1;->this$0:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->-set2(Lcom/sonymobile/nfc/LocalNfcAdapterEx;Landroid/nfc/NfcAdapter;)Landroid/nfc/NfcAdapter;

    .line 63
    iget-object v0, p0, Lcom/sonymobile/nfc/LocalNfcAdapterEx$1;->this$0:Lcom/sonymobile/nfc/LocalNfcAdapterEx;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sonymobile/nfc/LocalNfcAdapterEx;->-set1(Lcom/sonymobile/nfc/LocalNfcAdapterEx;Lcom/sonymobile/nfc/INfcAdapterEx;)Lcom/sonymobile/nfc/INfcAdapterEx;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    .line 59
    return-void

    .line 60
    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

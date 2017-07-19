.class public Lcom/android/nfc/ndefpush/NdefPushServer;
.super Ljava/lang/Object;
.source "NdefPushServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/ndefpush/NdefPushServer$Callback;,
        Lcom/android/nfc/ndefpush/NdefPushServer$ConnectionThread;,
        Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MIU:I = 0xf8

.field static final SERVICE_NAME:Ljava/lang/String; = "com.android.npp"

.field private static final TAG:Ljava/lang/String; = "NdefPushServer"


# instance fields
.field final mCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

.field mSap:I

.field mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

.field mService:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>(ILcom/android/nfc/ndefpush/NdefPushServer$Callback;)V
    .registers 4
    .param p1, "sap"    # I
    .param p2, "callback"    # Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mService:Lcom/android/nfc/NfcService;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    .line 58
    iput p1, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mSap:I

    .line 59
    iput-object p2, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mCallback:Lcom/android/nfc/ndefpush/NdefPushServer$Callback;

    .line 57
    return-void
.end method


# virtual methods
.method public start()V
    .registers 4

    .prologue
    .line 205
    monitor-enter p0

    .line 206
    :try_start_1
    const-string/jumbo v0, "NdefPushServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start, thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    if-nez v0, :cond_36

    .line 208
    const-string/jumbo v0, "NdefPushServer"

    const-string/jumbo v1, "starting new server thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v0, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    invoke-direct {v0, p0}, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;-><init>(Lcom/android/nfc/ndefpush/NdefPushServer;)V

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    .line 210
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->start()V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    :cond_36
    monitor-exit p0

    .line 204
    return-void

    .line 205
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stop()V
    .registers 4

    .prologue
    .line 216
    monitor-enter p0

    .line 217
    :try_start_1
    const-string/jumbo v0, "NdefPushServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop, thread = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    if-eqz v0, :cond_32

    .line 219
    const-string/jumbo v0, "NdefPushServer"

    const-string/jumbo v1, "shuting down server thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;->shutdown()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/ndefpush/NdefPushServer;->mServerThread:Lcom/android/nfc/ndefpush/NdefPushServer$ServerThread;
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_34

    :cond_32
    monitor-exit p0

    .line 215
    return-void

    .line 216
    :catchall_34
    move-exception v0

    monitor-exit p0

    throw v0
.end method

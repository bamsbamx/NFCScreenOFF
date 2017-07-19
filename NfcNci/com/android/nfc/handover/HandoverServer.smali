.class public final Lcom/android/nfc/handover/HandoverServer;
.super Ljava/lang/Object;
.source "HandoverServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/handover/HandoverServer$Callback;,
        Lcom/android/nfc/handover/HandoverServer$ConnectionThread;,
        Lcom/android/nfc/handover/HandoverServer$ServerThread;
    }
.end annotation


# static fields
.field static final DBG:Ljava/lang/Boolean;

.field static final HANDOVER_SERVICE_NAME:Ljava/lang/String; = "urn:nfc:sn:handover"

.field static final MIU:I = 0x80

.field static final TAG:Ljava/lang/String; = "HandoverServer"


# instance fields
.field final mCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

.field private final mContext:Landroid/content/Context;

.field final mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

.field final mSap:I

.field mServerRunning:Z

.field mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;


# direct methods
.method static synthetic -get0(Lcom/android/nfc/handover/HandoverServer;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/handover/HandoverServer;->DBG:Ljava/lang/Boolean;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/nfc/handover/HandoverDataParser;Lcom/android/nfc/handover/HandoverServer$Callback;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sap"    # I
    .param p3, "manager"    # Lcom/android/nfc/handover/HandoverDataParser;
    .param p4, "callback"    # Lcom/android/nfc/handover/HandoverServer$Callback;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerRunning:Z

    .line 63
    iput-object p1, p0, Lcom/android/nfc/handover/HandoverServer;->mContext:Landroid/content/Context;

    .line 64
    iput p2, p0, Lcom/android/nfc/handover/HandoverServer;->mSap:I

    .line 65
    iput-object p3, p0, Lcom/android/nfc/handover/HandoverServer;->mHandoverDataParser:Lcom/android/nfc/handover/HandoverDataParser;

    .line 66
    iput-object p4, p0, Lcom/android/nfc/handover/HandoverServer;->mCallback:Lcom/android/nfc/handover/HandoverServer$Callback;

    .line 62
    return-void
.end method


# virtual methods
.method public declared-synchronized start()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 70
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;

    if-nez v0, :cond_15

    .line 71
    new-instance v0, Lcom/android/nfc/handover/HandoverServer$ServerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/handover/HandoverServer$ServerThread;-><init>(Lcom/android/nfc/handover/HandoverServer;Lcom/android/nfc/handover/HandoverServer$ServerThread;)V

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;

    .line 72
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer$ServerThread;->start()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerRunning:Z
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit p0

    .line 69
    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 78
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;

    if-eqz v0, :cond_10

    .line 79
    iget-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;

    invoke-virtual {v0}, Lcom/android/nfc/handover/HandoverServer$ServerThread;->shutdown()V

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerThread:Lcom/android/nfc/handover/HandoverServer$ServerThread;

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/handover/HandoverServer;->mServerRunning:Z
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit p0

    .line 77
    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

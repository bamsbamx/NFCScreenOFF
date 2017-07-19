.class public Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;
.super Ljava/lang/Object;
.source "HostNfcFEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;,
        Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field static final MINIMUM_NFCF_PACKET_LENGTH:I = 0xa

.field static final NFCID2_LENGTH:I = 0x8

.field static final STATE_IDLE:I = 0x0

.field static final STATE_W4_SERVICE:I = 0x1

.field static final STATE_XFER:I = 0x2

.field static final TAG:Ljava/lang/String; = "HostNfcFEmulationManager"


# instance fields
.field mActiveService:Landroid/os/Messenger;

.field mActiveServiceName:Landroid/content/ComponentName;

.field private mConnection:Landroid/content/ServiceConnection;

.field final mContext:Landroid/content/Context;

.field mEnabledFgServiceName:Landroid/content/ComponentName;

.field final mLock:Ljava/lang/Object;

.field final mMessenger:Landroid/os/Messenger;

.field mPendingPacket:[B

.field mService:Landroid/os/Messenger;

.field mServiceBound:Z

.field mServiceName:Landroid/content/ComponentName;

.field mState:I

.field final mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t3tIdentifiersCache"    # Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$MessageHandler;-><init>(Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mMessenger:Landroid/os/Messenger;

    .line 261
    new-instance v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager$1;-><init>(Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    .line 77
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mContext:Landroid/content/Context;

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    .line 80
    iput-object p2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    .line 76
    return-void
.end method

.method static bytesToString([BII)Ljava/lang/String;
    .registers 9
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 337
    const/16 v4, 0x10

    new-array v2, v4, [C

    .local v2, "hexChars":[C
    fill-array-data v2, :array_30

    .line 338
    mul-int/lit8 v4, p2, 0x2

    new-array v1, v4, [C

    .line 340
    .local v1, "chars":[C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_c
    if-ge v3, p2, :cond_29

    .line 341
    add-int v4, p1, v3

    aget-byte v4, p0, v4

    and-int/lit16 v0, v4, 0xff

    .line 342
    .local v0, "byteValue":I
    mul-int/lit8 v4, v3, 0x2

    ushr-int/lit8 v5, v0, 0x4

    aget-char v5, v2, v5

    aput-char v5, v1, v4

    .line 343
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v0, 0xf

    aget-char v5, v2, v5

    aput-char v5, v1, v4

    .line 340
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 345
    .end local v0    # "byteValue":I
    :cond_29
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 337
    nop

    :array_30
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private getByteDump([B)Ljava/lang/String;
    .registers 8
    .param p1, "cmd"    # [B

    .prologue
    .line 349
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 351
    .local v1, "str":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 353
    .local v0, "i":I
    if-nez p1, :cond_16

    .line 354
    const-string/jumbo v2, " null\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 358
    :cond_16
    :goto_16
    array-length v2, p1

    if-ge v0, v2, :cond_42

    .line 359
    const-string/jumbo v2, " %02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-byte v4, p1, v0

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    rem-int/lit8 v2, v0, 0x8

    const/4 v3, 0x7

    if-eq v2, v3, :cond_39

    add-int/lit8 v2, v0, 0x1

    array-length v3, p1

    if-ne v2, v3, :cond_3f

    .line 361
    :cond_39
    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 365
    :cond_42
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;
    .registers 7
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 223
    iget-boolean v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 224
    const-string/jumbo v1, "HostNfcFEmulationManager"

    const-string/jumbo v2, "Service already bound."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mService:Landroid/os/Messenger;

    return-object v1

    .line 227
    :cond_18
    const-string/jumbo v1, "HostNfcFEmulationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Binding to service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->unbindServiceIfNeededLocked()V

    .line 229
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.nfc.cardemulation.action.HOST_NFCF_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v0, "bindIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 231
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    .line 232
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x1

    .line 231
    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 236
    :goto_4d
    const/4 v1, 0x0

    return-object v1

    .line 234
    :cond_4f
    const-string/jumbo v1, "HostNfcFEmulationManager"

    const-string/jumbo v2, "Could not bind service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 369
    const-string/jumbo v0, "Bound services: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    if-eqz v0, :cond_23

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 368
    :cond_23
    return-void
.end method

.method findNfcid2([B)Ljava/lang/String;
    .registers 6
    .param p1, "data"    # [B

    .prologue
    const/4 v3, 0x0

    .line 253
    if-eqz p1, :cond_8

    array-length v1, p1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_9

    .line 255
    :cond_8
    return-object v3

    .line 257
    :cond_9
    const/4 v0, 0x2

    .line 258
    .local v0, "nfcid2Offset":I
    const/16 v1, 0x8

    invoke-static {p1, v0, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->bytesToString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public onEnabledForegroundNfcFServiceChanged(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_3
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    .line 87
    if-nez p1, :cond_e

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 89
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->unbindServiceIfNeededLocked()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit v1

    .line 84
    return-void

    .line 85
    :catchall_10
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onHostEmulationActivated()V
    .registers 1

    .prologue
    .line 94
    return-void
.end method

.method public onHostEmulationData([B)V
    .registers 9
    .param p1, "data"    # [B

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->findNfcid2([B)Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "nfcid2":Ljava/lang/String;
    const/4 v3, 0x0

    .line 102
    .local v3, "resolvedServiceName":Landroid/content/ComponentName;
    iget-object v5, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 103
    if-eqz v1, :cond_16

    .line 104
    :try_start_a
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v4, v1}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->resolveNfcid2(Ljava/lang/String;)Landroid/nfc/cardemulation/NfcFServiceInfo;

    move-result-object v2

    .line 105
    .local v2, "resolvedService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    if-eqz v2, :cond_16

    .line 106
    invoke-virtual {v2}, Landroid/nfc/cardemulation/NfcFServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 109
    .end local v2    # "resolvedService":Landroid/nfc/cardemulation/NfcFServiceInfo;
    .end local v3    # "resolvedServiceName":Landroid/content/ComponentName;
    :cond_16
    if-nez v3, :cond_20

    .line 110
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_4b

    if-nez v4, :cond_1e

    monitor-exit v5

    .line 111
    return-void

    .line 113
    :cond_1e
    :try_start_1e
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 116
    :cond_20
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    if-eqz v4, :cond_33

    .line 117
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    invoke-virtual {v4, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 122
    iget v4, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I
    :try_end_2e
    .catchall {:try_start_1e .. :try_end_2e} :catchall_4b

    packed-switch v4, :pswitch_data_6e

    :goto_31
    monitor-exit v5

    .line 98
    return-void

    :cond_33
    monitor-exit v5

    .line 118
    return-void

    .line 124
    :pswitch_35
    :try_start_35
    invoke-virtual {p0, v3}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;

    move-result-object v0

    .line 125
    .local v0, "existingService":Landroid/os/Messenger;
    if-eqz v0, :cond_4e

    .line 126
    const-string/jumbo v4, "HostNfcFEmulationManager"

    const-string/jumbo v6, "Binding to existing service"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    .line 128
    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V
    :try_end_4a
    .catchall {:try_start_35 .. :try_end_4a} :catchall_4b

    goto :goto_31

    .line 102
    .end local v0    # "existingService":Landroid/os/Messenger;
    :catchall_4b
    move-exception v4

    monitor-exit v5

    throw v4

    .line 131
    .restart local v0    # "existingService":Landroid/os/Messenger;
    :cond_4e
    :try_start_4e
    const-string/jumbo v4, "HostNfcFEmulationManager"

    const-string/jumbo v6, "Waiting for new service."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mPendingPacket:[B

    .line 134
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I

    goto :goto_31

    .line 138
    .end local v0    # "existingService":Landroid/os/Messenger;
    :pswitch_5d
    const-string/jumbo v4, "HostNfcFEmulationManager"

    const-string/jumbo v6, "Unexpected packet in STATE_W4_SERVICE"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 142
    :pswitch_67
    iget-object v4, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {p0, v4, p1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V
    :try_end_6c
    .catchall {:try_start_4e .. :try_end_6c} :catchall_4b

    goto :goto_31

    .line 122
    nop

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_35
        :pswitch_5d
        :pswitch_67
    .end packed-switch
.end method

.method public onHostEmulationDeactivated()V
    .registers 3

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 152
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 155
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->unbindServiceIfNeededLocked()V

    .line 156
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_15

    monitor-exit v1

    .line 149
    return-void

    .line 151
    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onNfcDisabled()V
    .registers 3

    .prologue
    .line 161
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 166
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->unbindServiceIfNeededLocked()V

    .line 167
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_18

    monitor-exit v1

    .line 160
    return-void

    .line 161
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onUserSwitched()V
    .registers 3

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 174
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mEnabledFgServiceName:Landroid/content/ComponentName;

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 177
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->unbindServiceIfNeededLocked()V

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mState:I
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_18

    monitor-exit v1

    .line 171
    return-void

    .line 172
    :catchall_18
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method sendDataToServiceLocked(Landroid/os/Messenger;[B)V
    .registers 8
    .param p1, "service"    # Landroid/os/Messenger;
    .param p2, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 190
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-eq p1, v3, :cond_e

    .line 191
    invoke-virtual {p0, v4}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 192
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 193
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 195
    :cond_e
    const/4 v3, 0x0

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 196
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 197
    .local v0, "dataBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "data"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 198
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 199
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 201
    :try_start_25
    const-string/jumbo v3, "HostNfcFEmulationManager"

    const-string/jumbo v4, "Sending data to service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_33} :catch_34

    .line 182
    :goto_33
    return-void

    .line 204
    :catch_34
    move-exception v1

    .line 205
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "HostNfcFEmulationManager"

    const-string/jumbo v4, "Remote service has died, dropping packet"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method sendDeactivateToActiveServiceLocked(I)V
    .registers 6
    .param p1, "reason"    # I

    .prologue
    const/4 v3, 0x0

    .line 211
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-nez v2, :cond_6

    return-void

    .line 212
    :cond_6
    const/4 v2, 0x2

    invoke-static {v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 213
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 215
    :try_start_d
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 209
    :goto_12
    return-void

    .line 216
    :catch_13
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_12
.end method

.method unbindServiceIfNeededLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 242
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    if-eqz v0, :cond_2f

    .line 243
    const-string/jumbo v0, "HostNfcFEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unbinding from service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceBound:Z

    .line 246
    iput-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mService:Landroid/os/Messenger;

    .line 247
    iput-object v3, p0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->mServiceName:Landroid/content/ComponentName;

    .line 240
    :cond_2f
    return-void
.end method

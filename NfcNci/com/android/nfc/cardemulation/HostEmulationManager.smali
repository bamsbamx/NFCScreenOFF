.class public Lcom/android/nfc/cardemulation/HostEmulationManager;
.super Ljava/lang/Object;
.source "HostEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/HostEmulationManager$1;,
        Lcom/android/nfc/cardemulation/HostEmulationManager$2;,
        Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;
    }
.end annotation


# static fields
.field static final AID_NOT_FOUND:[B

.field static final ANDROID_HCE_AID:Ljava/lang/String; = "A000000476416E64726F6964484345"

.field static final ANDROID_HCE_RESPONSE:[B

.field private static final BOOST_PARAMS:[I

.field static final DBG:Z

.field static final INSTR_SELECT:B = -0x5ct

.field static final MINIMUM_AID_LENGTH:I = 0x5

.field static final PERFLOCK_DURATION_MILLIS:I = 0x190

.field static final SELECT_APDU_HDR_LENGTH:I = 0x5

.field static final STATE_IDLE:I = 0x0

.field static final STATE_W4_DEACTIVATE:I = 0x3

.field static final STATE_W4_SELECT:I = 0x1

.field static final STATE_W4_SERVICE:I = 0x2

.field static final STATE_XFER:I = 0x4

.field static final TAG:Ljava/lang/String; = "HostEmulationManager"

.field static final UNKNOWN_ERROR:[B

.field private static mPerf:Landroid/util/BoostFramework;


# instance fields
.field mActiveService:Landroid/os/Messenger;

.field mActiveServiceName:Landroid/content/ComponentName;

.field final mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

.field private mConnection:Landroid/content/ServiceConnection;

.field final mContext:Landroid/content/Context;

.field final mKeyguard:Landroid/app/KeyguardManager;

.field mLastSelectedAid:Ljava/lang/String;

.field final mLock:Ljava/lang/Object;

.field final mMessenger:Landroid/os/Messenger;

.field private mPaymentConnection:Landroid/content/ServiceConnection;

.field mPaymentService:Landroid/os/Messenger;

.field mPaymentServiceBound:Z

.field mPaymentServiceName:Landroid/content/ComponentName;

.field mSelectApdu:[B

.field mService:Landroid/os/Messenger;

.field mServiceBound:Z

.field mServiceName:Landroid/content/ComponentName;

.field mState:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x2

    .line 52
    sget-boolean v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->DBG:Z

    .line 69
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->ANDROID_HCE_RESPONSE:[B

    .line 71
    new-array v0, v1, [B

    fill-array-data v0, :array_36

    sput-object v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->AID_NOT_FOUND:[B

    .line 72
    new-array v0, v1, [B

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->UNKNOWN_ERROR:[B

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPerf:Landroid/util/BoostFramework;

    .line 112
    const v0, 0x40800100    # 4.000122f

    .line 113
    const/16 v1, 0x4cc

    .line 114
    const/high16 v2, 0x40800000    # 4.0f

    .line 115
    const/16 v3, 0x4e0

    .line 111
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->BOOST_PARAMS:[I

    .line 50
    return-void

    .line 69
    :array_2e
    .array-data 1
        0x14t
        -0x7ft
        0x0t
        0x0t
        -0x70t
        0x0t
    .end array-data

    .line 71
    nop

    :array_36
    .array-data 1
        0x6at
        -0x7et
    .end array-data

    .line 72
    nop

    :array_3c
    .array-data 1
        0x6ft
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aidCache"    # Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;

    invoke-direct {v1, p0}, Lcom/android/nfc/cardemulation/HostEmulationManager$MessageHandler;-><init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mMessenger:Landroid/os/Messenger;

    .line 452
    new-instance v0, Lcom/android/nfc/cardemulation/HostEmulationManager$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/HostEmulationManager$1;-><init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentConnection:Landroid/content/ServiceConnection;

    .line 472
    new-instance v0, Lcom/android/nfc/cardemulation/HostEmulationManager$2;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/HostEmulationManager$2;-><init>(Lcom/android/nfc/cardemulation/HostEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    .line 119
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    .line 121
    iput-object p2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 124
    sget-object v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPerf:Landroid/util/BoostFramework;

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 125
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPerf:Landroid/util/BoostFramework;

    .line 127
    :cond_45
    const-string/jumbo v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mKeyguard:Landroid/app/KeyguardManager;

    .line 118
    return-void
.end method

.method static bytesToString([BII)Ljava/lang/String;
    .registers 9
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 545
    const/16 v4, 0x10

    new-array v2, v4, [C

    .local v2, "hexChars":[C
    fill-array-data v2, :array_30

    .line 546
    mul-int/lit8 v4, p2, 0x2

    new-array v1, v4, [C

    .line 548
    .local v1, "chars":[C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_c
    if-ge v3, p2, :cond_29

    .line 549
    add-int v4, p1, v3

    aget-byte v4, p0, v4

    and-int/lit16 v0, v4, 0xff

    .line 550
    .local v0, "byteValue":I
    mul-int/lit8 v4, v3, 0x2

    ushr-int/lit8 v5, v0, 0x4

    aget-char v5, v2, v5

    aput-char v5, v1, v4

    .line 551
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v0, 0xf

    aget-char v5, v2, v5

    aput-char v5, v1, v4

    .line 548
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 553
    .end local v0    # "byteValue":I
    :cond_29
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 545
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


# virtual methods
.method public acquirePerformanceLock()V
    .registers 5

    .prologue
    .line 291
    sget-object v1, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_28

    .line 292
    sget-object v1, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPerf:Landroid/util/BoostFramework;

    sget-object v2, Lcom/android/nfc/cardemulation/HostEmulationManager;->BOOST_PARAMS:[I

    const/16 v3, 0x190

    invoke-virtual {v1, v3, v2}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    move-result v0

    .line 293
    .local v0, "ret":I
    const-string/jumbo v1, "HostEmulationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Acquire performance lock result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v0    # "ret":I
    :cond_28
    return-void
.end method

.method bindPaymentServiceLocked(ILandroid/content/ComponentName;)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 388
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindPaymentServiceLocked()V

    .line 390
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 392
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentConnection:Landroid/content/ServiceConnection;

    .line 393
    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x1

    .line 392
    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 394
    const-string/jumbo v1, "HostEmulationManager"

    const-string/jumbo v2, "Could not bind (persistent) payment service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_27
    return-void
.end method

.method bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;
    .registers 7
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 325
    iget-boolean v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 326
    const-string/jumbo v1, "HostEmulationManager"

    const-string/jumbo v2, "Service already bound as payment service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentService:Landroid/os/Messenger;

    return-object v1

    .line 328
    :cond_18
    iget-boolean v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 329
    const-string/jumbo v1, "HostEmulationManager"

    const-string/jumbo v2, "Service already bound as regular service."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mService:Landroid/os/Messenger;

    return-object v1

    .line 332
    :cond_30
    const-string/jumbo v1, "HostEmulationManager"

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

    .line 333
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindServiceIfNeededLocked()V

    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.nfc.cardemulation.action.HOST_APDU_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, "aidIntent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 336
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    .line 337
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x1

    .line 336
    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_67

    .line 341
    :goto_65
    const/4 v1, 0x0

    return-object v1

    .line 339
    :cond_67
    const-string/jumbo v1, "HostEmulationManager"

    const-string/jumbo v2, "Could not bind service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 557
    const-string/jumbo v0, "Bound services: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    if-eqz v0, :cond_23

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    payment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    :cond_23
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    if-eqz v0, :cond_40

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    other: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 556
    :cond_40
    return-void
.end method

.method findSelectAid([B)Ljava/lang/String;
    .registers 9
    .param p1, "data"    # [B

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 429
    if-eqz p1, :cond_b

    array-length v1, p1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_19

    .line 430
    :cond_b
    sget-boolean v1, Lcom/android/nfc/cardemulation/HostEmulationManager;->DBG:Z

    if-eqz v1, :cond_18

    const-string/jumbo v1, "HostEmulationManager"

    const-string/jumbo v2, "Data size too small for SELECT APDU"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_18
    return-object v3

    .line 439
    :cond_19
    aget-byte v1, p1, v4

    if-nez v1, :cond_44

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    const/16 v2, -0x5c

    if-ne v1, v2, :cond_44

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    if-ne v1, v5, :cond_44

    .line 440
    const/4 v1, 0x3

    aget-byte v1, p1, v1

    if-eqz v1, :cond_37

    .line 441
    const-string/jumbo v1, "HostEmulationManager"

    const-string/jumbo v2, "Selecting next, last or previous AID occurrence is not supported"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    :cond_37
    aget-byte v0, p1, v5

    .line 444
    .local v0, "aidLength":I
    array-length v1, p1

    add-int/lit8 v2, v0, 0x5

    if-ge v1, v2, :cond_3f

    .line 445
    return-object v3

    .line 447
    :cond_3f
    invoke-static {p1, v6, v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bytesToString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 449
    .end local v0    # "aidLength":I
    :cond_44
    return-object v3
.end method

.method launchResolver(Ljava/util/ArrayList;Landroid/content/ComponentName;Ljava/lang/String;)V
    .registers 7
    .param p2, "failedComponent"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 418
    .local p1, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/cardemulation/AppChooserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 419
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 420
    const-string/jumbo v1, "services"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 421
    const-string/jumbo v1, "category"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    if-eqz p2, :cond_23

    .line 423
    const-string/jumbo v1, "failed_component"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 425
    :cond_23
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 417
    return-void
.end method

.method launchTapAgain(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)V
    .registers 6
    .param p1, "service"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    .line 409
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/nfc/cardemulation/TapAgainDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 410
    .local v0, "dialogIntent":Landroid/content/Intent;
    const-string/jumbo v1, "category"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 411
    const-string/jumbo v1, "apdu_service"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 412
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 413
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 408
    return-void
.end method

.method public onHostEmulationActivated()V
    .registers 5

    .prologue
    .line 151
    const-string/jumbo v1, "HostEmulationManager"

    const-string/jumbo v2, "notifyHostEmulationActivated"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 153
    :try_start_c
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->acquirePerformanceLock()V

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.nfc.cardmeulation.close_tap_dialog"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.nfc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 159
    iget v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    if-eqz v1, :cond_31

    .line 160
    const-string/jumbo v1, "HostEmulationManager"

    const-string/jumbo v3, "Got activation event in non-idle state"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_31
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I
    :try_end_34
    .catchall {:try_start_c .. :try_end_34} :catchall_36

    monitor-exit v2

    .line 150
    return-void

    .line 152
    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_36
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onHostEmulationData([B)V
    .registers 13
    .param p1, "data"    # [B

    .prologue
    const/4 v9, 0x3

    .line 167
    const-string/jumbo v7, "HostEmulationManager"

    const-string/jumbo v8, "notifyHostEmulationData"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->findSelectAid([B)Ljava/lang/String;

    move-result-object v4

    .line 169
    .local v4, "selectAid":Ljava/lang/String;
    const/4 v3, 0x0

    .line 170
    .local v3, "resolvedService":Landroid/content/ComponentName;
    iget-object v8, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 171
    :try_start_12
    iget v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    if-nez v7, :cond_21

    .line 172
    const-string/jumbo v7, "HostEmulationManager"

    const-string/jumbo v9, "Got data in idle state."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_fe

    monitor-exit v8

    .line 173
    return-void

    .line 174
    :cond_21
    :try_start_21
    iget v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    if-ne v7, v9, :cond_30

    .line 175
    const-string/jumbo v7, "HostEmulationManager"

    const-string/jumbo v9, "Dropping APDU in STATE_W4_DECTIVATE"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_fe

    monitor-exit v8

    .line 176
    return-void

    .line 178
    :cond_30
    if-eqz v4, :cond_df

    .line 179
    :try_start_32
    const-string/jumbo v7, "A000000476416E64726F6964484345"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 180
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    sget-object v9, Lcom/android/nfc/cardemulation/HostEmulationManager;->ANDROID_HCE_RESPONSE:[B

    invoke-virtual {v7, v9}, Lcom/android/nfc/NfcService;->sendData([B)Z
    :try_end_44
    .catchall {:try_start_32 .. :try_end_44} :catchall_fe

    monitor-exit v8

    .line 181
    return-void

    .line 183
    :cond_46
    :try_start_46
    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v7, v4}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v2

    .line 184
    .local v2, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    if-eqz v2, :cond_56

    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_61

    .line 186
    :cond_56
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    sget-object v9, Lcom/android/nfc/cardemulation/HostEmulationManager;->AID_NOT_FOUND:[B

    invoke-virtual {v7, v9}, Lcom/android/nfc/NfcService;->sendData([B)Z
    :try_end_5f
    .catchall {:try_start_46 .. :try_end_5f} :catchall_fe

    monitor-exit v8

    .line 187
    return-void

    .line 189
    :cond_61
    :try_start_61
    iput-object v4, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLastSelectedAid:Ljava/lang/String;

    .line 190
    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    if-eqz v7, :cond_ba

    .line 193
    iget-object v0, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 194
    .local v0, "defaultServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->requiresUnlock()Z

    move-result v7

    if-eqz v7, :cond_8b

    .line 195
    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v7

    .line 194
    if-eqz v7, :cond_8b

    .line 195
    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mKeyguard:Landroid/app/KeyguardManager;

    invoke-virtual {v7}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v7

    .line 194
    if-eqz v7, :cond_8b

    .line 197
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 198
    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    iget-object v9, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    invoke-virtual {p0, v7, v9}, Lcom/android/nfc/cardemulation/HostEmulationManager;->launchTapAgain(Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/String;)V
    :try_end_89
    .catchall {:try_start_61 .. :try_end_89} :catchall_fe

    monitor-exit v8

    .line 199
    return-void

    .line 203
    :cond_8b
    :try_start_8b
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v7

    if-nez v7, :cond_a5

    .line 204
    const-string/jumbo v7, "HostEmulationManager"

    const-string/jumbo v9, "AID that was meant to go off-host was routed to host. Check routing table configuration."

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    sget-object v9, Lcom/android/nfc/cardemulation/HostEmulationManager;->AID_NOT_FOUND:[B

    invoke-virtual {v7, v9}, Lcom/android/nfc/NfcService;->sendData([B)Z
    :try_end_a3
    .catchall {:try_start_8b .. :try_end_a3} :catchall_fe

    monitor-exit v8

    .line 207
    return-void

    .line 209
    :cond_a5
    :try_start_a5
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 218
    .end local v0    # "defaultServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v3    # "resolvedService":Landroid/content/ComponentName;
    :cond_a9
    :goto_a9
    if-nez v3, :cond_df

    .line 222
    const/4 v7, 0x3

    iput v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 223
    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    check-cast v7, Ljava/util/ArrayList;

    .line 224
    iget-object v9, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    .line 223
    const/4 v10, 0x0

    invoke-virtual {p0, v7, v10, v9}, Lcom/android/nfc/cardemulation/HostEmulationManager;->launchResolver(Ljava/util/ArrayList;Landroid/content/ComponentName;Ljava/lang/String;)V
    :try_end_b8
    .catchall {:try_start_a5 .. :try_end_b8} :catchall_fe

    monitor-exit v8

    .line 225
    return-void

    .line 210
    .restart local v3    # "resolvedService":Landroid/content/ComponentName;
    :cond_ba
    :try_start_ba
    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    if-eqz v7, :cond_a9

    .line 211
    iget-object v7, v2, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->services:Ljava/util/List;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_c4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 212
    .local v5, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c4

    .line 213
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .local v3, "resolvedService":Landroid/content/ComponentName;
    goto :goto_a9

    .line 228
    .end local v2    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    .end local v3    # "resolvedService":Landroid/content/ComponentName;
    .end local v5    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v6    # "serviceInfo$iterator":Ljava/util/Iterator;
    :cond_df
    iget v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I
    :try_end_e1
    .catchall {:try_start_ba .. :try_end_e1} :catchall_fe

    packed-switch v7, :pswitch_data_156

    :goto_e4
    :pswitch_e4
    monitor-exit v8

    .line 166
    return-void

    .line 230
    :pswitch_e6
    if-eqz v4, :cond_110

    .line 231
    :try_start_e8
    invoke-virtual {p0, v3}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;

    move-result-object v1

    .line 232
    .local v1, "existingService":Landroid/os/Messenger;
    if-eqz v1, :cond_101

    .line 233
    const-string/jumbo v7, "HostEmulationManager"

    const-string/jumbo v9, "Binding to existing service"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 235
    invoke-virtual {p0, v1, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V
    :try_end_fd
    .catchall {:try_start_e8 .. :try_end_fd} :catchall_fe

    goto :goto_e4

    .line 170
    .end local v1    # "existingService":Landroid/os/Messenger;
    :catchall_fe
    move-exception v7

    monitor-exit v8

    throw v7

    .line 238
    .restart local v1    # "existingService":Landroid/os/Messenger;
    :cond_101
    :try_start_101
    const-string/jumbo v7, "HostEmulationManager"

    const-string/jumbo v9, "Waiting for new service."

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mSelectApdu:[B

    .line 241
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    goto :goto_e4

    .line 244
    .end local v1    # "existingService":Landroid/os/Messenger;
    :cond_110
    const-string/jumbo v7, "HostEmulationManager"

    const-string/jumbo v9, "Dropping non-select APDU in STATE_W4_SELECT"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    sget-object v9, Lcom/android/nfc/cardemulation/HostEmulationManager;->UNKNOWN_ERROR:[B

    invoke-virtual {v7, v9}, Lcom/android/nfc/NfcService;->sendData([B)Z

    goto :goto_e4

    .line 249
    :pswitch_123
    const-string/jumbo v7, "HostEmulationManager"

    const-string/jumbo v9, "Unexpected APDU in STATE_W4_SERVICE"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e4

    .line 252
    :pswitch_12d
    if-eqz v4, :cond_142

    .line 253
    invoke-virtual {p0, v3}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;

    move-result-object v1

    .line 254
    .restart local v1    # "existingService":Landroid/os/Messenger;
    if-eqz v1, :cond_13c

    .line 255
    invoke-virtual {p0, v1, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    .line 256
    const/4 v7, 0x4

    iput v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    goto :goto_e4

    .line 259
    :cond_13c
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mSelectApdu:[B

    .line 260
    const/4 v7, 0x2

    iput v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    goto :goto_e4

    .line 262
    .end local v1    # "existingService":Landroid/os/Messenger;
    :cond_142
    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-eqz v7, :cond_14c

    .line 264
    iget-object v7, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {p0, v7, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDataToServiceLocked(Landroid/os/Messenger;[B)V

    goto :goto_e4

    .line 267
    :cond_14c
    const-string/jumbo v7, "HostEmulationManager"

    const-string/jumbo v9, "Service no longer bound, dropping APDU"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_155
    .catchall {:try_start_101 .. :try_end_155} :catchall_fe

    goto :goto_e4

    .line 228
    :pswitch_data_156
    .packed-switch 0x1
        :pswitch_e6
        :pswitch_123
        :pswitch_e4
        :pswitch_12d
    .end packed-switch
.end method

.method public onHostEmulationDeactivated()V
    .registers 4

    .prologue
    .line 275
    const-string/jumbo v0, "HostEmulationManager"

    const-string/jumbo v1, "notifyHostEmulationDeactivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 277
    :try_start_c
    iget v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    if-nez v0, :cond_19

    .line 278
    const-string/jumbo v0, "HostEmulationManager"

    const-string/jumbo v2, "Got deactivation event while in idle state"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 281
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 283
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindServiceIfNeededLocked()V

    .line 284
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->releasePerformanceLock()V

    .line 285
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I
    :try_end_2c
    .catchall {:try_start_c .. :try_end_2c} :catchall_2e

    monitor-exit v1

    .line 274
    return-void

    .line 276
    :catchall_2e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onOffHostAidSelected()V
    .registers 5

    .prologue
    .line 305
    const-string/jumbo v1, "HostEmulationManager"

    const-string/jumbo v2, "notifyOffHostAidSelected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 307
    :try_start_c
    iget v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_15

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-nez v1, :cond_38

    .line 312
    :cond_15
    :goto_15
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 313
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 314
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindServiceIfNeededLocked()V

    .line 315
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mState:I

    .line 318
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.nfc.cardmeulation.close_tap_dialog"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.android.nfc"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_3d

    monitor-exit v2

    .line 304
    return-void

    .line 310
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_38
    const/4 v1, 0x1

    :try_start_39
    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDeactivateToActiveServiceLocked(I)V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_3d

    goto :goto_15

    .line 306
    :catchall_3d
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 141
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    if-eqz p1, :cond_a

    .line 143
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindServiceIfNeededLocked(Landroid/content/ComponentName;)Landroid/os/Messenger;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_e

    :goto_8
    monitor-exit v1

    .line 140
    return-void

    .line 145
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindServiceIfNeededLocked()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_e

    goto :goto_8

    .line 141
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 131
    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 132
    if-eqz p1, :cond_e

    .line 133
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->bindPaymentServiceLocked(ILandroid/content/ComponentName;)V
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_12

    :goto_c
    monitor-exit v1

    .line 130
    return-void

    .line 135
    :cond_e
    :try_start_e
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->unbindPaymentServiceLocked()V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_12

    goto :goto_c

    .line 131
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public releasePerformanceLock()V
    .registers 5

    .prologue
    .line 298
    sget-object v1, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_24

    .line 299
    sget-object v1, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPerf:Landroid/util/BoostFramework;

    invoke-virtual {v1}, Landroid/util/BoostFramework;->perfLockRelease()I

    move-result v0

    .line 300
    .local v0, "ret":I
    const-string/jumbo v1, "HostEmulationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Release performance lock result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v0    # "ret":I
    :cond_24
    return-void
.end method

.method sendDataToServiceLocked(Landroid/os/Messenger;[B)V
    .registers 8
    .param p1, "service"    # Landroid/os/Messenger;
    .param p2, "data"    # [B

    .prologue
    .line 346
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-eq p1, v3, :cond_16

    .line 347
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/nfc/cardemulation/HostEmulationManager;->sendDeactivateToActiveServiceLocked(I)V

    .line 348
    iput-object p1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    .line 349
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentService:Landroid/os/Messenger;

    invoke-virtual {p1, v3}, Landroid/os/Messenger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 350
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    .line 355
    :cond_16
    :goto_16
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 356
    .local v2, "msg":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 357
    .local v0, "dataBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "data"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 358
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 359
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 361
    :try_start_2e
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v3, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_33} :catch_39

    .line 345
    :goto_33
    return-void

    .line 352
    .end local v0    # "dataBundle":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_34
    iget-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    iput-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveServiceName:Landroid/content/ComponentName;

    goto :goto_16

    .line 362
    .restart local v0    # "dataBundle":Landroid/os/Bundle;
    .restart local v2    # "msg":Landroid/os/Message;
    :catch_39
    move-exception v1

    .line 363
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "HostEmulationManager"

    const-string/jumbo v4, "Remote service has died, dropping APDU"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

.method sendDeactivateToActiveServiceLocked(I)V
    .registers 6
    .param p1, "reason"    # I

    .prologue
    const/4 v3, 0x0

    .line 368
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    if-nez v2, :cond_6

    return-void

    .line 369
    :cond_6
    const/4 v2, 0x2

    invoke-static {v3, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 370
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 372
    :try_start_d
    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mActiveService:Landroid/os/Messenger;

    invoke-virtual {v2, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_13

    .line 367
    :goto_12
    return-void

    .line 373
    :catch_13
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_12
.end method

.method public setScreenState(I)V
    .registers 4
    .param p1, "state"    # I

    .prologue
    .line 569
    const-string/jumbo v0, "HostEmulationManager"

    const-string/jumbo v1, "setScreenState() is not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    return-void
.end method

.method unbindPaymentServiceLocked()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 379
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    if-eqz v0, :cond_13

    .line 380
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceBound:Z

    .line 382
    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentService:Landroid/os/Messenger;

    .line 383
    iput-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mPaymentServiceName:Landroid/content/ComponentName;

    .line 378
    :cond_13
    return-void
.end method

.method unbindServiceIfNeededLocked()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 399
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    if-eqz v0, :cond_2f

    .line 400
    const-string/jumbo v0, "HostEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unbinding from service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 402
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceBound:Z

    .line 403
    iput-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mService:Landroid/os/Messenger;

    .line 404
    iput-object v3, p0, Lcom/android/nfc/cardemulation/HostEmulationManager;->mServiceName:Landroid/content/ComponentName;

    .line 398
    :cond_2f
    return-void
.end method

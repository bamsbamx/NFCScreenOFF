.class public Lcom/android/nfc/dhimpl/NativeNfcTag;
.super Ljava/lang/Object;
.source "NativeNfcTag.java"

# interfaces
.implements Lcom/android/nfc/DeviceHost$TagEndpoint;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field static final STATUS_CODE_TARGET_LOST:I = 0x92


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConnectedHandle:I

.field private mConnectedTechIndex:I

.field private mIsPresent:Z

.field private mTechActBytes:[[B

.field private mTechExtras:[Landroid/os/Bundle;

.field private mTechHandles:[I

.field private mTechLibNfcTypes:[I

.field private mTechList:[I

.field private mTechPollBytes:[[B

.field private mUid:[B

.field private mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;


# direct methods
.method static synthetic -get0(Lcom/android/nfc/dhimpl/NativeNfcTag;)I
    .registers 2

    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/nfc/dhimpl/NativeNfcTag;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/nfc/dhimpl/NativeNfcTag;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doIsDiscoveringCheckComplete()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/nfc/dhimpl/NativeNfcTag;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doIsIrregularDiscovering()Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const-string/jumbo v0, "NativeNfcTag"

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->TAG:Ljava/lang/String;

    .line 63
    return-void
.end method

.method private addTechnology(III)V
    .registers 10
    .param p1, "tech"    # I
    .param p2, "handle"    # I
    .param p3, "libnfctype"    # I

    .prologue
    const/4 v5, 0x0

    .line 499
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v1, v3, [I

    .line 500
    .local v1, "mNewTechList":[I
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 501
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v3, v3

    aput p1, v1, v3

    .line 502
    iput-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    .line 504
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [I

    .line 505
    .local v0, "mNewHandleList":[I
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v4, v4

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 506
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v3, v3

    aput p2, v0, v3

    .line 507
    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    .line 509
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [I

    .line 510
    .local v2, "mNewTypeList":[I
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 511
    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v3, v3

    aput p3, v2, v3

    .line 512
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    .line 498
    return-void
.end method

.method private declared-synchronized checkNdefWithStatus([I)I
    .registers 4
    .param p1, "ndefinfo"    # [I

    .prologue
    monitor-enter p0

    .line 357
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_a

    .line 358
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 360
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doCheckNdef([I)I

    move-result v0

    .line 361
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_17

    .line 362
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit p0

    .line 364
    return v0

    .end local v0    # "status":I
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private native doCheckNdef([I)I
.end method

.method private native doConnect(I)I
.end method

.method private native doIsDiscoveringCheckComplete()Z
.end method

.method private native doIsIrregularDiscovering()Z
.end method

.method private native doRead()[B
.end method

.method private native doTransceive([BZ[I)[B
.end method

.method private native doWrite([B)Z
.end method

.method private getConnectedHandle()I
    .registers 2

    .prologue
    .line 474
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    return v0
.end method

.method private getConnectedLibNfcType()I
    .registers 3

    .prologue
    .line 478
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_13

    .line 479
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    iget v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    aget v0, v0, v1

    return v0

    .line 481
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method private getNdefType(II)I
    .registers 4
    .param p1, "libnfctype"    # I
    .param p2, "javatype"    # I

    .prologue
    .line 495
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doGetNdefType(II)I

    move-result v0

    return v0
.end method

.method private getTechIndex(I)I
    .registers 5
    .param p1, "tech"    # I

    .prologue
    .line 596
    const/4 v1, -0x1

    .line 597
    .local v1, "techIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v0, v2, :cond_e

    .line 598
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_f

    .line 599
    move v1, v0

    .line 603
    :cond_e
    return v1

    .line 597
    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private hasTech(I)Z
    .registers 5
    .param p1, "tech"    # I

    .prologue
    .line 607
    const/4 v0, 0x0

    .line 608
    .local v0, "hasTech":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v1, v2, :cond_e

    .line 609
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_f

    .line 610
    const/4 v0, 0x1

    .line 614
    :cond_e
    return v0

    .line 608
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private hasTechOnHandle(II)Z
    .registers 6
    .param p1, "tech"    # I
    .param p2, "handle"    # I

    .prologue
    .line 618
    const/4 v0, 0x0

    .line 619
    .local v0, "hasTech":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v1, v2, :cond_14

    .line 620
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_15

    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v2, v2, v1

    if-ne v2, p2, :cond_15

    .line 621
    const/4 v0, 0x1

    .line 625
    :cond_14
    return v0

    .line 619
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private isUltralightC()Z
    .registers 11

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x6

    const/4 v6, 0x2

    const/4 v4, 0x0

    .line 641
    const/4 v0, 0x0

    .line 642
    .local v0, "isUltralightC":Z
    new-array v1, v6, [B

    .local v1, "readCmd":[B
    fill-array-data v1, :array_5a

    .line 643
    new-array v3, v6, [I

    .line 644
    .local v3, "retCode":[I
    invoke-virtual {p0, v1, v4, v3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->transceive([BZ[I)[B

    move-result-object v2

    .line 645
    .local v2, "respData":[B
    if-eqz v2, :cond_3f

    array-length v4, v2

    const/16 v5, 0x10

    if-ne v4, v5, :cond_3f

    .line 648
    aget-byte v4, v2, v6

    if-nez v4, :cond_42

    const/4 v4, 0x3

    aget-byte v4, v2, v4

    if-nez v4, :cond_42

    aget-byte v4, v2, v8

    if-nez v4, :cond_42

    .line 649
    aget-byte v4, v2, v9

    if-nez v4, :cond_42

    aget-byte v4, v2, v7

    if-nez v4, :cond_42

    const/4 v4, 0x7

    aget-byte v4, v2, v4

    if-nez v4, :cond_42

    .line 652
    const/16 v4, 0x8

    aget-byte v4, v2, v4

    if-ne v4, v6, :cond_40

    const/16 v4, 0x9

    aget-byte v4, v2, v4

    if-nez v4, :cond_40

    .line 654
    const/4 v0, 0x1

    .line 679
    :cond_3f
    :goto_3f
    return v0

    .line 658
    :cond_40
    const/4 v0, 0x0

    goto :goto_3f

    .line 663
    :cond_42
    aget-byte v4, v2, v8

    const/16 v5, -0x1f

    if-ne v4, v5, :cond_58

    aget-byte v4, v2, v9

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x20

    if-ge v4, v5, :cond_58

    .line 670
    aget-byte v4, v2, v7

    and-int/lit16 v4, v4, 0xff

    if-le v4, v7, :cond_3f

    .line 671
    const/4 v0, 0x1

    goto :goto_3f

    .line 675
    :cond_58
    const/4 v0, 0x0

    goto :goto_3f

    .line 642
    :array_5a
    .array-data 1
        0x30t
        0x2t
    .end array-data
.end method


# virtual methods
.method public addNdefFormatableTechnology(II)V
    .registers 4
    .param p1, "handle"    # I
    .param p2, "libnfcType"    # I

    .prologue
    .line 555
    monitor-enter p0

    .line 556
    const/4 v0, 0x7

    :try_start_2
    invoke-direct {p0, v0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addTechnology(III)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    .line 554
    return-void

    .line 555
    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V
    .registers 14
    .param p1, "msg"    # Landroid/nfc/NdefMessage;
    .param p2, "handle"    # I
    .param p3, "libnfcType"    # I
    .param p4, "javaType"    # I
    .param p5, "maxLength"    # I
    .param p6, "cardState"    # I

    .prologue
    .line 567
    monitor-enter p0

    .line 568
    const/4 v4, 0x6

    :try_start_2
    invoke-direct {p0, v4, p2, p3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addTechnology(III)V

    .line 570
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 571
    .local v1, "extras":Landroid/os/Bundle;
    const-string/jumbo v4, "ndefmsg"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 572
    const-string/jumbo v4, "ndefmaxlength"

    invoke-virtual {v1, v4, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 573
    const-string/jumbo v4, "ndefcardstate"

    invoke-virtual {v1, v4, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 574
    const-string/jumbo v4, "ndeftype"

    invoke-direct {p0, p3, p4}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getNdefType(II)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 576
    iget-object v4, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    if-nez v4, :cond_35

    .line 579
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v0

    .line 580
    .local v0, "builtTechExtras":[Landroid/os/Bundle;
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    aput-object v1, v0, v4
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_4a

    .end local v0    # "builtTechExtras":[Landroid/os/Bundle;
    :goto_33
    monitor-exit p0

    .line 566
    return-void

    .line 584
    :cond_35
    :try_start_35
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v3

    .line 585
    .local v3, "oldTechExtras":[Landroid/os/Bundle;
    array-length v4, v3

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [Landroid/os/Bundle;

    .line 586
    .local v2, "newTechExtras":[Landroid/os/Bundle;
    array-length v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 587
    array-length v4, v3

    aput-object v1, v2, v4

    .line 588
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;
    :try_end_49
    .catchall {:try_start_35 .. :try_end_49} :catchall_4a

    goto :goto_33

    .line 567
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v2    # "newTechExtras":[Landroid/os/Bundle;
    .end local v3    # "oldTechExtras":[Landroid/os/Bundle;
    :catchall_4a
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized checkNdef([I)Z
    .registers 4
    .param p1, "ndefinfo"    # [I

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 368
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->checkNdefWithStatus([I)I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_b

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connect(I)Z
    .registers 4
    .param p1, "technology"    # I

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 261
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->connectWithStatus(I)I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_b

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectWithStatus(I)I
    .registers 6
    .param p1, "technology"    # I

    .prologue
    monitor-enter p0

    .line 184
    :try_start_1
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v2, :cond_a

    .line 185
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v2}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 187
    :cond_a
    const/4 v1, -0x1

    .line 188
    .local v1, "status":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v2, v2

    if-ge v0, v2, :cond_32

    .line 189
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_5e

    .line 191
    iget v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    iget-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v3, v3, v0

    if-eq v2, v3, :cond_4b

    .line 198
    iget v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3d

    .line 201
    invoke-direct {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doConnect(I)I

    move-result v1

    .line 208
    :goto_28
    if-nez v1, :cond_32

    .line 209
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v2, v2, v0

    iput v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I

    .line 210
    iput v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    .line 254
    :cond_32
    :goto_32
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v2, :cond_3b

    .line 255
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v2}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_5b

    :cond_3b
    monitor-exit p0

    .line 257
    return v1

    .line 204
    :cond_3d
    :try_start_3d
    const-string/jumbo v2, "NativeNfcTag"

    const-string/jumbo v3, "Connect to a tech with a different handle"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus(I)I

    move-result v1

    goto :goto_28

    .line 219
    :cond_4b
    const/4 v2, 0x6

    if-eq p1, v2, :cond_51

    .line 220
    const/4 v2, 0x7

    if-ne p1, v2, :cond_52

    .line 222
    :cond_51
    const/4 v0, 0x0

    .line 225
    :cond_52
    invoke-virtual {p0, v0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus(I)I

    move-result v1

    .line 246
    if-nez v1, :cond_32

    .line 247
    iput v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I
    :try_end_5a
    .catchall {:try_start_3d .. :try_end_5a} :catchall_5b

    goto :goto_32

    .end local v0    # "i":I
    .end local v1    # "status":I
    :catchall_5b
    move-exception v2

    monitor-exit p0

    throw v2

    .line 188
    .restart local v0    # "i":I
    .restart local v1    # "status":I
    :cond_5e
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method public declared-synchronized disconnect()Z
    .registers 4

    .prologue
    monitor-enter p0

    .line 285
    const/4 v1, 0x0

    .line 287
    .local v1, "result":Z
    const/4 v2, 0x0

    :try_start_3
    iput-boolean v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    .line 288
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v2, :cond_1f

    .line 290
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v2}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->end()V
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_24

    .line 292
    :try_start_e
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v2}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->join()V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_13} :catch_27
    .catchall {:try_start_e .. :try_end_13} :catchall_24

    .line 296
    :goto_13
    const/4 v2, 0x0

    :try_start_14
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    .line 297
    const/4 v1, 0x1

    .line 302
    .end local v1    # "result":Z
    :goto_17
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    .line 303
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedHandle:I
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_24

    monitor-exit p0

    .line 304
    return v1

    .line 299
    .restart local v1    # "result":Z
    :cond_1f
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doDisconnect()Z
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_24

    move-result v1

    .local v1, "result":Z
    goto :goto_17

    .end local v1    # "result":Z
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2

    .line 293
    .local v1, "result":Z
    :catch_27
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_13
.end method

.method native doDisconnect()Z
.end method

.method native doGetNdefType(II)I
.end method

.method native doHandleReconnect(I)I
.end method

.method native doIsIsoDepNdefFormatable([B[B)Z
.end method

.method native doMakeReadonly([B)Z
.end method

.method native doNdefFormat([B)Z
.end method

.method native doPresenceCheck()Z
.end method

.method native doReconnect()I
.end method

.method public findAndReadNdef()Landroid/nfc/NdefMessage;
    .registers 31

    .prologue
    .line 789
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechList()[I

    move-result-object v29

    .line 790
    .local v29, "technologies":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    move-object/from16 v23, v0

    .line 791
    .local v23, "handles":[I
    const/4 v4, 0x0

    .line 792
    .local v4, "ndefMsg":Landroid/nfc/NdefMessage;
    const/16 v21, 0x0

    .line 793
    .local v21, "foundFormattable":Z
    const/16 v19, 0x0

    .line 794
    .local v19, "formattableHandle":I
    const/16 v20, 0x0

    .line 797
    .local v20, "formattableLibNfcType":I
    const/16 v28, 0x0

    .local v28, "techIndex":I
    move-object/from16 v25, v4

    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .local v25, "ndefMsg":Landroid/nfc/NdefMessage;
    :goto_15
    move-object/from16 v0, v29

    array-length v3, v0

    move/from16 v0, v28

    if-ge v0, v3, :cond_164

    .line 799
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_1e
    move/from16 v0, v24

    move/from16 v1, v28

    if-ge v0, v1, :cond_2d

    .line 800
    aget v3, v23, v24

    aget v5, v23, v28

    if-ne v3, v5, :cond_2a

    .line 799
    :cond_2a
    add-int/lit8 v24, v24, 0x1

    goto :goto_1e

    .line 805
    :cond_2d
    aget v3, v29, v28

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->connectWithStatus(I)I

    move-result v27

    .line 806
    .local v27, "status":I
    if-eqz v27, :cond_70

    .line 807
    const-string/jumbo v3, "NativeNfcTag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Connect Failed - status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/16 v3, 0x92

    move/from16 v0, v27

    if-ne v0, v3, :cond_69

    move-object/from16 v4, v25

    .line 887
    .end local v24    # "i":I
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v27    # "status":I
    :cond_5b
    :goto_5b
    if-nez v4, :cond_68

    if-eqz v21, :cond_68

    .line 890
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefFormatableTechnology(II)V

    .line 895
    :cond_68
    return-object v4

    .restart local v24    # "i":I
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v27    # "status":I
    :cond_69
    move-object/from16 v4, v25

    .line 797
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_6b
    :goto_6b
    add-int/lit8 v28, v28, 0x1

    move-object/from16 v25, v4

    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    goto :goto_15

    .line 814
    :cond_70
    if-nez v21, :cond_b0

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->isNdefFormatable()Z

    move-result v3

    if-eqz v3, :cond_82

    .line 816
    const/16 v21, 0x1

    .line 817
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v19

    .line 818
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v20

    .line 823
    :cond_82
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus()I

    move-result v27

    .line 824
    if-eqz v27, :cond_b0

    .line 825
    const-string/jumbo v3, "NativeNfcTag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Reconnect Failed - status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/16 v3, 0x92

    move/from16 v0, v27

    if-ne v0, v3, :cond_ad

    move-object/from16 v4, v25

    .line 827
    .local v4, "ndefMsg":Landroid/nfc/NdefMessage;
    goto :goto_5b

    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_ad
    move-object/from16 v4, v25

    .line 829
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .local v4, "ndefMsg":Landroid/nfc/NdefMessage;
    goto :goto_6b

    .line 833
    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_b0
    const/4 v3, 0x2

    new-array v0, v3, [I

    move-object/from16 v26, v0

    .line 834
    .local v26, "ndefinfo":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->checkNdefWithStatus([I)I

    move-result v27

    .line 835
    if-eqz v27, :cond_e8

    .line 836
    const-string/jumbo v3, "NativeNfcTag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Check NDEF Failed - status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/16 v3, 0x92

    move/from16 v0, v27

    if-ne v0, v3, :cond_e5

    move-object/from16 v4, v25

    .line 838
    .local v4, "ndefMsg":Landroid/nfc/NdefMessage;
    goto/16 :goto_5b

    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_e5
    move-object/from16 v4, v25

    .line 840
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .local v4, "ndefMsg":Landroid/nfc/NdefMessage;
    goto :goto_6b

    .line 844
    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_e8
    const/16 v22, 0x0

    .line 846
    .local v22, "generateEmptyNdef":Z
    const/4 v3, 0x0

    aget v8, v26, v3

    .line 847
    .local v8, "supportedNdefLength":I
    const/4 v3, 0x1

    aget v9, v26, v3

    .line 848
    .local v9, "cardState":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->readNdef()[B

    move-result-object v17

    .line 849
    .local v17, "buff":[B
    if-eqz v17, :cond_15d

    .line 851
    :try_start_f6
    new-instance v4, Landroid/nfc/NdefMessage;

    move-object/from16 v0, v17

    invoke-direct {v4, v0}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_fd
    .catch Landroid/nfc/FormatException; {:try_start_f6 .. :try_end_fd} :catch_139

    .line 853
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    .local v4, "ndefMsg":Landroid/nfc/NdefMessage;
    :try_start_fd
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v5

    .line 854
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v6

    .line 855
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedTechnology()I

    move-result v7

    move-object/from16 v3, p0

    .line 852
    invoke-virtual/range {v3 .. v9}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V

    .line 857
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus()I

    move-result v27

    .line 858
    if-eqz v27, :cond_13e

    .line 859
    const/4 v4, 0x0

    .line 860
    .local v4, "ndefMsg":Landroid/nfc/NdefMessage;
    const-string/jumbo v3, "NativeNfcTag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Reconnect Failed - status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_131
    .catch Landroid/nfc/FormatException; {:try_start_fd .. :try_end_131} :catch_162

    .line 861
    const/16 v3, 0x92

    move/from16 v0, v27

    if-ne v0, v3, :cond_6b

    goto/16 :goto_5b

    .line 866
    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :catch_139
    move-exception v18

    .local v18, "e":Landroid/nfc/FormatException;
    move-object/from16 v4, v25

    .line 868
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :goto_13c
    const/16 v22, 0x1

    .line 874
    .end local v18    # "e":Landroid/nfc/FormatException;
    :cond_13e
    :goto_13e
    if-eqz v22, :cond_5b

    .line 875
    const/4 v4, 0x0

    .line 877
    .restart local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedHandle()I

    move-result v12

    .line 878
    invoke-direct/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedLibNfcType()I

    move-result v13

    .line 879
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getConnectedTechnology()I

    move-result v14

    .line 876
    const/4 v11, 0x0

    move-object/from16 v10, p0

    move v15, v8

    move/from16 v16, v9

    invoke-virtual/range {v10 .. v16}, Lcom/android/nfc/dhimpl/NativeNfcTag;->addNdefTechnology(Landroid/nfc/NdefMessage;IIIII)V

    .line 881
    const/16 v21, 0x0

    .line 882
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnect()Z

    goto/16 :goto_5b

    .line 871
    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_15d
    const/16 v22, 0x1

    move-object/from16 v4, v25

    .local v4, "ndefMsg":Landroid/nfc/NdefMessage;
    goto :goto_13e

    .line 866
    .end local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    .end local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :catch_162
    move-exception v18

    .restart local v18    # "e":Landroid/nfc/FormatException;
    goto :goto_13c

    .end local v8    # "supportedNdefLength":I
    .end local v9    # "cardState":I
    .end local v17    # "buff":[B
    .end local v18    # "e":Landroid/nfc/FormatException;
    .end local v22    # "generateEmptyNdef":Z
    .end local v24    # "i":I
    .end local v26    # "ndefinfo":[I
    .end local v27    # "status":I
    .restart local v25    # "ndefMsg":Landroid/nfc/NdefMessage;
    :cond_164
    move-object/from16 v4, v25

    .restart local v4    # "ndefMsg":Landroid/nfc/NdefMessage;
    goto/16 :goto_5b
.end method

.method public declared-synchronized formatNdef([B)Z
    .registers 4
    .param p1, "key"    # [B

    .prologue
    monitor-enter p0

    .line 413
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_a

    .line 414
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 416
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doNdefFormat([B)Z

    move-result v0

    .line 417
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_17

    .line 418
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit p0

    .line 420
    return v0

    .end local v0    # "result":Z
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getConnectedTechnology()I
    .registers 3

    .prologue
    .line 487
    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_13

    .line 488
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    iget v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mConnectedTechIndex:I

    aget v0, v0, v1

    return v0

    .line 490
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public getHandle()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 456
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v0, v0

    if-lez v0, :cond_b

    .line 457
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    aget v0, v0, v1

    return v0

    .line 459
    :cond_b
    return v1
.end method

.method public getTechExtras()[Landroid/os/Bundle;
    .registers 15

    .prologue
    const/4 v13, 0x2

    const/16 v12, 0x8

    .line 684
    monitor-enter p0

    .line 685
    :try_start_4
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_4c

    monitor-exit p0

    return-object v8

    .line 686
    :cond_c
    :try_start_c
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v8, v8

    new-array v8, v8, [Landroid/os/Bundle;

    iput-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    .line 687
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v8, v8

    if-ge v3, v8, :cond_136

    .line 688
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 689
    .local v2, "extras":Landroid/os/Bundle;
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    aget v8, v8, v3

    packed-switch v8, :pswitch_data_13a

    .line 687
    :goto_25
    :pswitch_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 691
    :pswitch_28
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v0, v8, v3

    .line 692
    .local v0, "actBytes":[B
    if-eqz v0, :cond_3d

    array-length v8, v0

    if-lez v8, :cond_3d

    .line 693
    const-string/jumbo v8, "sak"

    const/4 v9, 0x0

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    int-to-short v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 698
    :cond_3d
    const-string/jumbo v8, "atqa"

    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v9, v9, v3

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 780
    .end local v0    # "actBytes":[B
    :cond_47
    :goto_47
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    aput-object v2, v8, v3
    :try_end_4b
    .catchall {:try_start_c .. :try_end_4b} :catchall_4c

    goto :goto_25

    .line 684
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "i":I
    :catchall_4c
    move-exception v8

    monitor-exit p0

    throw v8

    .line 706
    .restart local v2    # "extras":Landroid/os/Bundle;
    .restart local v3    # "i":I
    :pswitch_4f
    const/4 v8, 0x4

    :try_start_50
    new-array v1, v8, [B

    .line 707
    .local v1, "appData":[B
    const/4 v8, 0x3

    new-array v6, v8, [B

    .line 708
    .local v6, "protInfo":[B
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    array-length v8, v8

    const/4 v9, 0x7

    if-lt v8, v9, :cond_47

    .line 709
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-static {v8, v9, v1, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 710
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-static {v8, v9, v6, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 712
    const-string/jumbo v8, "appdata"

    invoke-virtual {v2, v8, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 713
    const-string/jumbo v8, "protinfo"

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_47

    .line 719
    .end local v1    # "appData":[B
    .end local v6    # "protInfo":[B
    :pswitch_7e
    const/16 v8, 0x8

    new-array v5, v8, [B

    .line 720
    .local v5, "pmm":[B
    const/4 v8, 0x2

    new-array v7, v8, [B

    .line 721
    .local v7, "sc":[B
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    array-length v8, v8

    if-lt v8, v12, :cond_9d

    .line 723
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x8

    invoke-static {v8, v9, v5, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 724
    const-string/jumbo v8, "pmm"

    invoke-virtual {v2, v8, v5}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 726
    :cond_9d
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    array-length v8, v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_47

    .line 727
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    const/16 v9, 0x8

    const/4 v10, 0x0

    const/4 v11, 0x2

    invoke-static {v8, v9, v7, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 728
    const-string/jumbo v8, "systemcode"

    invoke-virtual {v2, v8, v7}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_47

    .line 734
    .end local v5    # "pmm":[B
    .end local v7    # "sc":[B
    :pswitch_b8
    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lcom/android/nfc/dhimpl/NativeNfcTag;->hasTech(I)Z

    move-result v8

    if-eqz v8, :cond_cb

    .line 735
    const-string/jumbo v8, "histbytes"

    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v9, v9, v3

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_47

    .line 738
    :cond_cb
    const-string/jumbo v8, "hiresp"

    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v9, v9, v3

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_47

    .line 745
    :pswitch_d7
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    if-eqz v8, :cond_47

    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v8, v8, v3

    array-length v8, v8

    if-lt v8, v13, :cond_47

    .line 746
    const-string/jumbo v8, "respflags"

    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v9, v9, v3

    const/4 v10, 0x0

    aget-byte v9, v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    .line 747
    const-string/jumbo v8, "dsfid"

    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v9, v9, v3

    const/4 v10, 0x1

    aget-byte v9, v9, v10

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto/16 :goto_47

    .line 753
    :pswitch_100
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->isUltralightC()Z

    move-result v4

    .line 754
    .local v4, "isUlc":Z
    const-string/jumbo v8, "isulc"

    invoke-virtual {v2, v8, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_47

    .line 759
    .end local v4    # "isUlc":Z
    :pswitch_10c
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    aget-object v0, v8, v3

    .line 760
    .restart local v0    # "actBytes":[B
    if-eqz v0, :cond_121

    array-length v8, v0

    if-lez v8, :cond_121

    .line 761
    const-string/jumbo v8, "sak"

    const/4 v9, 0x0

    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    int-to-short v9, v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    .line 765
    :cond_121
    const-string/jumbo v8, "atqa"

    iget-object v9, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    aget-object v9, v9, v3

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_47

    .line 771
    .end local v0    # "actBytes":[B
    :pswitch_12d
    const-string/jumbo v8, "barcodetype"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_47

    .line 782
    .end local v2    # "extras":Landroid/os/Bundle;
    :cond_136
    iget-object v8, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;
    :try_end_138
    .catchall {:try_start_50 .. :try_end_138} :catchall_4c

    monitor-exit p0

    return-object v8

    .line 689
    :pswitch_data_13a
    .packed-switch 0x1
        :pswitch_28
        :pswitch_4f
        :pswitch_b8
        :pswitch_7e
        :pswitch_d7
        :pswitch_25
        :pswitch_25
        :pswitch_10c
        :pswitch_100
        :pswitch_12d
    .end packed-switch
.end method

.method public getTechList()[I
    .registers 2

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    return-object v0
.end method

.method public getUid()[B
    .registers 2

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mUid:[B

    return-object v0
.end method

.method public declared-synchronized isNdefFormatable()Z
    .registers 4

    .prologue
    monitor-enter p0

    .line 448
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechPollBytes:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 449
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechActBytes:[[B

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 448
    invoke-virtual {p0, v0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doIsIsoDepNdefFormatable([B[B)Z
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_11

    move-result v0

    monitor-exit p0

    return v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPresent()Z
    .registers 2

    .prologue
    monitor-enter p0

    .line 280
    :try_start_1
    iget-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeReadOnly()Z
    .registers 3

    .prologue
    monitor-enter p0

    .line 426
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_a

    .line 427
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 430
    :cond_a
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->hasTech(I)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 431
    sget-object v1, Landroid/nfc/tech/MifareClassic;->KEY_DEFAULT:[B

    invoke-virtual {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doMakeReadonly([B)Z

    move-result v0

    .line 436
    .local v0, "result":Z
    :goto_18
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_21

    .line 437
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_2b

    :cond_21
    monitor-exit p0

    .line 439
    return v0

    .line 434
    .end local v0    # "result":Z
    :cond_23
    const/4 v1, 0x0

    :try_start_24
    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doMakeReadonly([B)Z
    :try_end_29
    .catchall {:try_start_24 .. :try_end_29} :catchall_2b

    move-result v0

    .restart local v0    # "result":Z
    goto :goto_18

    .end local v0    # "result":Z
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized presenceCheck()Z
    .registers 3

    .prologue
    monitor-enter p0

    .line 400
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_a

    .line 401
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 403
    :cond_a
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doPresenceCheck()Z

    move-result v0

    .line 404
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_17

    .line 405
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit p0

    .line 407
    return v0

    .end local v0    # "result":Z
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized readNdef()[B
    .registers 3

    .prologue
    monitor-enter p0

    .line 374
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_a

    .line 375
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 377
    :cond_a
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doRead()[B

    move-result-object v0

    .line 378
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_17

    .line 379
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit p0

    .line 381
    return-object v0

    .end local v0    # "result":[B
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reconnect()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    monitor-enter p0

    .line 327
    :try_start_2
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->reconnectWithStatus()I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_b

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x1

    :cond_9
    monitor-exit p0

    return v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reconnectWithStatus()I
    .registers 4

    .prologue
    monitor-enter p0

    .line 311
    :try_start_1
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doIsIrregularDiscovering()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 312
    const-string/jumbo v1, "NativeNfcTag"

    .line 313
    const-string/jumbo v2, "reconnectWithStatus: already disconnected and next process ran. return -1."

    .line 312
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_2b

    .line 314
    const/4 v1, -0x1

    monitor-exit p0

    return v1

    .line 316
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_1c

    .line 317
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 319
    :cond_1c
    invoke-virtual {p0}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doReconnect()I

    move-result v0

    .line 320
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_29

    .line 321
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_29
    .catchall {:try_start_13 .. :try_end_29} :catchall_2b

    :cond_29
    monitor-exit p0

    .line 323
    return v0

    .end local v0    # "status":I
    :catchall_2b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized reconnectWithStatus(I)I
    .registers 4
    .param p1, "handle"    # I

    .prologue
    monitor-enter p0

    .line 332
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_a

    .line 333
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 335
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doHandleReconnect(I)I

    move-result v0

    .line 336
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_17

    .line 337
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit p0

    .line 339
    return v0

    .end local v0    # "status":I
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeTechnology(I)V
    .registers 10
    .param p1, "tech"    # I

    .prologue
    .line 517
    monitor-enter p0

    .line 518
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->getTechIndex(I)I

    move-result v4

    .line 519
    .local v4, "techIndex":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_80

    .line 520
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    new-array v2, v5, [I

    .line 521
    .local v2, "mNewTechList":[I
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v2, v7, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 522
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    add-int/lit8 v6, v4, 0x1

    .line 523
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    array-length v7, v7

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    .line 522
    invoke-static {v5, v6, v2, v4, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 524
    iput-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechList:[I

    .line 526
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    new-array v0, v5, [I

    .line 527
    .local v0, "mNewHandleList":[I
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v0, v7, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 528
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    add-int/lit8 v6, v4, 0x1

    .line 529
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    array-length v7, v7

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    .line 528
    invoke-static {v5, v6, v2, v4, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 530
    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechHandles:[I

    .line 532
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    new-array v3, v5, [I

    .line 533
    .local v3, "mNewTypeList":[I
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v3, v7, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 534
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    add-int/lit8 v6, v4, 0x1

    .line 535
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    array-length v7, v7

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    .line 534
    invoke-static {v5, v6, v3, v4, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 536
    iput-object v3, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechLibNfcTypes:[I

    .line 542
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    if-eqz v5, :cond_80

    .line 544
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    new-array v1, v5, [Landroid/os/Bundle;

    .line 545
    .local v1, "mNewTechExtras":[Landroid/os/Bundle;
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 546
    iget-object v5, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    add-int/lit8 v6, v4, 0x1

    .line 547
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;

    array-length v7, v7

    sub-int/2addr v7, v4

    add-int/lit8 v7, v7, -0x1

    .line 546
    invoke-static {v5, v6, v1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 548
    iput-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mTechExtras:[Landroid/os/Bundle;
    :try_end_80
    .catchall {:try_start_1 .. :try_end_80} :catchall_82

    .end local v0    # "mNewHandleList":[I
    .end local v1    # "mNewTechExtras":[Landroid/os/Bundle;
    .end local v2    # "mNewTechList":[I
    .end local v3    # "mNewTypeList":[I
    :cond_80
    monitor-exit p0

    .line 516
    return-void

    .line 517
    .end local v4    # "techIndex":I
    :catchall_82
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized startPresenceChecking(ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V
    .registers 4
    .param p1, "presenceCheckDelay"    # I
    .param p2, "callback"    # Lcom/android/nfc/DeviceHost$TagDisconnectedCallback;

    .prologue
    monitor-enter p0

    .line 269
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mIsPresent:Z

    .line 270
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-nez v0, :cond_14

    .line 271
    new-instance v0, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;-><init>(Lcom/android/nfc/dhimpl/NativeNfcTag;ILcom/android/nfc/DeviceHost$TagDisconnectedCallback;)V

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    .line 272
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v0}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->start()V
    :try_end_14
    .catchall {:try_start_2 .. :try_end_14} :catchall_16

    :cond_14
    monitor-exit p0

    .line 266
    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized transceive([BZ[I)[B
    .registers 6
    .param p1, "data"    # [B
    .param p2, "raw"    # Z
    .param p3, "returnCode"    # [I

    .prologue
    monitor-enter p0

    .line 345
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_a

    .line 346
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 348
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doTransceive([BZ[I)[B

    move-result-object v0

    .line 349
    .local v0, "result":[B
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_17

    .line 350
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit p0

    .line 352
    return-object v0

    .end local v0    # "result":[B
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized writeNdef([B)Z
    .registers 4
    .param p1, "buf"    # [B

    .prologue
    monitor-enter p0

    .line 387
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_a

    .line 388
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->pause()V

    .line 390
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcTag;->doWrite([B)Z

    move-result v0

    .line 391
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    if-eqz v1, :cond_17

    .line 392
    iget-object v1, p0, Lcom/android/nfc/dhimpl/NativeNfcTag;->mWatchdog:Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;

    invoke-virtual {v1}, Lcom/android/nfc/dhimpl/NativeNfcTag$PresenceCheckWatchdog;->doResume()V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    :cond_17
    monitor-exit p0

    .line 394
    return v0

    .end local v0    # "result":Z
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

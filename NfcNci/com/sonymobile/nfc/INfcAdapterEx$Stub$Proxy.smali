.class Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;
.super Ljava/lang/Object;
.source "INfcAdapterEx.java"

# interfaces
.implements Lcom/sonymobile/nfc/INfcAdapterEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/INfcAdapterEx$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 314
    return-void
.end method


# virtual methods
.method public acceptOfLlcpServerSocket(I)I
    .registers 8
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 539
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 542
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 543
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    iget-object v3, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 545
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 546
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    move-result v2

    .line 549
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 552
    return v2

    .line 548
    .end local v2    # "_result":I
    :catchall_27
    move-exception v3

    .line 549
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 550
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 548
    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public clearEepromData()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 481
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 482
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 485
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 486
    iget-object v3, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 487
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 488
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_24

    move-result v2

    .line 491
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 494
    return v2

    .line 490
    .end local v2    # "_result":I
    :catchall_24
    move-exception v3

    .line 491
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 492
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 490
    throw v3
.end method

.method public closeOfLlcpServerSocket(I)I
    .registers 8
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 521
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 524
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 525
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 526
    iget-object v3, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 527
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 528
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    move-result v2

    .line 531
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 534
    return v2

    .line 530
    .end local v2    # "_result":I
    :catchall_27
    move-exception v3

    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 530
    throw v3
.end method

.method public closeOfLlcpSocket(I)I
    .registers 8
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 578
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 581
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 583
    iget-object v3, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 584
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 585
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    move-result v2

    .line 588
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 591
    return v2

    .line 587
    .end local v2    # "_result":I
    :catchall_27
    move-exception v3

    .line 588
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 589
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 587
    throw v3
.end method

.method public connectToServiceOfLlcpSocket(ILjava/lang/String;)I
    .registers 9
    .param p1, "nativeHandle"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 596
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 599
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 601
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 602
    iget-object v3, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xf

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 603
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 604
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    move-result v2

    .line 607
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 610
    return v2

    .line 606
    .end local v2    # "_result":I
    :catchall_2a
    move-exception v3

    .line 607
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 606
    throw v3
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)I
    .registers 12
    .param p1, "sap"    # I
    .param p2, "sn"    # Ljava/lang/String;
    .param p3, "miu"    # I
    .param p4, "rw"    # I
    .param p5, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 498
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 499
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 502
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 505
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 506
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 507
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    iget-object v3, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 509
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 510
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_33

    move-result v2

    .line 513
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 516
    return v2

    .line 512
    .end local v2    # "_result":I
    :catchall_33
    move-exception v3

    .line 513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 512
    throw v3
.end method

.method public createLlcpSocket(IIII)I
    .registers 11
    .param p1, "sap"    # I
    .param p2, "miu"    # I
    .param p3, "rw"    # I
    .param p4, "linearBufferLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 556
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 557
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 560
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 563
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    iget-object v3, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 566
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 567
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_30

    move-result v2

    .line 570
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 573
    return v2

    .line 569
    .end local v2    # "_result":I
    :catchall_30
    move-exception v3

    .line 570
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 569
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 324
    const-string/jumbo v0, "com.sonymobile.nfc.INfcAdapterEx"

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 348
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 351
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 352
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 353
    iget-object v3, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 354
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 355
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    move-result-object v2

    .line 358
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 361
    return-object v2

    .line 357
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_26
    move-exception v3

    .line 358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 357
    throw v3
.end method

.method public getRemoteMiuOfLlcpSocket(I)I
    .registers 8
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 658
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 659
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 662
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 663
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    iget-object v3, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 665
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 666
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_27

    move-result v2

    .line 669
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 672
    return v2

    .line 668
    .end local v2    # "_result":I
    :catchall_27
    move-exception v3

    .line 669
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 668
    throw v3
.end method

.method public isLlcpLinkActivated()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 726
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 727
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 730
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 731
    iget-object v3, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 732
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 733
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_29

    move-result v3

    if-eqz v3, :cond_27

    const/4 v2, 0x1

    .line 736
    .local v2, "_result":Z
    :goto_20
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 739
    return v2

    .line 733
    .end local v2    # "_result":Z
    :cond_27
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_20

    .line 735
    .end local v2    # "_result":Z
    :catchall_29
    move-exception v3

    .line 736
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 737
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 735
    throw v3
.end method

.method public isNfcLocked()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 385
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 388
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 389
    iget-object v3, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 390
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 391
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_28

    move-result v3

    if-eqz v3, :cond_26

    const/4 v2, 0x1

    .line 394
    .local v2, "_result":Z
    :goto_1f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 397
    return v2

    .line 391
    .end local v2    # "_result":Z
    :cond_26
    const/4 v2, 0x0

    .restart local v2    # "_result":Z
    goto :goto_1f

    .line 393
    .end local v2    # "_result":Z
    :catchall_28
    move-exception v3

    .line 394
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 395
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 393
    throw v3
.end method

.method public readEepromDataByte(I[B)I
    .registers 9
    .param p1, "address"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 438
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 441
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 443
    if-nez p2, :cond_2f

    .line 444
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    :goto_17
    iget-object v3, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 450
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 451
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 452
    .local v2, "_result":I
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_34

    .line 455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 458
    return v2

    .line 447
    .end local v2    # "_result":I
    :cond_2f
    :try_start_2f
    array-length v3, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_33
    .catchall {:try_start_2f .. :try_end_33} :catchall_34

    goto :goto_17

    .line 454
    :catchall_34
    move-exception v3

    .line 455
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 456
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 454
    throw v3
.end method

.method public receiveOfLlcpSocket(I[B)I
    .registers 9
    .param p1, "nativeHandle"    # I
    .param p2, "receiveBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 615
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 618
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 619
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 620
    if-nez p2, :cond_30

    .line 621
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 626
    :goto_17
    iget-object v3, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 627
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 628
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 629
    .local v2, "_result":I
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->readByteArray([B)V
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_35

    .line 632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 635
    return v2

    .line 624
    .end local v2    # "_result":I
    :cond_30
    :try_start_30
    array-length v3, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_35

    goto :goto_17

    .line 631
    :catchall_35
    move-exception v3

    .line 632
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 631
    throw v3
.end method

.method public sendOfLlcpSocket(I[B)I
    .registers 9
    .param p1, "nativeHandle"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 640
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 643
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 645
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 646
    iget-object v3, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 647
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 648
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    move-result v2

    .line 651
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 654
    return v2

    .line 650
    .end local v2    # "_result":I
    :catchall_2a
    move-exception v3

    .line 651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 650
    throw v3
.end method

.method public setClient(Landroid/os/IBinder;Ljava/lang/String;)I
    .registers 9
    .param p1, "client"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 329
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 332
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 334
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 335
    iget-object v3, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 336
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 337
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_29

    move-result v2

    .line 340
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 343
    return v2

    .line 339
    .end local v2    # "_result":I
    :catchall_29
    move-exception v3

    .line 340
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 339
    throw v3
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)I
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 365
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 366
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 369
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 370
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 372
    iget-object v3, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 373
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_29

    move-result v2

    .line 377
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 380
    return v2

    .line 376
    .end local v2    # "_result":I
    :catchall_29
    move-exception v3

    .line 377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 376
    throw v3
.end method

.method public setTestMode(Z)I
    .registers 8
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 402
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 405
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string/jumbo v4, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 406
    if-eqz p1, :cond_12

    const/4 v3, 0x1

    :cond_12
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 407
    iget-object v3, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 409
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_22
    .catchall {:try_start_9 .. :try_end_22} :catchall_2a

    move-result v2

    .line 412
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 415
    return v2

    .line 411
    .end local v2    # "_result":I
    :catchall_2a
    move-exception v3

    .line 412
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 411
    throw v3
.end method

.method public subscribeLlcpLinkActivatedEvent(Ljava/lang/String;Landroid/app/PendingIntent;)I
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 676
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 677
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 680
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 682
    if-eqz p2, :cond_31

    .line 683
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 684
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 689
    :goto_1b
    iget-object v3, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 690
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 691
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_36

    move-result v2

    .line 694
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 697
    return v2

    .line 687
    .end local v2    # "_result":I
    :cond_31
    const/4 v3, 0x0

    :try_start_32
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_1b

    .line 693
    :catchall_36
    move-exception v3

    .line 694
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 693
    throw v3
.end method

.method public subscribeLlcpLinkDeactivatedEvent(Ljava/lang/String;Landroid/app/PendingIntent;)I
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/app/PendingIntent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 702
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 705
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 707
    if-eqz p2, :cond_31

    .line 708
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 709
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 714
    :goto_1b
    iget-object v3, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 715
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 716
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_36

    move-result v2

    .line 719
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 722
    return v2

    .line 712
    .end local v2    # "_result":I
    :cond_31
    const/4 v3, 0x0

    :try_start_32
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_36

    goto :goto_1b

    .line 718
    :catchall_36
    move-exception v3

    .line 719
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 720
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 718
    throw v3
.end method

.method public test(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "testCase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 420
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 423
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 424
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 425
    iget-object v3, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 426
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 427
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_26

    move-result-object v2

    .line 430
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 433
    return-object v2

    .line 429
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_26
    move-exception v3

    .line 430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 429
    throw v3
.end method

.method public writeEepromDataByte(IB)I
    .registers 9
    .param p1, "address"    # I
    .param p2, "data"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 463
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 466
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string/jumbo v3, "com.sonymobile.nfc.INfcAdapterEx"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 469
    iget-object v3, p0, Lcom/sonymobile/nfc/INfcAdapterEx$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 470
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 471
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_2a

    move-result v2

    .line 474
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 477
    return v2

    .line 473
    .end local v2    # "_result":I
    :catchall_2a
    move-exception v3

    .line 474
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 473
    throw v3
.end method

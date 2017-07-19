.class final Lcom/android/nfc/NfcService$NfcServiceEx;
.super Lcom/sonymobile/nfc/INfcAdapterEx$Stub;
.source "NfcService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcServiceEx"
.end annotation


# instance fields
.field private clientMap:Ljava/util/HashMap;

.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 2528
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Lcom/sonymobile/nfc/INfcAdapterEx$Stub;-><init>()V

    .line 2529
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->clientMap:Ljava/util/HashMap;

    .line 2528
    return-void
.end method


# virtual methods
.method public acceptOfLlcpServerSocket(I)I
    .registers 8
    .param p1, "nativeHandle"    # I

    .prologue
    const/4 v5, -0x1

    .line 2724
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2727
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v4

    if-nez v4, :cond_13

    .line 2728
    const/16 v4, -0x11

    return v4

    .line 2732
    :cond_13
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4, p1}, Lcom/android/nfc/NfcService;->-wrap2(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v3

    .line 2733
    .local v3, "socket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    if-nez v3, :cond_1c

    .line 2734
    return v5

    .line 2738
    :cond_1c
    :try_start_1c
    invoke-interface {v3}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->accept()Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    .line 2739
    .local v0, "clientSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-eqz v0, :cond_29

    .line 2740
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4, v0}, Lcom/android/nfc/NfcService;->-wrap5(Lcom/android/nfc/NfcService;Ljava/lang/Object;)I
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_27} :catch_2c
    .catch Lcom/android/nfc/LlcpException; {:try_start_1c .. :try_end_27} :catch_2a

    move-result v4

    return v4

    .line 2742
    :cond_29
    return v5

    .line 2746
    .end local v0    # "clientSocket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :catch_2a
    move-exception v1

    .line 2747
    .local v1, "e":Lcom/android/nfc/LlcpException;
    return v5

    .line 2744
    .end local v1    # "e":Lcom/android/nfc/LlcpException;
    :catch_2c
    move-exception v2

    .line 2745
    .local v2, "e":Ljava/io/IOException;
    return v5
.end method

.method public binderDied()V
    .registers 8

    .prologue
    .line 2533
    iget-object v5, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->clientMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 2534
    :try_start_3
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    const/4 v6, 0x0

    invoke-static {v4, v6}, Lcom/android/nfc/NfcService;->-set7(Lcom/android/nfc/NfcService;Z)Z

    .line 2535
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->clientMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 2536
    .local v3, "keySet":Ljava/util/Set;
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2537
    .local v1, "iterator":Ljava/util/Iterator;
    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 2538
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2539
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->clientMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 2540
    .local v0, "binder":Landroid/os/IBinder;
    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v4

    if-nez v4, :cond_13

    .line 2541
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->clientMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_34

    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "key":Ljava/lang/String;
    :cond_32
    monitor-exit v5

    .line 2532
    return-void

    .line 2533
    .end local v1    # "iterator":Ljava/util/Iterator;
    .end local v3    # "keySet":Ljava/util/Set;
    :catchall_34
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public clearEepromData()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2657
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2659
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2660
    const/16 v0, -0x11

    return v0

    .line 2663
    :cond_12
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get32(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost$NfcProperty;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$NfcProperty;->clearEepromData()Z

    move-result v0

    if-nez v0, :cond_20

    .line 2664
    const/4 v0, -0x1

    return v0

    .line 2666
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method public closeOfLlcpServerSocket(I)I
    .registers 6
    .param p1, "nativeHandle"    # I

    .prologue
    const/4 v3, -0x1

    .line 2699
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2702
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_13

    .line 2703
    const/16 v2, -0x11

    return v2

    .line 2707
    :cond_13
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2, p1}, Lcom/android/nfc/NfcService;->-wrap2(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/DeviceHost$LlcpServerSocket;

    move-result-object v1

    .line 2708
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    if-nez v1, :cond_1c

    .line 2709
    return v3

    .line 2713
    :cond_1c
    :try_start_1c
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpServerSocket;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_26
    .catchall {:try_start_1c .. :try_end_1f} :catchall_2d

    .line 2714
    const/4 v2, 0x0

    .line 2718
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3, p1}, Lcom/android/nfc/NfcService;->-wrap9(Lcom/android/nfc/NfcService;I)V

    .line 2714
    return v2

    .line 2715
    :catch_26
    move-exception v0

    .line 2718
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2, p1}, Lcom/android/nfc/NfcService;->-wrap9(Lcom/android/nfc/NfcService;I)V

    .line 2716
    return v3

    .line 2717
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2d
    move-exception v2

    .line 2718
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3, p1}, Lcom/android/nfc/NfcService;->-wrap9(Lcom/android/nfc/NfcService;I)V

    .line 2717
    throw v2
.end method

.method public closeOfLlcpSocket(I)I
    .registers 6
    .param p1, "nativeHandle"    # I

    .prologue
    const/4 v3, -0x1

    .line 2782
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2785
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_13

    .line 2786
    const/16 v2, -0x11

    return v2

    .line 2790
    :cond_13
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2, p1}, Lcom/android/nfc/NfcService;->-wrap3(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v1

    .line 2791
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-nez v1, :cond_1c

    .line 2792
    return v3

    .line 2796
    :cond_1c
    :try_start_1c
    invoke-interface {v1}, Lcom/android/nfc/DeviceHost$LlcpSocket;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_26
    .catchall {:try_start_1c .. :try_end_1f} :catchall_2d

    .line 2797
    const/4 v2, 0x0

    .line 2801
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3, p1}, Lcom/android/nfc/NfcService;->-wrap9(Lcom/android/nfc/NfcService;I)V

    .line 2797
    return v2

    .line 2798
    :catch_26
    move-exception v0

    .line 2801
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2, p1}, Lcom/android/nfc/NfcService;->-wrap9(Lcom/android/nfc/NfcService;I)V

    .line 2799
    return v3

    .line 2800
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_2d
    move-exception v2

    .line 2801
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v3, p1}, Lcom/android/nfc/NfcService;->-wrap9(Lcom/android/nfc/NfcService;I)V

    .line 2800
    throw v2
.end method

.method public connectToServiceOfLlcpSocket(ILjava/lang/String;)I
    .registers 7
    .param p1, "nativeHandle"    # I
    .param p2, "sn"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 2807
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2810
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_13

    .line 2811
    const/16 v2, -0x11

    return v2

    .line 2815
    :cond_13
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2, p1}, Lcom/android/nfc/NfcService;->-wrap3(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v1

    .line 2816
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-nez v1, :cond_1c

    .line 2817
    return v3

    .line 2821
    :cond_1c
    :try_start_1c
    invoke-interface {v1, p2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->connectToService(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_21

    .line 2822
    const/4 v2, 0x0

    return v2

    .line 2823
    :catch_21
    move-exception v0

    .line 2824
    .local v0, "e":Ljava/io/IOException;
    return v3
.end method

.method public createLlcpServerSocket(ILjava/lang/String;III)I
    .registers 15
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
    const/16 v8, -0xa

    .line 2672
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2675
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2676
    const/16 v0, -0x11

    return v0

    .line 2679
    :cond_14
    if-ltz p3, :cond_1e

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get2(Lcom/android/nfc/NfcService;)I

    move-result v0

    if-le p3, v0, :cond_20

    .line 2680
    :cond_1e
    const/4 v0, -0x8

    return v0

    .line 2679
    :cond_20
    if-gt p3, p5, :cond_1e

    .line 2685
    :try_start_22
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/nfc/DeviceHost;->createLlcpServerSocket(ILjava/lang/String;III)Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :try_end_30
    .catch Lcom/android/nfc/LlcpException; {:try_start_22 .. :try_end_30} :catch_3a

    move-result-object v7

    .line 2690
    .local v7, "socket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    if-eqz v7, :cond_45

    .line 2691
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0, v7}, Lcom/android/nfc/NfcService;->-wrap5(Lcom/android/nfc/NfcService;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 2686
    .end local v7    # "socket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :catch_3a
    move-exception v6

    .line 2687
    .local v6, "e":Lcom/android/nfc/LlcpException;
    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "create llcp service socket error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2688
    return v8

    .line 2693
    .end local v6    # "e":Lcom/android/nfc/LlcpException;
    .restart local v7    # "socket":Lcom/android/nfc/DeviceHost$LlcpServerSocket;
    :cond_45
    return v8
.end method

.method public createLlcpSocket(IIII)I
    .registers 10
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
    const/16 v4, -0xa

    .line 2754
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2757
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_14

    .line 2758
    const/16 v2, -0x11

    return v2

    .line 2761
    :cond_14
    if-ltz p2, :cond_1e

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get2(Lcom/android/nfc/NfcService;)I

    move-result v2

    if-le p2, v2, :cond_20

    .line 2762
    :cond_1e
    const/4 v2, -0x8

    return v2

    .line 2761
    :cond_20
    if-gt p2, p4, :cond_1e

    .line 2767
    :try_start_22
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/nfc/DeviceHost;->createLlcpSocket(IIII)Lcom/android/nfc/DeviceHost$LlcpSocket;
    :try_end_2b
    .catch Lcom/android/nfc/LlcpException; {:try_start_22 .. :try_end_2b} :catch_35

    move-result-object v1

    .line 2773
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-eqz v1, :cond_40

    .line 2774
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2, v1}, Lcom/android/nfc/NfcService;->-wrap5(Lcom/android/nfc/NfcService;Ljava/lang/Object;)I

    move-result v2

    return v2

    .line 2768
    .end local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :catch_35
    move-exception v0

    .line 2769
    .local v0, "e":Lcom/android/nfc/LlcpException;
    const-string/jumbo v2, "NfcService"

    const-string/jumbo v3, "create llcp socket error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    return v4

    .line 2776
    .end local v0    # "e":Lcom/android/nfc/LlcpException;
    .restart local v1    # "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    :cond_40
    return v4
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2584
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2585
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get32(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost$NfcProperty;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$NfcProperty;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteMiuOfLlcpSocket(I)I
    .registers 4
    .param p1, "nativeHandle"    # I

    .prologue
    .line 2882
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2885
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_12

    .line 2886
    const/16 v1, -0x11

    return v1

    .line 2890
    :cond_12
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1, p1}, Lcom/android/nfc/NfcService;->-wrap3(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v0

    .line 2891
    .local v0, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-nez v0, :cond_1c

    .line 2892
    const/4 v1, -0x1

    return v1

    .line 2894
    :cond_1c
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$LlcpSocket;->getRemoteMiu()I

    move-result v1

    return v1
.end method

.method public isLlcpLinkActivated()Z
    .registers 2

    .prologue
    .line 2933
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2934
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get20(Lcom/android/nfc/NfcService;)Z

    move-result v0

    return v0
.end method

.method public isNfcLocked()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2596
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2597
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get16(Lcom/android/nfc/NfcService;)Z

    move-result v0

    return v0
.end method

.method public readEepromDataByte(I[B)I
    .registers 6
    .param p1, "address"    # I
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2618
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2620
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_13

    .line 2621
    const/16 v1, -0x11

    return v1

    .line 2624
    :cond_13
    if-ltz p1, :cond_17

    if-nez p2, :cond_19

    .line 2625
    :cond_17
    const/4 v1, -0x8

    return v1

    .line 2624
    :cond_19
    array-length v1, p2

    if-eqz v1, :cond_17

    .line 2628
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get32(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost$NfcProperty;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/nfc/DeviceHost$NfcProperty;->readEepromDataByte(I)I

    move-result v0

    .line 2629
    .local v0, "result":I
    invoke-static {v0}, Landroid/nfc/ErrorCodes;->isError(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2630
    const/4 v1, -0x6

    return v1

    .line 2633
    :cond_2e
    int-to-byte v1, v0

    aput-byte v1, p2, v2

    .line 2634
    return v2
.end method

.method public receiveOfLlcpSocket(I[B)I
    .registers 7
    .param p1, "nativeHandle"    # I
    .param p2, "receiveBuffer"    # [B

    .prologue
    const/4 v3, -0x1

    .line 2830
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2833
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_13

    .line 2834
    const/16 v2, -0x11

    return v2

    .line 2837
    :cond_13
    if-nez p2, :cond_17

    .line 2838
    const/4 v2, -0x8

    return v2

    .line 2842
    :cond_17
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2, p1}, Lcom/android/nfc/NfcService;->-wrap3(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v1

    .line 2843
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-nez v1, :cond_20

    .line 2844
    return v3

    .line 2848
    :cond_20
    :try_start_20
    invoke-interface {v1, p2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->receive([B)I
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_25

    move-result v2

    return v2

    .line 2849
    :catch_25
    move-exception v0

    .line 2850
    .local v0, "e":Ljava/io/IOException;
    return v3
.end method

.method public sendOfLlcpSocket(I[B)I
    .registers 7
    .param p1, "nativeHandle"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v3, -0x1

    .line 2856
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2859
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_13

    .line 2860
    const/16 v2, -0x11

    return v2

    .line 2863
    :cond_13
    if-nez p2, :cond_17

    .line 2864
    const/4 v2, -0x8

    return v2

    .line 2868
    :cond_17
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2, p1}, Lcom/android/nfc/NfcService;->-wrap3(Lcom/android/nfc/NfcService;I)Lcom/android/nfc/DeviceHost$LlcpSocket;

    move-result-object v1

    .line 2869
    .local v1, "socket":Lcom/android/nfc/DeviceHost$LlcpSocket;
    if-nez v1, :cond_20

    .line 2870
    return v3

    .line 2873
    :cond_20
    :try_start_20
    invoke-interface {v1, p2}, Lcom/android/nfc/DeviceHost$LlcpSocket;->send([B)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_25

    .line 2874
    const/4 v2, 0x0

    return v2

    .line 2875
    :catch_25
    move-exception v0

    .line 2876
    .local v0, "e":Ljava/io/IOException;
    return v3
.end method

.method public setClient(Landroid/os/IBinder;Ljava/lang/String;)I
    .registers 10
    .param p1, "client"    # Landroid/os/IBinder;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x8

    .line 2550
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2551
    if-nez p2, :cond_c

    .line 2552
    return v5

    .line 2554
    :cond_c
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->clientMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 2555
    move-object v1, p1

    .line 2556
    .local v1, "clientBinder":Landroid/os/IBinder;
    if-eqz p1, :cond_2b

    .line 2557
    :try_start_12
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->clientMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_4f

    move-result v3

    if-nez v3, :cond_23

    .line 2559
    const/4 v3, 0x0

    :try_start_1b
    invoke-interface {p1, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2560
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->clientMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_23} :catch_25
    .catchall {:try_start_1b .. :try_end_23} :catchall_4f

    :cond_23
    monitor-exit v4

    .line 2579
    return v6

    .line 2561
    :catch_25
    move-exception v2

    .line 2562
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_26
    invoke-virtual {p0}, Lcom/android/nfc/NfcService$NfcServiceEx;->binderDied()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_4f

    monitor-exit v4

    .line 2563
    return v5

    .line 2567
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2b
    :try_start_2b
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->clientMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/os/IBinder;

    move-object v1, v0
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_4f

    .line 2568
    if-nez v1, :cond_39

    monitor-exit v4

    .line 2569
    return v5

    .line 2571
    :cond_39
    :try_start_39
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->clientMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2572
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->clientMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2573
    const/4 v3, 0x0

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_4a
    .catchall {:try_start_39 .. :try_end_4a} :catchall_4f

    move-result v3

    if-nez v3, :cond_23

    monitor-exit v4

    .line 2574
    return v5

    .line 2554
    :catchall_4f
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2590
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2591
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get32(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost$NfcProperty;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost$NfcProperty;->setProperty(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setTestMode(Z)I
    .registers 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2602
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2603
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0, p1}, Lcom/android/nfc/NfcService;->-set7(Lcom/android/nfc/NfcService;Z)Z

    .line 2604
    const/4 v0, 0x0

    return v0
.end method

.method public subscribeLlcpLinkActivatedEvent(Ljava/lang/String;Landroid/app/PendingIntent;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2899
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2900
    if-nez p1, :cond_14

    .line 2901
    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "invalid param"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    const/4 v0, -0x8

    return v0

    .line 2904
    :cond_14
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 2905
    if-nez p2, :cond_25

    .line 2906
    :try_start_19
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get21(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_2f

    :goto_22
    monitor-exit v1

    .line 2911
    const/4 v0, 0x0

    return v0

    .line 2908
    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get21(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2f

    goto :goto_22

    .line 2904
    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public subscribeLlcpLinkDeactivatedEvent(Ljava/lang/String;Landroid/app/PendingIntent;)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 2916
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2917
    if-nez p1, :cond_14

    .line 2918
    const-string/jumbo v0, "NfcService"

    const-string/jumbo v1, "invalid param"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2919
    const/4 v0, -0x8

    return v0

    .line 2921
    :cond_14
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 2922
    if-nez p2, :cond_25

    .line 2923
    :try_start_19
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get22(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_2f

    :goto_22
    monitor-exit v1

    .line 2928
    const/4 v0, 0x0

    return v0

    .line 2925
    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get22(Lcom/android/nfc/NfcService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_2f

    goto :goto_22

    .line 2921
    :catchall_2f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public test(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "testCase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2609
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2610
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2611
    const/4 v0, 0x0

    return-object v0

    .line 2613
    :cond_11
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get32(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost$NfcProperty;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost$NfcProperty;->test(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeEepromDataByte(IB)I
    .registers 5
    .param p1, "address"    # I
    .param p2, "data"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2639
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2641
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2642
    const/16 v0, -0x11

    return v0

    .line 2645
    :cond_13
    if-gez p1, :cond_17

    .line 2646
    const/4 v0, -0x8

    return v0

    .line 2649
    :cond_17
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceEx;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get32(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost$NfcProperty;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/nfc/DeviceHost$NfcProperty;->writeEepromDataByte(IB)Z

    move-result v0

    if-nez v0, :cond_25

    .line 2650
    const/4 v0, -0x7

    return v0

    .line 2652
    :cond_25
    return v1
.end method

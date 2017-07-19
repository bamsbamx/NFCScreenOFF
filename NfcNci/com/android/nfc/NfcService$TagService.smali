.class final Lcom/android/nfc/NfcService$TagService;
.super Landroid/nfc/INfcTag$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "TagService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 2944
    iput-object p1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Landroid/nfc/INfcTag$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public canMakeReadOnly(I)Z
    .registers 3
    .param p1, "ndefType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3264
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->canMakeReadOnly(I)Z

    move-result v0

    return v0
.end method

.method public connect(II)I
    .registers 6
    .param p1, "nativeHandle"    # I
    .param p2, "technology"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x5

    .line 2948
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2950
    const/4 v0, 0x0

    .line 2952
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_14

    .line 2953
    const/16 v1, -0x11

    return v1

    .line 2957
    :cond_14
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2958
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-nez v0, :cond_1f

    .line 2959
    return v2

    .line 2962
    :cond_1f
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v1

    if-nez v1, :cond_26

    .line 2963
    return v2

    .line 2969
    :cond_26
    invoke-interface {v0, p2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->connect(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2970
    const/4 v1, 0x0

    return v1

    .line 2972
    :cond_2e
    return v2
.end method

.method public formatNdef(I[B)I
    .registers 6
    .param p1, "nativeHandle"    # I
    .param p2, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 3182
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3187
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_13

    .line 3188
    const/16 v1, -0x11

    return v1

    .line 3192
    :cond_13
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3193
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-nez v0, :cond_1e

    .line 3194
    return v2

    .line 3197
    :cond_1e
    invoke-interface {v0, p2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->formatNdef([B)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 3198
    const/4 v1, 0x0

    return v1

    .line 3200
    :cond_26
    return v2
.end method

.method public getExtendedLengthApdusSupported()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3274
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->getExtendedLengthApdusSupported()Z

    move-result v0

    return v0
.end method

.method public getMaxTransceiveLength(I)I
    .registers 3
    .param p1, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3269
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->getMaxTransceiveLength(I)I

    move-result v0

    return v0
.end method

.method public getTechList(I)[I
    .registers 5
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3001
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3004
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_11

    .line 3005
    return-object v2

    .line 3009
    :cond_11
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3010
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_20

    .line 3011
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v1

    return-object v1

    .line 3013
    :cond_20
    return-object v2
.end method

.method public getTimeout(I)I
    .registers 3
    .param p1, "tech"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3250
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3252
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/nfc/DeviceHost;->getTimeout(I)I

    move-result v0

    return v0
.end method

.method public isNdef(I)Z
    .registers 6
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3036
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3038
    const/4 v1, 0x0

    .line 3041
    .local v1, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_12

    .line 3042
    return v3

    .line 3046
    :cond_12
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3047
    .local v1, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 3048
    .local v0, "ndefInfo":[I
    if-nez v1, :cond_20

    .line 3049
    return v3

    .line 3051
    :cond_20
    invoke-interface {v1, v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->checkNdef([I)Z

    move-result v2

    return v2
.end method

.method public isPresent(I)Z
    .registers 5
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3018
    const/4 v0, 0x0

    .line 3021
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    .line 3022
    return v2

    .line 3026
    :cond_b
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3027
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-nez v0, :cond_16

    .line 3028
    return v2

    .line 3031
    :cond_16
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->isPresent()Z

    move-result v1

    return v1
.end method

.method public ndefIsWritable(I)Z
    .registers 3
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3153
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public ndefMakeReadOnly(I)I
    .registers 5
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 3158
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3163
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_13

    .line 3164
    const/16 v1, -0x11

    return v1

    .line 3168
    :cond_13
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3169
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-nez v0, :cond_1e

    .line 3170
    return v2

    .line 3173
    :cond_1e
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->makeReadOnly()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 3174
    const/4 v1, 0x0

    return v1

    .line 3176
    :cond_26
    return v2
.end method

.method public ndefRead(I)Landroid/nfc/NdefMessage;
    .registers 7
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3091
    iget-object v3, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3096
    iget-object v3, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v3

    if-nez v3, :cond_11

    .line 3097
    return-object v4

    .line 3101
    :cond_11
    iget-object v3, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v3, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3102
    .local v2, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v2, :cond_2a

    .line 3103
    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->readNdef()[B

    move-result-object v0

    .line 3104
    .local v0, "buf":[B
    if-nez v0, :cond_22

    .line 3105
    return-object v4

    .line 3110
    :cond_22
    :try_start_22
    new-instance v3, Landroid/nfc/NdefMessage;

    invoke-direct {v3, v0}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_27
    .catch Landroid/nfc/FormatException; {:try_start_22 .. :try_end_27} :catch_28

    return-object v3

    .line 3111
    :catch_28
    move-exception v1

    .line 3112
    .local v1, "e":Landroid/nfc/FormatException;
    return-object v4

    .line 3115
    .end local v0    # "buf":[B
    .end local v1    # "e":Landroid/nfc/FormatException;
    :cond_2a
    return-object v4
.end method

.method public ndefWrite(ILandroid/nfc/NdefMessage;)I
    .registers 9
    .param p1, "nativeHandle"    # I
    .param p2, "msg"    # Landroid/nfc/NdefMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    const/4 v4, -0x8

    .line 3120
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v2, v2, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3125
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v2

    if-nez v2, :cond_14

    .line 3126
    const/16 v2, -0x11

    return v2

    .line 3130
    :cond_14
    iget-object v2, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v2, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3131
    .local v1, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-nez v1, :cond_1f

    .line 3132
    return v5

    .line 3135
    :cond_1f
    if-nez p2, :cond_22

    return v4

    .line 3138
    :cond_22
    :try_start_22
    new-instance v2, Landroid/nfc/NdefMessage;

    invoke-virtual {p2}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/nfc/NdefMessage;-><init>([B)V
    :try_end_2b
    .catch Landroid/nfc/FormatException; {:try_start_22 .. :try_end_2b} :catch_37

    .line 3143
    invoke-virtual {p2}, Landroid/nfc/NdefMessage;->toByteArray()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->writeNdef([B)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3144
    const/4 v2, 0x0

    return v2

    .line 3139
    :catch_37
    move-exception v0

    .line 3140
    .local v0, "e":Landroid/nfc/FormatException;
    return v4

    .line 3146
    .end local v0    # "e":Landroid/nfc/FormatException;
    :cond_39
    return v5
.end method

.method public reconnect(I)I
    .registers 5
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x5

    .line 2978
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 2980
    const/4 v0, 0x0

    .line 2983
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_14

    .line 2984
    const/16 v1, -0x11

    return v1

    .line 2988
    :cond_14
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v0, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 2989
    .local v0, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v0, :cond_27

    .line 2990
    invoke-interface {v0}, Lcom/android/nfc/DeviceHost$TagEndpoint;->reconnect()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 2991
    const/4 v1, 0x0

    return v1

    .line 2993
    :cond_26
    return v2

    .line 2996
    :cond_27
    return v2
.end method

.method public rediscover(I)Landroid/nfc/Tag;
    .registers 9
    .param p1, "nativeHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3206
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3208
    const/4 v6, 0x0

    .line 3211
    .local v6, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-nez v1, :cond_12

    .line 3212
    return-object v2

    .line 3216
    :cond_12
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v6, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3217
    .local v6, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v6, :cond_3e

    .line 3226
    const/4 v1, 0x6

    invoke-interface {v6, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->removeTechnology(I)V

    .line 3227
    const/4 v1, 0x7

    invoke-interface {v6, v1}, Lcom/android/nfc/DeviceHost$TagEndpoint;->removeTechnology(I)V

    .line 3228
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->findAndReadNdef()Landroid/nfc/NdefMessage;

    .line 3230
    new-instance v0, Landroid/nfc/Tag;

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getUid()[B

    move-result-object v1

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechList()[I

    move-result-object v2

    .line 3231
    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getTechExtras()[Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v6}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getHandle()I

    move-result v4

    move-object v5, p0

    .line 3230
    invoke-direct/range {v0 .. v5}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    .line 3232
    .local v0, "newTag":Landroid/nfc/Tag;
    return-object v0

    .line 3234
    .end local v0    # "newTag":Landroid/nfc/Tag;
    :cond_3e
    return-object v2
.end method

.method public resetTimeouts()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3257
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3259
    iget-object v0, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/nfc/DeviceHost;->resetTimeouts()V

    .line 3256
    return-void
.end method

.method public setTimeout(II)I
    .registers 5
    .param p1, "tech"    # I
    .param p2, "timeout"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3239
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3240
    iget-object v1, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/nfc/DeviceHost;->setTimeout(II)Z

    move-result v0

    .line 3241
    .local v0, "success":Z
    if-eqz v0, :cond_15

    .line 3242
    const/4 v1, 0x0

    return v1

    .line 3244
    :cond_15
    const/4 v1, -0x8

    return v1
.end method

.method public transceive(I[BZ)Landroid/nfc/TransceiveResult;
    .registers 12
    .param p1, "nativeHandle"    # I
    .param p2, "data"    # [B
    .param p3, "raw"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3057
    iget-object v4, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    iget-object v4, v4, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 3059
    const/4 v2, 0x0

    .line 3063
    .local v2, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    iget-object v4, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v4

    if-nez v4, :cond_13

    .line 3064
    return-object v6

    .line 3068
    :cond_13
    iget-object v4, p0, Lcom/android/nfc/NfcService$TagService;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4, p1}, Lcom/android/nfc/NfcService;->findObject(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    check-cast v2, Lcom/android/nfc/DeviceHost$TagEndpoint;

    .line 3069
    .local v2, "tag":Lcom/android/nfc/DeviceHost$TagEndpoint;
    if-eqz v2, :cond_47

    .line 3071
    array-length v4, p2

    invoke-interface {v2}, Lcom/android/nfc/DeviceHost$TagEndpoint;->getConnectedTechnology()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/nfc/NfcService$TagService;->getMaxTransceiveLength(I)I

    move-result v5

    if-le v4, v5, :cond_2f

    .line 3072
    new-instance v4, Landroid/nfc/TransceiveResult;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v6}, Landroid/nfc/TransceiveResult;-><init>(I[B)V

    return-object v4

    .line 3074
    :cond_2f
    new-array v3, v7, [I

    .line 3075
    .local v3, "targetLost":[I
    invoke-interface {v2, p2, p3, v3}, Lcom/android/nfc/DeviceHost$TagEndpoint;->transceive([BZ[I)[B

    move-result-object v0

    .line 3077
    .local v0, "response":[B
    if-eqz v0, :cond_3e

    .line 3078
    const/4 v1, 0x0

    .line 3084
    .local v1, "result":I
    :goto_38
    new-instance v4, Landroid/nfc/TransceiveResult;

    invoke-direct {v4, v1, v0}, Landroid/nfc/TransceiveResult;-><init>(I[B)V

    return-object v4

    .line 3079
    .end local v1    # "result":I
    :cond_3e
    const/4 v4, 0x0

    aget v4, v3, v4

    if-ne v4, v7, :cond_45

    .line 3080
    const/4 v1, 0x2

    .restart local v1    # "result":I
    goto :goto_38

    .line 3082
    .end local v1    # "result":I
    :cond_45
    const/4 v1, 0x1

    .restart local v1    # "result":I
    goto :goto_38

    .line 3086
    .end local v0    # "response":[B
    .end local v1    # "result":I
    .end local v3    # "targetLost":[I
    :cond_47
    return-object v6
.end method

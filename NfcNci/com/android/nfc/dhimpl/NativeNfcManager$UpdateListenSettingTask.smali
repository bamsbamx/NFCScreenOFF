.class final Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;
.super Landroid/os/AsyncTask;
.source "NativeNfcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/dhimpl/NativeNfcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UpdateListenSettingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCESS_LISTEN_MODE_PERM:Ljava/lang/String; = "com.sonymobile.nfc.permission.ACCESS_LISTEN_MODE"

.field private static final ACTION_LISTEN_MODE_UPDATED:Ljava/lang/String; = "com.sonymobile.nfc.action.LISTEN_MODE_UPDATED"

.field private static final ACTION_UPDATE_LISTEN_MODE:Ljava/lang/String; = "com.sonymobile.nfc.action.UPDATE_LISTEN_MODE"

.field private static final LISTEN_KURA:B = 0x4t

.field private static final LISTEN_MODE_ABF:I = 0x0

.field private static final LISTEN_MODE_AF:I = 0x1

.field private static final LISTEN_MODE_BF:I = 0x2

.field private static final LISTEN_MODE_DEFAULT:I = 0x0

.field private static final LISTEN_MODE_NO_PARAMETER:I = -0x1

.field private static final LISTEN_OFF:B = 0x0t

.field private static final LISTEN_PARAM_DEFAULT:B = 0x7t

.field private static final LISTEN_UIM_A:B = 0x1t

.field private static final LISTEN_UIM_B:B = 0x2t

.field private static final P2P_LISTEN_OFF:B = 0x0t

.field private static final POLLING_DEFAULT:B = 0x7t

.field private static final TASK_UPDATE_LISTEN_MODE:I


# instance fields
.field private volatile mListenMode:I

.field final synthetic this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;


# direct methods
.method private constructor <init>(Lcom/android/nfc/dhimpl/NativeNfcManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/nfc/dhimpl/NativeNfcManager;

    .prologue
    .line 1155
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1170
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;->mListenMode:I

    .line 1155
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/dhimpl/NativeNfcManager;Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/nfc/dhimpl/NativeNfcManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;-><init>(Lcom/android/nfc/dhimpl/NativeNfcManager;)V

    return-void
.end method

.method private applyListenSetting(I)Z
    .registers 15
    .param p1, "request"    # I

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1223
    invoke-static {}, Lcom/android/nfc/dhimpl/NativeNfcManager;->-get0()Z

    move-result v7

    if-eqz v7, :cond_23

    const-string/jumbo v7, "NativeNfcManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "applyListenSetting start : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_23
    const/4 v2, 0x0

    .line 1226
    .local v2, "listen":I
    if-nez p1, :cond_65

    .line 1227
    const/4 v2, 0x7

    .line 1237
    :goto_27
    const/4 v7, 0x7

    if-eq v2, v7, :cond_93

    .line 1238
    iget-object v7, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    invoke-static {v7}, Lcom/android/nfc/dhimpl/NativeNfcManager;->-get4(Lcom/android/nfc/dhimpl/NativeNfcManager;)Lcom/android/nfc/DeviceHost$NfcProperty;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/nfc/DeviceHost$NfcProperty;->getNfcConfig()Lcom/sonymobile/nfc/INfcConfig$Stub;

    move-result-object v0

    .line 1239
    .local v0, "config":Lcom/sonymobile/nfc/INfcConfig$Stub;
    const/4 v5, 0x7

    .line 1240
    .local v5, "polling":I
    const/4 v4, 0x0

    .line 1242
    .local v4, "p2p_listen":I
    :try_start_36
    const-string/jumbo v7, "polling"

    invoke-virtual {v0, v7}, Lcom/sonymobile/nfc/INfcConfig$Stub;->getDefaultValue(Ljava/lang/String;)I

    move-result v5

    .line 1243
    if-eq p1, v12, :cond_46

    .line 1244
    const-string/jumbo v7, "p2p_listen"

    invoke-virtual {v0, v7}, Lcom/sonymobile/nfc/INfcConfig$Stub;->getDefaultValue(Ljava/lang/String;)I
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_36 .. :try_end_45} :catch_88

    move-result v4

    .line 1250
    :cond_46
    :goto_46
    invoke-static {v10, v5, v4, v2}, Lcom/android/nfc/DiscoveryManager;->createAndCompositionParams(IIII)Lcom/android/nfc/DiscoveryManager$Params;

    move-result-object v3

    .line 1252
    .local v3, "p":Lcom/android/nfc/DiscoveryManager$Params;
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/nfc/NfcService;->pushDiscovery(Lcom/android/nfc/DiscoveryManager$Params;)V

    .line 1256
    .end local v0    # "config":Lcom/sonymobile/nfc/INfcConfig$Stub;
    .end local v3    # "p":Lcom/android/nfc/DiscoveryManager$Params;
    .end local v4    # "p2p_listen":I
    .end local v5    # "polling":I
    :goto_51
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/nfc/NfcService;->applyRoutingWithResult(Z)I

    move-result v6

    .line 1257
    .local v6, "ret":I
    if-gez v6, :cond_9b

    .line 1258
    const-string/jumbo v7, "NativeNfcManager"

    const-string/jumbo v8, "applyListenSetting fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    return v11

    .line 1228
    .end local v6    # "ret":I
    :cond_65
    if-ne p1, v10, :cond_69

    .line 1229
    const/4 v2, 0x5

    goto :goto_27

    .line 1230
    :cond_69
    if-ne p1, v12, :cond_6d

    .line 1231
    const/4 v2, 0x6

    goto :goto_27

    .line 1233
    :cond_6d
    const-string/jumbo v7, "NativeNfcManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "applyListenSetting unsupported request : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    return v11

    .line 1246
    .restart local v0    # "config":Lcom/sonymobile/nfc/INfcConfig$Stub;
    .restart local v4    # "p2p_listen":I
    .restart local v5    # "polling":I
    :catch_88
    move-exception v1

    .line 1247
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "NativeNfcManager"

    const-string/jumbo v8, "Couldn\'t retrieve default values."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 1254
    .end local v0    # "config":Lcom/sonymobile/nfc/INfcConfig$Stub;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "p2p_listen":I
    .end local v5    # "polling":I
    :cond_93
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/nfc/NfcService;->popDiscovery(I)V

    goto :goto_51

    .line 1262
    .restart local v6    # "ret":I
    :cond_9b
    invoke-static {}, Lcom/android/nfc/dhimpl/NativeNfcManager;->-get0()Z

    move-result v7

    if-eqz v7, :cond_aa

    const-string/jumbo v7, "NativeNfcManager"

    const-string/jumbo v8, "applyListenSetting end"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_aa
    return v10
.end method

.method private updateListenSetting(I)V
    .registers 10
    .param p1, "newListenMode"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1201
    invoke-static {}, Lcom/android/nfc/dhimpl/NativeNfcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_23

    const-string/jumbo v2, "NativeNfcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateListenSetting start : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    :cond_23
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v5

    .line 1204
    if-ne p1, v7, :cond_6c

    move v2, v3

    .line 1203
    :goto_2a
    invoke-virtual {v5, v2}, Lcom/android/nfc/NfcService;->overrideNdefPushSettingAsDisabled(Z)V

    .line 1206
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;->applyListenSetting(I)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1207
    invoke-static {}, Lcom/sonymobile/nfc/OsaifuConfig;->getInstance()Lcom/sonymobile/nfc/OsaifuConfig;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/sonymobile/nfc/OsaifuConfig;->writeListenTypeSetting(I)Z

    .line 1215
    :goto_3a
    invoke-static {}, Lcom/android/nfc/dhimpl/NativeNfcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_49

    const-string/jumbo v2, "NativeNfcManager"

    const-string/jumbo v3, "sending intent : com.sonymobile.nfc.action.LISTEN_MODE_UPDATED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_49
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.nfc.action.LISTEN_MODE_UPDATED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1217
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    invoke-static {v2}, Lcom/android/nfc/dhimpl/NativeNfcManager;->-get1(Lcom/android/nfc/dhimpl/NativeNfcManager;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1219
    invoke-static {}, Lcom/android/nfc/dhimpl/NativeNfcManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_6b

    const-string/jumbo v2, "NativeNfcManager"

    const-string/jumbo v3, "updateListenSetting end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    :cond_6b
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6c
    move v2, v4

    .line 1204
    goto :goto_2a

    .line 1209
    :cond_6e
    invoke-static {}, Lcom/sonymobile/nfc/OsaifuConfig;->getInstance()Lcom/sonymobile/nfc/OsaifuConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/nfc/OsaifuConfig;->readListenTypeSetting()I

    move-result v1

    .line 1210
    .local v1, "oldListenMode":I
    invoke-direct {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;->applyListenSetting(I)Z

    .line 1211
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v2

    .line 1212
    if-ne v1, v7, :cond_83

    .line 1211
    :goto_7f
    invoke-virtual {v2, v3}, Lcom/android/nfc/NfcService;->overrideNdefPushSettingAsDisabled(Z)V

    goto :goto_3a

    :cond_83
    move v3, v4

    .line 1212
    goto :goto_7f
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 1182
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .registers 6
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1183
    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_4c

    .line 1197
    :goto_b
    const/4 v1, 0x0

    return-object v1

    .line 1185
    :pswitch_d
    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1186
    .local v0, "listenMode":I
    if-eqz v0, :cond_17

    .line 1187
    if-ne v0, v2, :cond_2e

    .line 1189
    :cond_17
    invoke-static {}, Lcom/android/nfc/dhimpl/NativeNfcManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_26

    const-string/jumbo v1, "NativeNfcManager"

    const-string/jumbo v2, "TASK_UPDATE_LISTEN_MODE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :cond_26
    iput v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;->mListenMode:I

    .line 1191
    iget v1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;->mListenMode:I

    invoke-direct {p0, v1}, Lcom/android/nfc/dhimpl/NativeNfcManager$UpdateListenSettingTask;->updateListenSetting(I)V

    goto :goto_b

    .line 1188
    :cond_2e
    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    .line 1193
    const-string/jumbo v1, "NativeNfcManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "invarid listenmode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1183
    :pswitch_data_4c
    .packed-switch 0x0
        :pswitch_d
    .end packed-switch
.end method

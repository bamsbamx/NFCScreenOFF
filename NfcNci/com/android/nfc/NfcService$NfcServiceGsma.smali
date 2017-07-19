.class final Lcom/android/nfc/NfcService$NfcServiceGsma;
.super Lcom/gsma/services/INfcAdapterGsma$Stub;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "NfcServiceGsma"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcService$NfcServiceGsma$ConfirmEnableResultReceiver;,
        Lcom/android/nfc/NfcService$NfcServiceGsma$IsAuthorizedReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_VERIFY_CERTIFICATE_REQ:Ljava/lang/String; = "com.sonymobile.nfc.action.VERIFY_CERTIFICATE_REQ"

.field private static final ACTION_VERIFY_CERTIFICATE_RSP:Ljava/lang/String; = "com.sonymobile.nfc.action.VERIFY_CERTIFICATE_RSP"

.field private static final EXTRA_VERIFY_CERTIFICATE_PACKAGENAME:Ljava/lang/String; = "com.sonymobile.nfc.extra.VERIFY_CERTIFICATE_PACKAGENAME"

.field private static final EXTRA_VERIFY_CERTIFICATE_RESULT:Ljava/lang/String; = "com.sonymobile.nfc.extra.VERIFY_CERTIFICATE_RESULT"

.field private static final SMARTCARD_PERM:Ljava/lang/String; = "com.sonymobile.permission.SMARTCARD_NFC_AUTHORIZATION"

.field private static final TAG:Ljava/lang/String; = "NfcServiceGsma"


# instance fields
.field private mAuthRspFilter:Landroid/content/IntentFilter;

.field private mAuthorizationCondition:Landroid/os/ConditionVariable;

.field private final mCallbackGsma:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/gsma/services/INfcAdapterGsmaCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConfirmEnableFilter:Landroid/content/IntentFilter;

.field private mConfirmEnableResultReceiver:Lcom/android/nfc/NfcService$NfcServiceGsma$ConfirmEnableResultReceiver;

.field private volatile mHasCertificate:Z

.field private mIsAuthRec:Lcom/android/nfc/NfcService$NfcServiceGsma$IsAuthorizedReceiver;

.field final synthetic this$0:Lcom/android/nfc/NfcService;


# direct methods
.method static synthetic -get0(Lcom/android/nfc/NfcService$NfcServiceGsma;)Landroid/os/ConditionVariable;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mAuthorizationCondition:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/nfc/NfcService$NfcServiceGsma;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mHasCertificate:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/nfc/NfcService$NfcServiceGsma;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mHasCertificate:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/nfc/NfcService$NfcServiceGsma;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcServiceGsma;->broadcastEnableNfcCallback()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/nfc/NfcService$NfcServiceGsma;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcServiceGsma;->doEnable()V

    return-void
.end method

.method constructor <init>(Lcom/android/nfc/NfcService;)V
    .registers 5
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;

    .prologue
    const/4 v2, 0x0

    .line 2162
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {p0}, Lcom/gsma/services/INfcAdapterGsma$Stub;-><init>()V

    .line 2176
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 2175
    iput-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mCallbackGsma:Landroid/os/RemoteCallbackList;

    .line 2177
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mAuthorizationCondition:Landroid/os/ConditionVariable;

    .line 2178
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mHasCertificate:Z

    .line 2179
    iput-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mConfirmEnableResultReceiver:Lcom/android/nfc/NfcService$NfcServiceGsma$ConfirmEnableResultReceiver;

    .line 2181
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.nfc.services.nfc.CONFIRM_ENABLE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2180
    iput-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mConfirmEnableFilter:Landroid/content/IntentFilter;

    .line 2184
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.sonymobile.nfc.action.VERIFY_CERTIFICATE_RSP"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2183
    iput-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mAuthRspFilter:Landroid/content/IntentFilter;

    .line 2185
    iput-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mIsAuthRec:Lcom/android/nfc/NfcService$NfcServiceGsma$IsAuthorizedReceiver;

    .line 2162
    return-void
.end method

.method private broadcastEnableNfcCallback()V
    .registers 6

    .prologue
    .line 2294
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mCallbackGsma:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 2295
    .local v2, "numOfClients":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v2, :cond_28

    .line 2297
    :try_start_9
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mCallbackGsma:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/INfcAdapterGsmaCallback;

    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/gsma/services/INfcAdapterGsmaCallback;->enableNfcAdapterCallback(Z)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1a} :catch_1d

    .line 2295
    :goto_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2298
    :catch_1d
    move-exception v0

    .line 2299
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "NfcServiceGsma"

    const-string/jumbo v4, "INfcAdapterGsmaCallback Exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1a

    .line 2302
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_28
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mCallbackGsma:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2293
    return-void
.end method

.method private doEnable()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 2278
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v0, v2}, Lcom/android/nfc/NfcService;->saveNfcOnSetting(Z)V

    .line 2280
    new-instance v0, Lcom/android/nfc/NfcService$NfcServiceGsma$1;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/NfcService$NfcServiceGsma$1;-><init>(Lcom/android/nfc/NfcService$NfcServiceGsma;Lcom/android/nfc/NfcService;)V

    new-array v1, v2, [Ljava/lang/Integer;

    .line 2286
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2280
    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService$NfcServiceGsma$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2277
    return-void
.end method

.method private declared-synchronized isAuthorized(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    .line 2335
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mAuthorizationCondition:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 2336
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_24

    const-string/jumbo v0, "NfcServiceGsma"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isAuthorized called with packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    :cond_24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mHasCertificate:Z

    .line 2338
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceGsma;->triggerAuthorization(Ljava/lang/String;)V

    .line 2339
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mAuthorizationCondition:Landroid/os/ConditionVariable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2340
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_41

    const-string/jumbo v0, "NfcServiceGsma"

    const-string/jumbo v1, "Authentication completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    :cond_41
    :goto_41
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mIsAuthRec:Lcom/android/nfc/NfcService$NfcServiceGsma$IsAuthorizedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2345
    iget-boolean v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mHasCertificate:Z
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_5c

    monitor-exit p0

    return v0

    .line 2342
    :cond_4e
    :try_start_4e
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_41

    const-string/jumbo v0, "NfcServiceGsma"

    const-string/jumbo v1, "Authentication timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5b
    .catchall {:try_start_4e .. :try_end_5b} :catchall_5c

    goto :goto_41

    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private presentConfirmationDialog(Ljava/lang/String;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2227
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "NfcServiceGsma"

    const-string/jumbo v1, "presentConfirmationDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    :cond_d
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 2229
    .local v2, "handle":Landroid/os/UserHandle;
    monitor-enter p0

    .line 2230
    :try_start_12
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mConfirmEnableResultReceiver:Lcom/android/nfc/NfcService$NfcServiceGsma$ConfirmEnableResultReceiver;

    if-nez v0, :cond_2d

    .line 2231
    new-instance v0, Lcom/android/nfc/NfcService$NfcServiceGsma$ConfirmEnableResultReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/NfcService$NfcServiceGsma$ConfirmEnableResultReceiver;-><init>(Lcom/android/nfc/NfcService$NfcServiceGsma;Lcom/android/nfc/NfcService$NfcServiceGsma$ConfirmEnableResultReceiver;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mConfirmEnableResultReceiver:Lcom/android/nfc/NfcService$NfcServiceGsma$ConfirmEnableResultReceiver;

    .line 2232
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mConfirmEnableResultReceiver:Lcom/android/nfc/NfcService$NfcServiceGsma$ConfirmEnableResultReceiver;

    .line 2233
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mConfirmEnableFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v5, 0x0

    .line 2232
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_68

    :cond_2d
    monitor-exit p0

    .line 2237
    const/4 v7, 0x0

    .line 2239
    .local v7, "applicationName":Ljava/lang/String;
    :try_start_2f
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 2241
    .local v10, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    invoke-virtual {v10, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 2242
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v10, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    .end local v7    # "applicationName":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_4a} :catch_6b

    .line 2247
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "pm":Landroid/content/pm/PackageManager;
    .local v7, "applicationName":Ljava/lang/String;
    :goto_4a
    new-instance v8, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-class v1, Lcom/gsma/services/nfc/ConfirmEnableActivity;

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2248
    .local v8, "dialogIntent":Landroid/content/Intent;
    const/high16 v0, 0x10000000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2250
    const-string/jumbo v0, "applicationName"

    .line 2249
    invoke-virtual {v8, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2251
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v8, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2226
    return-void

    .line 2229
    .end local v7    # "applicationName":Ljava/lang/String;
    .end local v8    # "dialogIntent":Landroid/content/Intent;
    :catchall_68
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2243
    :catch_6b
    move-exception v9

    .line 2244
    .local v9, "e":Ljava/lang/Exception;
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v1, 0x104000e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7    # "applicationName":Ljava/lang/String;
    goto :goto_4a
.end method

.method private triggerAuthorization(Ljava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 2354
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_1f

    const-string/jumbo v1, "NfcServiceGsma"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerAuthorization: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    :cond_1f
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mIsAuthRec:Lcom/android/nfc/NfcService$NfcServiceGsma$IsAuthorizedReceiver;

    if-nez v1, :cond_37

    .line 2356
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_30

    const-string/jumbo v1, "NfcServiceGsma"

    const-string/jumbo v2, "Receiver for (ACTION_VERIFY_CERTIFICATE_REQ) created"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    :cond_30
    new-instance v1, Lcom/android/nfc/NfcService$NfcServiceGsma$IsAuthorizedReceiver;

    invoke-direct {v1, p0, v5}, Lcom/android/nfc/NfcService$NfcServiceGsma$IsAuthorizedReceiver;-><init>(Lcom/android/nfc/NfcService$NfcServiceGsma;Lcom/android/nfc/NfcService$NfcServiceGsma$IsAuthorizedReceiver;)V

    iput-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mIsAuthRec:Lcom/android/nfc/NfcService$NfcServiceGsma$IsAuthorizedReceiver;

    .line 2360
    :cond_37
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mIsAuthRec:Lcom/android/nfc/NfcService$NfcServiceGsma$IsAuthorizedReceiver;

    .line 2361
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mAuthRspFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "com.sonymobile.permission.SMARTCARD_NFC_AUTHORIZATION"

    .line 2360
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2362
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2363
    .local v0, "authReqIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonymobile.nfc.action.VERIFY_CERTIFICATE_REQ"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2364
    const-string/jumbo v1, "com.sonymobile.nfc.extra.VERIFY_CERTIFICATE_PACKAGENAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2366
    sget-boolean v1, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v1, :cond_63

    const-string/jumbo v1, "NfcServiceGsma"

    const-string/jumbo v2, "Sending the intent: com.sonymobile.nfc.action.VERIFY_CERTIFICATE_REQ"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    :cond_63
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    iget-object v1, v1, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.sonymobile.permission.SMARTCARD_NFC_AUTHORIZATION"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2353
    return-void
.end method

.method private verifyCallerUid(Ljava/lang/String;)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2317
    if-nez p1, :cond_4

    return v4

    .line 2318
    :cond_4
    iget-object v3, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    iget-object v3, v3, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2319
    .local v1, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 2320
    .local v0, "pkgs":[Ljava/lang/String;
    array-length v5, v0

    move v3, v4

    :goto_16
    if-ge v3, v5, :cond_25

    aget-object v2, v0, v3

    .line 2321
    .local v2, "uidPkg":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_22

    .line 2322
    const/4 v3, 0x1

    return v3

    .line 2320
    :cond_22
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 2325
    .end local v2    # "uidPkg":Ljava/lang/String;
    :cond_25
    return v4
.end method


# virtual methods
.method public authenticatePackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2312
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceGsma;->verifyCallerUid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 2313
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceGsma;->isAuthorized(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public commitApduServiceInfo(Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    .registers 5
    .param p1, "service"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 2411
    const/4 v0, 0x0

    .line 2412
    .local v0, "isOverflowed":Z
    invoke-virtual {p1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/nfc/NfcService$NfcServiceGsma;->verifyCallerUid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    .line 2413
    const-string/jumbo v1, "NfcServiceGsma"

    const-string/jumbo v2, "commitApduServiceInfo package name verification failed. Abort..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    return v0

    .line 2416
    :cond_19
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v1}, Lcom/android/nfc/NfcService;->-get7(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->commitApduServiceInfo(Landroid/nfc/cardemulation/ApduServiceInfo;)Z

    move-result v0

    .line 2417
    .local v0, "isOverflowed":Z
    return v0
.end method

.method public deleteApduServiceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "classname"    # Ljava/lang/String;

    .prologue
    .line 2431
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceGsma;->verifyCallerUid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 2432
    const-string/jumbo v0, "NfcServiceGsma"

    const-string/jumbo v1, "deleteApduServiceInfo package name verification failed. Abort..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    return-void

    .line 2435
    :cond_10
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get7(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->deleteApduServiceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2430
    return-void
.end method

.method public enableMultiEvt_transactionReception(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2394
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "NfcServiceGsma"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableMultiEvt_transactionReception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2395
    :cond_1e
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2396
    const v1, 0x7f0a000b

    .line 2395
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 2397
    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceGsma;->authenticatePackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 2400
    :cond_35
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    monitor-enter v1

    .line 2401
    :try_start_38
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get26(Lcom/android/nfc/NfcService;)Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcher;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 2402
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get26(Lcom/android/nfc/NfcService;)Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcher;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcher;->setEnableMultiEvtTransaction()V
    :try_end_49
    .catchall {:try_start_38 .. :try_end_49} :catchall_5a

    :cond_49
    monitor-exit v1

    .line 2405
    const-string/jumbo v0, "nfc.gsma.multievt.transaction"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2406
    const/4 v0, 0x1

    return v0

    .line 2398
    :cond_58
    const/4 v0, 0x0

    return v0

    .line 2400
    :catchall_5a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public enableNfcAdapter(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2202
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceGsma;->verifyCallerUid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2203
    const-string/jumbo v0, "NfcServiceGsma"

    const-string/jumbo v1, "verifyCallerUid failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2204
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcServiceGsma;->broadcastEnableNfcCallback()V

    .line 2205
    return-void

    .line 2207
    :cond_13
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/nfc/NfcService;->-wrap1(Lcom/android/nfc/NfcService;Z)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2208
    const-string/jumbo v0, "NfcServiceGsma"

    const-string/jumbo v1, "deny enable request because of NFC policy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcServiceGsma;->broadcastEnableNfcCallback()V

    .line 2210
    return-void

    .line 2212
    :cond_29
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 2213
    const-string/jumbo v0, "persist.nfc.gsma.disable_dialog"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2212
    if-eqz v0, :cond_42

    .line 2215
    invoke-direct {p0}, Lcom/android/nfc/NfcService$NfcServiceGsma;->doEnable()V

    .line 2201
    :goto_41
    return-void

    .line 2217
    :cond_42
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceGsma;->presentConfirmationDialog(Ljava/lang/String;)V

    goto :goto_41
.end method

.method public getAvailableSecureElements()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2466
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2467
    .local v3, "seNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v4}, Lcom/android/nfc/NfcService;->-get8(Lcom/android/nfc/NfcService;)Lcom/android/nfc/DeviceHost;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/nfc/DeviceHost;->doGetActiveSecureElementList()[I

    move-result-object v2

    .line 2469
    .local v2, "seList":[I
    if-nez v2, :cond_12

    .line 2470
    return-object v3

    .line 2472
    :cond_12
    const/4 v4, 0x0

    array-length v5, v2

    :goto_14
    if-ge v4, v5, :cond_48

    aget v1, v2, v4

    .line 2473
    .local v1, "seId":I
    const/4 v0, 0x0

    .line 2474
    .local v0, "name":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->-get3(Lcom/android/nfc/NfcService;)I

    move-result v6

    if-ne v1, v6, :cond_34

    .line 2475
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v7, 0x7f09001b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2480
    .end local v0    # "name":Ljava/lang/String;
    :cond_2c
    :goto_2c
    if-eqz v0, :cond_31

    .line 2481
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2472
    :cond_31
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 2476
    .restart local v0    # "name":Ljava/lang/String;
    :cond_34
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v6}, Lcom/android/nfc/NfcService;->-get4(Lcom/android/nfc/NfcService;)I

    move-result v6

    if-ne v1, v6, :cond_2c

    .line 2477
    iget-object v6, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    iget-object v6, v6, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    const v7, 0x7f09001a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "name":Ljava/lang/String;
    goto :goto_2c

    .line 2484
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "seId":I
    :cond_48
    return-object v3
.end method

.method public getDefaultApduServiceInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "category"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2440
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceGsma;->verifyCallerUid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 2441
    const-string/jumbo v2, "NfcServiceGsma"

    const-string/jumbo v3, "getDefaultApduServiceInfo package name verification failed. Abort..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    return-object v4

    .line 2444
    :cond_11
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 2445
    .local v1, "userId":I
    const/4 v0, 0x0

    .line 2446
    .local v0, "currentDefault":Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v2}, Lcom/android/nfc/NfcService;->-get7(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v2

    .line 2447
    const/4 v3, 0x1

    .line 2446
    invoke-virtual {v2, v1, p2, v3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 2448
    .local v0, "currentDefault":Landroid/content/ComponentName;
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2449
    return-object v0

    .line 2451
    :cond_2e
    return-object v4
.end method

.method public getNewUuid(Ljava/lang/String;)Landroid/os/ParcelUuid;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2457
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceGsma;->verifyCallerUid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2458
    const-string/jumbo v0, "NfcServiceGsma"

    const-string/jumbo v1, "getNewUuid package name verification failed. Abort..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    const/4 v0, 0x0

    return-object v0

    .line 2461
    :cond_11
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get7(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->gsmaGetNewUuid(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method public isCardEmulationEnabled(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2489
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceGsma;->verifyCallerUid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 2490
    const-string/jumbo v1, "NfcServiceGsma"

    const-string/jumbo v2, "isCardEmulationEnabled package name verification failed. Abort..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    return v0

    .line 2494
    :cond_11
    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    invoke-virtual {v1}, Lcom/android/nfc/NfcService;->isNfcEnabled()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    iget-boolean v0, v0, Lcom/android/nfc/NfcService;->mIsHceCapable:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get17(Lcom/android/nfc/NfcService;)Z

    move-result v0

    :cond_25
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x1

    goto :goto_25
.end method

.method public onUserSwitched()V
    .registers 3

    .prologue
    .line 2498
    monitor-enter p0

    .line 2499
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mConfirmEnableResultReceiver:Lcom/android/nfc/NfcService$NfcServiceGsma$ConfirmEnableResultReceiver;

    if-eqz v0, :cond_11

    .line 2500
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    iget-object v0, v0, Lcom/android/nfc/NfcService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mConfirmEnableResultReceiver:Lcom/android/nfc/NfcService$NfcServiceGsma$ConfirmEnableResultReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mConfirmEnableResultReceiver:Lcom/android/nfc/NfcService$NfcServiceGsma$ConfirmEnableResultReceiver;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    :cond_11
    monitor-exit p0

    .line 2497
    return-void

    .line 2498
    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public registerCallback(Lcom/gsma/services/INfcAdapterGsmaCallback;)V
    .registers 4
    .param p1, "cb"    # Lcom/gsma/services/INfcAdapterGsmaCallback;

    .prologue
    .line 2188
    if-eqz p1, :cond_14

    .line 2189
    sget-boolean v0, Lcom/android/nfc/NfcService;->DBG:Z

    if-eqz v0, :cond_f

    const-string/jumbo v0, "NfcServiceGsma"

    const-string/jumbo v1, "registerCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    :cond_f
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->mCallbackGsma:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 2187
    :cond_14
    return-void
.end method

.method public retrieveApduServiceInfos(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2422
    invoke-direct {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceGsma;->verifyCallerUid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2423
    const-string/jumbo v0, "NfcServiceGsma"

    const-string/jumbo v1, "retrieveApduServiceInfos package name verification failed. Abort..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2424
    const/4 v0, 0x0

    return-object v0

    .line 2426
    :cond_11
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma;->this$0:Lcom/android/nfc/NfcService;

    invoke-static {v0}, Lcom/android/nfc/NfcService;->-get7(Lcom/android/nfc/NfcService;)Lcom/android/nfc/cardemulation/CardEmulationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->retrieveApduServiceInfos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

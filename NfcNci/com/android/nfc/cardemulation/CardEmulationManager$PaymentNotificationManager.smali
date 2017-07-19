.class Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;
.super Ljava/lang/Object;
.source "CardEmulationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/CardEmulationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PaymentNotificationManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager$1;
    }
.end annotation


# static fields
.field private static final ACTION_SYNC_UIM_COMPLETED:Ljava/lang/String; = "com.sonymobile.nfc.action.SYNC_UIM_COMPLETED"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHceReceiver:Landroid/content/BroadcastReceiver;

.field private final mNotificationData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;


# direct methods
.method static synthetic -wrap0(Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->handleSyncUimCompleted()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceCache"    # Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .prologue
    .line 1044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1031
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1030
    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mNotificationData:Landroid/util/SparseArray;

    .line 1033
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager$1;-><init>(Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mHceReceiver:Landroid/content/BroadcastReceiver;

    .line 1045
    iput-object p1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mContext:Landroid/content/Context;

    .line 1046
    iput-object p2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 1047
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.sonymobile.nfc.action.SYNC_UIM_COMPLETED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1048
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mHceReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 1049
    const-string/jumbo v4, "com.sonymobile.nfc.permission.NFC_SECURE_SETTING"

    const/4 v5, 0x0

    .line 1048
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1044
    return-void
.end method

.method private declared-synchronized handleSyncUimCompleted()V
    .registers 10

    .prologue
    monitor-enter p0

    .line 1074
    const/4 v3, 0x0

    .line 1076
    .local v3, "isShowNotificationExecuted":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    :try_start_3
    iget-object v6, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mNotificationData:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v2, v6, :cond_84

    .line 1077
    iget-object v6, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mNotificationData:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 1078
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mNotificationData:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;

    .line 1079
    .local v4, "service":Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;
    iget-boolean v6, v4, Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;->defaultRemoved:Z

    if-nez v6, :cond_20

    .line 1076
    :cond_1d
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1083
    :cond_20
    iget-object v6, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 1084
    const-string/jumbo v7, "nfc_payment_default_component"

    .line 1082
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1085
    .local v1, "currentComponent":Ljava/lang/String;
    iget-object v0, v4, Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;->componentName:Landroid/content/ComponentName;

    .line 1086
    .local v0, "component":Landroid/content/ComponentName;
    sget-boolean v6, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v6, :cond_4d

    const-string/jumbo v6, "CardEmulationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive: currentComponent = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_4d
    sget-boolean v6, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v6, :cond_6b

    const-string/jumbo v6, "CardEmulationManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onReceive: LastPaymentService = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    :cond_6b
    if-eqz v1, :cond_1d

    if-eqz v0, :cond_1d

    .line 1089
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 1090
    iget-object v6, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v6, v5, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->showNotification(ILandroid/nfc/cardemulation/ApduServiceInfo;)V

    .line 1091
    const/4 v3, 0x1

    goto :goto_1d

    .line 1096
    .end local v0    # "component":Landroid/content/ComponentName;
    .end local v1    # "currentComponent":Ljava/lang/String;
    .end local v4    # "service":Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;
    .end local v5    # "userId":I
    :cond_84
    if-eqz v3, :cond_8b

    .line 1097
    iget-object v6, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mNotificationData:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V
    :try_end_8b
    .catchall {:try_start_3 .. :try_end_8b} :catchall_8d

    :cond_8b
    monitor-exit p0

    .line 1073
    return-void

    :catchall_8d
    move-exception v6

    monitor-exit p0

    throw v6
.end method

.method private showNotification(ILandroid/nfc/cardemulation/ApduServiceInfo;)V
    .registers 18
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 1102
    sget-boolean v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v1, :cond_20

    const-string/jumbo v1, "CardEmulationManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showNotification: service = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_20
    if-nez p2, :cond_23

    .line 1104
    return-void

    .line 1107
    :cond_23
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1108
    .local v12, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p2 .. p2}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v7

    .line 1109
    .local v7, "description":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1111
    const/4 v2, 0x0

    aput-object v7, v1, v2

    .line 1110
    const v2, 0x7f090056

    .line 1109
    invoke-virtual {v12, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 1112
    .local v14, "title":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1114
    const/4 v2, 0x0

    aput-object v7, v1, v2

    .line 1113
    const v2, 0x7f090057

    .line 1112
    invoke-virtual {v12, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 1116
    .local v13, "text":Ljava/lang/String;
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v9, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1117
    .local v9, "nb":Landroid/app/Notification$Builder;
    invoke-virtual {v9, v14}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1118
    invoke-virtual {v9, v13}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1119
    const v1, 0x7f020007

    invoke-virtual {v9, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1120
    const/4 v1, -0x1

    invoke-virtual {v9, v1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 1121
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 1122
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v1, v13}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1124
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.NFC_PAYMENT_SETTINGS"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1125
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v3, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1126
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mContext:Landroid/content/Context;

    .line 1127
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 1126
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1127
    const/4 v5, 0x0

    .line 1126
    invoke-static/range {v1 .. v6}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v11

    .line 1128
    .local v11, "pending":Landroid/app/PendingIntent;
    invoke-virtual {v9, v11}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1130
    const/4 v8, 0x1

    .line 1132
    .local v8, "id":I
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/NotificationManager;

    .line 1133
    .local v10, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v9}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    move/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {v10, v4, v8, v1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1101
    return-void
.end method


# virtual methods
.method public declared-synchronized clearLastPaymentService(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    monitor-enter p0

    .line 1058
    :try_start_1
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mNotificationData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 1057
    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalize()V
    .registers 3

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mHceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1053
    return-void
.end method

.method public declared-synchronized setDefaultServiceRemoved(I)V
    .registers 6
    .param p1, "userId"    # I

    .prologue
    monitor-enter p0

    .line 1062
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mNotificationData:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;-><init>(Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;

    .line 1063
    .local v0, "service":Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;->defaultRemoved:Z

    .line 1064
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mNotificationData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    .line 1061
    return-void

    .end local v0    # "service":Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;
    :catchall_19
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setLastPaymentService(ILandroid/content/ComponentName;)V
    .registers 7
    .param p1, "userId"    # I
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    monitor-enter p0

    .line 1068
    :try_start_1
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mNotificationData:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;-><init>(Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;

    .line 1069
    .local v0, "service":Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;
    iput-object p2, v0, Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;->componentName:Landroid/content/ComponentName;

    .line 1070
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->mNotificationData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    monitor-exit p0

    .line 1067
    return-void

    .end local v0    # "service":Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;
    :catchall_18
    move-exception v1

    monitor-exit p0

    throw v1
.end method

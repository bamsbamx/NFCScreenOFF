.class public Lcom/sonymobile/nfc/NfcNotificationManager;
.super Ljava/lang/Object;
.source "NfcNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/NfcNotificationManager$1;,
        Lcom/sonymobile/nfc/NfcNotificationManager$2;
    }
.end annotation


# static fields
.field public static final ACTION_NOTIFICATION_CANCEL:Ljava/lang/String; = "com.sonymobile.nfc.action.NOTIFICATION_CANCEL"

.field private static final DBG:Z

.field private static final DEFAULT_EXCLAMATION_ICON:I = 0x7f020007

.field public static final EXTRA_DIALOG_ID:Ljava/lang/String; = "com.sonymobile.nfc.extra.DIALOG_ID"

.field public static final ID_NFC_POSITION_GUIDE_DIALOG:I = 0x1

.field private static final PREF_CONFIRMED_NFC_POSITION_DIALOG:Ljava/lang/String; = "confirmed_nfc_position_dialog"

.field private static final TAG:Ljava/lang/String; = "NfcNotifcationManager"


# instance fields
.field final mComponentCallbacks:Landroid/content/ComponentCallbacks;

.field private final mContext:Landroid/content/Context;

.field private final mNotificationIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mPrefs:Landroid/content/SharedPreferences;

.field private final mPrefsEditor:Landroid/content/SharedPreferences$Editor;

.field final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/sonymobile/nfc/NfcNotificationManager;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonymobile/nfc/NfcNotificationManager;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mNotificationIds:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonymobile/nfc/NfcNotificationManager;I)Z
    .registers 3
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/NfcNotificationManager;->showNotificationInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonymobile/nfc/NfcNotificationManager;I)V
    .registers 2
    .param p1, "id"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/NfcNotificationManager;->cancelNotification(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 32
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_14
    sput-boolean v0, Lcom/sonymobile/nfc/NfcNotificationManager;->DBG:Z

    .line 30
    return-void

    .line 32
    :cond_17
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    new-instance v0, Lcom/sonymobile/nfc/NfcNotificationManager$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/NfcNotificationManager$1;-><init>(Lcom/sonymobile/nfc/NfcNotificationManager;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 151
    new-instance v0, Lcom/sonymobile/nfc/NfcNotificationManager$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/NfcNotificationManager$2;-><init>(Lcom/sonymobile/nfc/NfcNotificationManager;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    .line 53
    iput-object p1, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 54
    iput-object v0, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 57
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "NfcServiceExtraPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mPrefs:Landroid/content/SharedPreferences;

    .line 58
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mNotificationIds:Ljava/util/Set;

    .line 60
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 61
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v5, "com.sonymobile.nfc.action.NOTIFICATION_CANCEL"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v5, v4

    .line 60
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 52
    return-void
.end method

.method private cancelNotification(I)V
    .registers 5
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x1

    .line 126
    if-ne p1, v2, :cond_10

    .line 127
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "confirmed_nfc_position_dialog"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 128
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 130
    :cond_10
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 132
    iget-object v1, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mNotificationIds:Ljava/util/Set;

    monitor-enter v1

    .line 133
    :try_start_18
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mNotificationIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mNotificationIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 135
    sget-boolean v0, Lcom/sonymobile/nfc/NfcNotificationManager;->DBG:Z

    if-eqz v0, :cond_36

    const-string/jumbo v0, "NfcNotifcationManager"

    const-string/jumbo v2, "unregisterComponentCallbacks"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_36
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_3d
    .catchall {:try_start_18 .. :try_end_3d} :catchall_3f

    :cond_3d
    monitor-exit v1

    .line 125
    return-void

    .line 132
    :catchall_3f
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private showNotificationInternal(I)Z
    .registers 16
    .param p1, "id"    # I

    .prologue
    const/4 v13, 0x0

    .line 79
    const/4 v3, 0x0

    .line 80
    .local v3, "intent":Landroid/content/Intent;
    const/4 v5, 0x0

    .line 81
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    const v2, 0x7f020007

    .line 83
    .local v2, "icon":I
    const/4 v6, 0x0

    .line 84
    .local v6, "priority":I
    const/4 v7, 0x1

    .line 85
    .local v7, "showWhen":Z
    const/4 v0, 0x0

    .line 87
    .local v0, "canNotifyRemoved":Z
    const/4 v10, 0x1

    if-ne p1, v10, :cond_80

    .line 88
    iget-object v10, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0011

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_26

    .line 89
    iget-object v10, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v11, "confirmed_nfc_position_dialog"

    invoke-interface {v10, v11, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 88
    if-eqz v10, :cond_27

    .line 90
    :cond_26
    return v13

    .line 92
    :cond_27
    iget-object v10, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mContext:Landroid/content/Context;

    .line 93
    const v11, 0x7f090058

    .line 92
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, "title":Ljava/lang/String;
    iget-object v10, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mContext:Landroid/content/Context;

    .line 95
    const v11, 0x7f09005c

    .line 94
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 97
    .local v8, "text":Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    iget-object v11, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mContext:Landroid/content/Context;

    const-class v12, Lcom/sonymobile/nfc/NfcPositionGuideDialog;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    const/high16 v11, 0x800000

    .line 97
    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 99
    .local v3, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mContext:Landroid/content/Context;

    .line 100
    const/high16 v11, 0x8000000

    .line 99
    invoke-static {v10, v13, v3, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 102
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    const/16 v1, 0x20

    .line 103
    .local v1, "flags":I
    const/4 v6, 0x2

    .line 104
    const/4 v7, 0x0

    .line 105
    const/4 v0, 0x1

    .line 111
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v11, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 119
    .local v4, "notification":Landroid/app/Notification;
    iput v1, v4, Landroid/app/Notification;->flags:I

    .line 121
    iget-object v10, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v10, p1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 122
    return v0

    .line 107
    .end local v1    # "flags":I
    .end local v4    # "notification":Landroid/app/Notification;
    .end local v8    # "text":Ljava/lang/String;
    .end local v9    # "title":Ljava/lang/String;
    .local v3, "intent":Landroid/content/Intent;
    .local v5, "pendingIntent":Landroid/app/PendingIntent;
    :cond_80
    const-string/jumbo v10, "NfcNotifcationManager"

    const-string/jumbo v11, "Unknown dialog id"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v13
.end method


# virtual methods
.method public showNotification(I)V
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/NfcNotificationManager;->showNotificationInternal(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 66
    iget-object v1, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mNotificationIds:Ljava/util/Set;

    monitor-enter v1

    .line 67
    :try_start_9
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mNotificationIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 68
    sget-boolean v0, Lcom/sonymobile/nfc/NfcNotificationManager;->DBG:Z

    if-eqz v0, :cond_1e

    const-string/jumbo v0, "NfcNotifcationManager"

    const-string/jumbo v2, "registerComponentCallbacks"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_1e
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mComponentCallbacks:Landroid/content/ComponentCallbacks;

    invoke-virtual {v0, v2}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 71
    :cond_25
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcNotificationManager;->mNotificationIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2e
    .catchall {:try_start_9 .. :try_end_2e} :catchall_30

    monitor-exit v1

    .line 64
    :cond_2f
    return-void

    .line 66
    :catchall_30
    move-exception v0

    monitor-exit v1

    throw v0
.end method

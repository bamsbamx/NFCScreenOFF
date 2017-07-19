.class public Lcom/android/nfc/cardemulation/PreferredServices;
.super Ljava/lang/Object;
.source "PreferredServices.java"

# interfaces
.implements Lcom/android/nfc/ForegroundUtils$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/PreferredServices$Callback;,
        Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;,
        Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;
    }
.end annotation


# static fields
.field static final DBG:Z

.field static final TAG:Ljava/lang/String; = "PreferredCardEmulationServices"

.field static final paymentDefaultUri:Landroid/net/Uri;

.field static final paymentForegroundUri:Landroid/net/Uri;


# instance fields
.field final mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

.field final mCallback:Lcom/android/nfc/cardemulation/PreferredServices$Callback;

.field mClearNextTapDefault:Z

.field final mContext:Landroid/content/Context;

.field mForegroundCurrent:Landroid/content/ComponentName;

.field mForegroundRequested:Landroid/content/ComponentName;

.field mForegroundUid:I

.field final mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

.field final mHandler:Landroid/os/Handler;

.field final mLock:Ljava/lang/Object;

.field mNextTapDefault:Landroid/content/ComponentName;

.field mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

.field final mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

.field final mSettingsObserver:Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    sput-boolean v0, Lcom/android/nfc/cardemulation/PreferredServices;->DBG:Z

    .line 64
    const-string/jumbo v0, "nfc_payment_default_component"

    .line 63
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/cardemulation/PreferredServices;->paymentDefaultUri:Landroid/net/Uri;

    .line 66
    const-string/jumbo v0, "nfc_payment_foreground"

    .line 65
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/nfc/cardemulation/PreferredServices;->paymentForegroundUri:Landroid/net/Uri;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;Lcom/android/nfc/cardemulation/RegisteredAidCache;Lcom/android/nfc/cardemulation/PreferredServices$Callback;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceCache"    # Lcom/android/nfc/cardemulation/RegisteredServicesCache;
    .param p3, "aidCache"    # Lcom/android/nfc/cardemulation/RegisteredAidCache;
    .param p4, "callback"    # Lcom/android/nfc/cardemulation/PreferredServices$Callback;

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {}, Lcom/android/nfc/ForegroundUtils;->getInstance()Lcom/android/nfc/ForegroundUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mHandler:Landroid/os/Handler;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mLock:Ljava/lang/Object;

    .line 84
    new-instance v0, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;-><init>(Lcom/android/nfc/cardemulation/PreferredServices;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mClearNextTapDefault:Z

    .line 101
    iput-object p1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 103
    iput-object p3, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 104
    iput-object p4, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mCallback:Lcom/android/nfc/cardemulation/PreferredServices$Callback;

    .line 105
    new-instance v0, Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;-><init>(Lcom/android/nfc/cardemulation/PreferredServices;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mSettingsObserver:Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;

    .line 106
    iget-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/android/nfc/cardemulation/PreferredServices;->paymentDefaultUri:Landroid/net/Uri;

    .line 108
    iget-object v2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mSettingsObserver:Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;

    .line 106
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 110
    iget-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 111
    sget-object v1, Lcom/android/nfc/cardemulation/PreferredServices;->paymentForegroundUri:Landroid/net/Uri;

    .line 112
    iget-object v2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mSettingsObserver:Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;

    .line 110
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 115
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/PreferredServices;->loadDefaultsFromSettings(I)V

    .line 100
    return-void
.end method

.method private getNumPaymentServices(I)I
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 190
    const/4 v0, 0x0

    .line 192
    .local v0, "num":I
    iget-object v3, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    const-string/jumbo v4, "payment"

    invoke-virtual {v3, p1, v4}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getServicesForCategory(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 191
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "service$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 193
    .local v1, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 195
    .end local v1    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_1d
    return v0
.end method


# virtual methods
.method computePreferredForegroundService()V
    .registers 5

    .prologue
    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, "preferredService":Landroid/content/ComponentName;
    const/4 v0, 0x0

    .line 201
    .local v0, "changed":Z
    iget-object v3, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 203
    :try_start_5
    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mNextTapDefault:Landroid/content/ComponentName;

    .line 204
    .local v1, "preferredService":Landroid/content/ComponentName;
    if-nez v1, :cond_b

    .line 206
    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 208
    :cond_b
    if-eqz v1, :cond_15

    iget-object v2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundCurrent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 211
    :cond_15
    if-nez v1, :cond_1e

    iget-object v2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundCurrent:Landroid/content/ComponentName;

    if-eqz v2, :cond_1e

    .line 212
    iput-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundCurrent:Landroid/content/ComponentName;
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_2b

    .line 213
    const/4 v0, 0x1

    :cond_1e
    :goto_1e
    monitor-exit v3

    .line 217
    if-eqz v0, :cond_26

    .line 218
    iget-object v2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mCallback:Lcom/android/nfc/cardemulation/PreferredServices$Callback;

    invoke-interface {v2, v1}, Lcom/android/nfc/cardemulation/PreferredServices$Callback;->onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V

    .line 198
    :cond_26
    return-void

    .line 209
    :cond_27
    :try_start_27
    iput-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundCurrent:Landroid/content/ComponentName;
    :try_end_29
    .catchall {:try_start_27 .. :try_end_29} :catchall_2b

    .line 210
    const/4 v0, 0x1

    .line 208
    goto :goto_1e

    .line 201
    .end local v1    # "preferredService":Landroid/content/ComponentName;
    :catchall_2b
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 406
    const-string/jumbo v0, "Preferred services (in order of importance): "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    *** Current preferred foreground service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundCurrent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    *** Current preferred payment service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->currentPreferred:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "        Next tap default: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mNextTapDefault:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "        Default for foreground app (UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 411
    const-string/jumbo v1, "): "

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 410
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "        Default in payment settings: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->settingsDefault:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "        Payment settings allows override: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-boolean v1, v1, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->preferForeground:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method isForegroundAllowedLocked(Landroid/content/ComponentName;)Z
    .registers 13
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 257
    iget-object v6, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-object v6, v6, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->currentPreferred:Landroid/content/ComponentName;

    invoke-virtual {p1, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 260
    return v9

    .line 262
    :cond_d
    iget-object v6, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-virtual {v6, v7, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v5

    .line 265
    .local v5, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v5, :cond_1f

    iget-object v6, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-boolean v6, v6, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->preferForeground:Z

    if-eqz v6, :cond_20

    .line 300
    :cond_1f
    return v9

    .line 268
    :cond_20
    const-string/jumbo v6, "payment"

    invoke-virtual {v5, v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 269
    const-string/jumbo v6, "PreferredCardEmulationServices"

    const-string/jumbo v7, "User doesn\'t allow payment services to be overridden."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return v10

    .line 278
    :cond_33
    invoke-virtual {v5}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/List;

    move-result-object v2

    .line 279
    .local v2, "otherAids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 280
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    iget-object v8, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-object v8, v8, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->currentPreferred:Landroid/content/ComponentName;

    .line 279
    invoke-virtual {v6, v7, v8}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v3

    .line 281
    .local v3, "paymentServiceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v3, :cond_a6

    if-eqz v2, :cond_a6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_a6

    .line 282
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aid$iterator":Ljava/util/Iterator;
    :cond_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    .local v0, "aid":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v6, v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->resolveAid(Ljava/lang/String;)Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;

    move-result-object v4

    .line 284
    .local v4, "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    const-string/jumbo v6, "payment"

    iget-object v7, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->category:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    .line 285
    iget-object v6, v4, Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;->defaultService:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v3, v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 284
    if-eqz v6, :cond_53

    .line 286
    sget-boolean v6, Lcom/android/nfc/cardemulation/PreferredServices;->DBG:Z

    if-eqz v6, :cond_a4

    .line 287
    const-string/jumbo v6, "PreferredCardEmulationServices"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "AID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " is handled by the default payment app, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 288
    const-string/jumbo v8, "and the user has not allowed payments to be overridden."

    .line 287
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_a4
    return v10

    .line 292
    .end local v0    # "aid":Ljava/lang/String;
    .end local v4    # "resolveInfo":Lcom/android/nfc/cardemulation/RegisteredAidCache$AidResolveInfo;
    :cond_a5
    return v9

    .line 296
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    :cond_a6
    return v9
.end method

.method loadDefaultsFromSettings(I)V
    .registers 14
    .param p1, "userId"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 136
    const/4 v3, 0x0

    .line 137
    .local v3, "paymentDefaultChanged":Z
    const/4 v4, 0x0

    .line 140
    .local v4, "paymentPreferForegroundChanged":Z
    iget-object v9, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "nfc_payment_default_component"

    .line 139
    invoke-static {v9, v10, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_a1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 143
    :goto_17
    const/4 v5, 0x0

    .line 145
    .local v5, "preferForeground":Z
    :try_start_18
    iget-object v9, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 146
    const-string/jumbo v10, "nfc_payment_foreground"

    .line 145
    invoke-static {v9, v10, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_24
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_18 .. :try_end_24} :catch_bc

    move-result v9

    if-eqz v9, :cond_a4

    const/4 v5, 0x1

    .line 149
    :goto_28
    iget-object v9, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-object v7, v9, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->settingsDefault:Landroid/content/ComponentName;

    .line 150
    .local v7, "prevSettings":Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-object v6, v9, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->currentPreferred:Landroid/content/ComponentName;

    .line 151
    .local v6, "prevPreferred":Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 152
    :try_start_33
    iget-object v10, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-boolean v10, v10, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->preferForeground:Z

    if-eq v5, v10, :cond_a6

    const/4 v4, 0x1

    .line 153
    :goto_3a
    iget-object v10, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iput-boolean v5, v10, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->preferForeground:Z

    .line 155
    iget-object v10, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iput-object v2, v10, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->settingsDefault:Landroid/content/ComponentName;

    .line 156
    if-eqz v2, :cond_4e

    iget-object v10, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-object v10, v10, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->currentPreferred:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a8

    .line 159
    :cond_4e
    if-nez v2, :cond_5b

    iget-object v10, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-object v10, v10, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->currentPreferred:Landroid/content/ComponentName;

    if-eqz v10, :cond_5b

    .line 160
    const/4 v3, 0x1

    .line 161
    iget-object v10, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iput-object v2, v10, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->currentPreferred:Landroid/content/ComponentName;
    :try_end_5b
    .catchall {:try_start_33 .. :try_end_5b} :catchall_ae

    :cond_5b
    :goto_5b
    monitor-exit v9

    .line 167
    if-eqz v3, :cond_b6

    .line 168
    iget-object v9, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    iget-boolean v9, v9, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->mInitialized:Z

    if-eqz v9, :cond_b1

    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v9

    invoke-virtual {v9, p1, v11}, Lcom/android/nfc/NfcService;->detectOverflow(IZ)Z

    move-result v9

    if-eqz v9, :cond_b1

    .line 169
    sget-boolean v9, Lcom/android/nfc/cardemulation/PreferredServices;->DBG:Z

    if-eqz v9, :cond_7b

    const-string/jumbo v9, "PreferredCardEmulationServices"

    const-string/jumbo v10, "RoutingTable overflow when change default payment"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_7b
    iget-object v9, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v9, v2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->launchHceSettings(Landroid/content/ComponentName;)V

    .line 171
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->getNumPaymentServices(I)I

    move-result v9

    if-le v9, v11, :cond_b1

    .line 173
    iget-object v9, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iput-object v7, v9, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->settingsDefault:Landroid/content/ComponentName;

    .line 174
    iget-object v9, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iput-object v6, v9, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->currentPreferred:Landroid/content/ComponentName;

    .line 175
    iget-object v9, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 176
    const-string/jumbo v10, "nfc_payment_default_component"

    .line 177
    if-eqz v6, :cond_9d

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    .line 175
    :cond_9d
    invoke-static {v9, v10, v8, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 179
    return-void

    .line 142
    .end local v5    # "preferForeground":Z
    .end local v6    # "prevPreferred":Landroid/content/ComponentName;
    .end local v7    # "prevSettings":Landroid/content/ComponentName;
    :cond_a1
    const/4 v2, 0x0

    .local v2, "newDefault":Landroid/content/ComponentName;
    goto/16 :goto_17

    .line 145
    .end local v2    # "newDefault":Landroid/content/ComponentName;
    .restart local v5    # "preferForeground":Z
    :cond_a4
    const/4 v5, 0x0

    goto :goto_28

    .line 152
    .restart local v6    # "prevPreferred":Landroid/content/ComponentName;
    .restart local v7    # "prevSettings":Landroid/content/ComponentName;
    :cond_a6
    const/4 v4, 0x0

    goto :goto_3a

    .line 157
    :cond_a8
    const/4 v3, 0x1

    .line 158
    :try_start_a9
    iget-object v10, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iput-object v2, v10, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->currentPreferred:Landroid/content/ComponentName;
    :try_end_ad
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_ae

    goto :goto_5b

    .line 151
    :catchall_ae
    move-exception v8

    monitor-exit v9

    throw v8

    .line 182
    :cond_b1
    iget-object v8, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mCallback:Lcom/android/nfc/cardemulation/PreferredServices$Callback;

    invoke-interface {v8, v2}, Lcom/android/nfc/cardemulation/PreferredServices$Callback;->onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V

    .line 184
    :cond_b6
    if-eqz v4, :cond_bb

    .line 185
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/PreferredServices;->computePreferredForegroundService()V

    .line 135
    :cond_bb
    return-void

    .line 147
    .end local v6    # "prevPreferred":Landroid/content/ComponentName;
    .end local v7    # "prevSettings":Landroid/content/ComponentName;
    :catch_bc
    move-exception v0

    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto/16 :goto_28
.end method

.method public onHostEmulationActivated()V
    .registers 3

    .prologue
    .line 357
    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    :try_start_3
    iget-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mNextTapDefault:Landroid/content/ComponentName;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_8
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mClearNextTapDefault:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    monitor-exit v1

    .line 356
    return-void

    .line 358
    :cond_c
    const/4 v0, 0x0

    goto :goto_8

    .line 357
    :catchall_e
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onHostEmulationDeactivated()V
    .registers 4

    .prologue
    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 366
    :try_start_4
    iget-boolean v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mClearNextTapDefault:Z

    if-eqz v1, :cond_13

    .line 375
    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mNextTapDefault:Landroid/content/ComponentName;

    if-eqz v1, :cond_10

    .line 376
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mNextTapDefault:Landroid/content/ComponentName;

    .line 377
    const/4 v0, 0x1

    .line 379
    :cond_10
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mClearNextTapDefault:Z
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_1a

    :cond_13
    monitor-exit v2

    .line 382
    if-eqz v0, :cond_19

    .line 383
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/PreferredServices;->computePreferredForegroundService()V

    .line 362
    :cond_19
    return-void

    .line 365
    :catchall_1a
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onServicesUpdated()V
    .registers 5

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, "changed":Z
    iget-object v2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 239
    :try_start_4
    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundCurrent:Landroid/content/ComponentName;

    if-eqz v1, :cond_20

    .line 240
    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundCurrent:Landroid/content/ComponentName;

    invoke-virtual {p0, v1}, Lcom/android/nfc/cardemulation/PreferredServices;->isForegroundAllowedLocked(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 241
    const-string/jumbo v1, "PreferredCardEmulationServices"

    const-string/jumbo v3, "Removing foreground preferred service because of conflict."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 243
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundUid:I
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_27

    .line 244
    const/4 v0, 0x1

    :cond_20
    monitor-exit v2

    .line 250
    if-eqz v0, :cond_26

    .line 251
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/PreferredServices;->computePreferredForegroundService()V

    .line 231
    :cond_26
    return-void

    .line 235
    :catchall_27
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onUidToBackground(I)V
    .registers 2
    .param p1, "uid"    # I

    .prologue
    .line 353
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->unregisterForegroundService(I)Z

    .line 352
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 388
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->loadDefaultsFromSettings(I)V

    .line 387
    return-void
.end method

.method public packageHasPreferredService(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 392
    if-nez p1, :cond_5

    return v1

    .line 394
    :cond_5
    iget-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->currentPreferred:Landroid/content/ComponentName;

    if-eqz v0, :cond_1a

    .line 395
    iget-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mPaymentDefaults:Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;

    iget-object v0, v0, Lcom/android/nfc/cardemulation/PreferredServices$PaymentDefaults;->currentPreferred:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 394
    if-eqz v0, :cond_1a

    .line 396
    return v2

    .line 397
    :cond_1a
    iget-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundCurrent:Landroid/content/ComponentName;

    if-eqz v0, :cond_2b

    .line 398
    iget-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundCurrent:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 397
    if-eqz v0, :cond_2b

    .line 399
    return v2

    .line 401
    :cond_2b
    return v1
.end method

.method public registerPreferredForegroundService(Landroid/content/ComponentName;I)Z
    .registers 7
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "callingUid"    # I

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 306
    .local v0, "success":Z
    iget-object v2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 307
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->isForegroundAllowedLocked(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 308
    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v1, p0, p2}, Lcom/android/nfc/ForegroundUtils;->registerUidToBackgroundCallback(Lcom/android/nfc/ForegroundUtils$Callback;I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 309
    iput-object p1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 310
    iput p2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundUid:I
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_33

    .line 311
    const/4 v0, 0x1

    :goto_17
    monitor-exit v2

    .line 320
    if-eqz v0, :cond_1d

    .line 321
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/PreferredServices;->computePreferredForegroundService()V

    .line 323
    :cond_1d
    return v0

    .line 313
    :cond_1e
    :try_start_1e
    const-string/jumbo v1, "PreferredCardEmulationServices"

    const-string/jumbo v3, "Calling UID is not in the foreground, ignorning!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, 0x0

    goto :goto_17

    .line 317
    :cond_29
    const-string/jumbo v1, "PreferredCardEmulationServices"

    const-string/jumbo v3, "Requested foreground service conflicts with default payment app."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_1e .. :try_end_32} :catchall_33

    goto :goto_17

    .line 306
    :catchall_33
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setDefaultForNextTap(Landroid/content/ComponentName;)Z
    .registers 4
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_3
    iput-object p1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mNextTapDefault:Landroid/content/ComponentName;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_b

    monitor-exit v0

    .line 227
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/PreferredServices;->computePreferredForegroundService()V

    .line 228
    const/4 v0, 0x1

    return v0

    .line 224
    :catchall_b
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method unregisterForegroundService(I)Z
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 328
    .local v0, "success":Z
    iget-object v2, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 329
    :try_start_4
    iget v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundUid:I

    if-ne v1, p1, :cond_f

    .line 330
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundRequested:Landroid/content/ComponentName;

    .line 331
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundUid:I
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_16

    .line 332
    const/4 v0, 0x1

    :cond_f
    monitor-exit v2

    .line 335
    if-eqz v0, :cond_15

    .line 336
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/PreferredServices;->computePreferredForegroundService()V

    .line 338
    :cond_15
    return v0

    .line 328
    :catchall_16
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public unregisteredPreferredForegroundService(I)Z
    .registers 4
    .param p1, "callingUid"    # I

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/nfc/cardemulation/PreferredServices;->mForegroundUtils:Lcom/android/nfc/ForegroundUtils;

    invoke-virtual {v0, p1}, Lcom/android/nfc/ForegroundUtils;->isInForeground(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 344
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->unregisterForegroundService(I)Z

    move-result v0

    return v0

    .line 346
    :cond_d
    const-string/jumbo v0, "PreferredCardEmulationServices"

    const-string/jumbo v1, "Calling UID is not in the foreground, ignorning!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v0, 0x0

    return v0
.end method

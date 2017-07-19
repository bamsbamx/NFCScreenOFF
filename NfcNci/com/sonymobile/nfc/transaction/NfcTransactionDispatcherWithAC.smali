.class Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;
.super Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;
.source "NfcTransactionDispatcherWithAC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$1;,
        Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;
    }
.end annotation


# static fields
.field private static final ACTION_AID_AUTHORIZATION_REQ:Ljava/lang/String; = "com.sonymobile.nfc.action.AID_AUTHORIZATION_REQ"

.field private static final ACTION_AID_AUTHORIZATION_RSP:Ljava/lang/String; = "com.sonymobile.nfc.action.AID_AUTHORIZATION_RSP"

.field private static final AID_AUTHORIZATION_PERM:Ljava/lang/String; = "com.sonymobile.permission.SMARTCARD_NFC_AUTHORIZATION"

.field private static final DBG:Z

.field private static final EXTRA_AID_PARAM_KEY:Ljava/lang/String; = "com.sonymobile.nfc.extra.AID_PARAM_KEY"

.field private static final EXTRA_AUTHORIZATION_PACKAGES:Ljava/lang/String; = "com.sonymobile.nfc.extra.AUTHORIZATION_PACKAGES"

.field private static final EXTRA_SECURE_ELEMENT:Ljava/lang/String; = "com.sonymobile.nfc.extra.SECURE_ELEMENT"

.field private static final TAG:Ljava/lang/String; = "NfcTransactionDispatcherWithAC"


# instance fields
.field private final mParameterStorage:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Z
    .registers 1

    sget-boolean v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;)Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->mParameterStorage:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->DBG:Z

    sput-boolean v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->DBG:Z

    .line 40
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$NfcProperty;Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;)V
    .registers 10
    .param p1, "con"    # Landroid/content/Context;
    .param p2, "prop"    # Lcom/android/nfc/DeviceHost$NfcProperty;
    .param p3, "config"    # Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;-><init>(Landroid/content/Context;Lcom/android/nfc/DeviceHost$NfcProperty;Lcom/sonymobile/nfc/transaction/NfcTransactionConfig;)V

    .line 127
    new-instance v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$1;-><init>(Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 65
    new-instance v0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;

    invoke-direct {v0}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->mParameterStorage:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;

    .line 67
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "com.sonymobile.nfc.action.AID_AUTHORIZATION_RSP"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v4, "com.sonymobile.permission.SMARTCARD_NFC_AUTHORIZATION"

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 62
    return-void
.end method

.method private queryTransactionPackages([B)[Ljava/lang/String;
    .registers 6
    .param p1, "aid"    # [B

    .prologue
    .line 120
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v2, "matches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->queryTransactionRelolveInfo([B)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 122
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 124
    .end local v0    # "info":Landroid/content/pm/ResolveInfo;
    :cond_21
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method


# virtual methods
.method public dispatch([B[B)V
    .registers 13
    .param p1, "aid"    # [B
    .param p2, "param"    # [B

    .prologue
    const/4 v5, 0x0

    .line 74
    sget-boolean v6, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->DBG:Z

    if-eqz v6, :cond_e

    const-string/jumbo v6, "NfcTransactionDispatcherWithAC"

    const-string/jumbo v7, "dispatch [start]"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_e
    iget-boolean v6, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->mEnableMultiEvtTransaction:Z

    if-eqz v6, :cond_29

    .line 77
    invoke-virtual {p0}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->queryMulticastReceiverPackages()[Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "packages":[Ljava/lang/String;
    :goto_16
    if-eqz v1, :cond_1b

    array-length v6, v1

    if-nez v6, :cond_2e

    .line 83
    :cond_1b
    sget-boolean v5, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->DBG:Z

    if-eqz v5, :cond_28

    const-string/jumbo v5, "NfcTransactionDispatcherWithAC"

    const-string/jumbo v6, "no transaction package/s found"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_28
    return-void

    .line 79
    .end local v1    # "packages":[Ljava/lang/String;
    :cond_29
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->queryTransactionPackages([B)[Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "packages":[Ljava/lang/String;
    goto :goto_16

    .line 87
    :cond_2e
    sget-boolean v6, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->DBG:Z

    if-eqz v6, :cond_70

    .line 88
    const-string/jumbo v6, "NfcTransactionDispatcherWithAC"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Multicast: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->mEnableMultiEvtTransaction:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    array-length v6, v1

    :goto_4f
    if-ge v5, v6, :cond_70

    aget-object v4, v1, v5

    .line 90
    .local v4, "pkg":Ljava/lang/String;
    const-string/jumbo v7, "NfcTransactionDispatcherWithAC"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    add-int/lit8 v5, v5, 0x1

    goto :goto_4f

    .line 94
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_70
    const-wide/16 v2, 0x0

    .line 95
    .local v2, "key":J
    if-eqz p2, :cond_9f

    .line 96
    iget-object v5, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->mParameterStorage:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;

    invoke-virtual {v5, p2}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC$ParameterStorage;->register([B)J

    move-result-wide v2

    .line 97
    sget-boolean v5, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->DBG:Z

    if-eqz v5, :cond_98

    const-string/jumbo v5, "NfcTransactionDispatcherWithAC"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Registered parameter storage Key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_98
    const-wide/16 v6, 0x0

    cmp-long v5, v2, v6

    if-nez v5, :cond_9f

    .line 99
    return-void

    .line 103
    :cond_9f
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    .local v0, "authReqIntent":Landroid/content/Intent;
    const-string/jumbo v5, "com.sonymobile.nfc.action.AID_AUTHORIZATION_REQ"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string/jumbo v5, "com.android.nfc_extras.extra.AID"

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 106
    const-string/jumbo v5, "com.sonymobile.nfc.extra.SECURE_ELEMENT"

    invoke-virtual {p0}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->getCurrentSeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string/jumbo v5, "com.sonymobile.nfc.extra.AUTHORIZATION_PACKAGES"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string/jumbo v5, "com.sonymobile.nfc.extra.AID_PARAM_KEY"

    invoke-virtual {v0, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 109
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 111
    sget-boolean v5, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->DBG:Z

    if-eqz v5, :cond_d8

    const-string/jumbo v5, "NfcTransactionDispatcherWithAC"

    const-string/jumbo v6, "Broadcasting ACTION_AID_AUTHORIZATION_REQ"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_d8
    iget-object v5, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v7, "com.sonymobile.permission.SMARTCARD_NFC_AUTHORIZATION"

    invoke-virtual {v5, v0, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 113
    sget-boolean v5, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherWithAC;->DBG:Z

    if-eqz v5, :cond_ef

    const-string/jumbo v5, "NfcTransactionDispatcherWithAC"

    const-string/jumbo v6, "dispatch [end]"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_ef
    return-void
.end method

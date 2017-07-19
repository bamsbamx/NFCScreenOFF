.class public Lcom/android/nfc/cardemulation/CardEmulationManager;
.super Ljava/lang/Object;
.source "CardEmulationManager.java"

# interfaces
.implements Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;
.implements Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;
.implements Lcom/android/nfc/cardemulation/PreferredServices$Callback;
.implements Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;,
        Lcom/android/nfc/cardemulation/CardEmulationManager$LastPaymentService;,
        Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;,
        Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;
    }
.end annotation


# static fields
.field private static final ACTION_PPSE_CHECK_REQUEST:Ljava/lang/String; = "com.sonymobile.nfc.action.PPSE_CHECK_REQUEST"

.field static final ACTION_SYNC_UIM_REQUEST:Ljava/lang/String; = "com.sonymobile.nfc.action.SYNC_UIM_REQUEST"

.field static final DBG:Z

.field static final DISABLED_SERVICES:Ljava/lang/String; = "nfc_disabled_services"

.field private static final EXTRA_PPSE_CHECK_COMPONENT_NAME:Ljava/lang/String; = "com.sonymobile.nfc.extra.PPSE_CHECK_COMPONENT_NAME"

.field private static final EXTRA_PPSE_CHECK_IS_DEFAULT_SERVICE:Ljava/lang/String; = "com.sonymobile.nfc.extra.PPSE_CHECK_IS_DEFAULT_SERVICE"

.field private static final EXTRA_PPSE_CHECK_PID:Ljava/lang/String; = "com.sonymobile.nfc.extra.PPSE_CHECK_PID"

.field static final NFC_HCE_APDU:I = 0x1

.field static final NFC_HCE_NFCF:I = 0x4

.field private static final NFC_PAYMENT_FOREGROUND_COMPONENT:Ljava/lang/String; = "nfc_payment_foreground_component"

.field private static final NFC_PAYMENT_PREVIOUS_FAILED_COMPONENT:Ljava/lang/String; = "nfc_payment_previous_failed_component"

.field static final TAG:Ljava/lang/String; = "CardEmulationManager"


# instance fields
.field final mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

.field final mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

.field final mContext:Landroid/content/Context;

.field final mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

.field final mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

.field final mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

.field private final mIsPpseCheckRequestNeeded:Z

.field final mNfcFCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;

.field final mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

.field final mPaymentNotificationManager:Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

.field final mPowerManager:Landroid/os/PowerManager;

.field final mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

.field final mRoutingSimulator:Lcom/android/nfc/cardemulation/AidRoutingSimulator;

.field final mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

.field final mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;


# direct methods
.method static synthetic -get0(Lcom/android/nfc/cardemulation/CardEmulationManager;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mIsPpseCheckRequestNeeded:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/nfc/cardemulation/CardEmulationManager;Landroid/content/ComponentName;Z)V
    .registers 3
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "isDefaultService"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->sendPpseCheckRequestBroadcast(Landroid/content/ComponentName;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 86
    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v1, "user"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    :goto_14
    sput-boolean v0, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    .line 82
    return-void

    .line 86
    :cond_17
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aidRoutingManager"    # Lcom/android/nfc/cardemulation/AidRoutingManager;

    .prologue
    const v3, 0x7f0a000c

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    .line 127
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;-><init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    .line 128
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;-><init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;

    .line 129
    new-instance v0, Lcom/android/nfc/cardemulation/AidRoutingSimulator;

    invoke-direct {v0, p1, p2}, Lcom/android/nfc/cardemulation/AidRoutingSimulator;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mRoutingSimulator:Lcom/android/nfc/cardemulation/AidRoutingSimulator;

    .line 130
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 131
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-direct {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    .line 132
    new-instance v0, Lcom/android/nfc/cardemulation/HostEmulationManager;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, v1}, Lcom/android/nfc/cardemulation/HostEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    .line 133
    new-instance v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-direct {v0, p1, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    .line 134
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 135
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 136
    new-instance v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    .line 137
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    .line 136
    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    .line 138
    new-instance v0, Lcom/android/nfc/cardemulation/PreferredServices;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/nfc/cardemulation/PreferredServices;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;Lcom/android/nfc/cardemulation/RegisteredAidCache;Lcom/android/nfc/cardemulation/PreferredServices$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    .line 139
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->initialize()V

    .line 141
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 142
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "kddi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 140
    :goto_86
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mIsPpseCheckRequestNeeded:Z

    .line 144
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 145
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-direct {v0, p1, v1}, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPaymentNotificationManager:Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

    .line 149
    :goto_9d
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPowerManager:Landroid/os/PowerManager;

    .line 125
    return-void

    .line 141
    :cond_a9
    const/4 v0, 0x0

    goto :goto_86

    .line 147
    :cond_ab
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPaymentNotificationManager:Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

    goto :goto_9d
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;Lcom/android/nfc/cardemulation/CeSubsystemBuilder;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "aidRoutingManager"    # Lcom/android/nfc/cardemulation/AidRoutingManager;
    .param p3, "builder"    # Lcom/android/nfc/cardemulation/CeSubsystemBuilder;

    .prologue
    const v3, 0x7f0a000c

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput-object p1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    .line 159
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;-><init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    .line 160
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;-><init>(Lcom/android/nfc/cardemulation/CardEmulationManager;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;

    .line 161
    invoke-interface {p3, p1, p2}, Lcom/android/nfc/cardemulation/CeSubsystemBuilder;->createAidRoutingSimulator(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)Lcom/android/nfc/cardemulation/AidRoutingSimulator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mRoutingSimulator:Lcom/android/nfc/cardemulation/AidRoutingSimulator;

    .line 162
    invoke-interface {p3, p1, p2}, Lcom/android/nfc/cardemulation/CeSubsystemBuilder;->createRegisteredAidCache(Landroid/content/Context;Lcom/android/nfc/cardemulation/AidRoutingManager;)Lcom/android/nfc/cardemulation/RegisteredAidCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    .line 163
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-direct {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    .line 164
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-interface {p3, p1, v0}, Lcom/android/nfc/cardemulation/CeSubsystemBuilder;->createHostEmulationManager(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredAidCache;)Lcom/android/nfc/cardemulation/HostEmulationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    .line 165
    new-instance v0, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-direct {v0, p1, v1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    .line 166
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    .line 167
    new-instance v0, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-direct {v0, p1, p0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    .line 168
    new-instance v0, Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    .line 169
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    .line 168
    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;Lcom/android/nfc/cardemulation/EnabledNfcFServices$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    .line 170
    new-instance v0, Lcom/android/nfc/cardemulation/PreferredServices;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-direct {v0, p1, v1, v2, p0}, Lcom/android/nfc/cardemulation/PreferredServices;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;Lcom/android/nfc/cardemulation/RegisteredAidCache;Lcom/android/nfc/cardemulation/PreferredServices$Callback;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    .line 171
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->initialize()V

    .line 173
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 174
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "kddi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 172
    :goto_83
    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mIsPpseCheckRequestNeeded:Z

    .line 176
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_a8

    .line 177
    new-instance v0, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-direct {v0, p1, v1}, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;-><init>(Landroid/content/Context;Lcom/android/nfc/cardemulation/RegisteredServicesCache;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPaymentNotificationManager:Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

    .line 181
    :goto_9a
    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPowerManager:Landroid/os/PowerManager;

    .line 157
    return-void

    .line 173
    :cond_a6
    const/4 v0, 0x0

    goto :goto_83

    .line 179
    :cond_a8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPaymentNotificationManager:Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

    goto :goto_9a
.end method

.method private enableServicesOnDefaultRoute(I)V
    .registers 15
    .param p1, "userId"    # I

    .prologue
    .line 962
    iget-object v10, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v10}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->getDisabledServices()Ljava/util/List;

    move-result-object v1

    .line 963
    .local v1, "disabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_e

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_f

    .line 964
    :cond_e
    return-void

    .line 967
    :cond_f
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/nfc/NfcService;->GetDefaultRouteLoc()I

    move-result v0

    .line 969
    .local v0, "defaultRoute":I
    invoke-static {}, Lcom/sonymobile/nfc/NfcCertDebugModeUtil;->isHceDebugMode()Z

    move-result v10

    if-eqz v10, :cond_6b

    .line 970
    const/4 v0, 0x0

    .line 971
    sget-boolean v10, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v10, :cond_3c

    const-string/jumbo v10, "CardEmulationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "HCE Debug mode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    :cond_3c
    :goto_3c
    if-nez v0, :cond_91

    const/4 v2, 0x1

    .line 978
    .local v2, "isDefaultOnHost":Z
    :goto_3f
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 980
    .local v8, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v10, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    const-string/jumbo v11, "other"

    invoke-virtual {v10, p1, v11}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getServicesForCategory(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 981
    .local v3, "otherServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "service$iterator":Ljava/util/Iterator;
    :cond_51
    :goto_51
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_93

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 982
    .local v6, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->isOnHost()Z

    move-result v10

    if-ne v10, v2, :cond_51

    .line 983
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_51

    .line 972
    .end local v2    # "isDefaultOnHost":Z
    .end local v3    # "otherServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .end local v6    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v7    # "service$iterator":Ljava/util/Iterator;
    .end local v8    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_6b
    invoke-static {}, Lcom/sonymobile/nfc/NfcCertDebugModeUtil;->isUiccDebugMode()Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 973
    const/4 v0, 0x2

    .line 974
    sget-boolean v10, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v10, :cond_3c

    const-string/jumbo v10, "CardEmulationManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "UICC Debug mode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 976
    :cond_91
    const/4 v2, 0x0

    .restart local v2    # "isDefaultOnHost":Z
    goto :goto_3f

    .line 987
    .restart local v3    # "otherServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    .restart local v7    # "service$iterator":Ljava/util/Iterator;
    .restart local v8    # "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :cond_93
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 988
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9c
    :goto_9c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_bc

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 989
    .local v5, "service":Landroid/content/ComponentName;
    invoke-interface {v8, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9c

    .line 990
    invoke-virtual {v5}, Landroid/content/ComponentName;->hashCode()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 991
    const-string/jumbo v10, ","

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9c

    .line 995
    .end local v5    # "service":Landroid/content/ComponentName;
    :cond_bc
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_d3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 996
    :goto_c6
    iget-object v10, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .line 997
    const-string/jumbo v11, "nfc_disabled_services"

    .line 996
    invoke-static {v10, v11, v9, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 961
    return-void

    .line 995
    :cond_d3
    const/4 v9, 0x0

    .local v9, "serviceToDisable":Ljava/lang/String;
    goto :goto_c6
.end method

.method private isLastFailedService(Landroid/content/ComponentName;I)Z
    .registers 7
    .param p1, "lastFoundPaymentService"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1001
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_11

    .line 1002
    return v3

    .line 1006
    :cond_11
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1007
    const-string/jumbo v2, "nfc_payment_previous_failed_component"

    .line 1005
    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1008
    .local v0, "lastFailedService":Ljava/lang/String;
    if-nez v0, :cond_21

    .line 1009
    return v3

    .line 1013
    :cond_21
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1014
    const/4 v1, 0x1

    return v1

    .line 1016
    :cond_2d
    return v3
.end method

.method private sendPpseCheckRequestBroadcast(Landroid/content/ComponentName;Z)V
    .registers 7
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "isDefaultService"    # Z

    .prologue
    .line 952
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.nfc.action.PPSE_CHECK_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 953
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonymobile.nfc.extra.PPSE_CHECK_PID"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 954
    const-string/jumbo v1, "com.sonymobile.nfc.extra.PPSE_CHECK_COMPONENT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 955
    const-string/jumbo v1, "com.sonymobile.nfc.extra.PPSE_CHECK_IS_DEFAULT_SERVICE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 957
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    .line 958
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v3, "com.sonymobile.nfc.permission.NFC_SECURE_SETTING"

    .line 957
    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 951
    return-void
.end method


# virtual methods
.method public checkOverflowWithDisabledService(I)Z
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 910
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->getDisabledServices()Ljava/util/List;

    move-result-object v0

    .line 911
    .local v0, "disabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 912
    :cond_f
    const/4 v1, 0x0

    return v1

    .line 915
    :cond_11
    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v3, v2, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->detectOverflow(ILandroid/content/ComponentName;ZI)Z

    move-result v1

    return v1
.end method

.method public commitApduServiceInfo(Landroid/nfc/cardemulation/ApduServiceInfo;)Z
    .registers 4
    .param p1, "service"    # Landroid/nfc/cardemulation/ApduServiceInfo;

    .prologue
    .line 398
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->commitApduServiceInfo(Landroid/nfc/cardemulation/ApduServiceInfo;)Z

    move-result v0

    .line 399
    .local v0, "isOverflowed":Z
    return v0
.end method

.method public deleteApduServiceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "classname"    # Ljava/lang/String;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->deleteApduServiceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method public detectOverflow(I)Z
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 879
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->detectOverflow(ILandroid/content/ComponentName;ZI)Z

    move-result v0

    return v0
.end method

.method public detectOverflow(II)Z
    .registers 5
    .param p1, "route"    # I
    .param p2, "userId"    # I

    .prologue
    .line 883
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->detectOverflow(ILandroid/content/ComponentName;ZI)Z

    move-result v0

    return v0
.end method

.method detectOverflow(ILandroid/content/ComponentName;ZI)Z
    .registers 12
    .param p1, "route"    # I
    .param p2, "foregroundService"    # Landroid/content/ComponentName;
    .param p3, "enableAll"    # Z
    .param p4, "userId"    # I

    .prologue
    const/4 v6, 0x0

    .line 887
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_11

    return v6

    .line 889
    :cond_11
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p4}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getServices(I)Ljava/util/List;

    move-result-object v2

    .line 890
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p4, v2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateDisabledServices(ILjava/util/List;)V

    .line 892
    invoke-virtual {p0, p4, v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->verifyDefaults(ILjava/util/List;)V

    .line 894
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 895
    .local v3, "disabledServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-nez p3, :cond_2c

    .line 896
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->getDisabledServices()Ljava/util/List;

    move-result-object v3

    .line 900
    :cond_2c
    const-string/jumbo v0, "payment"

    .line 899
    invoke-virtual {p0, p4, v0, v6}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;

    move-result-object v4

    .line 902
    .local v4, "defaultService":Landroid/content/ComponentName;
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mRoutingSimulator:Lcom/android/nfc/cardemulation/AidRoutingSimulator;

    move v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->overflow(ILjava/util/List;Ljava/util/List;Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 904
    const/4 v0, 0x1

    return v0

    .line 906
    :cond_3f
    return v6
.end method

.method public disableServiceForAidRoute(ILjava/lang/String;I)V
    .registers 6
    .param p1, "userId"    # I
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "route"    # I

    .prologue
    .line 945
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->getServicesForAidRoute(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 946
    .local v0, "disableServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 943
    :cond_e
    :goto_e
    return-void

    .line 947
    :cond_f
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->disableServices(ILjava/util/List;)V

    goto :goto_e
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/PreferredServices;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/HostEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public executeMasterReset()V
    .registers 7

    .prologue
    .line 919
    iget-object v3, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 920
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "user$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 921
    .local v1, "user":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    iget v4, v1, Landroid/content/pm/UserInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateDisabledServices(ILjava/util/List;)V

    goto :goto_e

    .line 918
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_23
    return-void
.end method

.method public getDefaultPaymentService(I)Landroid/nfc/cardemulation/ApduServiceInfo;
    .registers 6
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    .line 927
    const-string/jumbo v1, "payment"

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 928
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_c

    .line 929
    return-object v3

    .line 931
    :cond_c
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v1

    return-object v1
.end method

.method public getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "validateInstalled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 416
    const-string/jumbo v3, "payment"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 417
    const-string/jumbo v3, "CardEmulationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not allowing defaults for category "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-object v2

    .line 422
    :cond_25
    iget-object v3, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "nfc_payment_default_component"

    .line 421
    invoke-static {v3, v4, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_48

    .line 425
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 426
    .local v1, "service":Landroid/content/ComponentName;
    if-eqz p3, :cond_3c

    if-nez v1, :cond_3d

    .line 427
    :cond_3c
    return-object v1

    .line 429
    :cond_3d
    iget-object v3, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v3, p1, v1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_46

    .end local v1    # "service":Landroid/content/ComponentName;
    :goto_45
    return-object v1

    .restart local v1    # "service":Landroid/content/ComponentName;
    :cond_46
    move-object v1, v2

    goto :goto_45

    .line 432
    .end local v1    # "service":Landroid/content/ComponentName;
    :cond_48
    return-object v2
.end method

.method public getNfcCardEmulationInterface()Landroid/nfc/INfcCardEmulation;
    .registers 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$CardEmulationInterface;

    return-object v0
.end method

.method public getNfcFCardEmulationInterface()Landroid/nfc/INfcFCardEmulation;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFCardEmulationInterface:Lcom/android/nfc/cardemulation/CardEmulationManager$NfcFCardEmulationInterface;

    return-object v0
.end method

.method public getServicesAidCacheSize(ILjava/lang/String;)Ljava/util/Map;
    .registers 14
    .param p1, "userId"    # I
    .param p2, "category"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 849
    const-string/jumbo v8, "payment"

    if-ne p2, v8, :cond_8

    .line 850
    return-object v9

    .line 852
    :cond_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 853
    .local v3, "nonPaymentServices":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 854
    .local v2, "nonPaymentServiceAidCacheSize":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 855
    .local v4, "serviceAidCacheSize":Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 856
    .local v5, "serviceComponent":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/nfc/NfcPermissions;->validateUserId(I)V

    .line 857
    iget-object v8, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/nfc/NfcPermissions;->enforceUserPermissions(Landroid/content/Context;)V

    .line 858
    iget-object v8, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    const-string/jumbo v9, "other"

    invoke-virtual {v8, p1, v9}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getServicesForCategory(ILjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 859
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v5    # "serviceComponent":Ljava/lang/String;
    .local v7, "serviceinfo$iterator":Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_86

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 860
    .local v6, "serviceinfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 861
    const/4 v5, 0x0

    .line 862
    .restart local v5    # "serviceComponent":Ljava/lang/String;
    if-eqz v6, :cond_2c

    .line 863
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "aid$iterator":Ljava/util/Iterator;
    :goto_47
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 864
    .local v0, "aid":Ljava/lang/String;
    const-string/jumbo v8, "*"

    invoke-virtual {v0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 865
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_47

    .line 867
    :cond_6c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_47

    .line 870
    .end local v0    # "aid":Ljava/lang/String;
    :cond_7a
    invoke-virtual {v6}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    .line 871
    .local v5, "serviceComponent":Ljava/lang/String;
    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 875
    .end local v1    # "aid$iterator":Ljava/util/Iterator;
    .end local v5    # "serviceComponent":Ljava/lang/String;
    .end local v6    # "serviceinfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_86
    return-object v2
.end method

.method public gsmaGetNewUuid(Ljava/lang/String;)Landroid/os/ParcelUuid;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->gsmaGetNewUuid(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->initialize()V

    .line 184
    return-void
.end method

.method public isDefaultPaymentOverflow(I)Z
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 935
    invoke-virtual {p0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultPaymentService(I)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    .line 936
    .local v0, "info":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-nez v0, :cond_8

    .line 937
    const/4 v1, 0x0

    return v1

    .line 940
    :cond_8
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mRoutingSimulator:Lcom/android/nfc/cardemulation/AidRoutingSimulator;

    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAids()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/nfc/cardemulation/AidRoutingSimulator;->isOverflowed(Ljava/util/List;)Z

    move-result v1

    return v1
.end method

.method isNfcFServiceInstalled(ILandroid/content/ComponentName;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 437
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 438
    .local v0, "serviceFound":Z
    if-nez v0, :cond_1a

    .line 444
    sget-boolean v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v1, :cond_15

    const-string/jumbo v1, "CardEmulationManager"

    const-string/jumbo v2, "Didn\'t find passed in service, invalidating cache."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_15
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v1, p1}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->invalidateCache(I)V

    .line 447
    :cond_1a
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method isServiceRegistered(ILandroid/content/ComponentName;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 470
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v0

    .line 471
    .local v0, "serviceFound":Z
    if-nez v0, :cond_1a

    .line 477
    sget-boolean v1, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v1, :cond_15

    const-string/jumbo v1, "CardEmulationManager"

    const-string/jumbo v2, "Didn\'t find passed in service, invalidating cache."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_15
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 480
    :cond_1a
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public onEnabledForegroundNfcFServiceChanged(Landroid/content/ComponentName;)V
    .registers 3
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 836
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->onEnabledForegroundNfcFServiceChanged(Landroid/content/ComponentName;)V

    .line 837
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onEnabledForegroundNfcFServiceChanged(Landroid/content/ComponentName;)V

    .line 835
    return-void
.end method

.method public onHostCardEmulationActivated(I)V
    .registers 7
    .param p1, "technology"    # I

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_f

    .line 194
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 196
    :cond_f
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1d

    .line 197
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationActivated()V

    .line 198
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onHostEmulationActivated()V

    .line 192
    :cond_1c
    :goto_1c
    return-void

    .line 199
    :cond_1d
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1c

    .line 200
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onHostEmulationActivated()V

    .line 201
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->onHostEmulationActivated()V

    .line 202
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->onHostEmulationActivated()V

    goto :goto_1c
.end method

.method public onHostCardEmulationData(I[B)V
    .registers 8
    .param p1, "technology"    # I
    .param p2, "data"    # [B

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_f

    .line 208
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    .line 210
    :cond_f
    const/4 v0, 0x1

    if-ne p1, v0, :cond_18

    .line 211
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p2}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationData([B)V

    .line 206
    :cond_17
    :goto_17
    return-void

    .line 212
    :cond_18
    const/4 v0, 0x4

    if-ne p1, v0, :cond_17

    .line 213
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0, p2}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onHostEmulationData([B)V

    goto :goto_17
.end method

.method public onHostCardEmulationDeactivated(I)V
    .registers 3
    .param p1, "technology"    # I

    .prologue
    .line 218
    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 219
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onHostEmulationDeactivated()V

    .line 220
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onHostEmulationDeactivated()V

    .line 217
    :cond_d
    :goto_d
    return-void

    .line 221
    :cond_e
    const/4 v0, 0x4

    if-ne p1, v0, :cond_d

    .line 222
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onHostEmulationDeactivated()V

    .line 223
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->onHostEmulationDeactivated()V

    .line 224
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->onHostEmulationDeactivated()V

    goto :goto_d
.end method

.method public onNfcDisabled()V
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onNfcDisabled()V

    .line 245
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostNfcFEmulationManager:Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostNfcFEmulationManager;->onNfcDisabled()V

    .line 246
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mNfcFServicesCache:Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredNfcFServicesCache;->onNfcDisabled()V

    .line 247
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->onNfcDisabled()V

    .line 248
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->onNfcDisabled()V

    .line 243
    return-void
.end method

.method public onNfcEnabled()V
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onNfcEnabled()V

    .line 240
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->onNfcEnabled()V

    .line 237
    return-void
.end method

.method public onNfcFServicesUpdated(ILjava/util/List;)V
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/NfcFServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/NfcFServiceInfo;>;"
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mT3tIdentifiersCache:Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredT3tIdentifiersCache;->onServicesUpdated(ILjava/util/List;)V

    .line 282
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mEnabledNfcFServices:Lcom/android/nfc/cardemulation/EnabledNfcFServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/EnabledNfcFServices;->onServicesUpdated()V

    .line 278
    return-void
.end method

.method public onOffHostAidSelected()V
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onOffHostAidSelected()V

    .line 228
    return-void
.end method

.method public onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V
    .registers 11
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 798
    const/4 v2, 0x0

    .line 799
    .local v2, "preferForeground":Z
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 801
    .local v3, "userId":I
    :try_start_7
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 802
    const-string/jumbo v6, "nfc_payment_foreground"

    .line 801
    invoke-static {v4, v6, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_13
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_13} :catch_83

    move-result v4

    if-eqz v4, :cond_77

    const/4 v2, 0x1

    .line 806
    :goto_17
    if-eqz v2, :cond_6c

    .line 807
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 808
    const-string/jumbo v7, "nfc_payment_foreground_component"

    .line 809
    if-eqz p1, :cond_79

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 807
    :goto_28
    invoke-static {v6, v7, v4, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 811
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/nfc/NfcService;->isDynamicSwitchSupported()Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 813
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v4, v3, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v1

    .line 814
    .local v1, "foregroundService":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v1, :cond_7b

    .line 815
    const/4 v4, -0x1

    invoke-virtual {p0, v4, p1, v8, v3}, Lcom/android/nfc/cardemulation/CardEmulationManager;->detectOverflow(ILandroid/content/ComponentName;ZI)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 816
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/nfc/NfcService;->onPreferredForegroundServiceChanged(Landroid/nfc/cardemulation/ApduServiceInfo;)V

    .line 824
    .end local v1    # "foregroundService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_4b
    :goto_4b
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 825
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.sonymobile.nfc.action.SYNC_UIM_REQUEST"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 826
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v7, "com.sonymobile.nfc.permission.NFC_SECURE_SETTING"

    .line 825
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 830
    :cond_6c
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v4, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V

    .line 831
    iget-object v4, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v4, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V

    .line 797
    return-void

    .line 801
    :cond_77
    const/4 v2, 0x0

    goto :goto_17

    :cond_79
    move-object v4, v5

    .line 809
    goto :goto_28

    .line 820
    .restart local v1    # "foregroundService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_7b
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/nfc/NfcService;->onPreferredForegroundServiceChanged(Landroid/nfc/cardemulation/ApduServiceInfo;)V

    goto :goto_4b

    .line 803
    .end local v1    # "foregroundService":Landroid/nfc/cardemulation/ApduServiceInfo;
    :catch_83
    move-exception v0

    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_17
.end method

.method public onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "service"    # Landroid/content/ComponentName;

    .prologue
    .line 785
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V

    .line 786
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V

    .line 788
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 789
    if-eqz p1, :cond_2d

    .line 790
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.nfc.action.SYNC_UIM_REQUEST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 791
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v3, "com.sonymobile.nfc.permission.NFC_SECURE_SETTING"

    .line 790
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 784
    :cond_2d
    return-void
.end method

.method public onRoutingTableChanged()V
    .registers 2

    .prologue
    .line 845
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onRoutingTableChanged()V

    .line 844
    return-void
.end method

.method public onServicesUpdated(ILjava/util/List;)V
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateDisabledServices(ILjava/util/List;)V

    .line 265
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->isDynamicSwitchSupported()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 267
    invoke-direct {p0, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->enableServicesOnDefaultRoute(I)V

    .line 270
    :cond_12
    invoke-virtual {p0, p1, p2}, Lcom/android/nfc/cardemulation/CardEmulationManager;->verifyDefaults(ILjava/util/List;)V

    .line 272
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    invoke-virtual {v0, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->onServicesUpdated(ILjava/util/List;)V

    .line 274
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0}, Lcom/android/nfc/cardemulation/PreferredServices;->onServicesUpdated()V

    .line 263
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->invalidateCache(I)V

    .line 234
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->onUserSwitched(I)V

    .line 232
    return-void
.end method

.method public packageHasPreferredService(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPreferredServices:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/PreferredServices;->packageHasPreferredService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public retrieveApduServiceInfos(Ljava/lang/String;)Ljava/util/List;
    .registers 3
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
    .line 403
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->retrieveApduServiceInfos(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 452
    const-string/jumbo v1, "payment"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 453
    const-string/jumbo v0, "CardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not allowing defaults for category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v0, 0x0

    return v0

    .line 459
    :cond_26
    if-eqz p2, :cond_30

    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v1, p1, p2}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->hasService(ILandroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 460
    :cond_30
    iget-object v1, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 461
    const-string/jumbo v2, "nfc_payment_default_component"

    .line 462
    if-eqz p2, :cond_3f

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 460
    :cond_3f
    invoke-static {v1, v2, v0, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 466
    :goto_42
    const/4 v0, 0x1

    return v0

    .line 464
    :cond_44
    const-string/jumbo v0, "CardEmulationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not find default service to make default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method public setScreenState(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mHostEmulationManager:Lcom/android/nfc/cardemulation/HostEmulationManager;

    invoke-virtual {v0, p1}, Lcom/android/nfc/cardemulation/HostEmulationManager;->setScreenState(I)V

    .line 840
    return-void
.end method

.method verifyDefaults(ILjava/util/List;)V
    .registers 16
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const v12, 0x7f0a000c

    const/4 v8, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 287
    const-string/jumbo v7, "payment"

    invoke-virtual {p0, p1, v7, v8}, Lcom/android/nfc/cardemulation/CardEmulationManager;->getDefaultServiceForCategory(ILjava/lang/String;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 288
    .local v0, "defaultPaymentService":Landroid/content/ComponentName;
    sget-boolean v7, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v7, :cond_2b

    const-string/jumbo v7, "CardEmulationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Current default: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_2b
    if-eqz v0, :cond_179

    .line 291
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v7, p1, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getService(ILandroid/content/ComponentName;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v6

    .line 292
    .local v6, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v6, :cond_4c

    const-string/jumbo v7, "payment"

    invoke-virtual {v6, v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 353
    sget-boolean v7, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v7, :cond_4b

    const-string/jumbo v7, "CardEmulationManager"

    const-string/jumbo v8, "Default payment service still ok."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v6    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_4b
    :goto_4b
    return-void

    .line 293
    .restart local v6    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_4c
    if-nez v6, :cond_84

    .line 294
    const-string/jumbo v7, "CardEmulationManager"

    const-string/jumbo v8, "Default payment service unexpectedly removed."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPaymentNotificationManager:Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

    if-eqz v7, :cond_60

    .line 296
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPaymentNotificationManager:Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

    invoke-virtual {v7, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->setDefaultServiceRemoved(I)V

    .line 301
    :cond_60
    :goto_60
    const/4 v3, 0x0

    .line 302
    .local v3, "numPaymentServices":I
    const/4 v2, 0x0

    .line 303
    .local v2, "lastFoundPaymentService":Landroid/content/ComponentName;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v2    # "lastFoundPaymentService":Landroid/content/ComponentName;
    .local v5, "service$iterator":Ljava/util/Iterator;
    :cond_66
    :goto_66
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 305
    .local v4, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v4, :cond_66

    const-string/jumbo v7, "payment"

    invoke-virtual {v4, v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_66

    .line 306
    add-int/lit8 v3, v3, 0x1

    .line 307
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, "lastFoundPaymentService":Landroid/content/ComponentName;
    goto :goto_66

    .line 298
    .end local v2    # "lastFoundPaymentService":Landroid/content/ComponentName;
    .end local v3    # "numPaymentServices":I
    .end local v4    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v5    # "service$iterator":Ljava/util/Iterator;
    :cond_84
    const-string/jumbo v7, "payment"

    invoke-virtual {v6, v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_60

    .line 299
    sget-boolean v7, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v7, :cond_60

    const-string/jumbo v7, "CardEmulationManager"

    const-string/jumbo v8, "Default payment service had payment category removed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60

    .line 310
    .restart local v3    # "numPaymentServices":I
    .restart local v5    # "service$iterator":Ljava/util/Iterator;
    :cond_9b
    sget-boolean v7, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v7, :cond_bd

    const-string/jumbo v7, "CardEmulationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Number of payment services is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 311
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 310
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_bd
    if-nez v3, :cond_fb

    .line 313
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPaymentNotificationManager:Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

    if-eqz v7, :cond_c8

    .line 314
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPaymentNotificationManager:Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

    invoke-virtual {v7, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->clearLastPaymentService(I)V

    .line 316
    :cond_c8
    sget-boolean v7, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v7, :cond_d5

    const-string/jumbo v7, "CardEmulationManager"

    const-string/jumbo v8, "Default removed, no services left."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_d5
    const-string/jumbo v7, "payment"

    invoke-virtual {p0, p1, v10, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    .line 319
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 320
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "com.sonymobile.nfc.action.SYNC_UIM_REQUEST"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v10, "com.sonymobile.nfc.permission.NFC_SECURE_SETTING"

    .line 320
    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_4b

    .line 323
    :cond_fb
    if-ne v3, v11, :cond_12e

    .line 325
    sget-boolean v7, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v7, :cond_10a

    const-string/jumbo v7, "CardEmulationManager"

    const-string/jumbo v8, "Default removed, making remaining service default."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_10a
    invoke-direct {p0, v2, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isLastFailedService(Landroid/content/ComponentName;I)Z

    move-result v7

    if-eqz v7, :cond_11d

    .line 327
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 328
    const-string/jumbo v8, "nfc_payment_default_component"

    .line 327
    invoke-static {v7, v8, v10, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 329
    return-void

    .line 331
    :cond_11d
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPaymentNotificationManager:Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

    if-eqz v7, :cond_126

    .line 332
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPaymentNotificationManager:Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

    invoke-virtual {v7, p1, v2}, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->setLastPaymentService(ILandroid/content/ComponentName;)V

    .line 336
    :cond_126
    const-string/jumbo v7, "payment"

    .line 335
    invoke-virtual {p0, p1, v2, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    goto/16 :goto_4b

    .line 337
    :cond_12e
    if-le v3, v11, :cond_4b

    .line 340
    sget-boolean v7, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v7, :cond_13d

    const-string/jumbo v7, "CardEmulationManager"

    const-string/jumbo v8, "Default removed, asking user to pick."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_13d
    const-string/jumbo v7, "payment"

    .line 341
    invoke-virtual {p0, p1, v10, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    .line 343
    new-instance v1, Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    const-class v8, Lcom/android/nfc/cardemulation/DefaultRemovedActivity;

    invoke-direct {v1, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 344
    .local v1, "intent":Landroid/content/Intent;
    const v7, 0x10008000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 345
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7, v1, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 346
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 347
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "com.sonymobile.nfc.action.SYNC_UIM_REQUEST"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string/jumbo v10, "com.sonymobile.nfc.permission.NFC_SECURE_SETTING"

    .line 347
    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_4b

    .line 358
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "numPaymentServices":I
    .end local v5    # "service$iterator":Ljava/util/Iterator;
    .end local v6    # "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_179
    const/4 v3, 0x0

    .line 359
    .restart local v3    # "numPaymentServices":I
    const/4 v2, 0x0

    .line 360
    .local v2, "lastFoundPaymentService":Landroid/content/ComponentName;
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local v2    # "lastFoundPaymentService":Landroid/content/ComponentName;
    .restart local v5    # "service$iterator":Ljava/util/Iterator;
    :cond_17f
    :goto_17f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 362
    .restart local v4    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    if-eqz v4, :cond_17f

    const-string/jumbo v7, "payment"

    invoke-virtual {v4, v7}, Landroid/nfc/cardemulation/ApduServiceInfo;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17f

    .line 363
    add-int/lit8 v3, v3, 0x1

    .line 364
    invoke-virtual {v4}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .local v2, "lastFoundPaymentService":Landroid/content/ComponentName;
    goto :goto_17f

    .line 367
    .end local v2    # "lastFoundPaymentService":Landroid/content/ComponentName;
    .end local v4    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    :cond_19d
    if-le v3, v11, :cond_1b7

    .line 369
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPaymentNotificationManager:Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

    if-eqz v7, :cond_1a8

    .line 370
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPaymentNotificationManager:Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

    invoke-virtual {v7, p1, v10}, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->setLastPaymentService(ILandroid/content/ComponentName;)V

    .line 372
    :cond_1a8
    sget-boolean v7, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v7, :cond_4b

    const-string/jumbo v7, "CardEmulationManager"

    const-string/jumbo v8, "No default set, more than one service left."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b

    .line 373
    :cond_1b7
    if-ne v3, v11, :cond_1ea

    .line 375
    sget-boolean v7, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v7, :cond_1c6

    const-string/jumbo v7, "CardEmulationManager"

    const-string/jumbo v8, "No default set, making single service default."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_1c6
    invoke-direct {p0, v2, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager;->isLastFailedService(Landroid/content/ComponentName;I)Z

    move-result v7

    if-eqz v7, :cond_1d9

    .line 377
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 378
    const-string/jumbo v8, "nfc_payment_default_component"

    .line 377
    invoke-static {v7, v8, v10, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 379
    return-void

    .line 381
    :cond_1d9
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPaymentNotificationManager:Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

    if-eqz v7, :cond_1e2

    .line 382
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPaymentNotificationManager:Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

    invoke-virtual {v7, p1, v2}, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->setLastPaymentService(ILandroid/content/ComponentName;)V

    .line 386
    :cond_1e2
    const-string/jumbo v7, "payment"

    .line 385
    invoke-virtual {p0, p1, v2, v7}, Lcom/android/nfc/cardemulation/CardEmulationManager;->setDefaultServiceForCategoryChecked(ILandroid/content/ComponentName;Ljava/lang/String;)Z

    goto/16 :goto_4b

    .line 389
    :cond_1ea
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPaymentNotificationManager:Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

    if-eqz v7, :cond_1f3

    .line 390
    iget-object v7, p0, Lcom/android/nfc/cardemulation/CardEmulationManager;->mPaymentNotificationManager:Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;

    invoke-virtual {v7, p1}, Lcom/android/nfc/cardemulation/CardEmulationManager$PaymentNotificationManager;->clearLastPaymentService(I)V

    .line 392
    :cond_1f3
    sget-boolean v7, Lcom/android/nfc/cardemulation/CardEmulationManager;->DBG:Z

    if-eqz v7, :cond_4b

    const-string/jumbo v7, "CardEmulationManager"

    const-string/jumbo v8, "No default set, last payment service removed."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4b
.end method

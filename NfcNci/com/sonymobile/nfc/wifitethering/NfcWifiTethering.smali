.class public Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;
.super Landroid/app/Activity;
.source "NfcWifiTethering.java"

# interfaces
.implements Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$1;,
        Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$2;,
        Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$OnStartTetheringCallback;
    }
.end annotation


# static fields
.field private static final ACTION_TETHER_CONFIRMATION_DIALOG:Ljava/lang/String; = "com.sonymobile.intent.action.TETHER_CONFIRMATION_DIALOG"

.field public static final DBG:Z

.field private static final KEY_INTERNAL_STATE:Ljava/lang/String; = "internal_state"

.field private static final KEY_NFC_ENABLED_FLAG:Ljava/lang/String; = "nfc_enabled_flag"

.field private static final REQUEST_CODE_AP_CONFIRM_DIALOG:I = 0x3

.field private static final REQUEST_CODE_CTA_CONFIRM_DIALOG:I = 0x4

.field private static final STATE_AP_CONFIRM:I = -0x4

.field private static final STATE_COMPLETE:I = 0x5

.field private static final STATE_CTA_CONFIRM:I = -0x2

.field private static final STATE_ENABLING_NFC:I = 0x1

.field private static final STATE_ENABLING_WIFI_AP:I = 0x2

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_READY_TO_SHARE:I = 0x3

.field private static final STATE_SHOWING_AP_CONFIRM:I = -0x3

.field private static final STATE_SHOWING_CTA_CONFIRM:I = -0x1

.field private static final STATE_STAND_BY_SHARE:I = 0x4

.field public static final TAG:Ljava/lang/String; = "NfcWifiTethering"


# instance fields
.field private mClientNum:I

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConnectedDevNumberView:Landroid/widget/TextView;

.field private mCounter:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter;

.field private mHandler:Landroid/os/Handler;

.field final mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabledByWifiTethering:Z

.field final mNfcStateReceiver:Landroid/content/BroadcastReceiver;

.field private mStartTetheringCallback:Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$OnStartTetheringCallback;

.field private mState:I

.field private mWifiEnabled:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;)I
    .registers 2

    iget v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    return v0
.end method

.method static synthetic -get1(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mWifiEnabled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->complete()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->handleIntent(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->nextStep()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 48
    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v1, "user"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x0

    .line 47
    :goto_14
    sput-boolean v0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->DBG:Z

    .line 44
    return-void

    .line 48
    :cond_17
    const/4 v0, 0x1

    goto :goto_14
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 84
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mHandler:Landroid/os/Handler;

    .line 376
    new-instance v0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$1;-><init>(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNfcStateReceiver:Landroid/content/BroadcastReceiver;

    .line 383
    new-instance v0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$2;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$2;-><init>(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    .line 44
    return-void
.end method

.method private complete()V
    .registers 2

    .prologue
    .line 298
    const/4 v0, 0x5

    iput v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    .line 299
    iget-boolean v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNfcEnabledByWifiTethering:Z

    if-eqz v0, :cond_c

    .line 300
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 302
    :cond_c
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->finishActivity(I)V

    .line 303
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->finishActivity(I)V

    .line 304
    invoke-virtual {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->finish()V

    .line 297
    return-void
.end method

.method private enableNfc()V
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNfcEnabledByWifiTethering:Z

    .line 278
    :goto_b
    return-void

    .line 282
    :cond_c
    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->complete()V

    goto :goto_b
.end method

.method private enableWifiAp()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 287
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 288
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 290
    :cond_e
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 291
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mCm:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mStartTetheringCallback:Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$OnStartTetheringCallback;

    iget-object v2, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v0, v4, v3, v1, v2}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    .line 286
    :goto_1e
    return-void

    .line 293
    :cond_1f
    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->complete()V

    goto :goto_1e
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 325
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 327
    const-string/jumbo v2, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 328
    .local v1, "state":I
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1b

    if-ne v1, v4, :cond_1f

    .line 329
    :cond_1b
    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->nextStep()V

    .line 324
    .end local v1    # "state":I
    :cond_1e
    :goto_1e
    return-void

    .line 330
    .restart local v1    # "state":I
    :cond_1f
    if-ne v1, v3, :cond_1e

    iget v2, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    if-ne v2, v4, :cond_1e

    .line 331
    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->complete()V

    goto :goto_1e
.end method

.method private initContentView()V
    .registers 4

    .prologue
    .line 216
    const v1, 0x7f03001d

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->setContentView(I)V

    .line 219
    const v1, 0x7f0d00d0

    .line 218
    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mConnectedDevNumberView:Landroid/widget/TextView;

    .line 221
    invoke-virtual {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 222
    .local v0, "actionBar":Landroid/app/ActionBar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0a0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 224
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setElevation(F)V

    .line 215
    :cond_29
    return-void
.end method

.method private static isAirplaneModeOn(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 230
    const-string/jumbo v2, "airplane_mode_on"

    .line 229
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method private nextStep()V
    .registers 4

    .prologue
    .line 234
    sget-boolean v0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->DBG:Z

    if-eqz v0, :cond_20

    const-string/jumbo v0, "NfcWifiTethering"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Interal state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_20
    iget v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    packed-switch v0, :pswitch_data_6c

    .line 233
    :cond_25
    :goto_25
    :pswitch_25
    return-void

    .line 237
    :pswitch_26
    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->showWifiApConfirmDialogForResult()V

    .line 238
    const/4 v0, -0x3

    iput v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    goto :goto_25

    .line 241
    :pswitch_2d
    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->showCtaConfirmDialogForResult()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 242
    const/4 v0, -0x1

    iput v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    goto :goto_25

    .line 247
    :cond_37
    :pswitch_37
    const/4 v0, 0x1

    iput v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    .line 248
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_46

    .line 249
    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->enableNfc()V

    goto :goto_25

    .line 254
    :cond_46
    :pswitch_46
    const/4 v0, 0x2

    iput v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    .line 255
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-nez v0, :cond_55

    .line 256
    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->enableWifiAp()V

    goto :goto_25

    .line 261
    :cond_55
    :pswitch_55
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 264
    const/4 v0, 0x3

    iput v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    .line 267
    :pswitch_68
    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->startNdefSharing()V

    goto :goto_25

    .line 235
    :pswitch_data_6c
    .packed-switch -0x4
        :pswitch_26
        :pswitch_25
        :pswitch_2d
        :pswitch_25
        :pswitch_37
        :pswitch_46
        :pswitch_55
        :pswitch_68
    .end packed-switch
.end method

.method private showCtaConfirmDialogForResult()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 421
    const/4 v1, 0x0

    .line 423
    .local v1, "value":I
    iget-object v2, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_b

    .line 424
    const/4 v1, 0x1

    .line 426
    :cond_b
    iget-object v2, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    if-nez v2, :cond_15

    .line 427
    or-int/lit8 v1, v1, 0x2

    .line 430
    :cond_15
    if-nez v1, :cond_18

    .line 431
    return v3

    .line 434
    :cond_18
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sonymobile/nfc/cta/CtaTetheringDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 435
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.sonymobile.nfc.cta.EXTRA_TETHERING_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 436
    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->startActivityForResult(Landroid/content/Intent;I)V

    .line 438
    const/4 v2, 0x1

    return v2
.end method

.method private showWifiApConfirmDialogForResult()V
    .registers 3

    .prologue
    .line 416
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.intent.action.TETHER_CONFIRMATION_DIALOG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->startActivityForResult(Landroid/content/Intent;I)V

    .line 415
    return-void
.end method

.method private startNdefSharing()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 308
    sget-boolean v3, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->DBG:Z

    if-eqz v3, :cond_15

    const-string/jumbo v3, "NfcWifiTethering"

    iget-object v4, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_15
    new-instance v0, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;

    iget-object v3, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 311
    .local v0, "data":Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;
    invoke-static {v0}, Lcom/sonymobile/nfc/handover/wps/PayloadUtil;->createWpsConfigPayload(Lcom/sonymobile/nfc/handover/wps/WpsConfigTokenData;)[B

    move-result-object v2

    .line 312
    .local v2, "payload":[B
    if-eqz v2, :cond_4b

    array-length v3, v2

    if-lez v3, :cond_4b

    .line 313
    new-instance v1, Landroid/nfc/NdefMessage;

    .line 314
    const-string/jumbo v3, "application/vnd.wfa.wsc"

    invoke-static {v3, v2}, Landroid/nfc/NdefRecord;->createMime(Ljava/lang/String;[B)Landroid/nfc/NdefRecord;

    move-result-object v3

    .line 313
    new-array v4, v5, [Landroid/nfc/NdefRecord;

    invoke-direct {v1, v3, v4}, Landroid/nfc/NdefMessage;-><init>(Landroid/nfc/NdefRecord;[Landroid/nfc/NdefRecord;)V

    .line 316
    .local v1, "message":Landroid/nfc/NdefMessage;
    iget-object v3, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, p0, v4}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;I)V

    .line 317
    sget-boolean v3, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->DBG:Z

    if-eqz v3, :cond_4a

    const-string/jumbo v3, "NfcWifiTethering"

    const-string/jumbo v4, "Ready to share tethring info via NFC"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .end local v1    # "message":Landroid/nfc/NdefMessage;
    :cond_4a
    :goto_4a
    return-void

    .line 319
    :cond_4b
    sget-boolean v3, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->DBG:Z

    if-eqz v3, :cond_58

    const-string/jumbo v3, "NfcWifiTethering"

    const-string/jumbo v4, "Failed to create payload"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_58
    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->complete()V

    goto :goto_4a
.end method

.method private updateClientNumView()V
    .registers 6

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 372
    const v2, 0x7f090046

    .line 371
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 372
    iget v3, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mClientNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 371
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mConnectedDevNumberView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 338
    packed-switch p1, :pswitch_data_22

    .line 337
    :goto_5
    return-void

    .line 340
    :pswitch_6
    if-eq p2, v0, :cond_c

    .line 341
    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->complete()V

    goto :goto_5

    .line 343
    :cond_c
    invoke-static {p0}, Lcom/sonymobile/nfc/cta/CtaUtils;->isCtaSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 344
    const/4 v0, -0x2

    iput v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    goto :goto_5

    .line 347
    :cond_16
    iput v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    goto :goto_5

    .line 352
    :pswitch_19
    if-eq p2, v0, :cond_1f

    .line 353
    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->complete()V

    goto :goto_5

    .line 356
    :cond_1f
    iput v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    goto :goto_5

    .line 338
    :pswitch_data_22
    .packed-switch 0x3
        :pswitch_6
        :pswitch_19
    .end packed-switch
.end method

.method public onBackPressed()V
    .registers 1

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->complete()V

    .line 186
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 89
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    invoke-virtual {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0a0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 92
    const v1, 0x7f08000a

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->setTheme(I)V

    .line 95
    :cond_16
    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->initContentView()V

    .line 97
    invoke-static {p0, p0}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounterBuilder;->getInstance(Landroid/content/Context;Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter$Callback;)Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mCounter:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter;

    .line 99
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 100
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 101
    const-string/jumbo v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mCm:Landroid/net/ConnectivityManager;

    .line 103
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 104
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string/jumbo v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 109
    iput-boolean v3, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNfcEnabledByWifiTethering:Z

    .line 110
    iput v3, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mClientNum:I

    .line 88
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 181
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 182
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 180
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 206
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_12

    .line 211
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 208
    :pswitch_c
    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->complete()V

    .line 209
    const/4 v0, 0x1

    return v0

    .line 206
    nop

    :pswitch_data_12
    .packed-switch 0x102002c
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 163
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mCounter:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter;

    invoke-interface {v0}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter;->stop()V

    .line 161
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 199
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 200
    const-string/jumbo v0, "nfc_enabled_flag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNfcEnabledByWifiTethering:Z

    .line 201
    const-string/jumbo v0, "internal_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    .line 198
    return-void
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 138
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 140
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-eqz v1, :cond_36

    .line 146
    :cond_13
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 147
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 148
    iget v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    if-eq v1, v3, :cond_2a

    iget v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    if-ne v1, v2, :cond_2d

    .line 149
    :cond_2a
    const/4 v1, 0x0

    iput v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    .line 156
    :cond_2d
    :goto_2d
    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mCounter:Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter;

    invoke-interface {v1}, Lcom/sonymobile/nfc/wifitethering/WifiApClientCounter;->start()V

    .line 157
    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->nextStep()V

    .line 137
    return-void

    .line 141
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_36
    sget-boolean v1, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->DBG:Z

    if-eqz v1, :cond_43

    const-string/jumbo v1, "NfcWifiTethering"

    const-string/jumbo v2, "Could not resume activity since WRITE_SETTING is not granted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_43
    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->complete()V

    .line 143
    return-void

    .line 152
    .restart local v0    # "pm":Landroid/os/PowerManager;
    :cond_47
    iget v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    if-ne v1, v2, :cond_2d

    .line 153
    iput v3, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    goto :goto_2d
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 193
    const-string/jumbo v0, "nfc_enabled_flag"

    iget-boolean v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNfcEnabledByWifiTethering:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 194
    const-string/jumbo v0, "internal_state"

    iget v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    return-void
.end method

.method protected onStart()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNfcStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    new-array v2, v3, [Landroid/app/Activity;

    invoke-virtual {v1, v4, p0, v2}, Landroid/nfc/NfcAdapter;->setNdefPushMessage(Landroid/nfc/NdefMessage;Landroid/app/Activity;[Landroid/app/Activity;)V

    .line 123
    new-instance v1, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$OnStartTetheringCallback;

    invoke-direct {v1, p0, v4}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$OnStartTetheringCallback;-><init>(Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$OnStartTetheringCallback;)V

    iput-object v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mStartTetheringCallback:Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$OnStartTetheringCallback;

    .line 125
    iget-object v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v1

    if-nez v1, :cond_32

    .line 126
    const/4 v1, -0x4

    iput v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    .line 133
    :goto_2e
    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->updateClientNumView()V

    .line 114
    return-void

    .line 127
    :cond_32
    invoke-static {p0}, Lcom/sonymobile/nfc/cta/CtaUtils;->isCtaSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 128
    const/4 v1, -0x2

    iput v1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    goto :goto_2e

    .line 130
    :cond_3c
    iput v3, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mState:I

    goto :goto_2e
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 168
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 169
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNfcStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mStartTetheringCallback:Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering$OnStartTetheringCallback;

    .line 172
    invoke-virtual {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_26

    iget-boolean v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNfcEnabledByWifiTethering:Z

    if-eqz v0, :cond_26

    .line 173
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_26

    .line 174
    iget-object v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mNfcEnabledByWifiTethering:Z

    .line 167
    :cond_26
    return-void
.end method

.method public onUpdateClientNum(I)V
    .registers 2
    .param p1, "num"    # I

    .prologue
    .line 366
    iput p1, p0, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->mClientNum:I

    .line 367
    invoke-direct {p0}, Lcom/sonymobile/nfc/wifitethering/NfcWifiTethering;->updateClientNumView()V

    .line 365
    return-void
.end method

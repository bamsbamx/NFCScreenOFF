.class public Lcom/sonymobile/nfc/cta/CtaUtils;
.super Ljava/lang/Object;
.source "CtaUtils.java"


# static fields
.field private static final ACTION_WHITELIST_DEVICE:Ljava/lang/String; = "android.btopp.intent.action.WHITELIST_DEVICE"

.field private static final CTA_PACKAGE:Ljava/lang/String; = "com.sonymobile.cta"

.field static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "CtaUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 22
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
    sput-boolean v0, Lcom/sonymobile/nfc/cta/CtaUtils;->DBG:Z

    .line 20
    return-void

    .line 22
    :cond_17
    const/4 v0, 0x1

    goto :goto_14
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCtaSupported(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-string/jumbo v0, "com.sonymobile.cta"

    invoke-static {p0, v0}, Lcom/sonymobile/nfc/cta/CtaUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-boolean v3, Lcom/sonymobile/nfc/cta/CtaUtils;->DBG:Z

    if-eqz v3, :cond_1e

    const-string/jumbo v3, "CtaUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPackageInstalled() packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_1e
    const/4 v1, 0x0

    .line 37
    .local v1, "isPackageInstalled":Z
    if-eqz p0, :cond_23

    if-nez p1, :cond_24

    .line 38
    :cond_23
    return v1

    .line 42
    :cond_24
    :try_start_24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 43
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_2f

    .line 44
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_24 .. :try_end_2e} :catch_4e

    .line 45
    const/4 v1, 0x1

    .line 51
    .end local v2    # "packageManager":Landroid/content/pm/PackageManager;
    :cond_2f
    :goto_2f
    sget-boolean v3, Lcom/sonymobile/nfc/cta/CtaUtils;->DBG:Z

    if-eqz v3, :cond_4d

    const-string/jumbo v3, "CtaUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPackageInstalled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_4d
    return v1

    .line 47
    :catch_4e
    move-exception v0

    .line 48
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v3, Lcom/sonymobile/nfc/cta/CtaUtils;->DBG:Z

    if-eqz v3, :cond_2f

    const-string/jumbo v3, "CtaUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "package not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method public static showCtaDialogWithMessage(Landroid/content/Context;Landroid/os/Messenger;ILandroid/os/Message;Landroid/content/Intent;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "type"    # I
    .param p3, "msg"    # Landroid/os/Message;
    .param p4, "extraIntent"    # Landroid/content/Intent;

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonymobile/nfc/cta/CtaHandoverDialog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonymobile.nfc.cta.EXTRA_HANDOVER_TYPE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 61
    const-string/jumbo v1, "com.sonymobile.nfc.cta.EXTRA_DENIED_MESSAGE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 62
    const-string/jumbo v1, "com.sonymobile.nfc.cta.EXTRA_HANDOVER_MESSENGER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 63
    const-string/jumbo v1, "com.sonymobile.nfc.cta.EXTRA_HANDOVER_INTENT"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 64
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 57
    return-void
.end method

.method public static showCtaDialogWithMessage(Landroid/content/Context;Landroid/os/Messenger;ILandroid/os/Message;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "messenger"    # Landroid/os/Messenger;
    .param p2, "type"    # I
    .param p3, "msg"    # Landroid/os/Message;
    .param p4, "extraIntent"    # Landroid/content/Intent;
    .param p5, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 72
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.btopp.intent.action.WHITELIST_DEVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "whiteListIntent":Landroid/content/Intent;
    const-string/jumbo v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 75
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sonymobile/nfc/cta/CtaHandoverDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.sonymobile.nfc.cta.EXTRA_HANDOVER_TYPE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    const-string/jumbo v2, "com.sonymobile.nfc.cta.EXTRA_DENIED_MESSAGE"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 78
    const-string/jumbo v2, "com.sonymobile.nfc.cta.EXTRA_HANDOVER_MESSENGER"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 79
    const-string/jumbo v2, "com.sonymobile.nfc.cta.EXTRA_HANDOVER_INTENT"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 80
    const-string/jumbo v2, "com.sonymobile.nfc.cta.EXTRA_BROADCAST_INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 81
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 70
    return-void
.end method

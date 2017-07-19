.class Lcom/android/nfc/NfcService$NfcLockExtension;
.super Ljava/lang/Object;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NfcLockExtension"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/NfcService$NfcLockExtension$1;
    }
.end annotation


# static fields
.field static final NFC_LOCK_PACKAGE:Ljava/lang/String; = "com.sonymobile.nfclock"

.field static final NFC_LOCK_SERVICE:Ljava/lang/String; = "com.sonymobile.nfclock.NfcLockService"

.field static final TAG:Ljava/lang/String; = "NfcLockExtension"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/nfc/NfcService$NfcLockExtension;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcLockExtension;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 1607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1593
    new-instance v0, Lcom/android/nfc/NfcService$NfcLockExtension$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/NfcService$NfcLockExtension$1;-><init>(Lcom/android/nfc/NfcService$NfcLockExtension;)V

    iput-object v0, p0, Lcom/android/nfc/NfcService$NfcLockExtension;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1608
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcLockExtension;->mContext:Landroid/content/Context;

    .line 1610
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1611
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1612
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcLockExtension;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/nfc/NfcService$NfcLockExtension;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1607
    return-void
.end method

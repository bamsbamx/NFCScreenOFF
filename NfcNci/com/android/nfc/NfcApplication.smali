.class public Lcom/android/nfc/NfcApplication;
.super Landroid/app/Application;
.source "NfcApplication.java"


# static fields
.field static final NFC_PROCESS:Ljava/lang/String; = "com.android.nfc"

.field static final TAG:Ljava/lang/String; = "NfcApplication"


# instance fields
.field mNfcService:Lcom/android/nfc/NfcService;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method private hasNfcFeature()Z
    .registers 4

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/nfc/NfcApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 77
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-nez v0, :cond_11

    .line 78
    const-string/jumbo v1, "NfcApplication"

    const-string/jumbo v2, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    const/4 v1, 0x0

    return v1

    .line 81
    :cond_11
    const-string/jumbo v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public onCreate()V
    .registers 8

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 49
    invoke-direct {p0}, Lcom/android/nfc/NfcApplication;->hasNfcFeature()Z

    move-result v5

    if-nez v5, :cond_13

    .line 50
    const-string/jumbo v5, "NfcApplication"

    const-string/jumbo v6, "NFC feature is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    return-void

    .line 54
    :cond_13
    const/4 v3, 0x0

    .line 60
    .local v3, "isMainProcess":Z
    const-string/jumbo v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/nfc/NfcApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 61
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 62
    .local v4, "processes":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 63
    .local v2, "i":Ljava/util/Iterator;
    :cond_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 65
    .local v1, "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-ne v5, v6, :cond_25

    .line 66
    const-string/jumbo v5, "com.android.nfc"

    iget-object v6, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 70
    .end local v1    # "appInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "isMainProcess":Z
    :cond_42
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    if-nez v5, :cond_51

    if-eqz v3, :cond_51

    .line 71
    new-instance v5, Lcom/android/nfc/NfcService;

    invoke-direct {v5, p0}, Lcom/android/nfc/NfcService;-><init>(Landroid/app/Application;)V

    iput-object v5, p0, Lcom/android/nfc/NfcApplication;->mNfcService:Lcom/android/nfc/NfcService;

    .line 46
    :cond_51
    return-void
.end method

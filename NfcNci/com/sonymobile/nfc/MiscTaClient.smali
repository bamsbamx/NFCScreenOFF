.class public Lcom/sonymobile/nfc/MiscTaClient;
.super Ljava/lang/Object;
.source "MiscTaClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/MiscTaClient$1;
    }
.end annotation


# static fields
.field private static final BIND_TIMEOUT:I = 0x3a98

.field private static final DBG:Z = false

.field private static final MISCTA_SERVICE_CLASS:Ljava/lang/String; = "com.sonyericsson.android.bootinfo.MiscTaService"

.field private static final MISCTA_SERVICE_NAME:Ljava/lang/String; = "com.sonyericsson.android.bootinfoif.IMiscTaService"

.field private static final MISCTA_SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.sonyericsson.android.bootinfo"

.field public static final NFC_CHIP_FW_VERSION_ID:I = 0x1359

.field public static final NFC_CHIP_FW_VERSION_VAL_LENGTH:I = 0x3

.field public static final NFC_FW_ID:I = 0x1358

.field public static final NFC_FW_VAL_ERR_CHIP_BROKEN_AFTER:[B

.field public static final NFC_FW_VAL_ERR_CHIP_BROKEN_BEFORE:[B

.field public static final NFC_FW_VAL_ERR_DEGRADE_MODE:[B

.field public static final NFC_FW_VAL_ERR_FIRST_DEGRADE_MODE:[B

.field public static final NFC_FW_VAL_ERR_LOW_BATTERY:[B

.field public static final NFC_FW_VAL_ERR_UNRECOVERABLE:[B

.field public static final NFC_FW_VAL_SUCCESS:[B

.field private static final TAG:Ljava/lang/String; = "MiscTaClient"


# instance fields
.field private final mApplicationContext:Landroid/content/Context;

.field private final mConditionVariable:Landroid/os/ConditionVariable;

.field private mMiscTaService:Lcom/sonyericsson/android/bootinfoif/IMiscTaService;

.field private final mMiscTaServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0(Lcom/sonymobile/nfc/MiscTaClient;)Landroid/os/ConditionVariable;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/MiscTaClient;->mConditionVariable:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonymobile/nfc/MiscTaClient;Lcom/sonyericsson/android/bootinfoif/IMiscTaService;)Lcom/sonyericsson/android/bootinfoif/IMiscTaService;
    .registers 2

    iput-object p1, p0, Lcom/sonymobile/nfc/MiscTaClient;->mMiscTaService:Lcom/sonyericsson/android/bootinfoif/IMiscTaService;

    return-object p1
.end method

.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x3

    .line 43
    new-array v0, v1, [B

    fill-array-data v0, :array_34

    sput-object v0, Lcom/sonymobile/nfc/MiscTaClient;->NFC_FW_VAL_SUCCESS:[B

    .line 44
    new-array v0, v1, [B

    fill-array-data v0, :array_3a

    sput-object v0, Lcom/sonymobile/nfc/MiscTaClient;->NFC_FW_VAL_ERR_CHIP_BROKEN_BEFORE:[B

    .line 45
    new-array v0, v1, [B

    fill-array-data v0, :array_40

    sput-object v0, Lcom/sonymobile/nfc/MiscTaClient;->NFC_FW_VAL_ERR_LOW_BATTERY:[B

    .line 46
    new-array v0, v1, [B

    fill-array-data v0, :array_46

    sput-object v0, Lcom/sonymobile/nfc/MiscTaClient;->NFC_FW_VAL_ERR_UNRECOVERABLE:[B

    .line 47
    new-array v0, v1, [B

    fill-array-data v0, :array_4c

    sput-object v0, Lcom/sonymobile/nfc/MiscTaClient;->NFC_FW_VAL_ERR_DEGRADE_MODE:[B

    .line 48
    new-array v0, v1, [B

    fill-array-data v0, :array_52

    sput-object v0, Lcom/sonymobile/nfc/MiscTaClient;->NFC_FW_VAL_ERR_CHIP_BROKEN_AFTER:[B

    .line 49
    new-array v0, v1, [B

    fill-array-data v0, :array_58

    sput-object v0, Lcom/sonymobile/nfc/MiscTaClient;->NFC_FW_VAL_ERR_FIRST_DEGRADE_MODE:[B

    .line 30
    return-void

    .line 43
    nop

    :array_34
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 44
    :array_3a
    .array-data 1
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 45
    :array_40
    .array-data 1
        0x0t
        0x0t
        0x2t
    .end array-data

    .line 46
    :array_46
    .array-data 1
        0x0t
        0x0t
        0x4t
    .end array-data

    .line 47
    :array_4c
    .array-data 1
        0x0t
        0x0t
        0x5t
    .end array-data

    .line 48
    :array_52
    .array-data 1
        0x0t
        0x0t
        0x6t
    .end array-data

    .line 49
    :array_58
    .array-data 1
        0x0t
        0x0t
        0x7t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/nfc/MiscTaClient;->mMiscTaService:Lcom/sonyericsson/android/bootinfoif/IMiscTaService;

    .line 56
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/nfc/MiscTaClient;->mConditionVariable:Landroid/os/ConditionVariable;

    .line 57
    new-instance v0, Lcom/sonymobile/nfc/MiscTaClient$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/nfc/MiscTaClient$1;-><init>(Lcom/sonymobile/nfc/MiscTaClient;)V

    iput-object v0, p0, Lcom/sonymobile/nfc/MiscTaClient;->mMiscTaServiceConnection:Landroid/content/ServiceConnection;

    .line 76
    iput-object p1, p0, Lcom/sonymobile/nfc/MiscTaClient;->mApplicationContext:Landroid/content/Context;

    .line 75
    return-void
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .registers 5
    .param p0, "data"    # [B

    .prologue
    const/4 v2, 0x0

    .line 146
    if-nez p0, :cond_4

    .line 147
    return-object v2

    .line 149
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 150
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_d
    array-length v2, p0

    if-ge v0, v2, :cond_25

    .line 151
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit16 v2, v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 153
    :cond_25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public close()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/sonymobile/nfc/MiscTaClient;->mMiscTaService:Lcom/sonyericsson/android/bootinfoif/IMiscTaService;

    if-eqz v0, :cond_e

    .line 104
    iget-object v0, p0, Lcom/sonymobile/nfc/MiscTaClient;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonymobile/nfc/MiscTaClient;->mMiscTaServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 105
    iput-object v2, p0, Lcom/sonymobile/nfc/MiscTaClient;->mMiscTaService:Lcom/sonyericsson/android/bootinfoif/IMiscTaService;

    .line 101
    :cond_e
    return-void
.end method

.method public open()Z
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonyericsson.android.bootinfoif.IMiscTaService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "miscTaServiceIntent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.sonyericsson.android.bootinfo"

    .line 83
    const-string/jumbo v4, "com.sonyericsson.android.bootinfo.MiscTaService"

    .line 82
    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 84
    iget-object v2, p0, Lcom/sonymobile/nfc/MiscTaClient;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 86
    iget-object v2, p0, Lcom/sonymobile/nfc/MiscTaClient;->mApplicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sonymobile/nfc/MiscTaClient;->mMiscTaServiceConnection:Landroid/content/ServiceConnection;

    .line 87
    const/4 v4, 0x1

    .line 86
    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 94
    iget-object v2, p0, Lcom/sonymobile/nfc/MiscTaClient;->mConditionVariable:Landroid/os/ConditionVariable;

    const-wide/16 v4, 0x3a98

    invoke-virtual {v2, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v1

    .line 95
    .local v1, "result":Z
    if-eqz v1, :cond_3a

    .line 96
    iget-object v2, p0, Lcom/sonymobile/nfc/MiscTaClient;->mConditionVariable:Landroid/os/ConditionVariable;

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->close()V

    .line 98
    :cond_3a
    return v1

    .line 89
    .end local v1    # "result":Z
    :cond_3b
    const-string/jumbo v2, "MiscTaClient"

    const-string/jumbo v3, "Failed to bind service com.sonyericsson.android.bootinfoif.IMiscTaService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v5
.end method

.method public readUnit(I)[B
    .registers 8
    .param p1, "unitId"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, "data":[B
    const/4 v3, 0x1

    :try_start_2
    new-array v2, v3, [I

    .line 114
    .local v2, "result":[I
    iget-object v3, p0, Lcom/sonymobile/nfc/MiscTaClient;->mMiscTaService:Lcom/sonyericsson/android/bootinfoif/IMiscTaService;

    invoke-interface {v3, p1, v2}, Lcom/sonyericsson/android/bootinfoif/IMiscTaService;->readUnit(I[I)[B

    move-result-object v0

    .line 115
    .local v0, "data":[B
    const/4 v3, 0x0

    aget v3, v2, v3

    if-gez v3, :cond_2a

    .line 116
    const-string/jumbo v3, "MiscTaClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Error when reading from MiscTA: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_29} :catch_2b

    .line 117
    const/4 v0, 0x0

    .line 123
    .end local v0    # "data":[B
    .end local v2    # "result":[I
    :cond_2a
    :goto_2a
    return-object v0

    .line 119
    :catch_2b
    move-exception v1

    .line 120
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "MiscTaClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Access to Misc TA service for reading failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v0, 0x0

    .local v0, "data":[B
    goto :goto_2a
.end method

.method public writeUnit(I[B)Z
    .registers 8
    .param p1, "unitId"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 130
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/nfc/MiscTaClient;->mMiscTaService:Lcom/sonyericsson/android/bootinfoif/IMiscTaService;

    invoke-interface {v1, p1, p2}, Lcom/sonyericsson/android/bootinfoif/IMiscTaService;->writeUnit(I[B)I

    move-result v1

    if-gez v1, :cond_24

    .line 131
    const-string/jumbo v1, "MiscTaClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error when writing to MiscTA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v4

    .line 134
    :cond_24
    iget-object v1, p0, Lcom/sonymobile/nfc/MiscTaClient;->mMiscTaService:Lcom/sonyericsson/android/bootinfoif/IMiscTaService;

    invoke-interface {v1}, Lcom/sonyericsson/android/bootinfoif/IMiscTaService;->writeFlush()I

    move-result v1

    if-gez v1, :cond_63

    .line 135
    const-string/jumbo v1, "MiscTaClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error when flushing MiscTA: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_46} :catch_47

    .line 136
    return v4

    .line 138
    :catch_47
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "MiscTaClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Access to Misc TA service for writing failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v4

    .line 142
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_63
    const/4 v1, 0x1

    return v1
.end method

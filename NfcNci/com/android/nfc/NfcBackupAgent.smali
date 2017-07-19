.class public Lcom/android/nfc/NfcBackupAgent;
.super Landroid/app/backup/BackupAgent;
.source "NfcBackupAgent.java"


# static fields
.field private static final DBG:Z = false

.field static final SHARED_PREFS_BACKUP_KEY:Ljava/lang/String; = "shared_prefs"

.field private static final TAG:Ljava/lang/String; = "NfcBackupAgent"


# instance fields
.field mDispatcher:Landroid/app/backup/BackupHelperDispatcher;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/backup/BackupAgent;-><init>()V

    .line 40
    new-instance v0, Landroid/app/backup/BackupHelperDispatcher;

    invoke-direct {v0}, Landroid/app/backup/BackupHelperDispatcher;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcBackupAgent;->mDispatcher:Landroid/app/backup/BackupHelperDispatcher;

    .line 33
    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->excludeInvalidPrefs()V

    .line 54
    iget-object v0, p0, Lcom/android/nfc/NfcBackupAgent;->mDispatcher:Landroid/app/backup/BackupHelperDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupHelperDispatcher;->performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 51
    return-void
.end method

.method public onCreate()V
    .registers 5

    .prologue
    .line 45
    new-instance v0, Landroid/app/backup/SharedPreferencesBackupHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "NfcServicePrefs"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {v0, p0, v1}, Landroid/app/backup/SharedPreferencesBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 46
    .local v0, "helper":Landroid/app/backup/SharedPreferencesBackupHelper;
    iget-object v1, p0, Lcom/android/nfc/NfcBackupAgent;->mDispatcher:Landroid/app/backup/BackupHelperDispatcher;

    const-string/jumbo v2, "shared_prefs"

    invoke-virtual {v1, v2, v0}, Landroid/app/backup/BackupHelperDispatcher;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 43
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .registers 5
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/nfc/NfcBackupAgent;->mDispatcher:Landroid/app/backup/BackupHelperDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/backup/BackupHelperDispatcher;->performRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 59
    return-void
.end method

.method public onRestoreFinished()V
    .registers 2

    .prologue
    .line 67
    invoke-static {}, Lcom/android/nfc/NfcService;->getInstance()Lcom/android/nfc/NfcService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/nfc/NfcService;->excludeInvalidPrefs()V

    .line 65
    return-void
.end method

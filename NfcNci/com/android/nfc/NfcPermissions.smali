.class public Lcom/android/nfc/NfcPermissions;
.super Ljava/lang/Object;
.source "NfcPermissions.java"


# static fields
.field static final ADMIN_PERM:Ljava/lang/String; = "android.permission.WRITE_SECURE_SETTINGS"

.field static final ADMIN_PERM_ERROR:Ljava/lang/String; = "WRITE_SECURE_SETTINGS permission required"

.field static final NFC_PERMISSION:Ljava/lang/String; = "android.permission.NFC"

.field private static final NFC_PERM_ERROR:Ljava/lang/String; = "NFC permission required"

.field public static final NFC_SECURE_SETTING_PERM:Ljava/lang/String; = "com.sonymobile.nfc.permission.NFC_SECURE_SETTING"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enforceAdminPermissions(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const-string/jumbo v0, "android.permission.WRITE_SECURE_SETTINGS"

    const-string/jumbo v1, "WRITE_SECURE_SETTINGS permission required"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static enforceUserPermissions(Landroid/content/Context;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const-string/jumbo v0, "android.permission.NFC"

    const-string/jumbo v1, "NFC permission required"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static validateUserId(I)V
    .registers 3
    .param p0, "userId"    # I

    .prologue
    .line 34
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq p0, v0, :cond_f

    .line 35
    new-instance v0, Ljava/lang/SecurityException;

    const-string/jumbo v1, "userId passed in is not the calling user."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_f
    return-void
.end method

.class public Lcom/sonymobile/nfc/NfcCertDebugModeUtil;
.super Ljava/lang/Object;
.source "NfcCertDebugModeUtil.java"


# static fields
.field private static final DBG:Z

.field private static final SYS_PROP_HCE:Ljava/lang/String; = "persist.sys.nfc.cert.hce"

.field private static final SYS_PROP_HCE_TYPE:Ljava/lang/String; = "persist.sys.nfc.cert.hce.type"

.field private static final SYS_PROP_UICC:Ljava/lang/String; = "persist.sys.nfc.cert.uicc"

.field private static final TECH_TYPE_A:I = 0x1

.field private static final TECH_TYPE_B:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/sonymobile/nfc/NfcCertDebugModeUtil;->DBG:Z

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCeTechnologyType()I
    .registers 2

    .prologue
    .line 30
    const-string/jumbo v0, "persist.sys.nfc.cert.hce.type"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static isHceDebugMode()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 26
    sget-boolean v1, Lcom/sonymobile/nfc/NfcCertDebugModeUtil;->DBG:Z

    if-eqz v1, :cond_c

    const-string/jumbo v1, "persist.sys.nfc.cert.hce"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_c
    return v0
.end method

.method public static isUiccDebugMode()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 22
    sget-boolean v1, Lcom/sonymobile/nfc/NfcCertDebugModeUtil;->DBG:Z

    if-eqz v1, :cond_c

    const-string/jumbo v1, "persist.sys.nfc.cert.uicc"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_c
    return v0
.end method

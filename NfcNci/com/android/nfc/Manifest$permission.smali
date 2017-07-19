.class public final Lcom/android/nfc/Manifest$permission;
.super Ljava/lang/Object;
.source "Manifest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/Manifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "permission"
.end annotation


# static fields
.field public static final ACCESS_LISTEN_MODE:Ljava/lang/String; = "com.sonymobile.nfc.permission.ACCESS_LISTEN_MODE"

.field public static final NDEF_PUSH_STATE_CHANGED:Ljava/lang/String; = "com.sonymobile.nfc.permission.NDEF_PUSH_STATE_CHANGED"

.field public static final NFC_PRIVATE:Ljava/lang/String; = "com.sonymobile.nfc.permission.NFC_PRIVATE"

.field public static final NFC_SECURE_SETTING:Ljava/lang/String; = "com.sonymobile.nfc.permission.NFC_SECURE_SETTING"

.field public static final TRANSACTION_EVENT:Ljava/lang/String; = "com.gsma.services.nfc.permission.TRANSACTION_EVENT"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

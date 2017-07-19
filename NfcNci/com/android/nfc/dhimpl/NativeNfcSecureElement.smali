.class public Lcom/android/nfc/dhimpl/NativeNfcSecureElement;
.super Ljava/lang/Object;
.source "NativeNfcSecureElement.java"


# static fields
.field static final PREF_SE_WIRED:Ljava/lang/String; = "se_wired"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mPrefs:Landroid/content/SharedPreferences;

.field mPrefsEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->mContext:Landroid/content/Context;

    .line 59
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "NciDeviceHost"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->mPrefs:Landroid/content/SharedPreferences;

    .line 60
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 56
    return-void
.end method

.method private native doNativeDisconnectSecureElementConnection(I)Z
.end method

.method private native doNativeOpenSecureElementConnection()I
.end method


# virtual methods
.method public doDisconnect(I)Z
    .registers 5
    .param p1, "handle"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "se_wired"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 76
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 78
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doNativeDisconnectSecureElementConnection(I)Z

    move-result v0

    return v0
.end method

.method public native doGetTechList(I)[I
.end method

.method public native doGetUid(I)[B
.end method

.method public doOpenSecureElementConnection()I
    .registers 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "se_wired"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 67
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 69
    invoke-direct {p0}, Lcom/android/nfc/dhimpl/NativeNfcSecureElement;->doNativeOpenSecureElementConnection()I

    move-result v0

    return v0
.end method

.method public native doTransceive(I[B)[B
.end method

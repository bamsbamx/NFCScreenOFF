.class Lcom/android/nfc/NfcDispatcher$DispatchInfo;
.super Ljava/lang/Object;
.source "NfcDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DispatchInfo"
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field public final intent:Landroid/content/Intent;

.field final ndefMimeType:Ljava/lang/String;

.field final ndefUri:Landroid/net/Uri;

.field final packageManager:Landroid/content/pm/PackageManager;

.field final rootIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/nfc/Tag;Landroid/nfc/NdefMessage;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tag"    # Landroid/nfc/Tag;
    .param p3, "message"    # Landroid/nfc/NdefMessage;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    .line 183
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string/jumbo v1, "android.nfc.extra.TAG"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 184
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string/jumbo v1, "android.nfc.extra.ID"

    invoke-virtual {p2}, Landroid/nfc/Tag;->getId()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 185
    if-eqz p3, :cond_6b

    .line 186
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string/jumbo v1, "android.nfc.extra.NDEF_MESSAGES"

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/nfc/NdefMessage;

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 187
    invoke-virtual {p3}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->toUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    .line 188
    invoke-virtual {p3}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-virtual {v0}, Landroid/nfc/NdefRecord;->toMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefMimeType:Ljava/lang/String;

    .line 194
    :goto_47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/nfc/NfcRootActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    .line 195
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    const-string/jumbo v1, "launchIntent"

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 196
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 198
    iput-object p1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->context:Landroid/content/Context;

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->packageManager:Landroid/content/pm/PackageManager;

    .line 181
    return-void

    .line 190
    :cond_6b
    iput-object v4, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    .line 191
    iput-object v4, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefMimeType:Ljava/lang/String;

    goto :goto_47
.end method


# virtual methods
.method public setNdefIntent()Landroid/content/Intent;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 203
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string/jumbo v1, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    if-eqz v0, :cond_17

    .line 205
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 206
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    return-object v0

    .line 207
    :cond_17
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefMimeType:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 208
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    return-object v0

    .line 211
    :cond_25
    return-object v2
.end method

.method public setTagIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 222
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 223
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 224
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string/jumbo v1, "android.nfc.action.TAG_DISCOVERED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method public setTechIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 216
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    const-string/jumbo v1, "android.nfc.action.TECH_DISCOVERED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iget-object v0, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    return-object v0
.end method

.method tryStartActivity()Z
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 241
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    .line 242
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 241
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 243
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1e

    .line 244
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 245
    const/4 v1, 0x1

    return v1

    .line 247
    :cond_1e
    return v4
.end method

.method tryStartActivity(Landroid/content/Intent;)Z
    .registers 6
    .param p1, "intentToStart"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 251
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->packageManager:Landroid/content/pm/PackageManager;

    .line 252
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 251
    invoke-virtual {v1, p1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 253
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_24

    .line 254
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    const-string/jumbo v2, "launchIntent"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 255
    iget-object v1, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->rootIntent:Landroid/content/Intent;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 256
    const/4 v1, 0x1

    return v1

    .line 258
    :cond_24
    return v3
.end method

.method tryStartUrlConfirmActivity()Z
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 262
    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    .line 263
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    .line 262
    invoke-virtual {v3, v4, v6, v5}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    .line 267
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->context:Landroid/content/Context;

    const-string/jumbo v4, "NfcServiceExtraPrefs"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 269
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    if-eqz v3, :cond_6d

    .line 270
    const-string/jumbo v3, "show_url_dialog"

    .line 269
    invoke-interface {v1, v3, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 271
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->context:Landroid/content/Context;

    const-class v4, Lcom/sonymobile/nfc/UrlConfirmationDialog;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    .local v2, "urlConfirmIntent":Landroid/content/Intent;
    const-string/jumbo v3, "launchUri"

    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->ndefUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 273
    const-string/jumbo v3, "launchIntent"

    iget-object v4, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 274
    const v3, 0x10008000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 280
    .end local v2    # "urlConfirmIntent":Landroid/content/Intent;
    :goto_43
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6f

    if-eqz v2, :cond_6f

    .line 281
    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->context:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.sonymobile.intent.action.NFC_NEW_CONFIRMATION_DIALOG"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    const-string/jumbo v5, "class.name"

    .line 283
    const-class v6, Lcom/sonymobile/nfc/UrlConfirmationDialog;

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    .line 281
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 284
    iget-object v3, p0, Lcom/android/nfc/NfcDispatcher$DispatchInfo;->context:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 285
    return v7

    .line 277
    :cond_6d
    const/4 v2, 0x0

    .local v2, "urlConfirmIntent":Landroid/content/Intent;
    goto :goto_43

    .line 287
    .end local v2    # "urlConfirmIntent":Landroid/content/Intent;
    :cond_6f
    return v6
.end method

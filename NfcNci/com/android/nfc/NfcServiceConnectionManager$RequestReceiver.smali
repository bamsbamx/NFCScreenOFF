.class Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NfcServiceConnectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/NfcServiceConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestReceiver"
.end annotation


# static fields
.field private static final ACTION_SERVICE_CONNECTION_REQUEST:Ljava/lang/String; = "com.sonymobile.nfc.action.SERVICE_CONNECTION_REQUEST"

.field private static final ACTION_SERVICE_CONNECTION_RESPONSE:Ljava/lang/String; = "com.sonymobile.nfc.action.SERVICE_CONNECTION_RESPONSE"

.field private static final DBG:Z

.field private static final EXTRA_SERVICE_CONNECTION_BINDER:Ljava/lang/String; = "com.sonymobile.nfc.action.SERVICE_CONNECTION_BINDER"

.field private static final EXTRA_SERVICE_CONNECTION_KEY:Ljava/lang/String; = "com.sonymobile.nfc.action.SERVICE_CONNECTION_KEY"

.field private static final EXTRA_SERVICE_CONNECTION_REQUESTER:Ljava/lang/String; = "com.sonymobile.nfc.action.SERVICE_CONNECTION_REQUESTER"

.field private static final TAG:Ljava/lang/String; = "NfcServiceConnectionManager"


# instance fields
.field private final mMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 128
    invoke-static {}, Lcom/android/nfc/NfcServiceConnectionManager;->-get0()Z

    move-result v0

    sput-boolean v0, Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;->DBG:Z

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/os/UserHandle;)V
    .registers 3
    .param p1, "handle"    # Landroid/os/UserHandle;

    .prologue
    .line 145
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 146
    iput-object p1, p0, Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;->mUserHandle:Landroid/os/UserHandle;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;->mMaps:Ljava/util/HashMap;

    .line 145
    return-void
.end method

.method private onRequest(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 167
    const-string/jumbo v3, "com.sonymobile.nfc.action.SERVICE_CONNECTION_KEY"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v3, "com.sonymobile.nfc.action.SERVICE_CONNECTION_REQUESTER"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "packageName":Ljava/lang/String;
    sget-boolean v3, Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;->DBG:Z

    if-eqz v3, :cond_37

    const-string/jumbo v3, "NfcServiceConnectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", package = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_37
    if-eqz v1, :cond_3b

    if-nez v2, :cond_45

    .line 172
    :cond_3b
    const-string/jumbo v3, "NfcServiceConnectionManager"

    const-string/jumbo v4, "Illegal format. key and package name must be specified."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return-void

    .line 176
    :cond_45
    iget-object v3, p0, Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;->mMaps:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 177
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_6a

    .line 178
    const-string/jumbo v3, "NfcServiceConnectionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No binder found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 182
    :cond_6a
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;->sendResponse(Landroid/content/Context;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method private sendResponse(Landroid/content/Context;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "binder"    # Landroid/os/IBinder;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.nfc.action.SERVICE_CONNECTION_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonymobile.nfc.action.SERVICE_CONNECTION_KEY"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    const-string/jumbo v1, "com.sonymobile.nfc.action.SERVICE_CONNECTION_BINDER"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    .line 189
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    iget-object v1, p0, Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 185
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;->mMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 152
    const-string/jumbo v0, "NfcServiceConnectionManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Already exist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 155
    :cond_23
    iget-object v0, p0, Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;->mMaps:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 160
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.sonymobile.nfc.action.SERVICE_CONNECTION_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 161
    sget-boolean v0, Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;->DBG:Z

    if-eqz v0, :cond_1a

    const-string/jumbo v0, "NfcServiceConnectionManager"

    const-string/jumbo v1, "ACTION_SERVICE_CONNECTION_REQUEST"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1a
    invoke-direct {p0, p1, p2}, Lcom/android/nfc/NfcServiceConnectionManager$RequestReceiver;->onRequest(Landroid/content/Context;Landroid/content/Intent;)V

    .line 159
    :cond_1d
    return-void
.end method

.class final Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PreferredServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/PreferredServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/cardemulation/PreferredServices;


# direct methods
.method public constructor <init>(Lcom/android/nfc/cardemulation/PreferredServices;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/PreferredServices;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;->this$0:Lcom/android/nfc/cardemulation/PreferredServices;

    .line 120
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 119
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 6
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 129
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 130
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;->this$0:Lcom/android/nfc/cardemulation/PreferredServices;

    iget-object v1, v1, Lcom/android/nfc/cardemulation/PreferredServices;->mAidCache:Lcom/android/nfc/cardemulation/RegisteredAidCache;

    iget-object v2, p0, Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;->this$0:Lcom/android/nfc/cardemulation/PreferredServices;

    iget-object v2, v2, Lcom/android/nfc/cardemulation/PreferredServices;->mServiceCache:Lcom/android/nfc/cardemulation/RegisteredServicesCache;

    invoke-virtual {v2, v0}, Lcom/android/nfc/cardemulation/RegisteredServicesCache;->getServices(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/nfc/cardemulation/RegisteredAidCache;->updateDisabledServices(ILjava/util/List;)V

    .line 131
    iget-object v1, p0, Lcom/android/nfc/cardemulation/PreferredServices$SettingsObserver;->this$0:Lcom/android/nfc/cardemulation/PreferredServices;

    invoke-virtual {v1, v0}, Lcom/android/nfc/cardemulation/PreferredServices;->loadDefaultsFromSettings(I)V

    .line 124
    return-void
.end method

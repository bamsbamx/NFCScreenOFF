.class Lcom/sonymobile/nfc/NfcNotificationManager$2;
.super Ljava/lang/Object;
.source "NfcNotificationManager.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/NfcNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/NfcNotificationManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/NfcNotificationManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/NfcNotificationManager;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/sonymobile/nfc/NfcNotificationManager$2;->this$0:Lcom/sonymobile/nfc/NfcNotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 154
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcNotificationManager$2;->this$0:Lcom/sonymobile/nfc/NfcNotificationManager;

    invoke-static {v2}, Lcom/sonymobile/nfc/NfcNotificationManager;->-get1(Lcom/sonymobile/nfc/NfcNotificationManager;)Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 156
    :try_start_7
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcNotificationManager$2;->this$0:Lcom/sonymobile/nfc/NfcNotificationManager;

    invoke-static {v2}, Lcom/sonymobile/nfc/NfcNotificationManager;->-get1(Lcom/sonymobile/nfc/NfcNotificationManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "id$iterator":Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 157
    .local v0, "id":I
    invoke-static {}, Lcom/sonymobile/nfc/NfcNotificationManager;->-get0()Z

    move-result v2

    if-eqz v2, :cond_4e

    const-string/jumbo v2, "NfcNotifcationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Updated: id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",lang="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_4e
    iget-object v2, p0, Lcom/sonymobile/nfc/NfcNotificationManager$2;->this$0:Lcom/sonymobile/nfc/NfcNotificationManager;

    invoke-static {v2, v0}, Lcom/sonymobile/nfc/NfcNotificationManager;->-wrap0(Lcom/sonymobile/nfc/NfcNotificationManager;I)Z
    :try_end_53
    .catchall {:try_start_7 .. :try_end_53} :catchall_54

    goto :goto_11

    .line 154
    .end local v0    # "id":I
    .end local v1    # "id$iterator":Ljava/util/Iterator;
    :catchall_54
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "id$iterator":Ljava/util/Iterator;
    :cond_57
    monitor-exit v3

    .line 153
    return-void
.end method

.method public onLowMemory()V
    .registers 1

    .prologue
    .line 164
    return-void
.end method

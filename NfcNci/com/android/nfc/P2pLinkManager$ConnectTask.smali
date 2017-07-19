.class final Lcom/android/nfc/P2pLinkManager$ConnectTask;
.super Landroid/os/AsyncTask;
.source "P2pLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/P2pLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ConnectTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/P2pLinkManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pLinkManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/P2pLinkManager;

    .prologue
    .line 716
    iput-object p1, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 732
    const/4 v2, 0x0

    .line 733
    .local v2, "needsHandover":Z
    const/4 v3, 0x0

    .line 734
    .local v3, "needsNdef":Z
    const/4 v6, 0x0

    .line 735
    .local v6, "success":Z
    const/4 v1, 0x0

    .line 736
    .local v1, "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    const/4 v5, 0x0

    .line 737
    .local v5, "snepClient":Lcom/android/nfc/snep/SnepClient;
    const/4 v4, 0x0

    .line 739
    .local v4, "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v8

    .line 740
    :try_start_9
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v7, v7, Lcom/android/nfc/P2pLinkManager;->mUrisToSend:[Landroid/net/Uri;

    if-eqz v7, :cond_10

    .line 741
    const/4 v2, 0x1

    .line 744
    :cond_10
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iget-object v7, v7, Lcom/android/nfc/P2pLinkManager;->mMessageToSend:Landroid/nfc/NdefMessage;
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_5c

    if-eqz v7, :cond_17

    .line 745
    const/4 v3, 0x1

    :cond_17
    monitor-exit v8

    .line 750
    if-eqz v2, :cond_23

    .line 751
    new-instance v1, Lcom/android/nfc/handover/HandoverClient;

    .end local v1    # "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    invoke-direct {v1}, Lcom/android/nfc/handover/HandoverClient;-><init>()V

    .line 753
    .local v1, "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    :try_start_1f
    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverClient;->connect()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_5f

    .line 754
    const/4 v6, 0x1

    .line 760
    .end local v1    # "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    :cond_23
    :goto_23
    if-nez v3, :cond_29

    if-eqz v2, :cond_3d

    if-nez v1, :cond_3d

    .line 761
    :cond_29
    new-instance v5, Lcom/android/nfc/snep/SnepClient;

    .end local v5    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    invoke-direct {v5}, Lcom/android/nfc/snep/SnepClient;-><init>()V

    .line 763
    .local v5, "snepClient":Lcom/android/nfc/snep/SnepClient;
    :try_start_2e
    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepClient;->connect()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_62

    .line 764
    const/4 v6, 0x1

    .line 769
    .end local v5    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    :goto_32
    if-nez v6, :cond_3d

    .line 770
    new-instance v4, Lcom/android/nfc/ndefpush/NdefPushClient;

    .end local v4    # "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    invoke-direct {v4}, Lcom/android/nfc/ndefpush/NdefPushClient;-><init>()V

    .line 772
    .local v4, "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    :try_start_39
    invoke-virtual {v4}, Lcom/android/nfc/ndefpush/NdefPushClient;->connect()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_65

    .line 773
    const/4 v6, 0x1

    .line 780
    .end local v4    # "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    :cond_3d
    :goto_3d
    iget-object v8, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    monitor-enter v8

    .line 781
    :try_start_40
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_68

    .line 783
    if-eqz v1, :cond_4b

    .line 784
    invoke-virtual {v1}, Lcom/android/nfc/handover/HandoverClient;->close()V

    .line 786
    :cond_4b
    if-eqz v5, :cond_50

    .line 787
    invoke-virtual {v5}, Lcom/android/nfc/snep/SnepClient;->close()V

    .line 789
    :cond_50
    if-eqz v4, :cond_55

    .line 790
    invoke-virtual {v4}, Lcom/android/nfc/ndefpush/NdefPushClient;->close()V

    .line 792
    :cond_55
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_59
    .catchall {:try_start_40 .. :try_end_59} :catchall_7a

    move-result-object v7

    monitor-exit v8

    return-object v7

    .line 739
    .local v1, "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    .local v4, "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    .local v5, "snepClient":Lcom/android/nfc/snep/SnepClient;
    :catchall_5c
    move-exception v7

    monitor-exit v8

    throw v7

    .line 755
    .local v1, "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    :catch_5f
    move-exception v0

    .line 756
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    .local v1, "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    goto :goto_23

    .line 765
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "handoverClient":Lcom/android/nfc/handover/HandoverClient;
    .local v5, "snepClient":Lcom/android/nfc/snep/SnepClient;
    :catch_62
    move-exception v0

    .line 766
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v5, 0x0

    .local v5, "snepClient":Lcom/android/nfc/snep/SnepClient;
    goto :goto_32

    .line 774
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "snepClient":Lcom/android/nfc/snep/SnepClient;
    .local v4, "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    :catch_65
    move-exception v0

    .line 775
    .restart local v0    # "e":Ljava/io/IOException;
    const/4 v4, 0x0

    .local v4, "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    goto :goto_3d

    .line 797
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "nppClient":Lcom/android/nfc/ndefpush/NdefPushClient;
    :cond_68
    :try_start_68
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iput-object v1, v7, Lcom/android/nfc/P2pLinkManager;->mHandoverClient:Lcom/android/nfc/handover/HandoverClient;

    .line 798
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iput-object v5, v7, Lcom/android/nfc/P2pLinkManager;->mSnepClient:Lcom/android/nfc/snep/SnepClient;

    .line 799
    iget-object v7, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    iput-object v4, v7, Lcom/android/nfc/P2pLinkManager;->mNdefPushClient:Lcom/android/nfc/ndefpush/NdefPushClient;

    .line 800
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_77
    .catchall {:try_start_68 .. :try_end_77} :catchall_7a

    move-result-object v7

    monitor-exit v8

    return-object v7

    .line 780
    :catchall_7a
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 731
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 719
    invoke-virtual {p0}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 720
    const-string/jumbo v0, "NfcP2pLinkManager"

    const-string/jumbo v1, "ConnectTask was cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    return-void

    .line 723
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 724
    iget-object v0, p0, Lcom/android/nfc/P2pLinkManager$ConnectTask;->this$0:Lcom/android/nfc/P2pLinkManager;

    invoke-virtual {v0}, Lcom/android/nfc/P2pLinkManager;->onLlcpServicesConnected()V

    .line 718
    :goto_1b
    return-void

    .line 726
    :cond_1c
    const-string/jumbo v0, "NfcP2pLinkManager"

    const-string/jumbo v1, "Could not connect required NFC transports"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 718
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/P2pLinkManager$ConnectTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

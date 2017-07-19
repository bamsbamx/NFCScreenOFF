.class public Lcom/android/nfc/NfcRootActivity;
.super Landroid/app/Activity;
.source "NfcRootActivity.java"


# static fields
.field static final EXTRA_LAUNCH_INTENT:Ljava/lang/String; = "launchIntent"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/nfc/NfcRootActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 34
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_22

    const-string/jumbo v3, "launchIntent"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 35
    const-string/jumbo v3, "launchIntent"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 36
    .local v2, "launchIntent":Landroid/content/Intent;
    if-eqz v2, :cond_22

    .line 38
    :try_start_1d
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3}, Lcom/android/nfc/NfcRootActivity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_22
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1d .. :try_end_22} :catch_26

    .line 43
    .end local v2    # "launchIntent":Landroid/content/Intent;
    :cond_22
    :goto_22
    invoke-virtual {p0}, Lcom/android/nfc/NfcRootActivity;->finish()V

    .line 31
    return-void

    .line 39
    .restart local v2    # "launchIntent":Landroid/content/Intent;
    :catch_26
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    goto :goto_22
.end method

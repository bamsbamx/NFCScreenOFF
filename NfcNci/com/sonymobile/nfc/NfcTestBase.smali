.class public Lcom/sonymobile/nfc/NfcTestBase;
.super Landroid/app/LauncherActivity;
.source "NfcTestBase.java"


# static fields
.field private static final DBG:Z = false

.field protected static final DIALOG_NOT_OWNER_ID:I = 0x2

.field protected static final DIALOG_NO_FEATURE_ID:I = 0x1

.field private static final KEY_COMPATIBLE_DEVICE:Ljava/lang/String; = "compatible.device"

.field private static final KEY_COMPATIBLE_VENDOR:Ljava/lang/String; = "compatible.vendor"

.field private static final TAG:Ljava/lang/String; = "NfcTestBase"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/LauncherActivity;-><init>()V

    return-void
.end method

.method private hasCompatibilityOnDevice(Landroid/content/pm/ResolveInfo;)Z
    .registers 11
    .param p1, "rinfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 136
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 137
    .local v0, "ainfo":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_8

    .line 138
    return v7

    .line 140
    :cond_8
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v4, :cond_d

    .line 142
    return v8

    .line 144
    :cond_d
    const v4, 0x7f09001c

    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/NfcTestBase;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "devConfig":Ljava/lang/String;
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "compatible.device"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "compatibleDev":Ljava/lang/String;
    if-eqz v1, :cond_25

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    .line 150
    :cond_25
    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "compatible.vendor"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "compatibleVendor":Ljava/lang/String;
    if-eqz v2, :cond_36

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 156
    :cond_36
    return v8

    .line 148
    .end local v2    # "compatibleVendor":Ljava/lang/String;
    :cond_37
    return v7

    .line 152
    .restart local v2    # "compatibleVendor":Ljava/lang/String;
    :cond_38
    return v7
.end method

.method private hasNfcFeature()Z
    .registers 4

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcTestBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 161
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-nez v0, :cond_11

    .line 162
    const-string/jumbo v1, "NfcTestBase"

    const-string/jumbo v2, "Cannot get package manager, assuming no NFC feature"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/4 v1, 0x0

    return v1

    .line 165
    :cond_11
    const-string/jumbo v1, "android.hardware.nfc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isActivityNotFound(Landroid/content/pm/ResolveInfo;)Z
    .registers 6
    .param p1, "rinfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v3, 0x1

    .line 121
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 122
    .local v0, "ainfo":Landroid/content/pm/ActivityInfo;
    if-nez v0, :cond_6

    .line 123
    return v3

    .line 127
    :cond_6
    :try_start_6
    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_d

    .line 128
    const/4 v2, 0x0

    return v2

    .line 129
    :catch_d
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    return v3
.end method


# virtual methods
.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .param p1, "id"    # I

    .prologue
    const v3, 0x7f090103

    const v1, 0x7f090090

    const/4 v2, 0x0

    .line 68
    packed-switch p1, :pswitch_data_6a

    .line 98
    const-string/jumbo v0, "NfcTestBase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreateDialog: unknown id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x0

    return-object v0

    .line 71
    :pswitch_26
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 73
    const v1, 0x7f090106

    .line 71
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/sonymobile/nfc/NfcTestBase$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/NfcTestBase$1;-><init>(Lcom/sonymobile/nfc/NfcTestBase;)V

    .line 71
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 85
    :pswitch_48
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 87
    const v1, 0x7f090107

    .line 85
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 90
    new-instance v1, Lcom/sonymobile/nfc/NfcTestBase$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/NfcTestBase$2;-><init>(Lcom/sonymobile/nfc/NfcTestBase;)V

    .line 85
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 68
    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_26
        :pswitch_48
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 8
    .param p1, "l"    # Landroid/widget/ListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/sonymobile/nfc/NfcTestBase;->hasNfcFeature()Z

    move-result v0

    if-nez v0, :cond_b

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/NfcTestBase;->showDialog(I)V

    .line 57
    return-void

    .line 59
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_16

    .line 60
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/NfcTestBase;->showDialog(I)V

    .line 61
    return-void

    .line 63
    :cond_16
    invoke-super/range {p0 .. p5}, Landroid/app/LauncherActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 52
    return-void
.end method

.method public onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;
    .registers 7
    .param p1, "queryIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/sonymobile/nfc/NfcTestBase;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 107
    const/16 v4, 0x80

    .line 106
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 110
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 111
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_e
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 113
    .local v2, "rinfo":Landroid/content/pm/ResolveInfo;
    invoke-direct {p0, v2}, Lcom/sonymobile/nfc/NfcTestBase;->hasCompatibilityOnDevice(Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-direct {p0, v2}, Lcom/sonymobile/nfc/NfcTestBase;->isActivityNotFound(Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 114
    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_e

    .line 117
    .end local v2    # "rinfo":Landroid/content/pm/ResolveInfo;
    :cond_2a
    return-object v1
.end method

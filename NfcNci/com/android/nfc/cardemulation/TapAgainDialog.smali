.class public Lcom/android/nfc/cardemulation/TapAgainDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "TapAgainDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/TapAgainDialog$1;
    }
.end annotation


# static fields
.field public static final ACTION_CLOSE:Ljava/lang/String; = "com.android.nfc.cardmeulation.close_tap_dialog"

.field public static final EXTRA_APDU_SERVICE:Ljava/lang/String; = "apdu_service"

.field public static final EXTRA_CATEGORY:Ljava/lang/String; = "category"


# instance fields
.field private mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private mClosedOnRequest:Z

.field final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -set0(Lcom/android/nfc/cardemulation/TapAgainDialog;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mClosedOnRequest:Z

    return p1
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mClosedOnRequest:Z

    .line 46
    new-instance v0, Lcom/android/nfc/cardemulation/TapAgainDialog$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/TapAgainDialog$1;-><init>(Lcom/android/nfc/cardemulation/TapAgainDialog;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->finish()V

    .line 112
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v12, 0x10302d2

    invoke-virtual {p0, v12}, Lcom/android/nfc/cardemulation/TapAgainDialog;->setTheme(I)V

    .line 60
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 61
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    invoke-static {v0}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v12

    iput-object v12, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    .line 62
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 63
    .local v6, "intent":Landroid/content/Intent;
    const-string/jumbo v12, "category"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "category":Ljava/lang/String;
    const-string/jumbo v12, "apdu_service"

    invoke-virtual {v6, v12}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 65
    .local v9, "serviceInfo":Landroid/nfc/cardemulation/ApduServiceInfo;
    new-instance v4, Landroid/content/IntentFilter;

    const-string/jumbo v12, "com.android.nfc.cardmeulation.close_tap_dialog"

    invoke-direct {v4, v12}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 66
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v12, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget-object v12, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v12, v4}, Lcom/android/nfc/cardemulation/TapAgainDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 70
    .local v1, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const-string/jumbo v12, ""

    iput-object v12, v1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 71
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v12

    const v13, 0x7f030020

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    iput-object v12, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 73
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 74
    .local v8, "pm":Landroid/content/pm/PackageManager;
    iget-object v12, v1, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v13, 0x7f0d00dc

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 75
    .local v10, "tv":Landroid/widget/TextView;
    invoke-virtual {v9}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "description":Ljava/lang/String;
    if-nez v3, :cond_6d

    .line 77
    invoke-virtual {v9, v8}, Landroid/nfc/cardemulation/ApduServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 78
    .local v7, "label":Ljava/lang/CharSequence;
    if-nez v7, :cond_9f

    .line 79
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->finish()V

    .line 84
    .end local v7    # "label":Ljava/lang/CharSequence;
    :cond_6d
    :goto_6d
    const-string/jumbo v12, "payment"

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a4

    .line 85
    const v12, 0x7f09007b

    invoke-virtual {p0, v12}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 86
    .local v5, "formatString":Ljava/lang/String;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-static {v5, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    :goto_8a
    const/high16 v12, 0x1040000

    invoke-virtual {p0, v12}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getString(I)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 92
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->setupAlert()V

    .line 93
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 94
    .local v11, "window":Landroid/view/Window;
    const/high16 v12, 0x400000

    invoke-virtual {v11, v12}, Landroid/view/Window;->addFlags(I)V

    .line 55
    return-void

    .line 81
    .end local v5    # "formatString":Ljava/lang/String;
    .end local v11    # "window":Landroid/view/Window;
    .restart local v7    # "label":Ljava/lang/CharSequence;
    :cond_9f
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_6d

    .line 88
    .end local v7    # "label":Ljava/lang/CharSequence;
    :cond_a4
    const v12, 0x7f09007c

    invoke-virtual {p0, v12}, Lcom/android/nfc/cardemulation/TapAgainDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 89
    .restart local v5    # "formatString":Ljava/lang/String;
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v3, v12, v13

    invoke-static {v5, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8a
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 100
    iget-object v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/TapAgainDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    return-void
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 106
    iget-boolean v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mClosedOnRequest:Z

    if-nez v0, :cond_d

    .line 107
    iget-object v0, p0, Lcom/android/nfc/cardemulation/TapAgainDialog;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/nfc/cardemulation/CardEmulation;->setDefaultForNextTap(Landroid/content/ComponentName;)Z

    .line 104
    :cond_d
    return-void
.end method

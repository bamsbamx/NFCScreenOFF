.class public Lcom/android/nfc/cardemulation/AppChooserActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "AppChooserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/nfc/cardemulation/AppChooserActivity$1;,
        Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;,
        Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;,
        Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;
    }
.end annotation


# static fields
.field public static final EXTRA_APDU_SERVICES:Ljava/lang/String; = "services"

.field public static final EXTRA_CATEGORY:Ljava/lang/String; = "category"

.field public static final EXTRA_FAILED_COMPONENT:Ljava/lang/String; = "failed_component"

.field static final TAG:Ljava/lang/String; = "AppChooserActivity"


# instance fields
.field private mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

.field private mCategory:Ljava/lang/String;

.field private mIconSize:I

.field private mListAdapter:Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;

.field private mListView:Landroid/widget/ListView;

.field final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/android/nfc/cardemulation/AppChooserActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/nfc/cardemulation/AppChooserActivity;)I
    .registers 2

    iget v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mIconSize:I

    return v0
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 67
    new-instance v0, Lcom/android/nfc/cardemulation/AppChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/nfc/cardemulation/AppChooserActivity$1;-><init>(Lcom/android/nfc/cardemulation/AppChooserActivity;)V

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 160
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "services"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 161
    .local v3, "services":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    const-string/jumbo v4, "category"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "category":Ljava/lang/String;
    const-string/jumbo v4, "failed_component"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 163
    .local v1, "failedComponent":Landroid/content/ComponentName;
    invoke-virtual {p0, p1, v0, v3, v1}, Lcom/android/nfc/cardemulation/AppChooserActivity;->onCreate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/ComponentName;)V

    .line 158
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/ComponentName;)V
    .registers 25
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "category"    # Ljava/lang/String;
    .param p4, "failedComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    .local p3, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    invoke-super/range {p0 .. p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v15, 0x10302d2

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/nfc/cardemulation/AppChooserActivity;->setTheme(I)V

    .line 85
    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v15, "android.intent.action.SCREEN_OFF"

    invoke-direct {v8, v15}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 86
    .local v8, "filter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v8}, Lcom/android/nfc/cardemulation/AppChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    if-eqz p3, :cond_24

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_33

    :cond_24
    if-nez p4, :cond_33

    .line 89
    const-string/jumbo v15, "AppChooserActivity"

    const-string/jumbo v16, "No components passed in."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->finish()V

    .line 91
    return-void

    .line 94
    :cond_33
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/nfc/cardemulation/AppChooserActivity;->mCategory:Ljava/lang/String;

    .line 95
    const-string/jumbo v15, "payment"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mCategory:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 97
    .local v12, "isPayment":Z
    invoke-static/range {p0 .. p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    .line 98
    .local v3, "adapter":Landroid/nfc/NfcAdapter;
    invoke-static {v3}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    .line 99
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 101
    .local v5, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const-string/jumbo v15, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 102
    .local v4, "am":Landroid/app/ActivityManager;
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v15

    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mIconSize:I

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 110
    .local v13, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v6, "unknown"

    .line 111
    .local v6, "applicationLabel":Ljava/lang/CharSequence;
    if-eqz p4, :cond_82

    .line 113
    :try_start_72
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v11

    .line 114
    .local v11, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v11, v13}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_81
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_72 .. :try_end_81} :catch_185

    move-result-object v6

    .line 119
    .end local v11    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_82
    :goto_82
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-nez v15, :cond_bd

    if-eqz p4, :cond_bd

    .line 120
    const v15, 0x7f09007d

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 121
    .local v9, "formatString":Ljava/lang/String;
    const-string/jumbo v15, ""

    iput-object v15, v5, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 122
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    invoke-static {v9, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v5, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 123
    const v15, 0x104000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v5, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 124
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->setupAlert()V

    .line 153
    .end local v9    # "formatString":Ljava/lang/String;
    :goto_b3
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getWindow()Landroid/view/Window;

    move-result-object v14

    .line 154
    .local v14, "window":Landroid/view/Window;
    const/high16 v15, 0x400000

    invoke-virtual {v14, v15}, Landroid/view/Window;->addFlags(I)V

    .line 81
    return-void

    .line 126
    .end local v14    # "window":Landroid/view/Window;
    :cond_bd
    new-instance v15, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v15, v0, v1, v2}, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;-><init>(Lcom/android/nfc/cardemulation/AppChooserActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListAdapter:Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;

    .line 127
    if-eqz p4, :cond_151

    .line 128
    const v15, 0x7f09007e

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 129
    .restart local v9    # "formatString":Ljava/lang/String;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v6, v15, v16

    invoke-static {v9, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v5, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 130
    const/high16 v15, 0x1040000

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v5, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 138
    .end local v9    # "formatString":Ljava/lang/String;
    :goto_ee
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v15

    const v16, 0x7f030002

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    iput-object v15, v5, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 140
    iget-object v15, v5, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v16, 0x7f0d0003

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListView:Landroid/widget/ListView;

    .line 141
    if-eqz v12, :cond_175

    .line 142
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x106000d

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->density:F

    const/high16 v16, 0x41800000    # 16.0f

    mul-float v15, v15, v16

    float-to-int v10, v15

    .line 144
    .local v10, "height":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v15, v10}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 148
    .end local v10    # "height":I
    :goto_136
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListAdapter:Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListView:Landroid/widget/ListView;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->setupAlert()V

    goto/16 :goto_b3

    .line 132
    :cond_151
    const-string/jumbo v15, "payment"

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_168

    .line 133
    const v15, 0x7f09007f

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v5, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_ee

    .line 135
    :cond_168
    const v15, 0x7f090080

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/nfc/cardemulation/AppChooserActivity;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v5, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto/16 :goto_ee

    .line 146
    :cond_175
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListView:Landroid/widget/ListView;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroid/widget/ListView;->setPadding(IIII)V

    goto :goto_136

    .line 115
    :catch_185
    move-exception v7

    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_82
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 76
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 77
    iget-object v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 75
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mListAdapter:Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;

    invoke-virtual {v2, p3}, Lcom/android/nfc/cardemulation/AppChooserActivity$ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;

    .line 169
    .local v1, "info":Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;
    iget-object v2, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mCardEmuManager:Landroid/nfc/cardemulation/CardEmulation;

    iget-object v3, v1, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;->serviceInfo:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v3}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/nfc/cardemulation/CardEmulation;->setDefaultForNextTap(Landroid/content/ComponentName;)Z

    .line 170
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/nfc/cardemulation/TapAgainDialog;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 171
    .local v0, "dialogIntent":Landroid/content/Intent;
    const-string/jumbo v2, "category"

    iget-object v3, p0, Lcom/android/nfc/cardemulation/AppChooserActivity;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string/jumbo v2, "apdu_service"

    iget-object v3, v1, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;->serviceInfo:Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    invoke-virtual {p0, v0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->startActivity(Landroid/content/Intent;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/nfc/cardemulation/AppChooserActivity;->finish()V

    .line 167
    return-void
.end method

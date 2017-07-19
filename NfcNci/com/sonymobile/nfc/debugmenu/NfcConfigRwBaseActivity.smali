.class public Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;
.super Landroid/app/Activity;
.source "NfcConfigRwBaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$BasicRwTask;,
        Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;,
        Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;,
        Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;,
        Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;,
        Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final PREF:Ljava/lang/String; = "NfcConfigRwBaseActivityPrefs"

.field private static final PREF_LISTITEM:Ljava/lang/String; = "listitem"

.field private static final TAG:Ljava/lang/String; = "NfcConfigRwBaseActivity"


# instance fields
.field protected mCheckBox:Landroid/widget/CheckBox;

.field protected mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter",
            "<",
            "Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mPrefs:Landroid/content/SharedPreferences;

.field protected mPrefsEditor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method protected static varargs joinAsString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .param p0, "delimiter"    # Ljava/lang/String;
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 917
    if-eqz p0, :cond_5

    if-nez p1, :cond_e

    .line 918
    :cond_5
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "input arguments must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 921
    :cond_e
    array-length v2, p1

    if-nez v2, :cond_15

    .line 922
    const-string/jumbo v2, ""

    return-object v2

    .line 925
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    aget-object v2, p1, v3

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 926
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_21
    array-length v2, p1

    if-ge v0, v2, :cond_34

    .line 927
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 929
    :cond_34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected initContentViews()V
    .registers 6

    .prologue
    .line 149
    const v2, 0x7f030007

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->setContentView(I)V

    .line 152
    const v2, 0x7f0d0016

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 153
    .local v0, "button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    const v2, 0x7f0d0017

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 155
    .restart local v0    # "button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const v2, 0x7f0d0018

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 157
    .restart local v0    # "button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    const v2, 0x7f0d0019

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 159
    .restart local v0    # "button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    const v2, 0x7f0d001b

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 161
    .restart local v0    # "button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v2, 0x7f0d001a

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "button":Landroid/widget/Button;
    check-cast v0, Landroid/widget/Button;

    .line 163
    .restart local v0    # "button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v2, 0x7f0d0015

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mCheckBox:Landroid/widget/CheckBox;

    .line 166
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    new-instance v2, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    .line 169
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const v4, 0x7f030008

    .line 168
    invoke-direct {v2, p0, v4, v3}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    .line 171
    const v2, 0x7f0d0007

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 172
    .local v1, "liveView":Landroid/widget/ListView;
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 173
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 148
    return-void
.end method

.method protected initPreferences()V
    .registers 3

    .prologue
    .line 180
    const-string/jumbo v0, "NfcConfigRwBaseActivityPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mPrefs:Landroid/content/SharedPreferences;

    .line 181
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 182
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->restoreFromSharedPreferences()V

    .line 179
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_42

    .line 119
    const-string/jumbo v0, "NfcConfigRwBaseActivity"

    const-string/jumbo v1, "onClick(): Clicked unknown view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :goto_10
    return-void

    .line 91
    :pswitch_11
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->showConfigAddressInputDialog()V

    goto :goto_10

    .line 95
    :pswitch_15
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;->removeCheckedItem()V

    .line 96
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_10

    .line 100
    :pswitch_21
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;->clearCheckedItem()V

    goto :goto_10

    .line 104
    :pswitch_27
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;->setDefaultToCheckedItem()V

    goto :goto_10

    .line 108
    :pswitch_2d
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->writeCheckedItem()V

    goto :goto_10

    .line 112
    :pswitch_31
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->readCheckedItem()V

    goto :goto_10

    .line 116
    :pswitch_35
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;->setChecked(Z)V

    goto :goto_10

    .line 88
    nop

    :pswitch_data_42
    .packed-switch 0x7f0d0015
        :pswitch_35
        :pswitch_11
        :pswitch_15
        :pswitch_21
        :pswitch_27
        :pswitch_31
        :pswitch_2d
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->initContentViews()V

    .line 77
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->initPreferences()V

    .line 73
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
    .line 126
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .line 130
    .local v0, "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_28

    .line 125
    :goto_d
    return-void

    .line 132
    :pswitch_e
    iget-object v1, v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;

    iget-object v2, v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    .line 133
    const v3, 0x7f090141

    .line 132
    invoke-virtual {p0, v1, v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->showConfigDetailDialog(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;I)V

    goto :goto_d

    .line 136
    :pswitch_19
    iget-object v1, v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;

    iget-object v2, v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mCurrentValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    .line 137
    const v3, 0x7f090142

    .line 136
    invoke-virtual {p0, v1, v2, v3}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->showConfigDetailDialog(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;I)V

    goto :goto_d

    .line 140
    :pswitch_24
    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->showNewValueInputDialog(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)V

    goto :goto_d

    .line 130
    :pswitch_data_28
    .packed-switch 0x7f0d001d
        :pswitch_e
        :pswitch_19
        :pswitch_24
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 82
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 83
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->storeToSharedPreferences()V

    .line 81
    return-void
.end method

.method protected readCheckedItem()V
    .registers 1

    .prologue
    .line 194
    return-void
.end method

.method protected restoreFromSharedPreferences()V
    .registers 8

    .prologue
    .line 201
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mPrefs:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "listitem"

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 202
    .local v3, "restoreData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "flattenedString$iterator":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 205
    .local v1, "flattenedString":Ljava/lang/String;
    :try_start_1e
    iget-object v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    invoke-static {v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->createInstance(Ljava/lang/String;)Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;->add(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)V
    :try_end_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_27} :catch_28

    goto :goto_12

    .line 206
    :catch_28
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "NfcConfigRwBaseActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "restoreFromSharedPreferences(): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "flattenedString":Ljava/lang/String;
    :cond_47
    return-void
.end method

.method protected showCompleteDialog(Ljava/lang/String;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 400
    const v1, 0x7f090166

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "msg":Ljava/lang/String;
    const v1, 0x108009b

    invoke-virtual {p0, p1, v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->showGenericDialog(Ljava/lang/String;Ljava/lang/String;I)V

    .line 399
    return-void
.end method

.method protected showConfigAddressInputDialog()V
    .registers 7

    .prologue
    .line 262
    const v0, 0x7f090163

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "title":Ljava/lang/String;
    const v0, 0x7f09015d

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "hint":Ljava/lang/String;
    new-instance v5, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$2;

    invoke-direct {v5, p0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$2;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;)V

    .line 294
    .local v5, "completeListener":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;
    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->showInputDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;)V

    .line 260
    return-void
.end method

.method protected showConfigDetailDialog(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;I)V
    .registers 13
    .param p1, "address"    # Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;
    .param p2, "value"    # Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;
    .param p3, "titleId"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 353
    const-string/jumbo v3, " [%s] - [%s]"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p1, v4, v7

    invoke-virtual {p0, p3}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "title":Ljava/lang/String;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 356
    .local v2, "titleTextView":Landroid/widget/TextView;
    const/high16 v3, 0x41900000    # 18.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 358
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 359
    .local v0, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVerticalScrollBarEnabled(Z)V

    .line 360
    invoke-virtual {p2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->isNa()Z

    move-result v3

    if-nez v3, :cond_65

    .line 361
    const-string/jumbo v3, "%s (%d octet)"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-virtual {p2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->get()[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    invoke-virtual {p2}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    :goto_4c
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 370
    const v4, 0x7f090157

    const/4 v5, 0x0

    .line 367
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 352
    return-void

    .line 364
    :cond_65
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4c
.end method

.method protected showErrorDialog(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 380
    const v1, 0x7f09015b

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0, v0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void
.end method

.method protected showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 391
    const v0, 0x1080027

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->showGenericDialog(Ljava/lang/String;Ljava/lang/String;I)V

    .line 390
    return-void
.end method

.method protected showGenericDialog(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "icon"    # I

    .prologue
    .line 412
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 416
    const v1, 0x7f090157

    const/4 v2, 0x0

    .line 412
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 411
    return-void
.end method

.method protected showInputDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;)V
    .registers 14
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "hint"    # Ljava/lang/String;
    .param p3, "length"    # I
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "completeListener"    # Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;

    .prologue
    const/4 v7, 0x0

    .line 302
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 303
    .local v4, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    const/high16 v5, 0x41900000    # 18.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 306
    new-instance v2, Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;

    invoke-direct {v2, p0, p2, p3}, Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 307
    .local v2, "editText":Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;
    invoke-virtual {v2}, Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;->getInputType()I

    move-result v5

    const/high16 v6, 0x20000

    or-int/2addr v5, v6

    invoke-virtual {v2, v5}, Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;->setInputType(I)V

    .line 308
    if-eqz p4, :cond_22

    .line 309
    invoke-virtual {v2, p4}, Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :cond_22
    new-instance v5, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$3;

    invoke-direct {v5, p0, v4, p1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$3;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;Landroid/widget/TextView;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 327
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 328
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 329
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 330
    const v5, 0x7f090157

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 331
    const v5, 0x7f090158

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 333
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 334
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 337
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 338
    .local v3, "okButton":Landroid/widget/Button;
    new-instance v5, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$4;

    invoke-direct {v5, p0, v2, p5, v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$4;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    return-void
.end method

.method protected showNewValueInputDialog(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)V
    .registers 11
    .param p1, "item"    # Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090164

    invoke-virtual {p0, v3}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 237
    const-string/jumbo v3, " [%s]"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p1, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;

    invoke-virtual {v7}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "title":Ljava/lang/String;
    const v0, 0x7f09015c

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "hint":Ljava/lang/String;
    iget-object v0, p1, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->isNa()Z

    move-result v0

    if-eqz v0, :cond_47

    const/4 v4, 0x0

    .line 240
    :goto_3b
    new-instance v5, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$1;

    invoke-direct {v5, p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$1;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)V

    .line 254
    .local v5, "completeListener":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;
    const/16 v3, 0x200

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->showInputDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;)V

    .line 235
    return-void

    .line 239
    .end local v5    # "completeListener":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;
    :cond_47
    iget-object v0, p1, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "currentValue":Ljava/lang/String;
    goto :goto_3b
.end method

.method protected storeToSharedPreferences()V
    .registers 6

    .prologue
    .line 217
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 218
    .local v2, "saveData":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    invoke-virtual {v3}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;->getItem()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .line 219
    .local v0, "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->flatten()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 221
    .end local v0    # "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    :cond_23
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v4, "listitem"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 222
    iget-object v3, p0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 216
    return-void
.end method

.method protected writeCheckedItem()V
    .registers 1

    .prologue
    .line 188
    return-void
.end method

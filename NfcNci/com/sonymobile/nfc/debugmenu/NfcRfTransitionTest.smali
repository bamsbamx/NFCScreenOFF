.class public Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;
.super Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;
.source "NfcRfTransitionTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$DefaultReaderTask;,
        Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;,
        Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final PREF:Ljava/lang/String; = "NfcRfTransitionTestPrefs"

.field private static final PREF_LISTITEM:Ljava/lang/String; = "listitem"

.field private static final TAG:Ljava/lang/String; = "NfcRfTransitionTest"


# direct methods
.method static synthetic -wrap0(Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;)V
    .registers 1

    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->readNewItem()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity;-><init>()V

    return-void
.end method

.method private readNewItem()V
    .registers 5

    .prologue
    .line 81
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;->getItem()Ljava/util/List;

    move-result-object v0

    .line 82
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_24

    .line 83
    new-instance v2, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$DefaultReaderTask;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$DefaultReaderTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$DefaultReaderTask;)V

    sget-object v3, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    .line 84
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .line 83
    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$DefaultReaderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 80
    :goto_23
    return-void

    .line 86
    :cond_24
    const v1, 0x7f090154

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_23
.end method


# virtual methods
.method protected initPreferences()V
    .registers 3

    .prologue
    .line 44
    const-string/jumbo v0, "NfcRfTransitionTestPrefs"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->mPrefs:Landroid/content/SharedPreferences;

    .line 45
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->mPrefsEditor:Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->restoreFromSharedPreferences()V

    .line 43
    return-void
.end method

.method protected readCheckedItem()V
    .registers 5

    .prologue
    .line 68
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;->getCheckedItem()Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_24

    .line 70
    new-instance v2, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;)V

    sget-object v3, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    .line 71
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .line 70
    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 67
    :goto_23
    return-void

    .line 73
    :cond_24
    const v1, 0x7f090154

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_23
.end method

.method protected showConfigAddressInputDialog()V
    .registers 7

    .prologue
    .line 131
    const v0, 0x7f09017a

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "title":Ljava/lang/String;
    const v0, 0x7f09015d

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "hint":Ljava/lang/String;
    new-instance v5, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$2;

    invoke-direct {v5, p0}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$2;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;)V

    .line 163
    .local v5, "completeListener":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;
    const/4 v3, 0x4

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->showInputDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;)V

    .line 129
    return-void
.end method

.method protected showNewValueInputDialog(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)V
    .registers 12
    .param p1, "item"    # Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f090164

    invoke-virtual {p0, v6}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 96
    const-string/jumbo v6, " [%s]"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p1, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mAddress:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;

    invoke-virtual {v8}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigAddress;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 95
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "title":Ljava/lang/String;
    const v0, 0x7f090179

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 98
    .local v2, "hint":Ljava/lang/String;
    iget-object v0, p1, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->isNa()Z

    move-result v0

    if-eqz v0, :cond_4f

    const/4 v4, 0x0

    .line 99
    :goto_3b
    new-instance v5, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$1;

    invoke-direct {v5, p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$1;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)V

    .line 117
    .local v5, "completeListener":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;
    iget-object v0, p1, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->isNa()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 118
    const/16 v3, 0x8

    .local v3, "textLength":I
    :goto_4a
    move-object v0, p0

    .line 122
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->showInputDialog(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;)V

    .line 94
    return-void

    .line 98
    .end local v3    # "textLength":I
    .end local v5    # "completeListener":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;
    :cond_4f
    iget-object v0, p1, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mNewValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "currentValue":Ljava/lang/String;
    goto :goto_3b

    .line 120
    .end local v4    # "currentValue":Ljava/lang/String;
    .restart local v5    # "completeListener":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$OnInputCompletedListener;
    :cond_56
    iget-object v0, p1, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->getLength()I

    move-result v0

    mul-int/lit8 v3, v0, 0x2

    .restart local v3    # "textLength":I
    goto :goto_4a
.end method

.method protected writeCheckedItem()V
    .registers 5

    .prologue
    .line 54
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;

    invoke-virtual {v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItemAdapter;->getWritableItem()Ljava/util/List;

    move-result-object v0

    .line 55
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_24

    .line 56
    new-instance v2, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;)V

    sget-object v3, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .line 56
    invoke-virtual {v2, v3, v1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$WriterTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 53
    :goto_23
    return-void

    .line 59
    :cond_24
    const v1, 0x7f090155

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;->showErrorDialog(Ljava/lang/String;)V

    goto :goto_23
.end method

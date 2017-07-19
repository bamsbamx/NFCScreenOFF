.class Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$DefaultReaderTask;
.super Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;
.source "NfcRfTransitionTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultReaderTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$DefaultReaderTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$ReaderTask;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$DefaultReaderTask;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$DefaultReaderTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest;)V

    return-void
.end method

.method private setDefault([Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)Z
    .registers 8
    .param p1, "items"    # [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .prologue
    const/4 v3, 0x0

    .line 194
    array-length v4, p1

    move v2, v3

    :goto_3
    if-ge v2, v4, :cond_32

    aget-object v0, p1, v2

    .line 195
    .local v0, "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->isNewItem()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 196
    invoke-virtual {v0}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->clearNewFlag()V

    .line 197
    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$DefaultReaderTask;->readRfTransitionData(Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)[B

    move-result-object v1

    .line 198
    .local v1, "value":[B
    if-nez v1, :cond_22

    .line 199
    iget-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$DefaultReaderTask;->mContext:Landroid/content/Context;

    const v4, 0x7f09014f

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$DefaultReaderTask;->mErrorMessage:Ljava/lang/String;

    .line 200
    return v3

    .line 202
    :cond_22
    iget-object v5, v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v5}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->isNa()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 203
    iget-object v5, v0, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;->mDefaultValue:Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;

    invoke-virtual {v5, v1}, Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ConfigValue;->set([B)V

    .line 194
    .end local v1    # "value":[B
    :cond_2f
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 208
    .end local v0    # "item":Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;
    :cond_32
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)Ljava/lang/Boolean;
    .registers 6
    .param p1, "items"    # [Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 175
    if-eqz p1, :cond_7

    array-length v0, p1

    if-nez v0, :cond_a

    .line 176
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 179
    :cond_a
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$DefaultReaderTask;->publishProgress([Ljava/lang/Object;)V

    .line 180
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$DefaultReaderTask;->enable()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 181
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 184
    :cond_1e
    new-array v0, v3, [Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$DefaultReaderTask;->publishProgress([Ljava/lang/Object;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcRfTransitionTest$DefaultReaderTask;->setDefault([Lcom/sonymobile/nfc/debugmenu/NfcConfigRwBaseActivity$ListItem;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 186
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    .line 190
    :cond_32
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.class public Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;
.super Landroid/app/Activity;
.source "NfcAntennaSelfTest.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;,
        Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;,
        Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;,
        Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$OnInputCompletedListener;
    }
.end annotation


# static fields
.field private static final ANTENNA_CMD_PARAM_LEN_2:I = 0x2

.field private static final ANTENNA_CMD_PARAM_LEN_6:I = 0x6

.field private static final ANTENNA_RSP_STATUS_LEN:I = 0x1

.field private static final ANTENNA_RSP_VALUE_LEN_1:I = 0x1

.field private static final ANTENNA_RSP_VALUE_LEN_2:I = 0x2

.field private static final DBG:Z = false

.field private static final MEASUREMENT_ID:[I

.field private static final TAG:Ljava/lang/String; = "NfcAntennaSelfTest"


# instance fields
.field private mCmdParam:[[B

.field private mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter",
            "<",
            "Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalNfcSettingOn:Z

.field private mRunButton:Landroid/widget/Button;


# direct methods
.method static synthetic -get0()[I
    .registers 1

    sget-object v0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->MEASUREMENT_ID:[I

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;)[[B
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->mCmdParam:[[B

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;)Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;
    .registers 2

    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;)[B
    .registers 2

    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->parseCmdParam()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "isFinished"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 67
    const v0, 0x7f090007

    .line 68
    const v1, 0x7f090008

    .line 69
    const v2, 0x7f090009

    .line 70
    const v3, 0x7f09000a

    .line 66
    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->MEASUREMENT_ID:[I

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [[B

    .line 77
    new-array v1, v5, [B

    const/16 v2, -0x80

    aput-byte v2, v1, v4

    aput-object v1, v0, v4

    .line 78
    new-array v1, v3, [B

    fill-array-data v1, :array_2c

    aput-object v1, v0, v5

    .line 79
    new-array v1, v3, [B

    fill-array-data v1, :array_32

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 80
    new-array v1, v3, [B

    fill-array-data v1, :array_38

    aput-object v1, v0, v3

    .line 76
    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->mCmdParam:[[B

    .line 84
    iput-boolean v4, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->mOriginalNfcSettingOn:Z

    .line 52
    return-void

    .line 78
    :array_2c
    .array-data 1
        -0x38t
        0x60t
        0x3t
    .end array-data

    .line 79
    :array_32
    .array-data 1
        0x20t
        0x8t
        0x20t
    .end array-data

    .line 80
    :array_38
    .array-data 1
        0x20t
        0x8t
        0x20t
    .end array-data
.end method

.method private initContentViews()V
    .registers 5

    .prologue
    .line 137
    const v1, 0x7f0d0008

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->mRunButton:Landroid/widget/Button;

    .line 138
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->mRunButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;

    .line 141
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const v3, 0x7f030005

    .line 140
    invoke-direct {v1, p0, v3, v2}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;

    .line 143
    const v1, 0x7f0d0007

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 144
    .local v0, "listView":Landroid/widget/ListView;
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 145
    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    return-void
.end method

.method private parseCmdParam()[B
    .registers 11

    .prologue
    const/4 v5, 0x0

    .line 229
    const/16 v0, 0xa

    .line 230
    .local v0, "BUF_SIZE":I
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 231
    .local v2, "bb":Ljava/nio/ByteBuffer;
    iget-object v7, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->mCmdParam:[[B

    array-length v8, v7

    move v6, v5

    :goto_d
    if-ge v6, v8, :cond_21

    aget-object v3, v7, v6

    .line 232
    .local v3, "cmdParamRow":[B
    array-length v9, v3

    move v4, v5

    :goto_13
    if-ge v4, v9, :cond_1d

    aget-byte v1, v3, v4

    .line 233
    .local v1, "b":B
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 232
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 231
    .end local v1    # "b":B
    :cond_1d
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_d

    .line 236
    .end local v3    # "cmdParamRow":[B
    :cond_21
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4
.end method

.method private setDefaultCmdParam()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 149
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    sget-object v0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->MEASUREMENT_ID:[I

    array-length v0, v0

    if-ge v6, v0, :cond_26

    .line 150
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->mCmdParam:[[B

    aget-object v0, v0, v6

    invoke-direct {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->setParamToString([B)Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "param":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->mItemAdapter:Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;

    .line 152
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;

    sget-object v1, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->MEASUREMENT_ID:[I

    aget v1, v1, v6

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-virtual {v7, v0}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$ListItemAdapter;->add(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;)V

    .line 149
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 148
    .end local v3    # "param":Ljava/lang/String;
    :cond_26
    return-void
.end method

.method private setParamToString([B)Ljava/lang/String;
    .registers 8
    .param p1, "param"    # [B

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .local v0, "b":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p1

    if-ge v1, v2, :cond_22

    .line 159
    const-string/jumbo v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-byte v4, p1, v1

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 161
    :cond_22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private showCmdParamInputDialog(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;)V
    .registers 9
    .param p1, "item"    # Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;

    .prologue
    .line 165
    const/high16 v4, 0x7f090000

    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "title":Ljava/lang/String;
    const v4, 0x7f090011

    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "hint":Ljava/lang/String;
    const/4 v1, 0x6

    .line 169
    .local v1, "length":I
    invoke-virtual {p1}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;->getLabel()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->MEASUREMENT_ID:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-virtual {p0, v5}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 170
    const v4, 0x7f090010

    invoke-virtual {p0, v4}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 171
    const/4 v1, 0x2

    .line 173
    :cond_29
    new-instance v2, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$1;

    invoke-direct {v2, p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$1;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;)V

    .line 182
    .local v2, "listener":Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$OnInputCompletedListener;
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->showHexValueInputDialog(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$OnInputCompletedListener;)V

    .line 164
    return-void
.end method

.method private showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 8
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "icon"    # I
    .param p4, "isFinished"    # Z

    .prologue
    .line 206
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 207
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 208
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 209
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 210
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 211
    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$3;

    invoke-direct {v1, p0}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$3;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 217
    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$4;

    invoke-direct {v1, p0, p4}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$4;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;Z)V

    const v2, 0x7f090103

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 225
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 205
    return-void
.end method

.method private showHexValueInputDialog(Ljava/lang/String;Ljava/lang/String;ILcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$OnInputCompletedListener;)V
    .registers 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "hint"    # Ljava/lang/String;
    .param p3, "length"    # I
    .param p4, "completeListener"    # Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$OnInputCompletedListener;

    .prologue
    .line 187
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;

    invoke-direct {v0, p0, p2, p3}, Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 189
    .local v0, "editText":Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;
    new-instance v1, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$2;

    invoke-direct {v1, p0, v0, p4}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$2;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$OnInputCompletedListener;)V

    .line 197
    .local v1, "okListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 200
    const v3, 0x7f090016

    .line 197
    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 201
    const v3, 0x7f090017

    const/4 v4, 0x0

    .line 197
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 186
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    .line 120
    const-string/jumbo v0, "NfcAntennaSelfTest"

    const-string/jumbo v1, "onClick(): Clicked unknown view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :goto_10
    return-void

    .line 117
    :pswitch_11
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;)V

    sget-object v1, Lcom/sonymobile/nfc/SerializedExecutor;->INSTANCE:Lcom/sonymobile/nfc/SerializedExecutor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_10

    .line 115
    :pswitch_data_20
    .packed-switch 0x7f0d0008
        :pswitch_11
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v1, 0x7f030004

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->setContentView(I)V

    .line 96
    invoke-static {p0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 97
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_2b

    .line 99
    const v1, 0x7f090013

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 100
    const v2, 0x7f090001

    invoke-virtual {p0, v2}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    const v3, 0x1080027

    .line 102
    const/4 v4, 0x1

    .line 98
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->showDialogOk(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 108
    :goto_24
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->initContentViews()V

    .line 109
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->setDefaultCmdParam()V

    .line 89
    return-void

    .line 105
    :cond_2b
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->mOriginalNfcSettingOn:Z

    goto :goto_24
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
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
    .line 127
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;

    .line 129
    .local v0, "item":Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_12

    .line 126
    :goto_d
    return-void

    .line 131
    :pswitch_e
    invoke-direct {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest;->showCmdParamInputDialog(Lcom/sonymobile/nfc/debugmenu/NfcAntennaSelfTest$AntennaTestViewItem;)V

    goto :goto_d

    .line 129
    :pswitch_data_12
    .packed-switch 0x7f0d000a
        :pswitch_e
    .end packed-switch
.end method

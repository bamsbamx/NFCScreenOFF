.class Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;
.super Landroid/os/AsyncTask;
.source "NfcPRBSTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncServiceConnectionManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final CONNECT:I = 0x0

.field private static final DISCONNECT:I = 0x1

.field private static final SHUTDOWN_AND_DISCONNECT:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    .prologue
    .line 239
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;)V

    return-void
.end method

.method private connect()V
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    new-instance v1, Lcom/sonymobile/nfc/NfcConfig;

    invoke-direct {v1}, Lcom/sonymobile/nfc/NfcConfig;-><init>()V

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->-set1(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;Lcom/sonymobile/nfc/NfcConfig;)Lcom/sonymobile/nfc/NfcConfig;

    .line 284
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/NfcConfig;->connect(Landroid/content/Context;)Z

    .line 281
    return-void
.end method

.method private disconnect()V
    .registers 3

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcConfig;->close()V

    .line 293
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->-set1(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;Lcom/sonymobile/nfc/NfcConfig;)Lcom/sonymobile/nfc/NfcConfig;

    .line 290
    return-void
.end method

.method private setTestMode(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 272
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->-get3(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;)Z

    move-result v0

    if-eq v0, p1, :cond_16

    .line 273
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    invoke-static {v0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->-set2(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;Z)Z

    .line 274
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;->-get2(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/nfc/NfcConfig;->setTestMode(Z)I

    .line 270
    :cond_16
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 245
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v1, 0x0

    .line 248
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 262
    :goto_a
    const/4 v0, 0x0

    return-object v0

    .line 250
    :pswitch_c
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;->connect()V

    .line 251
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;->setTestMode(Z)V

    goto :goto_a

    .line 254
    :pswitch_14
    invoke-direct {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;->setTestMode(Z)V

    .line 257
    :pswitch_17
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$AsyncServiceConnectionManager;->disconnect()V

    goto :goto_a

    .line 248
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_17
        :pswitch_14
    .end packed-switch
.end method

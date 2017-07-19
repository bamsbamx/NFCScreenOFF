.class Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;
.super Landroid/os/AsyncTask;
.source "NfcPRBSTestMode2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;
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
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)V

    return-void
.end method

.method private connect()V
    .registers 3

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    new-instance v1, Lcom/sonymobile/nfc/NfcConfig;

    invoke-direct {v1}, Lcom/sonymobile/nfc/NfcConfig;-><init>()V

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-set1(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;Lcom/sonymobile/nfc/NfcConfig;)Lcom/sonymobile/nfc/NfcConfig;

    .line 369
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get5(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/NfcConfig;->connect(Landroid/content/Context;)Z

    .line 366
    return-void
.end method

.method private disconnect()V
    .registers 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get5(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcConfig;->close()V

    .line 378
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-set1(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;Lcom/sonymobile/nfc/NfcConfig;)Lcom/sonymobile/nfc/NfcConfig;

    .line 375
    return-void
.end method

.method private setTestMode(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 357
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get7(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Z

    move-result v0

    if-eq v0, p1, :cond_16

    .line 358
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-static {v0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-set2(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;Z)Z

    .line 359
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;->-get5(Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/nfc/NfcConfig;->setTestMode(Z)I

    .line 355
    :cond_16
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 330
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Integer;

    .prologue
    const/4 v1, 0x0

    .line 333
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    .line 347
    :goto_a
    const/4 v0, 0x0

    return-object v0

    .line 335
    :pswitch_c
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;->connect()V

    .line 336
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;->setTestMode(Z)V

    goto :goto_a

    .line 339
    :pswitch_14
    invoke-direct {p0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;->setTestMode(Z)V

    .line 342
    :pswitch_17
    invoke-direct {p0}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode2$AsyncServiceConnectionManager;->disconnect()V

    goto :goto_a

    .line 333
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_c
        :pswitch_17
        :pswitch_14
    .end packed-switch
.end method

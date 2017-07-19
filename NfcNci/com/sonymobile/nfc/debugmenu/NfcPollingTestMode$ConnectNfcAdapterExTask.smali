.class Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;
.super Landroid/os/AsyncTask;
.source "NfcPollingTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectNfcAdapterExTask"
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
.field private static final CONNECT:I = 0x1

.field private static final DISCONNECT:I


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;


# direct methods
.method private constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;-><init>(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "param"    # [Ljava/lang/Object;

    .prologue
    .line 167
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "param":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Void;
    .registers 7
    .param p1, "param"    # [Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 168
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_52

    .line 179
    const-string/jumbo v0, "NfcPollingTestMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid parameter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :goto_27
    return-object v4

    .line 170
    :pswitch_28
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    new-instance v1, Lcom/sonymobile/nfc/NfcConfig;

    invoke-direct {v1}, Lcom/sonymobile/nfc/NfcConfig;-><init>()V

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->-set0(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;Lcom/sonymobile/nfc/NfcConfig;)Lcom/sonymobile/nfc/NfcConfig;

    .line 171
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->-get1(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    invoke-virtual {v0, v1}, Lcom/sonymobile/nfc/NfcConfig;->connect(Landroid/content/Context;)Z

    .line 172
    new-array v0, v3, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_27

    .line 175
    :pswitch_43
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->-get1(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;)Lcom/sonymobile/nfc/NfcConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcConfig;->close()V

    .line 176
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    invoke-static {v0, v4}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->-set0(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;Lcom/sonymobile/nfc/NfcConfig;)Lcom/sonymobile/nfc/NfcConfig;

    goto :goto_27

    .line 168
    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_43
        :pswitch_28
    .end packed-switch
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2
    .param p1, "values"    # [Ljava/lang/Object;

    .prologue
    .line 186
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "values":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;->onProgressUpdate([Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Void;)V
    .registers 3
    .param p1, "values"    # [Ljava/lang/Void;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode$ConnectNfcAdapterExTask;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;->-wrap1(Lcom/sonymobile/nfc/debugmenu/NfcPollingTestMode;)V

    .line 186
    return-void
.end method

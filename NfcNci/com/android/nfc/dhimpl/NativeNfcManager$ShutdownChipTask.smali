.class final Lcom/android/nfc/dhimpl/NativeNfcManager$ShutdownChipTask;
.super Landroid/os/AsyncTask;
.source "NativeNfcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/dhimpl/NativeNfcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutdownChipTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;


# direct methods
.method private constructor <init>(Lcom/android/nfc/dhimpl/NativeNfcManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/dhimpl/NativeNfcManager;

    .prologue
    .line 764
    iput-object p1, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$ShutdownChipTask;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/nfc/dhimpl/NativeNfcManager;Lcom/android/nfc/dhimpl/NativeNfcManager$ShutdownChipTask;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/nfc/dhimpl/NativeNfcManager;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager$ShutdownChipTask;-><init>(Lcom/android/nfc/dhimpl/NativeNfcManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 766
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/dhimpl/NativeNfcManager$ShutdownChipTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 767
    invoke-static {}, Lcom/android/nfc/dhimpl/NativeNfcManager;->-get0()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "NativeNfcManager"

    const-string/jumbo v1, "Shutting down chip..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_f
    iget-object v0, p0, Lcom/android/nfc/dhimpl/NativeNfcManager$ShutdownChipTask;->this$0:Lcom/android/nfc/dhimpl/NativeNfcManager;

    invoke-static {v0}, Lcom/android/nfc/dhimpl/NativeNfcManager;->-wrap2(Lcom/android/nfc/dhimpl/NativeNfcManager;)V

    .line 769
    const/4 v0, 0x0

    return-object v0
.end method

.class Lcom/android/nfc/NfcService$NfcServiceGsma$1;
.super Lcom/android/nfc/NfcService$EnableDisableTask;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcService$NfcServiceGsma;->doEnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/nfc/NfcService$NfcServiceGsma;


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService$NfcServiceGsma;Lcom/android/nfc/NfcService;)V
    .registers 3
    .param p1, "this$1"    # Lcom/android/nfc/NfcService$NfcServiceGsma;
    .param p2, "this$0"    # Lcom/android/nfc/NfcService;

    .prologue
    .line 2280
    iput-object p1, p0, Lcom/android/nfc/NfcService$NfcServiceGsma$1;->this$1:Lcom/android/nfc/NfcService$NfcServiceGsma;

    invoke-direct {p0, p2}, Lcom/android/nfc/NfcService$EnableDisableTask;-><init>(Lcom/android/nfc/NfcService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 2282
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/nfc/NfcService$NfcServiceGsma$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .registers 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 2283
    invoke-super {p0, p1}, Lcom/android/nfc/NfcService$EnableDisableTask;->onPostExecute(Ljava/lang/Object;)V

    .line 2284
    iget-object v0, p0, Lcom/android/nfc/NfcService$NfcServiceGsma$1;->this$1:Lcom/android/nfc/NfcService$NfcServiceGsma;

    invoke-static {v0}, Lcom/android/nfc/NfcService$NfcServiceGsma;->-wrap0(Lcom/android/nfc/NfcService$NfcServiceGsma;)V

    .line 2282
    return-void
.end method

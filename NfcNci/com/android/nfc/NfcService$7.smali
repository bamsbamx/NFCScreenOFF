.class Lcom/android/nfc/NfcService$7;
.super Ljava/lang/Thread;
.source "NfcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/NfcService;->playSound(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/NfcService;

.field final synthetic val$soundId:I


# direct methods
.method constructor <init>(Lcom/android/nfc/NfcService;I)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/nfc/NfcService;
    .param p2, "val$soundId"    # I

    .prologue
    .line 1625
    iput-object p1, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    iput p2, p0, Lcom/android/nfc/NfcService$7;->val$soundId:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1628
    iget-object v0, p0, Lcom/android/nfc/NfcService$7;->this$0:Lcom/android/nfc/NfcService;

    iget v1, p0, Lcom/android/nfc/NfcService$7;->val$soundId:I

    invoke-virtual {v0, v1}, Lcom/android/nfc/NfcService;->playSoundSync(I)V

    .line 1627
    return-void
.end method

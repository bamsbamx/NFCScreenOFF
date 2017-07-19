.class Lcom/android/nfc/P2pEventManager$1;
.super Ljava/lang/Object;
.source "P2pEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/P2pEventManager;->onP2pSendDebounce()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/P2pEventManager;


# direct methods
.method constructor <init>(Lcom/android/nfc/P2pEventManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/P2pEventManager;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/nfc/P2pEventManager$1;->this$0:Lcom/android/nfc/P2pEventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/android/nfc/P2pEventManager$1;->this$0:Lcom/android/nfc/P2pEventManager;

    iget-object v0, v0, Lcom/android/nfc/P2pEventManager;->mSendUi:Lcom/android/nfc/beam/SendUi;

    invoke-virtual {v0}, Lcom/android/nfc/beam/SendUi;->showSendHint()V

    .line 207
    return-void
.end method

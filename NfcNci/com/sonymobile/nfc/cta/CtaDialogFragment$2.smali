.class Lcom/sonymobile/nfc/cta/CtaDialogFragment$2;
.super Ljava/lang/Object;
.source "CtaDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/cta/CtaDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/cta/CtaDialogFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/cta/CtaDialogFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/cta/CtaDialogFragment;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/sonymobile/nfc/cta/CtaDialogFragment$2;->this$0:Lcom/sonymobile/nfc/cta/CtaDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "arg1"    # I

    .prologue
    .line 70
    invoke-static {}, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->-get0()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string/jumbo v0, "CtaDialogFragment"

    const-string/jumbo v1, "mAllowClickListener#onClick()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_f
    iget-object v0, p0, Lcom/sonymobile/nfc/cta/CtaDialogFragment$2;->this$0:Lcom/sonymobile/nfc/cta/CtaDialogFragment;

    invoke-static {v0}, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->-get1(Lcom/sonymobile/nfc/cta/CtaDialogFragment;)Lcom/sonymobile/nfc/cta/CtaDialogFragment$Callback;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 73
    iget-object v0, p0, Lcom/sonymobile/nfc/cta/CtaDialogFragment$2;->this$0:Lcom/sonymobile/nfc/cta/CtaDialogFragment;

    invoke-static {v0}, Lcom/sonymobile/nfc/cta/CtaDialogFragment;->-get1(Lcom/sonymobile/nfc/cta/CtaDialogFragment;)Lcom/sonymobile/nfc/cta/CtaDialogFragment$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonymobile/nfc/cta/CtaDialogFragment$Callback;->onAllow()V

    .line 69
    :cond_20
    return-void
.end method

.class Lcom/gsma/services/nfc/ConfirmEnableActivity$1;
.super Ljava/lang/Object;
.source "ConfirmEnableActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gsma/services/nfc/ConfirmEnableActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gsma/services/nfc/ConfirmEnableActivity;


# direct methods
.method constructor <init>(Lcom/gsma/services/nfc/ConfirmEnableActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/gsma/services/nfc/ConfirmEnableActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity$1;->this$0:Lcom/gsma/services/nfc/ConfirmEnableActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity$1;->this$0:Lcom/gsma/services/nfc/ConfirmEnableActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/gsma/services/nfc/ConfirmEnableActivity;->-wrap0(Lcom/gsma/services/nfc/ConfirmEnableActivity;Z)V

    .line 100
    iget-object v0, p0, Lcom/gsma/services/nfc/ConfirmEnableActivity$1;->this$0:Lcom/gsma/services/nfc/ConfirmEnableActivity;

    invoke-virtual {v0}, Lcom/gsma/services/nfc/ConfirmEnableActivity;->finish()V

    .line 98
    return-void
.end method

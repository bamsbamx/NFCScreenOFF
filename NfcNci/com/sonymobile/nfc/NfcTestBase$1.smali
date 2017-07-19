.class Lcom/sonymobile/nfc/NfcTestBase$1;
.super Ljava/lang/Object;
.source "NfcTestBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/NfcTestBase;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/NfcTestBase;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/NfcTestBase;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/NfcTestBase;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sonymobile/nfc/NfcTestBase$1;->this$0:Lcom/sonymobile/nfc/NfcTestBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/sonymobile/nfc/NfcTestBase$1;->this$0:Lcom/sonymobile/nfc/NfcTestBase;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/NfcTestBase;->finish()V

    .line 78
    return-void
.end method

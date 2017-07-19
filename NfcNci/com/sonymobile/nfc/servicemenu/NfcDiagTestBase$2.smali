.class Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$2;
.super Ljava/lang/Object;
.source "NfcDiagTestBase.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$2;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase$2;->this$0:Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;

    invoke-virtual {v0}, Lcom/sonymobile/nfc/servicemenu/NfcDiagTestBase;->finish()V

    .line 290
    return-void
.end method

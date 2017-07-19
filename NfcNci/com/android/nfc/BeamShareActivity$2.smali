.class Lcom/android/nfc/BeamShareActivity$2;
.super Ljava/lang/Object;
.source "BeamShareActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/BeamShareActivity;->showNfcDialogAndExit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/BeamShareActivity;


# direct methods
.method constructor <init>(Lcom/android/nfc/BeamShareActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/BeamShareActivity;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/nfc/BeamShareActivity$2;->this$0:Lcom/android/nfc/BeamShareActivity;

    invoke-virtual {v0}, Lcom/android/nfc/BeamShareActivity;->finish()V

    .line 93
    return-void
.end method

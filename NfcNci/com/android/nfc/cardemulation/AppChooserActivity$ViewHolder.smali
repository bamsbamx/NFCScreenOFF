.class Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;
.super Ljava/lang/Object;
.source "AppChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/AppChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field public banner:Landroid/widget/ImageView;

.field public icon:Landroid/widget/ImageView;

.field public text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    const v0, 0x7f0d0001

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;->text:Landroid/widget/TextView;

    .line 273
    const/high16 v0, 0x7f0d0000

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 274
    const v0, 0x7f0d0002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$ViewHolder;->banner:Landroid/widget/ImageView;

    .line 271
    return-void
.end method

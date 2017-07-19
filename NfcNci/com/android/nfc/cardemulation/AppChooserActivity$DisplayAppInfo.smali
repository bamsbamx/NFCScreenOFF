.class final Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;
.super Ljava/lang/Object;
.source "AppChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/AppChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DisplayAppInfo"
.end annotation


# instance fields
.field displayBanner:Landroid/graphics/drawable/Drawable;

.field displayIcon:Landroid/graphics/drawable/Drawable;

.field displayLabel:Ljava/lang/CharSequence;

.field serviceInfo:Landroid/nfc/cardemulation/ApduServiceInfo;

.field final synthetic this$0:Lcom/android/nfc/cardemulation/AppChooserActivity;


# direct methods
.method public constructor <init>(Lcom/android/nfc/cardemulation/AppChooserActivity;Landroid/nfc/cardemulation/ApduServiceInfo;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/nfc/cardemulation/AppChooserActivity;
    .param p2, "serviceInfo"    # Landroid/nfc/cardemulation/ApduServiceInfo;
    .param p3, "label"    # Ljava/lang/CharSequence;
    .param p4, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p5, "banner"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;->this$0:Lcom/android/nfc/cardemulation/AppChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p2, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;->serviceInfo:Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 186
    iput-object p4, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 187
    iput-object p3, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;->displayLabel:Ljava/lang/CharSequence;

    .line 188
    iput-object p5, p0, Lcom/android/nfc/cardemulation/AppChooserActivity$DisplayAppInfo;->displayBanner:Landroid/graphics/drawable/Drawable;

    .line 184
    return-void
.end method

.class public Lcom/sonymobile/nfc/ToastMaster;
.super Ljava/lang/Object;
.source "ToastMaster.java"


# static fields
.field private static final OFFSET_DP:I = 0x20

.field private static sFrontNfc:Z

.field private static sInitialized:Z

.field private static sOffsetPx:I

.field private static sText:Ljava/lang/String;

.field private static sToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 34
    sput v0, Lcom/sonymobile/nfc/ToastMaster;->sOffsetPx:I

    .line 36
    sput-object v1, Lcom/sonymobile/nfc/ToastMaster;->sToast:Landroid/widget/Toast;

    .line 38
    sput-object v1, Lcom/sonymobile/nfc/ToastMaster;->sText:Ljava/lang/String;

    .line 40
    sput-boolean v0, Lcom/sonymobile/nfc/ToastMaster;->sInitialized:Z

    .line 42
    sput-boolean v0, Lcom/sonymobile/nfc/ToastMaster;->sFrontNfc:Z

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancelToast()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 88
    sget-object v0, Lcom/sonymobile/nfc/ToastMaster;->sToast:Landroid/widget/Toast;

    if-eqz v0, :cond_a

    .line 89
    sget-object v0, Lcom/sonymobile/nfc/ToastMaster;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 91
    :cond_a
    sput-object v1, Lcom/sonymobile/nfc/ToastMaster;->sText:Ljava/lang/String;

    .line 92
    sput-object v1, Lcom/sonymobile/nfc/ToastMaster;->sToast:Landroid/widget/Toast;

    .line 87
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v1, 0x1

    sput-boolean v1, Lcom/sonymobile/nfc/ToastMaster;->sInitialized:Z

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 47
    .local v0, "scale":F
    const/high16 v1, 0x42000000    # 32.0f

    mul-float/2addr v1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/sonymobile/nfc/ToastMaster;->sOffsetPx:I

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/sonymobile/nfc/ToastMaster;->sFrontNfc:Z

    .line 44
    return-void
.end method

.method public static isSameToastShown(Ljava/lang/CharSequence;)Z
    .registers 4
    .param p0, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 52
    sget-object v0, Lcom/sonymobile/nfc/ToastMaster;->sToast:Landroid/widget/Toast;

    .line 53
    .local v0, "toast":Landroid/widget/Toast;
    sget-object v1, Lcom/sonymobile/nfc/ToastMaster;->sText:Ljava/lang/String;

    .line 55
    .local v1, "txt":Ljava/lang/String;
    if-eqz v0, :cond_1c

    .line 56
    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 57
    const/4 v2, 0x1

    return v2

    .line 60
    :cond_1c
    const/4 v2, 0x0

    return v2
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/sonymobile/nfc/ToastMaster;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    .line 63
    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "length"    # I

    .prologue
    const/4 v1, 0x0

    .line 68
    sget-boolean v0, Lcom/sonymobile/nfc/ToastMaster;->sInitialized:Z

    if-nez v0, :cond_8

    .line 69
    invoke-static {p0}, Lcom/sonymobile/nfc/ToastMaster;->init(Landroid/content/Context;)V

    .line 72
    :cond_8
    sget-object v0, Lcom/sonymobile/nfc/ToastMaster;->sToast:Landroid/widget/Toast;

    if-eqz v0, :cond_13

    .line 73
    sput-object v1, Lcom/sonymobile/nfc/ToastMaster;->sText:Ljava/lang/String;

    .line 74
    sget-object v0, Lcom/sonymobile/nfc/ToastMaster;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 77
    :cond_13
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/nfc/ToastMaster;->sText:Ljava/lang/String;

    .line 78
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/nfc/ToastMaster;->sToast:Landroid/widget/Toast;

    .line 80
    sget-boolean v0, Lcom/sonymobile/nfc/ToastMaster;->sFrontNfc:Z

    if-nez v0, :cond_2d

    .line 81
    sget-object v0, Lcom/sonymobile/nfc/ToastMaster;->sToast:Landroid/widget/Toast;

    sget v1, Lcom/sonymobile/nfc/ToastMaster;->sOffsetPx:I

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 83
    :cond_2d
    sget-object v0, Lcom/sonymobile/nfc/ToastMaster;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 84
    sget-object v0, Lcom/sonymobile/nfc/ToastMaster;->sToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    return-void
.end method

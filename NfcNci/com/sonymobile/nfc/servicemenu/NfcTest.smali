.class public Lcom/sonymobile/nfc/servicemenu/NfcTest;
.super Lcom/sonymobile/nfc/NfcTestBase;
.source "NfcTest.java"


# static fields
.field private static final SERVICE_ENTRY_CATEGORY:Ljava/lang/String; = "com.sonymobile.nfc.servicemenu.ENTRY_CATEGORY"

.field private static final SERVICE_ENTRY_INTENT:Ljava/lang/String; = "com.sonymobile.nfc.servicemenu.ENTRY_INTENT"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/sonymobile/nfc/NfcTestBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getTargetIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 44
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.nfc.servicemenu.ENTRY_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "menuIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonymobile.nfc.servicemenu.ENTRY_CATEGORY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0}, Lcom/sonymobile/nfc/servicemenu/NfcTest;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/sonymobile/nfc/NfcTestBase;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/sonymobile/nfc/servicemenu/NfcTest;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 37
    return-void
.end method

.method protected onEvaluateShowIcons()Z
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/sonymobile/nfc/NfcTestBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 66
    .local v0, "ret":Z
    const/16 v1, 0x18

    if-eq p1, v1, :cond_c

    .line 67
    const/16 v1, 0x19

    if-ne p1, v1, :cond_e

    .line 70
    :cond_c
    const/4 v1, 0x1

    return v1

    .line 68
    :cond_e
    const/16 v1, 0x1b

    if-eq p1, v1, :cond_c

    .line 73
    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Lcom/sonymobile/nfc/NfcTestBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 86
    .local v0, "ret":Z
    const/16 v1, 0x18

    if-eq p1, v1, :cond_c

    .line 87
    const/16 v1, 0x19

    if-ne p1, v1, :cond_e

    .line 89
    :cond_c
    const/4 v1, 0x1

    return v1

    .line 92
    :cond_e
    return v0
.end method

.class public Lcom/sonymobile/nfc/debugmenu/NfcTest;
.super Lcom/sonymobile/nfc/NfcTestBase;
.source "NfcTest.java"


# static fields
.field private static final DEBUG_ENTRY_CATEGORY:Ljava/lang/String; = "com.sonymobile.nfc.debugmenu.ENTRY_CATEGORY"

.field private static final DEBUG_ENTRY_INTENT:Ljava/lang/String; = "com.sonymobile.nfc.debugmenu.ENTRY_INTENT"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sonymobile/nfc/NfcTestBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getTargetIntent()Landroid/content/Intent;
    .registers 3

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.nfc.debugmenu.ENTRY_INTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 36
    .local v0, "menuIntent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonymobile.nfc.debugmenu.ENTRY_CATEGORY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcTest;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    return-object v0
.end method

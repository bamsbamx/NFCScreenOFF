.class public Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;
.super Landroid/widget/EditText;
.source "HexadecimalEditText.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hint"    # Ljava/lang/String;
    .param p3, "length"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v1, 0x3

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 33
    const-string/jumbo v1, "0123456789abcdefABCDEF"

    invoke-static {v1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 34
    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v1, p3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 35
    new-instance v1, Landroid/text/InputFilter$AllCaps;

    invoke-direct {v1}, Landroid/text/InputFilter$AllCaps;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 37
    .local v0, "filters":[Landroid/text/InputFilter;
    invoke-virtual {p0, v0}, Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 38
    invoke-virtual {p0, p2}, Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 39
    const v1, 0x80001

    invoke-virtual {p0, v1}, Lcom/sonymobile/nfc/debugmenu/HexadecimalEditText;->setInputType(I)V

    .line 29
    return-void
.end method

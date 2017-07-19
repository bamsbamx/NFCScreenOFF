.class Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$3;
.super Ljava/lang/Object;
.source "NfcSettingTestMode.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->initContentViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$3;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 5
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 235
    invoke-static {p2}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-set3(I)I

    .line 236
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$3;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    invoke-static {v0}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-wrap1(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;)V

    .line 237
    invoke-static {}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-get7()I

    move-result v0

    const v1, 0x7f0d0023

    if-ne v0, v1, :cond_18

    .line 238
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$3;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-wrap0(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;Z)V

    .line 234
    :goto_17
    return-void

    .line 240
    :cond_18
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode$3;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;->-wrap0(Lcom/sonymobile/nfc/debugmenu/NfcSettingTestMode;Z)V

    goto :goto_17
.end method

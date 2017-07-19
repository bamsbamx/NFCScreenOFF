.class Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$2;
.super Ljava/lang/Object;
.source "NfcRoutingTestMode.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->initializeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;)V
    .registers 2
    .param p1, "this$0"    # Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$2;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 4
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 165
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode$2;->this$0:Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;

    invoke-static {v0, p2}, Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;->-set2(Lcom/sonymobile/nfc/debugmenu/NfcRoutingTestMode;I)I

    .line 164
    return-void
.end method

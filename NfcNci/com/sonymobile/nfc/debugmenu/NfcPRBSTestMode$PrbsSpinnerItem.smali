.class Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsSpinnerItem;
.super Ljava/lang/Object;
.source "NfcPRBSTestMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrbsSpinnerItem"
.end annotation


# instance fields
.field private final mLabel:Ljava/lang/String;

.field private final mParameter:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestParameter;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "technology"    # I
    .param p3, "bitrate"    # I

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsSpinnerItem;->mLabel:Ljava/lang/String;

    .line 441
    new-instance v0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestParameter;

    invoke-direct {v0, p2, p3}, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestParameter;-><init>(II)V

    iput-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsSpinnerItem;->mParameter:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestParameter;

    .line 439
    return-void
.end method


# virtual methods
.method public getParameter()Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestParameter;
    .registers 2

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsSpinnerItem;->mParameter:Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsTestParameter;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcPRBSTestMode$PrbsSpinnerItem;->mLabel:Ljava/lang/String;

    return-object v0
.end method

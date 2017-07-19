.class public Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;
.super Ljava/lang/Object;
.source "NfcDeviceRwBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ConfigAddress"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress$Validator;
    }
.end annotation


# static fields
.field public static final DATA_SIZE:I = 0x2

.field protected static final FORMAT:Ljava/lang/String; = "%04X"

.field protected static final N_A:I = -0x1


# instance fields
.field mValidator:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress$Validator;

.field mValue:J


# direct methods
.method public constructor <init>(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 846
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;-><init>(JLcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress$Validator;)V

    .line 845
    return-void
.end method

.method public constructor <init>(JLcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress$Validator;)V
    .registers 5
    .param p1, "value"    # J
    .param p3, "validator"    # Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress$Validator;

    .prologue
    .line 837
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    iput-object p3, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->mValidator:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress$Validator;

    .line 839
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->mValidator:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress$Validator;

    if-eqz v0, :cond_e

    .line 840
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->mValidator:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress$Validator;

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress$Validator;->throwExceptionIfInvalid(J)V

    .line 842
    :cond_e
    iput-wide p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->mValue:J

    .line 837
    return-void
.end method


# virtual methods
.method public get()J
    .registers 3

    .prologue
    .line 859
    iget-wide v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->mValue:J

    return-wide v0
.end method

.method public getFormatString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 850
    const-string/jumbo v0, "%04X"

    return-object v0
.end method

.method public isNa()Z
    .registers 5

    .prologue
    .line 870
    iget-wide v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->mValue:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isValid(J)Z
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 874
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->mValidator:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress$Validator;

    if-eqz v0, :cond_b

    .line 875
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->mValidator:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress$Validator;

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress$Validator;->isValid(J)Z

    move-result v0

    return v0

    .line 877
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public set(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 863
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->mValidator:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress$Validator;

    if-eqz v0, :cond_9

    .line 864
    iget-object v0, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->mValidator:Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress$Validator;

    invoke-interface {v0, p1, p2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress$Validator;->throwExceptionIfInvalid(J)V

    .line 866
    :cond_9
    iput-wide p1, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->mValue:J

    .line 862
    return-void
.end method

.method public throwExceptionIfInvalid(J)V
    .registers 6
    .param p1, "value"    # J

    .prologue
    .line 882
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->isValid(J)Z

    move-result v0

    if-nez v0, :cond_20

    .line 883
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 881
    :cond_20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 855
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->isNa()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "--"

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {p0}, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->getFormatString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;->mValue:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

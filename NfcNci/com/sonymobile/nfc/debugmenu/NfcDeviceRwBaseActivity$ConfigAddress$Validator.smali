.class interface abstract Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress$Validator;
.super Ljava/lang/Object;
.source "NfcDeviceRwBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/nfc/debugmenu/NfcDeviceRwBaseActivity$ConfigAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Validator"
.end annotation


# virtual methods
.method public abstract getMax()J
.end method

.method public abstract getMin()J
.end method

.method public abstract isValid(J)Z
.end method

.method public abstract throwExceptionIfInvalid(J)V
.end method

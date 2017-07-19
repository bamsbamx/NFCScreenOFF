.class public interface abstract Lcom/android/nfc/cardemulation/PreferredServices$Callback;
.super Ljava/lang/Object;
.source "PreferredServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/nfc/cardemulation/PreferredServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onPreferredForegroundServiceChanged(Landroid/content/ComponentName;)V
.end method

.method public abstract onPreferredPaymentServiceChanged(Landroid/content/ComponentName;)V
.end method

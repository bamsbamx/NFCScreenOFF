.class Lcom/android/nfc/RegisteredComponentCache$1;
.super Landroid/content/BroadcastReceiver;
.source "RegisteredComponentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/nfc/RegisteredComponentCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/nfc/RegisteredComponentCache;


# direct methods
.method constructor <init>(Lcom/android/nfc/RegisteredComponentCache;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/nfc/RegisteredComponentCache;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/nfc/RegisteredComponentCache$1;->this$0:Lcom/android/nfc/RegisteredComponentCache;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context1"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/nfc/RegisteredComponentCache$1;->this$0:Lcom/android/nfc/RegisteredComponentCache;

    invoke-virtual {v0}, Lcom/android/nfc/RegisteredComponentCache;->generateComponentsList()V

    .line 65
    return-void
.end method

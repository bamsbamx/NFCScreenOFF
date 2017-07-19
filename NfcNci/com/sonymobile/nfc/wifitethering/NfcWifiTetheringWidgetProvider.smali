.class public Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "NfcWifiTetheringWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "packageName":Ljava/lang/String;
    new-instance v4, Landroid/content/ComponentName;

    .line 27
    const-class v5, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringWidgetProvider;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 26
    invoke-direct {v4, v1, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .local v4, "widgetComponentName":Landroid/content/ComponentName;
    new-instance v3, Landroid/widget/RemoteViews;

    const v5, 0x7f03001e

    invoke-direct {v3, v1, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 31
    .local v3, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 32
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v5, 0x10000000

    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    const-class v5, Lcom/sonymobile/nfc/wifitethering/NfcWifiTetheringConfirmDialog;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const/4 v5, 0x0

    .line 35
    const/high16 v6, 0x8000000

    .line 34
    invoke-static {p1, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 36
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    const v5, 0x7f0d00d6

    invoke-virtual {v3, v5, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 38
    invoke-virtual {p2, v4, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 23
    return-void
.end method

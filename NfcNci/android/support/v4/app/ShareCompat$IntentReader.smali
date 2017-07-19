.class public Landroid/support/v4/app/ShareCompat$IntentReader;
.super Ljava/lang/Object;
.source "ShareCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ShareCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntentReader"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IntentReader"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mCallingActivity:Landroid/content/ComponentName;

.field private mCallingPackage:Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private mStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 678
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 679
    iput-object p1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    .line 680
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    .line 681
    invoke-static {p1}, Landroid/support/v4/app/ShareCompat;->getCallingPackage(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    .line 682
    invoke-static {p1}, Landroid/support/v4/app/ShareCompat;->getCallingActivity(Landroid/app/Activity;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    .line 678
    return-void
.end method

.method public static from(Landroid/app/Activity;)Landroid/support/v4/app/ShareCompat$IntentReader;
    .registers 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 675
    new-instance v0, Landroid/support/v4/app/ShareCompat$IntentReader;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ShareCompat$IntentReader;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method


# virtual methods
.method public getCallingActivity()Landroid/content/ComponentName;
    .registers 2

    .prologue
    .line 890
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getCallingActivityIcon()Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 904
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    if-nez v2, :cond_6

    return-object v4

    .line 906
    :cond_6
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 908
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_c
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_11} :catch_13

    move-result-object v2

    return-object v2

    .line 909
    :catch_13
    move-exception v0

    .line 910
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "IntentReader"

    const-string/jumbo v3, "Could not retrieve icon for calling activity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 912
    return-object v4
.end method

.method public getCallingApplicationIcon()Landroid/graphics/drawable/Drawable;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 926
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    if-nez v2, :cond_6

    return-object v4

    .line 928
    :cond_6
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 930
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_c
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_11} :catch_13

    move-result-object v2

    return-object v2

    .line 931
    :catch_13
    move-exception v0

    .line 932
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "IntentReader"

    const-string/jumbo v3, "Could not retrieve icon for calling application"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    return-object v4
.end method

.method public getCallingApplicationLabel()Ljava/lang/CharSequence;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 948
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    if-nez v2, :cond_6

    return-object v4

    .line 950
    :cond_6
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 952
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_c
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_16} :catch_18

    move-result-object v2

    return-object v2

    .line 953
    :catch_18
    move-exception v0

    .line 954
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "IntentReader"

    const-string/jumbo v3, "Could not retrieve label for calling application"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 956
    return-object v4
.end method

.method public getCallingPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 873
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mCallingPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailBcc()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 846
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.BCC"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailCc()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 836
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.CC"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmailTo()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 826
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.EMAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 752
    iget-object v2, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.HTML_TEXT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 753
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_19

    .line 754
    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 755
    .local v1, "text":Ljava/lang/CharSequence;
    instance-of v2, v1, Landroid/text/Spanned;

    if-eqz v2, :cond_1a

    .line 756
    check-cast v1, Landroid/text/Spanned;

    .end local v1    # "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    .line 761
    :cond_19
    :goto_19
    return-object v0

    .line 757
    .restart local v1    # "text":Ljava/lang/CharSequence;
    :cond_1a
    if-eqz v1, :cond_19

    .line 758
    invoke-static {}, Landroid/support/v4/app/ShareCompat;->-get0()Landroid/support/v4/app/ShareCompat$ShareCompatImpl;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/support/v4/app/ShareCompat$ShareCompatImpl;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_19
.end method

.method public getStream()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 776
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public getStream(I)Landroid/net/Uri;
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 789
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->isMultipleShare()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 790
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    .line 792
    :cond_15
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    .line 793
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0

    .line 795
    :cond_22
    if-nez p1, :cond_30

    .line 796
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0

    .line 798
    :cond_30
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Stream items available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->getStreamCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 799
    const-string/jumbo v2, " index requested: "

    .line 798
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStreamCount()I
    .registers 3

    .prologue
    .line 810
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/support/v4/app/ShareCompat$IntentReader;->isMultipleShare()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 811
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    .line 813
    :cond_15
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    .line 814
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mStreams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    .line 816
    :cond_20
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.STREAM"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x1

    :goto_2c
    return v0

    :cond_2d
    const/4 v0, 0x0

    goto :goto_2c
.end method

.method public getSubject()Ljava/lang/String;
    .registers 3

    .prologue
    .line 856
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .registers 3

    .prologue
    .line 738
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 728
    iget-object v0, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMultipleShare()Z
    .registers 3

    .prologue
    .line 718
    const-string/jumbo v0, "android.intent.action.SEND_MULTIPLE"

    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isShareIntent()Z
    .registers 3

    .prologue
    .line 694
    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 695
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.SEND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string/jumbo v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_16
    return v1

    :cond_17
    const/4 v1, 0x1

    goto :goto_16
.end method

.method public isSingleShare()Z
    .registers 3

    .prologue
    .line 707
    const-string/jumbo v0, "android.intent.action.SEND"

    iget-object v1, p0, Landroid/support/v4/app/ShareCompat$IntentReader;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

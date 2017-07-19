.class Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase$2;
.super Ljava/lang/Object;
.source "NfcTransactionDispatcherBase.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;->queryTransactionRelolveInfo([B)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;Landroid/content/pm/PackageManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;
    .param p2, "val$pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase$2;->this$0:Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase;

    iput-object p2, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase$2;->val$pm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 16
    .param p1, "s1"    # Landroid/content/pm/ResolveInfo;
    .param p2, "s2"    # Landroid/content/pm/ResolveInfo;

    .prologue
    const/4 v12, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 136
    iget v3, p1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 137
    .local v3, "v1":I
    iget v4, p2, Landroid/content/pm/ResolveInfo;->priority:I

    .line 138
    .local v4, "v2":I
    if-eq v3, v4, :cond_e

    .line 139
    if-le v3, v4, :cond_c

    :goto_b
    return v5

    :cond_c
    move v5, v6

    goto :goto_b

    .line 141
    :cond_e
    iget v3, p1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 142
    iget v4, p2, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 143
    if-eq v3, v4, :cond_19

    .line 144
    if-le v3, v4, :cond_17

    :goto_16
    return v5

    :cond_17
    move v5, v6

    goto :goto_16

    .line 146
    :cond_19
    iget-boolean v7, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v8, p2, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v7, v8, :cond_26

    .line 147
    iget-boolean v7, p1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eqz v7, :cond_24

    :goto_23
    return v5

    :cond_24
    move v5, v6

    goto :goto_23

    .line 149
    :cond_26
    iget v3, p1, Landroid/content/pm/ResolveInfo;->match:I

    .line 150
    iget v4, p2, Landroid/content/pm/ResolveInfo;->match:I

    .line 151
    if-eq v3, v4, :cond_31

    .line 152
    if-le v3, v4, :cond_2f

    :goto_2e
    return v5

    :cond_2f
    move v5, v6

    goto :goto_2e

    .line 154
    :cond_31
    iget-boolean v7, p1, Landroid/content/pm/ResolveInfo;->system:Z

    iget-boolean v8, p2, Landroid/content/pm/ResolveInfo;->system:Z

    if-eq v7, v8, :cond_3e

    .line 155
    iget-boolean v7, p1, Landroid/content/pm/ResolveInfo;->system:Z

    if-eqz v7, :cond_3c

    :goto_3b
    return v5

    :cond_3c
    move v5, v6

    goto :goto_3b

    .line 159
    :cond_3e
    :try_start_3e
    iget-object v7, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase$2;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 160
    .local v1, "p1":Landroid/content/pm/PackageInfo;
    iget-object v7, p0, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase$2;->val$pm:Landroid/content/pm/PackageManager;

    iget-object v8, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 161
    .local v2, "p2":Landroid/content/pm/PackageInfo;
    iget-wide v8, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v10, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    cmp-long v7, v8, v10

    if-lez v7, :cond_5d

    return v6

    .line 162
    :cond_5d
    iget-wide v6, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    iget-wide v8, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_61} :catch_66

    cmp-long v6, v6, v8

    if-gez v6, :cond_6a

    return v5

    .line 163
    .end local v1    # "p1":Landroid/content/pm/PackageInfo;
    .end local v2    # "p2":Landroid/content/pm/PackageInfo;
    :catch_66
    move-exception v0

    .line 164
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6a
    return v12
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "s1"    # Ljava/lang/Object;
    .param p2, "s2"    # Ljava/lang/Object;

    .prologue
    .line 135
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1    # "s1":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2    # "s2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/nfc/transaction/NfcTransactionDispatcherBase$2;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method

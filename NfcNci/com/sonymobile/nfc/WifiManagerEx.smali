.class public Lcom/sonymobile/nfc/WifiManagerEx;
.super Ljava/lang/Object;
.source "WifiManagerEx.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiManagerEx"


# instance fields
.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .registers 2
    .param p1, "manager"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/sonymobile/nfc/WifiManagerEx;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 23
    return-void
.end method


# virtual methods
.method public enableWifiWithDelayedFirstScan()Z
    .registers 12

    .prologue
    .line 28
    const/4 v7, 0x0

    .line 29
    .local v7, "success":Z
    const/4 v6, 0x0

    .line 30
    .local v6, "ret":Z
    const/4 v5, 0x0

    .line 32
    .local v5, "method":Ljava/lang/reflect/Method;
    :try_start_3
    iget-object v8, p0, Lcom/sonymobile/nfc/WifiManagerEx;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string/jumbo v9, "enableWifiWithDelayedFirstScan"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 33
    .local v5, "method":Ljava/lang/reflect/Method;
    iget-object v8, p0, Lcom/sonymobile/nfc/WifiManagerEx;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v5, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_21
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_21} :catch_61
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_21} :catch_55
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_21} :catch_49
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_21} :catch_3d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_21} :catch_2d

    move-result v6

    .line 34
    .local v6, "ret":Z
    const/4 v7, 0x1

    .line 47
    .end local v5    # "method":Ljava/lang/reflect/Method;
    .end local v6    # "ret":Z
    :goto_23
    if-nez v7, :cond_2c

    .line 48
    iget-object v8, p0, Lcom/sonymobile/nfc/WifiManagerEx;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v6

    .line 52
    :cond_2c
    return v6

    .line 43
    .local v6, "ret":Z
    :catch_2d
    move-exception v4

    .line 44
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v8, "WifiManagerEx"

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 41
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_3d
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v8, "WifiManagerEx"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 39
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_49
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v8, "WifiManagerEx"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 37
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_55
    move-exception v3

    .line 38
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v8, "WifiManagerEx"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 35
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_61
    move-exception v2

    .line 36
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v8, "WifiManagerEx"

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public getWifiApConnectedDevices()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    const/4 v8, 0x0

    .line 57
    .local v8, "success":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v7, "ret":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v6, 0x0

    .line 60
    .local v6, "method":Ljava/lang/reflect/Method;
    :try_start_7
    iget-object v9, p0, Lcom/sonymobile/nfc/WifiManagerEx;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string/jumbo v10, "getWifiApConnectedDevices"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Class;

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 61
    .local v6, "method":Ljava/lang/reflect/Method;
    iget-object v9, p0, Lcom/sonymobile/nfc/WifiManagerEx;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v6, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/util/List;

    move-object v7, v0
    :try_end_24
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_24} :catch_5c
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_24} :catch_50
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_24} :catch_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_24} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_24} :catch_28

    .line 62
    const/4 v8, 0x1

    .line 75
    .end local v6    # "method":Ljava/lang/reflect/Method;
    :goto_25
    if-nez v8, :cond_27

    .line 79
    :cond_27
    return-object v7

    .line 71
    :catch_28
    move-exception v5

    .line 72
    .local v5, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v9, "WifiManagerEx"

    invoke-virtual {v5}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 69
    .end local v5    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_38
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v9, "WifiManagerEx"

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 67
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_44
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v9, "WifiManagerEx"

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 65
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_50
    move-exception v4

    .line 66
    .local v4, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v9, "WifiManagerEx"

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 63
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catch_5c
    move-exception v3

    .line 64
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v9, "WifiManagerEx"

    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.class public Lcom/sonymobile/nfc/WifiP2pManagerEx;
.super Ljava/lang/Object;
.source "WifiP2pManagerEx.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiP2pManagerEx"


# instance fields
.field private final mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager;)V
    .registers 2
    .param p1, "manager"    # Landroid/net/wifi/p2p/WifiP2pManager;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sonymobile/nfc/WifiP2pManagerEx;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 22
    return-void
.end method


# virtual methods
.method public discoverOnSpecificFrequency(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;I)V
    .registers 16
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;
    .param p3, "freq"    # I

    .prologue
    .line 27
    const/4 v6, 0x0

    .line 28
    .local v6, "success":Z
    const/4 v5, 0x0

    .line 30
    .local v5, "method":Ljava/lang/reflect/Method;
    :try_start_2
    iget-object v7, p0, Lcom/sonymobile/nfc/WifiP2pManagerEx;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pManager;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "discoverOnSpecificFrequency"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    .line 31
    const-class v10, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-class v10, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x2

    aput-object v10, v9, v11

    .line 30
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 32
    .local v5, "method":Ljava/lang/reflect/Method;
    iget-object v7, p0, Lcom/sonymobile/nfc/WifiP2pManagerEx;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_36} :catch_73
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_36} :catch_67
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_36} :catch_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_36} :catch_4f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_36} :catch_3f

    .line 33
    const/4 v6, 0x1

    .line 46
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_37
    if-nez v6, :cond_3e

    .line 47
    iget-object v7, p0, Lcom/sonymobile/nfc/WifiP2pManagerEx;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v7, p1, p2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 26
    :cond_3e
    return-void

    .line 42
    :catch_3f
    move-exception v4

    .line 43
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v7, "WifiP2pManagerEx"

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 40
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4f
    move-exception v1

    .line 41
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v7, "WifiP2pManagerEx"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 38
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_5b
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v7, "WifiP2pManagerEx"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 36
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_67
    move-exception v3

    .line 37
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v7, "WifiP2pManagerEx"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37

    .line 34
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_73
    move-exception v2

    .line 35
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v7, "WifiP2pManagerEx"

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_37
.end method

.method public setIncomingDeviceAddress(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V
    .registers 16
    .param p1, "c"    # Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .param p2, "deviceAddress"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .prologue
    .line 53
    const/4 v6, 0x0

    .line 54
    .local v6, "success":Z
    const/4 v5, 0x0

    .line 56
    .local v5, "method":Ljava/lang/reflect/Method;
    :try_start_2
    iget-object v7, p0, Lcom/sonymobile/nfc/WifiP2pManagerEx;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v7}, Landroid/net/wifi/p2p/WifiP2pManager;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-string/jumbo v8, "setIncomingDeviceAddress"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    .line 57
    const-class v10, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    const-class v10, Ljava/lang/String;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const-class v10, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    const/4 v11, 0x2

    aput-object v10, v9, v11

    .line 56
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 58
    .local v5, "method":Ljava/lang/reflect/Method;
    iget-object v7, p0, Lcom/sonymobile/nfc/WifiP2pManagerEx;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p2, v8, v9

    const/4 v9, 0x2

    aput-object p3, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_32} :catch_6a
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_32} :catch_5e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_32} :catch_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_32} :catch_46
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_32} :catch_36

    .line 59
    const/4 v6, 0x1

    .line 72
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_33
    if-nez v6, :cond_35

    .line 52
    :cond_35
    return-void

    .line 68
    :catch_36
    move-exception v4

    .line 69
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v7, "WifiP2pManagerEx"

    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 66
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_46
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v7, "WifiP2pManagerEx"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 64
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_52
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v7, "WifiP2pManagerEx"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 62
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_5e
    move-exception v3

    .line 63
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v7, "WifiP2pManagerEx"

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33

    .line 60
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_6a
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v7, "WifiP2pManagerEx"

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33
.end method

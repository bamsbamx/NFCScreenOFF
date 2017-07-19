.class Landroid/support/v4/net/TrafficStatsCompat$IcsTrafficStatsCompatImpl;
.super Ljava/lang/Object;
.source "TrafficStatsCompat.java"

# interfaces
.implements Landroid/support/v4/net/TrafficStatsCompat$TrafficStatsCompatImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/net/TrafficStatsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IcsTrafficStatsCompatImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearThreadStatsTag()V
    .registers 1

    .prologue
    .line 98
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompatIcs;->clearThreadStatsTag()V

    .line 97
    return-void
.end method

.method public getThreadStatsTag()I
    .registers 2

    .prologue
    .line 103
    invoke-static {}, Landroid/support/v4/net/TrafficStatsCompatIcs;->getThreadStatsTag()I

    move-result v0

    return v0
.end method

.method public incrementOperationCount(I)V
    .registers 2
    .param p1, "operationCount"    # I

    .prologue
    .line 108
    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatIcs;->incrementOperationCount(I)V

    .line 107
    return-void
.end method

.method public incrementOperationCount(II)V
    .registers 3
    .param p1, "tag"    # I
    .param p2, "operationCount"    # I

    .prologue
    .line 113
    invoke-static {p1, p2}, Landroid/support/v4/net/TrafficStatsCompatIcs;->incrementOperationCount(II)V

    .line 112
    return-void
.end method

.method public setThreadStatsTag(I)V
    .registers 2
    .param p1, "tag"    # I

    .prologue
    .line 118
    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatIcs;->setThreadStatsTag(I)V

    .line 117
    return-void
.end method

.method public tagDatagramSocket(Ljava/net/DatagramSocket;)V
    .registers 2
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatIcs;->tagDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 132
    return-void
.end method

.method public tagSocket(Ljava/net/Socket;)V
    .registers 2
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatIcs;->tagSocket(Ljava/net/Socket;)V

    .line 122
    return-void
.end method

.method public untagDatagramSocket(Ljava/net/DatagramSocket;)V
    .registers 2
    .param p1, "socket"    # Ljava/net/DatagramSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatIcs;->untagDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 137
    return-void
.end method

.method public untagSocket(Ljava/net/Socket;)V
    .registers 2
    .param p1, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 128
    invoke-static {p1}, Landroid/support/v4/net/TrafficStatsCompatIcs;->untagSocket(Ljava/net/Socket;)V

    .line 127
    return-void
.end method

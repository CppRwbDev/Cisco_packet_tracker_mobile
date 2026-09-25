.class public Lorg/jshybugger/kc;
.super Ljava/lang/Object;
.source "NetworkUtils.java"


# static fields
.field private static final a:Lorg/jshybugger/nS;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lorg/jshybugger/kc;

    invoke-static {v0}, Lorg/jshybugger/nT;->a(Ljava/lang/Class;)Lorg/jshybugger/nS;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/kc;->a:Lorg/jshybugger/nS;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 36
    :try_start_0
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_7} :catch_b

    move-result v1

    if-nez v1, :cond_c

    .line 53
    :cond_a
    :goto_a
    return-object v0

    :catch_b
    move-exception v0

    .line 45
    :cond_c
    invoke-static {}, Lorg/jshybugger/kc;->b()Ljava/net/InetAddress;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v1

    if-nez v1, :cond_1c

    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 48
    :cond_1c
    invoke-static {}, Lorg/jshybugger/kc;->c()Ljava/net/InetAddress;

    move-result-object v1

    .line 49
    if-eqz v1, :cond_a

    move-object v0, v1

    .line 50
    goto :goto_a
.end method

.method private static b()Ljava/net/InetAddress;
    .registers 4

    .prologue
    .line 57
    new-instance v0, Ljava/net/InetSocketAddress;

    const-string v1, "www.google.com"

    const/16 v2, 0x50

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 59
    const/4 v2, 0x0

    .line 61
    :try_start_a
    new-instance v1, Ljava/net/DatagramSocket;

    invoke-direct {v1}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_f
    .catch Ljava/net/SocketException; {:try_start_a .. :try_end_f} :catch_1a
    .catchall {:try_start_a .. :try_end_f} :catchall_2d

    .line 62
    :try_start_f
    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->connect(Ljava/net/SocketAddress;)V

    .line 63
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;
    :try_end_15
    .catch Ljava/net/SocketException; {:try_start_f .. :try_end_15} :catch_37
    .catchall {:try_start_f .. :try_end_15} :catchall_35

    move-result-object v0

    .line 69
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    .line 70
    :cond_19
    :goto_19
    return-object v0

    .line 65
    :catch_1a
    move-exception v0

    move-object v1, v2

    .line 66
    :goto_1c
    :try_start_1c
    sget-object v2, Lorg/jshybugger/kc;->a:Lorg/jshybugger/nS;

    const-string v3, "Exception getting address"

    invoke-interface {v2, v3, v0}, Lorg/jshybugger/nS;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;
    :try_end_26
    .catchall {:try_start_1c .. :try_end_26} :catchall_35

    move-result-object v0

    .line 69
    if-eqz v1, :cond_19

    .line 70
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    goto :goto_19

    .line 69
    :catchall_2d
    move-exception v0

    move-object v1, v2

    :goto_2f
    if-eqz v1, :cond_34

    .line 70
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_34
    throw v0

    .line 69
    :catchall_35
    move-exception v0

    goto :goto_2f

    .line 65
    :catch_37
    move-exception v0

    goto :goto_1c
.end method

.method private static c()Ljava/net/InetAddress;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 84
    :try_start_1
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v2

    .line 86
    :cond_5
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 87
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 89
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 90
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InterfaceAddress;

    .line 92
    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v4

    if-lez v4, :cond_1f

    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v4

    const/16 v5, 0x20

    if-gt v4, v5, :cond_1f

    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_1f

    .line 95
    invoke-virtual {v0}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;
    :try_end_46
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_46} :catch_4a

    move-result-object v0

    .line 102
    :goto_47
    return-object v0

    :cond_48
    move-object v0, v1

    .line 100
    goto :goto_47

    .line 102
    :catch_4a
    move-exception v0

    move-object v0, v1

    goto :goto_47
.end method

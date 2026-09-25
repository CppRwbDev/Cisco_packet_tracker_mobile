.class public final Lorg/jshybugger/fk;
.super Ljava/lang/Object;
.source "NetUtil.java"


# static fields
.field public static final a:I

.field private static b:Ljava/net/Inet6Address;

.field private static c:Ljava/net/NetworkInterface;

.field private static final d:Lorg/jshybugger/gX;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 72
    const-class v0, Lorg/jshybugger/fk;

    invoke-static {v0}, Lorg/jshybugger/gY;->a(Ljava/lang/Class;)Lorg/jshybugger/gX;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/fk;->d:Lorg/jshybugger/gX;

    .line 78
    :try_start_9
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    .line 79
    :cond_d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_10b

    .line 81
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    .line 82
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isLoopback()Z
    :try_end_1c
    .catch Ljava/net/SocketException; {:try_start_9 .. :try_end_1c} :catch_59

    move-result v3

    if-eqz v3, :cond_d

    .line 88
    :goto_1f
    if-nez v0, :cond_28

    .line 89
    :try_start_21
    sget-object v1, Lorg/jshybugger/fk;->d:Lorg/jshybugger/gX;

    const-string v3, "Failed to find the loopback interface"

    invoke-interface {v1, v3}, Lorg/jshybugger/gX;->c(Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/net/SocketException; {:try_start_21 .. :try_end_28} :catch_106

    .line 95
    :cond_28
    :goto_28
    sput-object v0, Lorg/jshybugger/fk;->c:Ljava/net/NetworkInterface;

    .line 99
    sget-object v0, Lorg/jshybugger/fk;->c:Ljava/net/NetworkInterface;

    if-eqz v0, :cond_6c

    .line 100
    sget-object v0, Lorg/jshybugger/fk;->d:Lorg/jshybugger/gX;

    const-string v1, "Loopback interface: {}"

    sget-object v3, Lorg/jshybugger/fk;->c:Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    sget-object v0, Lorg/jshybugger/fk;->c:Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    move-object v1, v2

    .line 102
    :goto_42
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 103
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 104
    if-nez v1, :cond_64

    .line 105
    sget-object v1, Lorg/jshybugger/fk;->d:Lorg/jshybugger/gX;

    const-string v4, "Loopback address: {} (primary)"

    invoke-interface {v1, v4, v0}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v1, v0

    .line 106
    goto :goto_42

    .line 91
    :catch_59
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 92
    :goto_5c
    sget-object v3, Lorg/jshybugger/fk;->d:Lorg/jshybugger/gX;

    const-string v4, "Failed to find the loopback interface"

    invoke-interface {v3, v4, v1}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28

    .line 108
    :cond_64
    sget-object v4, Lorg/jshybugger/fk;->d:Lorg/jshybugger/gX;

    const-string v5, "Loopback address: {}"

    invoke-interface {v4, v5, v0}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_42

    :cond_6c
    move-object v1, v2

    .line 116
    :cond_6d
    const/4 v0, 0x4

    :try_start_6e
    new-array v0, v0, [B

    fill-array-data v0, :array_10e

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet4Address;
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_79} :catch_ca

    move-object v3, v0

    .line 126
    :goto_7a
    const/16 v0, 0x10

    :try_start_7c
    new-array v0, v0, [B

    fill-array-data v0, :array_114

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    check-cast v0, Ljava/net/Inet6Address;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_87} :catch_d0

    .line 132
    :goto_87
    sput-object v0, Lorg/jshybugger/fk;->b:Ljava/net/Inet6Address;

    .line 135
    if-nez v1, :cond_a3

    .line 137
    :try_start_8b
    sget-object v4, Lorg/jshybugger/fk;->b:Ljava/net/Inet6Address;

    invoke-static {v4}, Ljava/net/NetworkInterface;->getByInetAddress(Ljava/net/InetAddress;)Ljava/net/NetworkInterface;

    move-result-object v4

    if-eqz v4, :cond_109

    .line 138
    sget-object v4, Lorg/jshybugger/fk;->d:Lorg/jshybugger/gX;

    const-string v5, "Using hard-coded IPv6 localhost address: {}"

    invoke-interface {v4, v5, v0}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_9a} :catch_d6
    .catchall {:try_start_8b .. :try_end_9a} :catchall_e1

    .line 144
    :goto_9a
    if-nez v0, :cond_a3

    .line 145
    sget-object v0, Lorg/jshybugger/fk;->d:Lorg/jshybugger/gX;

    const-string v1, "Using hard-coded IPv4 localhost address: {}"

    invoke-interface {v0, v1, v3}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    :cond_a3
    :goto_a3
    const/16 v0, 0xc00

    .line 156
    :try_start_a5
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/proc/sys/net/core/somaxconn"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b1
    .catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_b1} :catch_ec
    .catchall {:try_start_a5 .. :try_end_b1} :catchall_f5

    .line 157
    :try_start_b1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 158
    sget-object v2, Lorg/jshybugger/fk;->d:Lorg/jshybugger/gX;

    const-string v3, "/proc/sys/net/core/somaxconn: {}"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_b1 .. :try_end_c4} :catch_103
    .catchall {:try_start_b1 .. :try_end_c4} :catchall_101

    .line 162
    :try_start_c4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c7
    .catch Ljava/lang/Exception; {:try_start_c4 .. :try_end_c7} :catch_fd

    .line 171
    :cond_c7
    :goto_c7
    sput v0, Lorg/jshybugger/fk;->a:I

    .line 172
    return-void

    .line 117
    :catch_ca
    move-exception v0

    .line 119
    invoke-static {v0}, Lorg/jshybugger/gp;->a(Ljava/lang/Throwable;)V

    move-object v3, v2

    goto :goto_7a

    .line 128
    :catch_d0
    move-exception v0

    .line 130
    invoke-static {v0}, Lorg/jshybugger/gp;->a(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_87

    .line 144
    :catch_d6
    move-exception v0

    if-nez v1, :cond_a3

    .line 145
    sget-object v0, Lorg/jshybugger/fk;->d:Lorg/jshybugger/gX;

    const-string v1, "Using hard-coded IPv4 localhost address: {}"

    invoke-interface {v0, v1, v3}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_a3

    .line 144
    :catchall_e1
    move-exception v0

    if-nez v1, :cond_eb

    .line 145
    sget-object v1, Lorg/jshybugger/fk;->d:Lorg/jshybugger/gX;

    const-string v2, "Using hard-coded IPv4 localhost address: {}"

    invoke-interface {v1, v2, v3}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    :cond_eb
    throw v0

    .line 162
    :catch_ec
    move-exception v1

    :goto_ed
    if-eqz v2, :cond_c7

    .line 164
    :try_start_ef
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_ef .. :try_end_f2} :catch_f3

    goto :goto_c7

    .line 167
    :catch_f3
    move-exception v1

    goto :goto_c7

    .line 162
    :catchall_f5
    move-exception v0

    move-object v1, v2

    :goto_f7
    if-eqz v1, :cond_fc

    .line 164
    :try_start_f9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_fc} :catch_ff

    .line 167
    :cond_fc
    :goto_fc
    throw v0

    :catch_fd
    move-exception v1

    goto :goto_c7

    :catch_ff
    move-exception v1

    goto :goto_fc

    .line 162
    :catchall_101
    move-exception v0

    goto :goto_f7

    :catch_103
    move-exception v2

    move-object v2, v1

    goto :goto_ed

    .line 91
    :catch_106
    move-exception v1

    goto/16 :goto_5c

    :cond_109
    move-object v0, v1

    goto :goto_9a

    :cond_10b
    move-object v0, v2

    goto/16 :goto_1f

    .line 116
    :array_10e
    .array-data 1
        0x7ft
        0x0t
        0x0t
        0x1t
    .end array-data

    .line 126
    :array_114
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    return-void
.end method

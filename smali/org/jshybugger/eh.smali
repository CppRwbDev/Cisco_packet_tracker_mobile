.class public final Lorg/jshybugger/eH;
.super Lorg/jshybugger/eC;
.source "WebSocketServerHandshaker13.java"


# instance fields
.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 6

    .prologue
    .line 57
    sget-object v0, Lorg/jshybugger/eJ;->d:Lorg/jshybugger/eJ;

    invoke-direct {p0, v0, p1, p2, p4}, Lorg/jshybugger/eC;-><init>(Lorg/jshybugger/eJ;Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    iput-boolean p3, p0, Lorg/jshybugger/eH;->d:Z

    .line 59
    return-void
.end method


# virtual methods
.method protected final a(Lorg/jshybugger/dt;Lorg/jshybugger/dJ;)Lorg/jshybugger/du;
    .registers 10

    .prologue
    .line 97
    new-instance v0, Lorg/jshybugger/dh;

    sget-object v1, Lorg/jshybugger/ec;->b:Lorg/jshybugger/ec;

    sget-object v2, Lorg/jshybugger/ea;->a:Lorg/jshybugger/ea;

    invoke-direct {v0, v1, v2}, Lorg/jshybugger/dh;-><init>(Lorg/jshybugger/ec;Lorg/jshybugger/ea;)V

    .line 98
    if-eqz p2, :cond_12

    .line 99
    invoke-interface {v0}, Lorg/jshybugger/du;->f()Lorg/jshybugger/dJ;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/jshybugger/dJ;->a(Lorg/jshybugger/dJ;)Lorg/jshybugger/dJ;

    .line 102
    :cond_12
    invoke-interface {p1}, Lorg/jshybugger/dt;->f()Lorg/jshybugger/dJ;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Key"

    invoke-virtual {v1, v2}, Lorg/jshybugger/dJ;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 103
    if-nez v1, :cond_26

    .line 104
    new-instance v0, Lorg/jshybugger/eB;

    const-string v1, "not a WebSocket request: missing key"

    invoke-direct {v0, v1}, Lorg/jshybugger/eB;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    sget-object v3, Lorg/jshybugger/fe;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/jshybugger/a;->b([B)[B

    move-result-object v2

    .line 108
    invoke-static {v2}, Lorg/jshybugger/a;->c([B)Ljava/lang/String;

    move-result-object v2

    .line 110
    sget-object v3, Lorg/jshybugger/eH;->a:Lorg/jshybugger/gX;

    invoke-interface {v3}, Lorg/jshybugger/gX;->a()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 111
    sget-object v3, Lorg/jshybugger/eH;->a:Lorg/jshybugger/gX;

    const-string v4, "WS Version 13 Server Handshake key: %s. Response: %s."

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v1, 0x1

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/jshybugger/gX;->a(Ljava/lang/String;)V

    .line 114
    :cond_63
    invoke-interface {v0}, Lorg/jshybugger/du;->f()Lorg/jshybugger/dJ;

    move-result-object v1

    const-string v3, "Upgrade"

    const-string v4, "WebSocket"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/jshybugger/dJ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    .line 115
    invoke-interface {v0}, Lorg/jshybugger/du;->f()Lorg/jshybugger/dJ;

    move-result-object v1

    const-string v3, "Connection"

    const-string v4, "Upgrade"

    invoke-virtual {v1, v3, v4}, Lorg/jshybugger/dJ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    .line 116
    invoke-interface {v0}, Lorg/jshybugger/du;->f()Lorg/jshybugger/dJ;

    move-result-object v1

    const-string v3, "Sec-WebSocket-Accept"

    invoke-virtual {v1, v3, v2}, Lorg/jshybugger/dJ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    .line 117
    invoke-interface {p1}, Lorg/jshybugger/dt;->f()Lorg/jshybugger/dJ;

    move-result-object v1

    const-string v2, "Sec-WebSocket-Protocol"

    invoke-virtual {v1, v2}, Lorg/jshybugger/dJ;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_b6

    .line 119
    invoke-virtual {p0, v1}, Lorg/jshybugger/eH;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    if-nez v2, :cond_ad

    .line 121
    new-instance v0, Lorg/jshybugger/eB;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Requested subprotocol(s) not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jshybugger/eB;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_ad
    invoke-interface {v0}, Lorg/jshybugger/du;->f()Lorg/jshybugger/dJ;

    move-result-object v1

    const-string v3, "Sec-WebSocket-Protocol"

    invoke-virtual {v1, v3, v2}, Lorg/jshybugger/dJ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    .line 127
    :cond_b6
    return-object v0
.end method

.method protected final a()Lorg/jshybugger/ez;
    .registers 5

    .prologue
    .line 132
    new-instance v0, Lorg/jshybugger/ew;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lorg/jshybugger/eH;->d:Z

    iget v3, p0, Lorg/jshybugger/eC;->c:I

    invoke-direct {v0, v1, v2, v3}, Lorg/jshybugger/ew;-><init>(ZZI)V

    return-object v0
.end method

.method protected final b()Lorg/jshybugger/eA;
    .registers 3

    .prologue
    .line 137
    new-instance v0, Lorg/jshybugger/ex;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jshybugger/ex;-><init>(Z)V

    return-object v0
.end method

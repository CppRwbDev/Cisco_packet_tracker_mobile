.class public final Lorg/jshybugger/eE;
.super Lorg/jshybugger/eC;
.source "WebSocketServerHandshaker00.java"


# static fields
.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-string v0, "[^0-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/eE;->d:Ljava/util/regex/Pattern;

    .line 50
    const-string v0, "[^ ]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/eE;->e:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .prologue
    .line 65
    sget-object v0, Lorg/jshybugger/eJ;->a:Lorg/jshybugger/eJ;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/jshybugger/eC;-><init>(Lorg/jshybugger/eJ;Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/aj;Lorg/jshybugger/eh;Lorg/jshybugger/aM;)Lorg/jshybugger/ao;
    .registers 5

    .prologue
    .line 180
    invoke-interface {p1, p2, p3}, Lorg/jshybugger/aj;->b(Ljava/lang/Object;Lorg/jshybugger/aM;)Lorg/jshybugger/ao;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lorg/jshybugger/dt;Lorg/jshybugger/dJ;)Lorg/jshybugger/du;
    .registers 11

    .prologue
    .line 112
    const-string v0, "Upgrade"

    invoke-interface {p1}, Lorg/jshybugger/dt;->f()Lorg/jshybugger/dJ;

    move-result-object v1

    const-string v2, "Connection"

    invoke-virtual {v1, v2}, Lorg/jshybugger/dJ;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "WebSocket"

    invoke-interface {p1}, Lorg/jshybugger/dt;->f()Lorg/jshybugger/dJ;

    move-result-object v1

    const-string v2, "Upgrade"

    invoke-virtual {v1, v2}, Lorg/jshybugger/dJ;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 114
    :cond_24
    new-instance v0, Lorg/jshybugger/eB;

    const-string v1, "not a WebSocket handshake request: missing upgrade"

    invoke-direct {v0, v1}, Lorg/jshybugger/eB;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_2c
    invoke-interface {p1}, Lorg/jshybugger/dt;->f()Lorg/jshybugger/dJ;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Key1"

    invoke-virtual {v0, v1}, Lorg/jshybugger/dJ;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {p1}, Lorg/jshybugger/dt;->f()Lorg/jshybugger/dJ;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Key2"

    invoke-virtual {v0, v1}, Lorg/jshybugger/dJ;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bd

    const/4 v0, 0x1

    .line 121
    :goto_45
    new-instance v2, Lorg/jshybugger/dh;

    sget-object v3, Lorg/jshybugger/ec;->b:Lorg/jshybugger/ec;

    new-instance v4, Lorg/jshybugger/ea;

    const/16 v5, 0x65

    if-eqz v0, :cond_bf

    const-string v1, "WebSocket Protocol Handshake"

    :goto_51
    invoke-direct {v4, v5, v1}, Lorg/jshybugger/ea;-><init>(ILjava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lorg/jshybugger/dh;-><init>(Lorg/jshybugger/ec;Lorg/jshybugger/ea;)V

    .line 123
    if-eqz p2, :cond_60

    .line 124
    invoke-interface {v2}, Lorg/jshybugger/du;->f()Lorg/jshybugger/dJ;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/jshybugger/dJ;->a(Lorg/jshybugger/dJ;)Lorg/jshybugger/dJ;

    .line 127
    :cond_60
    invoke-interface {v2}, Lorg/jshybugger/du;->f()Lorg/jshybugger/dJ;

    move-result-object v1

    const-string v3, "Upgrade"

    const-string v4, "WebSocket"

    invoke-virtual {v1, v3, v4}, Lorg/jshybugger/dJ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    .line 128
    invoke-interface {v2}, Lorg/jshybugger/du;->f()Lorg/jshybugger/dJ;

    move-result-object v1

    const-string v3, "Connection"

    const-string v4, "Upgrade"

    invoke-virtual {v1, v3, v4}, Lorg/jshybugger/dJ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    .line 131
    if-eqz v0, :cond_14c

    .line 133
    invoke-interface {v2}, Lorg/jshybugger/du;->f()Lorg/jshybugger/dJ;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Origin"

    invoke-interface {p1}, Lorg/jshybugger/dt;->f()Lorg/jshybugger/dJ;

    move-result-object v3

    const-string v4, "Origin"

    invoke-virtual {v3, v4}, Lorg/jshybugger/dJ;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jshybugger/dJ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    .line 134
    invoke-interface {v2}, Lorg/jshybugger/du;->f()Lorg/jshybugger/dJ;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Location"

    iget-object v3, p0, Lorg/jshybugger/eC;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/jshybugger/dJ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    .line 135
    invoke-interface {p1}, Lorg/jshybugger/dt;->f()Lorg/jshybugger/dJ;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Protocol"

    invoke-virtual {v0, v1}, Lorg/jshybugger/dJ;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_cb

    .line 137
    invoke-virtual {p0, v0}, Lorg/jshybugger/eE;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    if-nez v1, :cond_c2

    .line 139
    new-instance v1, Lorg/jshybugger/eB;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Requested subprotocol(s) not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/jshybugger/eB;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_bd
    const/4 v0, 0x0

    goto :goto_45

    .line 121
    :cond_bf
    const-string v1, "Web Socket Protocol Handshake"

    goto :goto_51

    .line 141
    :cond_c2
    invoke-interface {v2}, Lorg/jshybugger/du;->f()Lorg/jshybugger/dJ;

    move-result-object v0

    const-string v3, "Sec-WebSocket-Protocol"

    invoke-virtual {v0, v3, v1}, Lorg/jshybugger/dJ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    .line 146
    :cond_cb
    invoke-interface {p1}, Lorg/jshybugger/dt;->f()Lorg/jshybugger/dJ;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Key1"

    invoke-virtual {v0, v1}, Lorg/jshybugger/dJ;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-interface {p1}, Lorg/jshybugger/dt;->f()Lorg/jshybugger/dJ;

    move-result-object v1

    const-string v3, "Sec-WebSocket-Key2"

    invoke-virtual {v1, v3}, Lorg/jshybugger/dJ;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    sget-object v3, Lorg/jshybugger/eE;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sget-object v3, Lorg/jshybugger/eE;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v6, v0

    div-long/2addr v4, v6

    long-to-int v0, v4

    .line 150
    sget-object v3, Lorg/jshybugger/eE;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sget-object v3, Lorg/jshybugger/eE;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v6, v1

    div-long/2addr v4, v6

    long-to-int v1, v4

    .line 152
    invoke-interface {p1}, Lorg/jshybugger/dt;->a()Lorg/jshybugger/H;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jshybugger/H;->m()J

    move-result-wide v4

    .line 153
    const/16 v3, 0x10

    invoke-static {v3}, Lorg/jshybugger/S;->a(I)Lorg/jshybugger/H;

    move-result-object v3

    .line 154
    invoke-virtual {v3, v0}, Lorg/jshybugger/H;->t(I)Lorg/jshybugger/H;

    .line 155
    invoke-virtual {v3, v1}, Lorg/jshybugger/H;->t(I)Lorg/jshybugger/H;

    .line 156
    invoke-virtual {v3, v4, v5}, Lorg/jshybugger/H;->a(J)Lorg/jshybugger/H;

    .line 157
    invoke-interface {v2}, Lorg/jshybugger/du;->a()Lorg/jshybugger/H;

    move-result-object v0

    invoke-virtual {v3}, Lorg/jshybugger/H;->E()[B

    move-result-object v1

    invoke-static {v1}, Lorg/jshybugger/a;->a([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/H;->b([B)Lorg/jshybugger/H;

    .line 167
    :cond_14b
    :goto_14b
    return-object v2

    .line 160
    :cond_14c
    invoke-interface {v2}, Lorg/jshybugger/du;->f()Lorg/jshybugger/dJ;

    move-result-object v0

    const-string v1, "WebSocket-Origin"

    invoke-interface {p1}, Lorg/jshybugger/dt;->f()Lorg/jshybugger/dJ;

    move-result-object v3

    const-string v4, "Origin"

    invoke-virtual {v3, v4}, Lorg/jshybugger/dJ;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/jshybugger/dJ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    .line 161
    invoke-interface {v2}, Lorg/jshybugger/du;->f()Lorg/jshybugger/dJ;

    move-result-object v0

    const-string v1, "WebSocket-Location"

    iget-object v3, p0, Lorg/jshybugger/eC;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lorg/jshybugger/dJ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    .line 162
    invoke-interface {p1}, Lorg/jshybugger/dt;->f()Lorg/jshybugger/dJ;

    move-result-object v0

    const-string v1, "WebSocket-Protocol"

    invoke-virtual {v0, v1}, Lorg/jshybugger/dJ;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_14b

    .line 164
    invoke-interface {v2}, Lorg/jshybugger/du;->f()Lorg/jshybugger/dJ;

    move-result-object v1

    const-string v3, "WebSocket-Protocol"

    invoke-virtual {p0, v0}, Lorg/jshybugger/eE;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/jshybugger/dJ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    goto :goto_14b
.end method

.method protected final a()Lorg/jshybugger/ez;
    .registers 3

    .prologue
    .line 185
    new-instance v0, Lorg/jshybugger/eo;

    iget v1, p0, Lorg/jshybugger/eC;->c:I

    invoke-direct {v0, v1}, Lorg/jshybugger/eo;-><init>(I)V

    return-object v0
.end method

.method protected final b()Lorg/jshybugger/eA;
    .registers 2

    .prologue
    .line 190
    new-instance v0, Lorg/jshybugger/ep;

    invoke-direct {v0}, Lorg/jshybugger/ep;-><init>()V

    return-object v0
.end method

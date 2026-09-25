.class public abstract Lorg/jshybugger/ig;
.super Ljava/lang/Object;
.source "AbstractMsgHandler.java"

# interfaces
.implements Lorg/jshybugger/iS;


# static fields
.field private static c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final a:Lorg/jshybugger/iz;

.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 40
    sput-object v0, Lorg/jshybugger/ig;->c:Ljava/util/Set;

    const-string v1, "GlobalInitHybugger"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lorg/jshybugger/ig;->c:Ljava/util/Set;

    const-string v1, "GlobalPageLoaded"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lorg/jshybugger/ig;->c:Ljava/util/Set;

    const-string v1, "GlobalClientConnected"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lorg/jshybugger/ig;->c:Ljava/util/Set;

    const-string v1, "GlobalClientDisconnected"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lorg/jshybugger/ig;->c:Ljava/util/Set;

    const-string v1, "GlobalPageReload"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lorg/jshybugger/ig;->c:Ljava/util/Set;

    const-string v1, "GlobalSessionLimitReached"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/jshybugger/iz;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/ig;->b:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lorg/jshybugger/ig;->b:Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lorg/jshybugger/ig;->a:Lorg/jshybugger/iz;

    .line 58
    return-void
.end method

.method protected static a(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V
    .registers 6

    .prologue
    .line 138
    new-instance v0, Lorg/jshybugger/hT;

    invoke-direct {v0}, Lorg/jshybugger/hT;-><init>()V

    invoke-virtual {v0}, Lorg/jshybugger/hT;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/jshybugger/hQ;->d(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/jshybugger/hV;->a(J)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->d()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method protected static a(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 245
    new-instance v0, Lorg/jshybugger/hT;

    invoke-direct {v0}, Lorg/jshybugger/hT;-><init>()V

    invoke-virtual {v0}, Lorg/jshybugger/hT;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/jshybugger/hQ;->d(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/jshybugger/hV;->a(J)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-wide/16 v2, -0x7d00

    invoke-virtual {v0, v2, v3}, Lorg/jshybugger/hV;->a(J)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V

    .line 252
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lorg/jshybugger/ig;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 261
    iget-object v0, p0, Lorg/jshybugger/ig;->a:Lorg/jshybugger/iz;

    invoke-virtual {v0}, Lorg/jshybugger/iz;->b()Lorg/jshybugger/ii;

    move-result-object v0

    const-string v1, "Runtime.evaluate"

    new-instance v2, Lorg/jshybugger/hQ;

    invoke-direct {v2}, Lorg/jshybugger/hQ;-><init>()V

    const-string v3, "params"

    new-instance v4, Lorg/jshybugger/hQ;

    invoke-direct {v4}, Lorg/jshybugger/hQ;-><init>()V

    const-string v5, "expression"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "alert(\'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\')"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lorg/jshybugger/ii;->sendMsgToWebView(Ljava/lang/String;Lorg/jshybugger/hQ;Lorg/jshybugger/ja;)V

    .line 268
    return-void
.end method

.method public a(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V
    .registers 4

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2, p3}, Lorg/jshybugger/ig;->c(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V

    .line 81
    return-void
.end method

.method public b(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;
    .registers 9

    .prologue
    .line 120
    if-eqz p1, :cond_43

    sget-object v0, Lorg/jshybugger/ig;->c:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    .line 121
    new-instance v0, Lorg/jshybugger/hT;

    invoke-direct {v0}, Lorg/jshybugger/hT;-><init>()V

    invoke-virtual {v0}, Lorg/jshybugger/hT;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "method"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "%s.%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/jshybugger/ig;->b:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V

    .line 126
    :cond_43
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final c(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V
    .registers 9

    .prologue
    .line 166
    iget-object v0, p0, Lorg/jshybugger/ig;->a:Lorg/jshybugger/iz;

    invoke-virtual {v0}, Lorg/jshybugger/iz;->b()Lorg/jshybugger/ii;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/jshybugger/ig;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "params"

    invoke-virtual {p3, v0}, Lorg/jshybugger/hQ;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    new-instance v0, Lorg/jshybugger/hQ;

    invoke-direct {v0}, Lorg/jshybugger/hQ;-><init>()V

    const-string v3, "params"

    const-string v4, "params"

    invoke-virtual {p3, v4}, Lorg/jshybugger/hQ;->f(Ljava/lang/String;)Lorg/jshybugger/hQ;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v0

    :goto_38
    new-instance v3, Lorg/jshybugger/ih;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, p3, v4}, Lorg/jshybugger/ih;-><init>(Lorg/jshybugger/ig;Lorg/jshybugger/jn;Lorg/jshybugger/hQ;Z)V

    invoke-interface {v1, v2, v0, v3}, Lorg/jshybugger/ii;->sendMsgToWebView(Ljava/lang/String;Lorg/jshybugger/hQ;Lorg/jshybugger/ja;)V

    .line 167
    return-void

    .line 166
    :cond_42
    new-instance v0, Lorg/jshybugger/hQ;

    invoke-direct {v0}, Lorg/jshybugger/hQ;-><init>()V

    goto :goto_38
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    if-ne p0, p1, :cond_5

    .line 112
    :cond_4
    :goto_4
    return v0

    .line 102
    :cond_5
    if-nez p1, :cond_9

    move v0, v1

    .line 103
    goto :goto_4

    .line 104
    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_15

    move v0, v1

    .line 105
    goto :goto_4

    .line 106
    :cond_15
    check-cast p1, Lorg/jshybugger/ig;

    .line 107
    iget-object v2, p0, Lorg/jshybugger/ig;->b:Ljava/lang/String;

    if-nez v2, :cond_21

    .line 108
    iget-object v2, p1, Lorg/jshybugger/ig;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    .line 109
    goto :goto_4

    .line 110
    :cond_21
    iget-object v2, p0, Lorg/jshybugger/ig;->b:Ljava/lang/String;

    iget-object v3, p1, Lorg/jshybugger/ig;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 111
    goto :goto_4
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/jshybugger/ig;->b:Ljava/lang/String;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_5
    add-int/lit8 v0, v0, 0x1f

    .line 92
    return v0

    .line 88
    :cond_8
    iget-object v0, p0, Lorg/jshybugger/ig;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_5
.end method

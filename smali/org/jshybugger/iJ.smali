.class public final Lorg/jshybugger/ij;
.super Lorg/jshybugger/ig;
.source "ConsoleMsgHandler.java"


# instance fields
.field private final b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/hQ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jshybugger/iz;)V
    .registers 5

    .prologue
    .line 47
    const-string v0, "Console"

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/ig;-><init>(Lorg/jshybugger/iz;Ljava/lang/String;)V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/ij;->b:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/ij;->c:Ljava/util/List;

    .line 49
    iget-object v0, p0, Lorg/jshybugger/ij;->b:Ljava/util/HashMap;

    const-string v1, "enable"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method public static a(Lorg/jshybugger/jn;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 152
    new-instance v0, Lorg/jshybugger/hT;

    invoke-direct {v0}, Lorg/jshybugger/hT;-><init>()V

    invoke-virtual {v0}, Lorg/jshybugger/hT;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "method"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "Console.messageAdded"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "level"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "repeatCount"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/jshybugger/hV;->a(J)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "source"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "console-api"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v1

    const-string v0, "trace"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const-string v0, "trace"

    :goto_65
    invoke-virtual {v1, v0}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V

    .line 164
    return-void

    .line 152
    :cond_7d
    const-string v0, "log"

    goto :goto_65
.end method

.method private b(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V
    .registers 5

    .prologue
    .line 131
    if-eqz p1, :cond_2d

    .line 132
    new-instance v0, Lorg/jshybugger/hT;

    invoke-direct {v0}, Lorg/jshybugger/hT;-><init>()V

    invoke-virtual {v0}, Lorg/jshybugger/hT;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "method"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "Console.messageAdded"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V

    .line 140
    :goto_2c
    return-void

    .line 138
    :cond_2d
    iget-object v0, p0, Lorg/jshybugger/ij;->c:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2c
.end method


# virtual methods
.method public final a(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V
    .registers 9

    .prologue
    .line 58
    iget-object v0, p0, Lorg/jshybugger/ij;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 60
    new-instance v0, Lorg/jshybugger/hQ;

    invoke-direct {v0}, Lorg/jshybugger/hQ;-><init>()V

    .line 62
    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {p3, v2}, Lorg/jshybugger/hQ;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;I)Lorg/jshybugger/hQ;

    .line 63
    const-string v1, "result"

    new-instance v2, Lorg/jshybugger/hQ;

    invoke-direct {v2}, Lorg/jshybugger/hQ;-><init>()V

    const-string v3, "result"

    iget-object v4, p0, Lorg/jshybugger/ij;->b:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    .line 66
    invoke-virtual {v0}, Lorg/jshybugger/hQ;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lorg/jshybugger/ij;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/hQ;

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/ij;->b(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V

    goto :goto_3b

    :cond_4b
    iget-object v0, p0, Lorg/jshybugger/ij;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    :goto_50
    return-void

    .line 70
    :cond_51
    const-string v0, "clearMessages"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 72
    iget-object v0, p0, Lorg/jshybugger/ij;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 73
    :cond_5e
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/ig;->a(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V

    goto :goto_50
.end method

.method public final b(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;
    .registers 6

    .prologue
    .line 95
    const-string v0, "messageAdded"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 96
    invoke-direct {p0, p1, p3}, Lorg/jshybugger/ij;->b(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V

    .line 102
    :cond_b
    :goto_b
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_d
    const-string v0, "GlobalPageReload"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 98
    if-eqz p1, :cond_b

    new-instance v0, Lorg/jshybugger/hT;

    invoke-direct {v0}, Lorg/jshybugger/hT;-><init>()V

    invoke-virtual {v0}, Lorg/jshybugger/hT;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "method"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "Console.messagesCleared"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/jshybugger/ij;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_b

    .line 100
    :cond_3d
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/ig;->b(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;

    goto :goto_b
.end method

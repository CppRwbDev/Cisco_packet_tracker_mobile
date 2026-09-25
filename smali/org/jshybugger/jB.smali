.class public final Lorg/jshybugger/jb;
.super Lorg/jshybugger/ig;
.source "RuntimeMsgHandler.java"


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

.field private c:I


# direct methods
.method public constructor <init>(Lorg/jshybugger/iz;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 45
    const-string v0, "Runtime"

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/ig;-><init>(Lorg/jshybugger/iz;Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/jb;->b:Ljava/util/HashMap;

    .line 37
    iput v2, p0, Lorg/jshybugger/jb;->c:I

    .line 47
    iget-object v0, p0, Lorg/jshybugger/jb;->b:Ljava/util/HashMap;

    const-string v1, "enable"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V
    .registers 9

    .prologue
    .line 56
    iget-object v0, p0, Lorg/jshybugger/jb;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 58
    new-instance v0, Lorg/jshybugger/hQ;

    invoke-direct {v0}, Lorg/jshybugger/hQ;-><init>()V

    .line 60
    const-string v1, "id"

    const-string v2, "id"

    invoke-virtual {p3, v2}, Lorg/jshybugger/hQ;->d(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;I)Lorg/jshybugger/hQ;

    .line 61
    const-string v1, "result"

    new-instance v2, Lorg/jshybugger/hQ;

    invoke-direct {v2}, Lorg/jshybugger/hQ;-><init>()V

    const-string v3, "result"

    iget-object v4, p0, Lorg/jshybugger/jb;->b:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    .line 64
    invoke-virtual {v0}, Lorg/jshybugger/hQ;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V

    .line 69
    :goto_35
    return-void

    .line 67
    :cond_36
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/ig;->a(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V

    goto :goto_35
.end method

.method public final b(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;
    .registers 8

    .prologue
    .line 78
    const-string v0, "GlobalInitHybugger"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_80

    .line 80
    if-eqz p1, :cond_7e

    new-instance v0, Lorg/jshybugger/hT;

    invoke-direct {v0}, Lorg/jshybugger/hT;-><init>()V

    invoke-virtual {v0}, Lorg/jshybugger/hT;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "method"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "Runtime.executionContextCreated"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "context"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    iget v1, p0, Lorg/jshybugger/jb;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/jshybugger/jb;->c:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/jshybugger/hV;->a(J)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "isPageContext"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Z)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "frameId"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "frameId"

    invoke-virtual {p3, v1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V

    .line 84
    :cond_7e
    :goto_7e
    const/4 v0, 0x0

    return-object v0

    .line 82
    :cond_80
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/ig;->b(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;

    goto :goto_7e
.end method

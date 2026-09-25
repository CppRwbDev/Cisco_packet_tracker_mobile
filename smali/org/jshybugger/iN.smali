.class final Lorg/jshybugger/in;
.super Ljava/lang/Object;
.source "DOMMsgHandler.java"

# interfaces
.implements Lorg/jshybugger/ja;


# instance fields
.field private synthetic a:Lorg/jshybugger/jn;

.field private synthetic b:Lorg/jshybugger/hQ;

.field private synthetic c:Lorg/jshybugger/im;


# direct methods
.method constructor <init>(Lorg/jshybugger/im;Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V
    .registers 4

    .prologue
    .line 87
    iput-object p1, p0, Lorg/jshybugger/in;->c:Lorg/jshybugger/im;

    iput-object p2, p0, Lorg/jshybugger/in;->a:Lorg/jshybugger/jn;

    iput-object p3, p0, Lorg/jshybugger/in;->b:Lorg/jshybugger/hQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/hQ;)V
    .registers 5

    .prologue
    .line 92
    iget-object v0, p0, Lorg/jshybugger/in;->a:Lorg/jshybugger/jn;

    new-instance v1, Lorg/jshybugger/hT;

    invoke-direct {v1}, Lorg/jshybugger/hT;-><init>()V

    invoke-virtual {v1}, Lorg/jshybugger/hT;->d()Lorg/jshybugger/hV;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v1, v2}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v1

    const-string v2, "DOM.setChildNodes"

    invoke-virtual {v1, v2}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v1

    const-string v2, "params"

    invoke-virtual {v1, v2}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lorg/jshybugger/in;->c:Lorg/jshybugger/im;

    iget-object v0, p0, Lorg/jshybugger/in;->a:Lorg/jshybugger/jn;

    iget-object v1, p0, Lorg/jshybugger/in;->b:Lorg/jshybugger/hQ;

    invoke-static {v0, v1}, Lorg/jshybugger/im;->a(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V

    .line 99
    return-void
.end method

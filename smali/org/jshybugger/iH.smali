.class final Lorg/jshybugger/ih;
.super Ljava/lang/Object;
.source "AbstractMsgHandler.java"

# interfaces
.implements Lorg/jshybugger/ja;


# instance fields
.field private synthetic a:Lorg/jshybugger/jn;

.field private synthetic b:Lorg/jshybugger/hQ;

.field private synthetic c:Z

.field private synthetic d:Lorg/jshybugger/ig;


# direct methods
.method constructor <init>(Lorg/jshybugger/ig;Lorg/jshybugger/jn;Lorg/jshybugger/hQ;Z)V
    .registers 5

    .prologue
    .line 183
    iput-object p1, p0, Lorg/jshybugger/ih;->d:Lorg/jshybugger/ig;

    iput-object p2, p0, Lorg/jshybugger/ih;->a:Lorg/jshybugger/jn;

    iput-object p3, p0, Lorg/jshybugger/ih;->b:Lorg/jshybugger/hQ;

    iput-boolean p4, p0, Lorg/jshybugger/ih;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/hQ;)V
    .registers 6

    .prologue
    .line 188
    iget-object v0, p0, Lorg/jshybugger/ih;->a:Lorg/jshybugger/jn;

    new-instance v1, Lorg/jshybugger/hT;

    invoke-direct {v1}, Lorg/jshybugger/hT;-><init>()V

    invoke-virtual {v1}, Lorg/jshybugger/hT;->d()Lorg/jshybugger/hV;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v1

    iget-object v2, p0, Lorg/jshybugger/ih;->b:Lorg/jshybugger/hQ;

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/jshybugger/hQ;->d(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/jshybugger/hV;->a(J)Lorg/jshybugger/hV;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V

    .line 193
    iget-boolean v0, p0, Lorg/jshybugger/ih;->c:Z

    if-eqz v0, :cond_40

    .line 194
    iget-object v0, p0, Lorg/jshybugger/ih;->d:Lorg/jshybugger/ig;

    iget-object v0, p0, Lorg/jshybugger/ih;->a:Lorg/jshybugger/jn;

    iget-object v1, p0, Lorg/jshybugger/ih;->b:Lorg/jshybugger/hQ;

    invoke-static {v0, v1}, Lorg/jshybugger/ig;->a(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V

    .line 196
    :cond_40
    return-void
.end method

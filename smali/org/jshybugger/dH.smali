.class public final Lorg/jshybugger/dh;
.super Lorg/jshybugger/dp;
.source "DefaultFullHttpResponse.java"

# interfaces
.implements Lorg/jshybugger/du;


# instance fields
.field private final e:Lorg/jshybugger/H;

.field private final f:Lorg/jshybugger/dJ;


# direct methods
.method public constructor <init>(Lorg/jshybugger/ec;Lorg/jshybugger/ea;)V
    .registers 4

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/jshybugger/S;->a(I)Lorg/jshybugger/H;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/jshybugger/dh;-><init>(Lorg/jshybugger/ec;Lorg/jshybugger/ea;Lorg/jshybugger/H;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/jshybugger/ec;Lorg/jshybugger/ea;Lorg/jshybugger/H;)V
    .registers 6

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/dp;-><init>(Lorg/jshybugger/ec;Lorg/jshybugger/ea;)V

    .line 28
    new-instance v0, Lorg/jshybugger/dj;

    invoke-direct {v0}, Lorg/jshybugger/dj;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/dh;->f:Lorg/jshybugger/dJ;

    .line 36
    if-nez p3, :cond_14

    .line 37
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_14
    iput-object p3, p0, Lorg/jshybugger/dh;->e:Lorg/jshybugger/H;

    .line 40
    return-void
.end method

.method private i()Lorg/jshybugger/du;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lorg/jshybugger/dh;->e:Lorg/jshybugger/H;

    invoke-virtual {v0}, Lorg/jshybugger/H;->u()Lorg/jshybugger/H;

    .line 60
    return-object p0
.end method


# virtual methods
.method public final a()Lorg/jshybugger/H;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lorg/jshybugger/dh;->e:Lorg/jshybugger/H;

    return-object v0
.end method

.method public final bridge synthetic a(Lorg/jshybugger/ec;)Lorg/jshybugger/dX;
    .registers 2

    .prologue
    .line 25
    invoke-super {p0, p1}, Lorg/jshybugger/dp;->a(Lorg/jshybugger/ec;)Lorg/jshybugger/dX;

    return-object p0
.end method

.method public final a(Lorg/jshybugger/ea;)Lorg/jshybugger/du;
    .registers 2

    .prologue
    .line 87
    invoke-super {p0, p1}, Lorg/jshybugger/dp;->b(Lorg/jshybugger/ea;)Lorg/jshybugger/dX;

    .line 88
    return-object p0
.end method

.method public final b()Lorg/jshybugger/dJ;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lorg/jshybugger/dh;->f:Lorg/jshybugger/dJ;

    return-object v0
.end method

.method public final synthetic b(Lorg/jshybugger/ec;)Lorg/jshybugger/dL;
    .registers 2

    .prologue
    .line 25
    invoke-super {p0, p1}, Lorg/jshybugger/dp;->a(Lorg/jshybugger/ec;)Lorg/jshybugger/dX;

    return-object p0
.end method

.method public final bridge synthetic b(Lorg/jshybugger/ea;)Lorg/jshybugger/dX;
    .registers 2

    .prologue
    .line 25
    invoke-super {p0, p1}, Lorg/jshybugger/dp;->b(Lorg/jshybugger/ea;)Lorg/jshybugger/dX;

    return-object p0
.end method

.method public final synthetic d()Lorg/jshybugger/dw;
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/jshybugger/dh;->i()Lorg/jshybugger/du;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lorg/jshybugger/du;
    .registers 5

    .prologue
    .line 93
    new-instance v0, Lorg/jshybugger/dh;

    iget-object v1, p0, Lorg/jshybugger/dm;->a_:Lorg/jshybugger/ec;

    iget-object v2, p0, Lorg/jshybugger/dp;->d:Lorg/jshybugger/ea;

    iget-object v3, p0, Lorg/jshybugger/dh;->e:Lorg/jshybugger/H;

    invoke-virtual {v3}, Lorg/jshybugger/H;->n()Lorg/jshybugger/H;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jshybugger/dh;-><init>(Lorg/jshybugger/ec;Lorg/jshybugger/ea;Lorg/jshybugger/H;)V

    .line 94
    iget-object v1, v0, Lorg/jshybugger/dm;->b:Lorg/jshybugger/dJ;

    iget-object v2, p0, Lorg/jshybugger/dm;->b:Lorg/jshybugger/dJ;

    invoke-virtual {v1, v2}, Lorg/jshybugger/dJ;->b(Lorg/jshybugger/dJ;)Lorg/jshybugger/dJ;

    .line 95
    iget-object v1, v0, Lorg/jshybugger/dh;->f:Lorg/jshybugger/dJ;

    iget-object v2, p0, Lorg/jshybugger/dh;->f:Lorg/jshybugger/dJ;

    invoke-virtual {v1, v2}, Lorg/jshybugger/dJ;->b(Lorg/jshybugger/dJ;)Lorg/jshybugger/dJ;

    .line 96
    return-object v0
.end method

.method public final t()I
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lorg/jshybugger/dh;->e:Lorg/jshybugger/H;

    invoke-virtual {v0}, Lorg/jshybugger/H;->t()I

    move-result v0

    return v0
.end method

.method public final v()Z
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/jshybugger/dh;->e:Lorg/jshybugger/H;

    invoke-virtual {v0}, Lorg/jshybugger/H;->v()Z

    move-result v0

    return v0
.end method

.method public final synthetic w()Lorg/jshybugger/fp;
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/jshybugger/dh;->i()Lorg/jshybugger/du;

    move-result-object v0

    return-object v0
.end method

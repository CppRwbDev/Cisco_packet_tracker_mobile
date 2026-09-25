.class public final Lorg/jshybugger/dg;
.super Lorg/jshybugger/do;
.source "DefaultFullHttpRequest.java"

# interfaces
.implements Lorg/jshybugger/dt;


# instance fields
.field private final d:Lorg/jshybugger/H;

.field private final e:Lorg/jshybugger/dJ;


# direct methods
.method public constructor <init>(Lorg/jshybugger/ec;Lorg/jshybugger/dM;Ljava/lang/String;Lorg/jshybugger/H;)V
    .registers 7

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lorg/jshybugger/do;-><init>(Lorg/jshybugger/ec;Lorg/jshybugger/dM;Ljava/lang/String;)V

    .line 26
    new-instance v0, Lorg/jshybugger/dj;

    invoke-direct {v0}, Lorg/jshybugger/dj;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/dg;->e:Lorg/jshybugger/dJ;

    .line 34
    if-nez p4, :cond_14

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_14
    iput-object p4, p0, Lorg/jshybugger/dg;->d:Lorg/jshybugger/H;

    .line 38
    return-void
.end method

.method private i()Lorg/jshybugger/dt;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lorg/jshybugger/dg;->d:Lorg/jshybugger/H;

    invoke-virtual {v0}, Lorg/jshybugger/H;->u()Lorg/jshybugger/H;

    .line 58
    return-object p0
.end method


# virtual methods
.method public final a()Lorg/jshybugger/H;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lorg/jshybugger/dg;->d:Lorg/jshybugger/H;

    return-object v0
.end method

.method public final bridge synthetic a(Ljava/lang/String;)Lorg/jshybugger/dU;
    .registers 2

    .prologue
    .line 24
    invoke-super {p0, p1}, Lorg/jshybugger/do;->a(Ljava/lang/String;)Lorg/jshybugger/dU;

    return-object p0
.end method

.method public final bridge synthetic a(Lorg/jshybugger/ec;)Lorg/jshybugger/dU;
    .registers 2

    .prologue
    .line 24
    invoke-super {p0, p1}, Lorg/jshybugger/do;->a(Lorg/jshybugger/ec;)Lorg/jshybugger/dU;

    return-object p0
.end method

.method public final b()Lorg/jshybugger/dJ;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lorg/jshybugger/dg;->e:Lorg/jshybugger/dJ;

    return-object v0
.end method

.method public final synthetic b(Lorg/jshybugger/ec;)Lorg/jshybugger/dL;
    .registers 2

    .prologue
    .line 24
    invoke-super {p0, p1}, Lorg/jshybugger/do;->a(Lorg/jshybugger/ec;)Lorg/jshybugger/dU;

    return-object p0
.end method

.method public final synthetic d()Lorg/jshybugger/dw;
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/jshybugger/dg;->i()Lorg/jshybugger/dt;

    move-result-object v0

    return-object v0
.end method

.method public final t()I
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/jshybugger/dg;->d:Lorg/jshybugger/H;

    invoke-virtual {v0}, Lorg/jshybugger/H;->t()I

    move-result v0

    return v0
.end method

.method public final v()Z
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/jshybugger/dg;->d:Lorg/jshybugger/H;

    invoke-virtual {v0}, Lorg/jshybugger/H;->v()Z

    move-result v0

    return v0
.end method

.method public final synthetic w()Lorg/jshybugger/fp;
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Lorg/jshybugger/dg;->i()Lorg/jshybugger/dt;

    move-result-object v0

    return-object v0
.end method

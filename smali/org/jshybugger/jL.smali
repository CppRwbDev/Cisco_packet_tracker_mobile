.class public abstract Lorg/jshybugger/jl;
.super Lorg/jshybugger/bE;
.source "AbstractHttpHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jshybugger/bE",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/jshybugger/bE;-><init>()V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/jshybugger/bE;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/jshybugger/jl;->b:Ljava/lang/String;

    .line 44
    return-void
.end method

.method protected static a(Lorg/jshybugger/aw;Lorg/jshybugger/dt;Lorg/jshybugger/du;)V
    .registers 6

    .prologue
    const/16 v2, 0xc8

    .line 74
    invoke-interface {p2}, Lorg/jshybugger/du;->h()Lorg/jshybugger/ea;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/ea;->a()I

    move-result v0

    if-ne v0, v2, :cond_18

    .line 75
    invoke-interface {p2}, Lorg/jshybugger/du;->a()Lorg/jshybugger/H;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/H;->f()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p2, v0, v1}, Lorg/jshybugger/dJ;->b(Lorg/jshybugger/dL;J)V

    .line 79
    :cond_18
    invoke-interface {p0}, Lorg/jshybugger/aw;->a()Lorg/jshybugger/aj;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/jshybugger/aj;->b(Ljava/lang/Object;)Lorg/jshybugger/ao;

    move-result-object v0

    .line 80
    invoke-static {p1}, Lorg/jshybugger/dJ;->a(Lorg/jshybugger/dL;)Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p2}, Lorg/jshybugger/du;->h()Lorg/jshybugger/ea;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jshybugger/ea;->a()I

    move-result v1

    if-eq v1, v2, :cond_35

    .line 81
    :cond_30
    sget-object v1, Lorg/jshybugger/ap;->a:Lorg/jshybugger/ap;

    invoke-interface {v0, v1}, Lorg/jshybugger/ao;->a(Lorg/jshybugger/fO;)Lorg/jshybugger/ao;

    .line 83
    :cond_35
    return-void
.end method


# virtual methods
.method public a(Lorg/jshybugger/dt;)Lorg/jshybugger/du;
    .registers 3

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 58
    instance-of v1, p1, Lorg/jshybugger/dt;

    if-eqz v1, :cond_21

    .line 59
    iget-object v1, p0, Lorg/jshybugger/jl;->b:Ljava/lang/String;

    if-eqz v1, :cond_20

    new-instance v1, Lorg/jshybugger/ef;

    check-cast p1, Lorg/jshybugger/dt;

    invoke-interface {p1}, Lorg/jshybugger/dt;->h()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jshybugger/ef;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jshybugger/ef;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jshybugger/jl;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    :cond_20
    const/4 v0, 0x1

    .line 61
    :cond_21
    return v0
.end method

.method protected c(Lorg/jshybugger/aw;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 93
    move-object v0, p2

    check-cast v0, Lorg/jshybugger/dt;

    invoke-virtual {p0, v0}, Lorg/jshybugger/jl;->a(Lorg/jshybugger/dt;)Lorg/jshybugger/du;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_f

    .line 95
    check-cast p2, Lorg/jshybugger/dt;

    invoke-static {p1, p2, v0}, Lorg/jshybugger/jl;->a(Lorg/jshybugger/aw;Lorg/jshybugger/dt;Lorg/jshybugger/du;)V

    .line 99
    :goto_e
    return-void

    .line 97
    :cond_f
    invoke-interface {p1, p2}, Lorg/jshybugger/aw;->d(Ljava/lang/Object;)Lorg/jshybugger/aw;

    goto :goto_e
.end method

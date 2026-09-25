.class public Lorg/jshybugger/bz;
.super Ljava/lang/Object;
.source "MessageSizeEstimator.java"


# instance fields
.field final a:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput p1, p0, Lorg/jshybugger/bz;->a:I

    .line 32
    return-void
.end method

.method synthetic constructor <init>(IB)V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lorg/jshybugger/bz;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .registers 3

    .prologue
    .line 36
    instance-of v0, p1, Lorg/jshybugger/H;

    if-eqz v0, :cond_b

    .line 37
    check-cast p1, Lorg/jshybugger/H;

    invoke-virtual {p1}, Lorg/jshybugger/H;->f()I

    move-result v0

    .line 45
    :goto_a
    return v0

    .line 39
    :cond_b
    instance-of v0, p1, Lorg/jshybugger/J;

    if-eqz v0, :cond_1a

    .line 40
    check-cast p1, Lorg/jshybugger/J;

    invoke-interface {p1}, Lorg/jshybugger/J;->a()Lorg/jshybugger/H;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/H;->f()I

    move-result v0

    goto :goto_a

    .line 42
    :cond_1a
    instance-of v0, p1, Lorg/jshybugger/bx;

    if-eqz v0, :cond_20

    .line 43
    const/4 v0, 0x0

    goto :goto_a

    .line 45
    :cond_20
    iget v0, p0, Lorg/jshybugger/bz;->a:I

    goto :goto_a
.end method

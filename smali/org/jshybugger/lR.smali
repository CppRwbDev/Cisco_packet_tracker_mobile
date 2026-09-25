.class public abstract Lorg/jshybugger/lr;
.super Lorg/jshybugger/kE;
.source "NativeFunction.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lorg/jshybugger/kE;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()I
    .registers 2

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/jshybugger/lr;->k()I

    move-result v0

    return v0
.end method

.method public final g()I
    .registers 4

    .prologue
    .line 47
    invoke-virtual {p0}, Lorg/jshybugger/lr;->k()I

    move-result v0

    .line 48
    invoke-virtual {p0}, Lorg/jshybugger/lr;->j()I

    move-result v1

    const/16 v2, 0x78

    if-eq v1, v2, :cond_d

    .line 56
    :cond_c
    :goto_c
    return v0

    .line 51
    :cond_d
    invoke-static {}, Lorg/jshybugger/kK;->h()Lorg/jshybugger/kK;

    move-result-object v1

    .line 52
    invoke-static {v1, p0}, Lorg/jshybugger/lS;->a(Lorg/jshybugger/kK;Lorg/jshybugger/kV;)Lorg/jshybugger/lp;

    move-result-object v1

    .line 53
    if-eqz v1, :cond_c

    .line 56
    iget-object v0, v1, Lorg/jshybugger/lp;->b:[Ljava/lang/Object;

    array-length v0, v0

    goto :goto_c
.end method

.method protected abstract j()I
.end method

.method protected abstract k()I
.end method

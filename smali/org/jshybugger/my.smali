.class public abstract Lorg/jshybugger/mY;
.super Lorg/jshybugger/nj;
.source "Loop.java"


# instance fields
.field protected l:Lorg/jshybugger/mt;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/jshybugger/nj;-><init>()V

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lorg/jshybugger/nj;-><init>(I)V

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lorg/jshybugger/mt;)V
    .registers 4

    .prologue
    .line 42
    iput-object p1, p0, Lorg/jshybugger/mY;->l:Lorg/jshybugger/mt;

    .line 43
    invoke-virtual {p1}, Lorg/jshybugger/mt;->n()I

    move-result v0

    invoke-virtual {p1}, Lorg/jshybugger/mt;->p()I

    move-result v1

    add-int/2addr v0, v1

    .line 44
    invoke-virtual {p0}, Lorg/jshybugger/mY;->n()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/jshybugger/mY;->j(I)V

    .line 45
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 46
    return-void
.end method

.method public final d(II)V
    .registers 3

    .prologue
    .line 80
    return-void
.end method

.method public k()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lorg/jshybugger/mY;->l:Lorg/jshybugger/mt;

    return-object v0
.end method

.class public Lorg/jshybugger/jy;
.super Ljava/lang/Object;
.source "HttpFiltersAdapter.java"

# interfaces
.implements Lorg/jshybugger/jx;


# instance fields
.field protected final a:Lorg/jshybugger/dU;

.field protected final b:Lorg/jshybugger/aw;


# direct methods
.method public constructor <init>(Lorg/jshybugger/dU;Lorg/jshybugger/aw;)V
    .registers 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/jshybugger/jy;->a:Lorg/jshybugger/dU;

    .line 18
    iput-object p2, p0, Lorg/jshybugger/jy;->b:Lorg/jshybugger/aw;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lorg/jshybugger/dN;)Lorg/jshybugger/dX;
    .registers 3

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Lorg/jshybugger/dN;)Lorg/jshybugger/dX;
    .registers 3

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lorg/jshybugger/dN;)Lorg/jshybugger/dN;
    .registers 2

    .prologue
    .line 37
    return-object p1
.end method

.method public d(Lorg/jshybugger/dN;)Lorg/jshybugger/dN;
    .registers 2

    .prologue
    .line 42
    return-object p1
.end method

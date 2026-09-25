.class final Lorg/jshybugger/df;
.super Ljava/lang/Object;
.source "ComposedLastHttpContent.java"

# interfaces
.implements Lorg/jshybugger/ed;


# instance fields
.field private final b:Lorg/jshybugger/dJ;

.field private c:Lorg/jshybugger/cB;


# direct methods
.method constructor <init>(Lorg/jshybugger/dJ;)V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/jshybugger/df;->b:Lorg/jshybugger/dJ;

    .line 29
    return-void
.end method


# virtual methods
.method public final a()Lorg/jshybugger/H;
    .registers 2

    .prologue
    .line 59
    sget-object v0, Lorg/jshybugger/S;->a:Lorg/jshybugger/H;

    return-object v0
.end method

.method public final a(Lorg/jshybugger/cB;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lorg/jshybugger/df;->c:Lorg/jshybugger/cB;

    .line 70
    return-void
.end method

.method public final b()Lorg/jshybugger/dJ;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lorg/jshybugger/df;->b:Lorg/jshybugger/dJ;

    return-object v0
.end method

.method public final c()Lorg/jshybugger/cB;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/jshybugger/df;->c:Lorg/jshybugger/cB;

    return-object v0
.end method

.method public final bridge synthetic d()Lorg/jshybugger/dw;
    .registers 1

    .prologue
    .line 23
    return-object p0
.end method

.method public final t()I
    .registers 2

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public final v()Z
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic w()Lorg/jshybugger/fp;
    .registers 1

    .prologue
    .line 23
    return-object p0
.end method

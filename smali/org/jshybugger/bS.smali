.class public Lorg/jshybugger/bs;
.super Lorg/jshybugger/fD;
.source "DefaultChannelPromise.java"

# interfaces
.implements Lorg/jshybugger/aM;


# instance fields
.field private final a:Lorg/jshybugger/aj;


# direct methods
.method public constructor <init>(Lorg/jshybugger/aj;)V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/jshybugger/fD;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/jshybugger/bs;->a:Lorg/jshybugger/aj;

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/jshybugger/aj;Lorg/jshybugger/fK;)V
    .registers 3

    .prologue
    .line 50
    invoke-direct {p0, p2}, Lorg/jshybugger/fD;-><init>(Lorg/jshybugger/fK;)V

    .line 51
    iput-object p1, p0, Lorg/jshybugger/bs;->a:Lorg/jshybugger/aj;

    .line 52
    return-void
.end method


# virtual methods
.method public a()Lorg/jshybugger/aM;
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lorg/jshybugger/fD;->a(Ljava/lang/Object;)Lorg/jshybugger/fZ;

    return-object p0
.end method

.method public a(Ljava/lang/Throwable;)Lorg/jshybugger/aM;
    .registers 2

    .prologue
    .line 87
    invoke-super {p0, p1}, Lorg/jshybugger/fD;->c(Ljava/lang/Throwable;)Lorg/jshybugger/fZ;

    .line 88
    return-object p0
.end method

.method public final synthetic a(Lorg/jshybugger/fO;)Lorg/jshybugger/ao;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Lorg/jshybugger/fD;->f(Lorg/jshybugger/fO;)Lorg/jshybugger/fZ;

    return-object p0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Lorg/jshybugger/fZ;
    .registers 2

    .prologue
    .line 28
    check-cast p1, Ljava/lang/Void;

    invoke-super {p0, p1}, Lorg/jshybugger/fD;->a(Ljava/lang/Object;)Lorg/jshybugger/fZ;

    return-object p0
.end method

.method public a_()Z
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jshybugger/bs;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final synthetic b(Lorg/jshybugger/fO;)Lorg/jshybugger/ao;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Lorg/jshybugger/fD;->e(Lorg/jshybugger/fO;)Lorg/jshybugger/fZ;

    return-object p0
.end method

.method public final synthetic b()Lorg/jshybugger/fN;
    .registers 1

    .prologue
    .line 28
    invoke-super {p0}, Lorg/jshybugger/fD;->l()Lorg/jshybugger/fZ;

    return-object p0
.end method

.method public final c(Lorg/jshybugger/fO;)Lorg/jshybugger/aM;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/fO",
            "<+",
            "Lorg/jshybugger/fN",
            "<-",
            "Ljava/lang/Void;",
            ">;>;)",
            "Lorg/jshybugger/aM;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-super {p0, p1}, Lorg/jshybugger/fD;->f(Lorg/jshybugger/fO;)Lorg/jshybugger/fZ;

    .line 94
    return-object p0
.end method

.method public final synthetic c()Lorg/jshybugger/fN;
    .registers 1

    .prologue
    .line 28
    invoke-super {p0}, Lorg/jshybugger/fD;->k()Lorg/jshybugger/fZ;

    return-object p0
.end method

.method public synthetic c(Ljava/lang/Throwable;)Lorg/jshybugger/fZ;
    .registers 3

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lorg/jshybugger/bs;->a(Ljava/lang/Throwable;)Lorg/jshybugger/aM;

    move-result-object v0

    return-object v0
.end method

.method protected final c_()Lorg/jshybugger/fK;
    .registers 2

    .prologue
    .line 56
    invoke-super {p0}, Lorg/jshybugger/fD;->c_()Lorg/jshybugger/fK;

    move-result-object v0

    .line 57
    if-nez v0, :cond_c

    .line 58
    iget-object v0, p0, Lorg/jshybugger/bs;->a:Lorg/jshybugger/aj;

    invoke-interface {v0}, Lorg/jshybugger/aj;->d()Lorg/jshybugger/bu;

    move-result-object v0

    .line 60
    :cond_c
    return-object v0
.end method

.method public final d()Lorg/jshybugger/aj;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jshybugger/bs;->a:Lorg/jshybugger/aj;

    return-object v0
.end method

.method public final synthetic d(Lorg/jshybugger/fO;)Lorg/jshybugger/fN;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Lorg/jshybugger/fD;->f(Lorg/jshybugger/fO;)Lorg/jshybugger/fZ;

    return-object p0
.end method

.method public final synthetic e()Lorg/jshybugger/ao;
    .registers 1

    .prologue
    .line 28
    invoke-super {p0}, Lorg/jshybugger/fD;->l()Lorg/jshybugger/fZ;

    return-object p0
.end method

.method public final bridge synthetic e(Lorg/jshybugger/fO;)Lorg/jshybugger/fZ;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Lorg/jshybugger/fD;->e(Lorg/jshybugger/fO;)Lorg/jshybugger/fZ;

    return-object p0
.end method

.method public final synthetic f()Lorg/jshybugger/ao;
    .registers 1

    .prologue
    .line 28
    invoke-super {p0}, Lorg/jshybugger/fD;->j()Lorg/jshybugger/fZ;

    return-object p0
.end method

.method public final bridge synthetic f(Lorg/jshybugger/fO;)Lorg/jshybugger/fZ;
    .registers 2

    .prologue
    .line 28
    invoke-super {p0, p1}, Lorg/jshybugger/fD;->f(Lorg/jshybugger/fO;)Lorg/jshybugger/fZ;

    return-object p0
.end method

.method protected final i()V
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lorg/jshybugger/bs;->a:Lorg/jshybugger/aj;

    invoke-interface {v0}, Lorg/jshybugger/aj;->g()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 157
    invoke-super {p0}, Lorg/jshybugger/fD;->i()V

    .line 159
    :cond_b
    return-void
.end method

.method public final bridge synthetic j()Lorg/jshybugger/fZ;
    .registers 1

    .prologue
    .line 28
    invoke-super {p0}, Lorg/jshybugger/fD;->j()Lorg/jshybugger/fZ;

    return-object p0
.end method

.method public final bridge synthetic k()Lorg/jshybugger/fZ;
    .registers 1

    .prologue
    .line 28
    invoke-super {p0}, Lorg/jshybugger/fD;->k()Lorg/jshybugger/fZ;

    return-object p0
.end method

.method public final bridge synthetic l()Lorg/jshybugger/fZ;
    .registers 1

    .prologue
    .line 28
    invoke-super {p0}, Lorg/jshybugger/fD;->l()Lorg/jshybugger/fZ;

    return-object p0
.end method

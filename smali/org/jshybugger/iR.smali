.class final Lorg/jshybugger/ir;
.super Lorg/jshybugger/jo;
.source "DebugServer.java"


# instance fields
.field private synthetic h:Lorg/jshybugger/jl;

.field private synthetic i:Lorg/jshybugger/jl;

.field private synthetic j:Lorg/jshybugger/jl;

.field private synthetic k:Lorg/jshybugger/jl;

.field private synthetic l:Lorg/jshybugger/jl;

.field private synthetic m:Lorg/jshybugger/iq;


# direct methods
.method constructor <init>(Lorg/jshybugger/iq;ILorg/jshybugger/jl;Lorg/jshybugger/jl;Lorg/jshybugger/jl;Lorg/jshybugger/jl;Lorg/jshybugger/jl;)V
    .registers 8

    .prologue
    .line 104
    iput-object p1, p0, Lorg/jshybugger/ir;->m:Lorg/jshybugger/iq;

    iput-object p3, p0, Lorg/jshybugger/ir;->h:Lorg/jshybugger/jl;

    iput-object p4, p0, Lorg/jshybugger/ir;->i:Lorg/jshybugger/jl;

    iput-object p5, p0, Lorg/jshybugger/ir;->j:Lorg/jshybugger/jl;

    iput-object p6, p0, Lorg/jshybugger/ir;->k:Lorg/jshybugger/jl;

    iput-object p7, p0, Lorg/jshybugger/ir;->l:Lorg/jshybugger/jl;

    invoke-direct {p0, p2}, Lorg/jshybugger/jo;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/aJ;)V
    .registers 5

    .prologue
    .line 108
    const-string v0, "debug-handler"

    new-instance v1, Lorg/jshybugger/iB;

    iget-object v2, p0, Lorg/jshybugger/ir;->m:Lorg/jshybugger/iq;

    invoke-direct {v1, v2}, Lorg/jshybugger/iB;-><init>(Lorg/jshybugger/iq;)V

    invoke-interface {p1, v0, v1}, Lorg/jshybugger/aJ;->b(Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    .line 109
    const-string v0, "root-handler"

    iget-object v1, p0, Lorg/jshybugger/ir;->h:Lorg/jshybugger/jl;

    invoke-interface {p1, v0, v1}, Lorg/jshybugger/aJ;->b(Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    .line 110
    const-string v0, "json-handler"

    iget-object v1, p0, Lorg/jshybugger/ir;->i:Lorg/jshybugger/jl;

    invoke-interface {p1, v0, v1}, Lorg/jshybugger/aJ;->b(Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    .line 111
    const-string v0, "version-handler"

    iget-object v1, p0, Lorg/jshybugger/ir;->j:Lorg/jshybugger/jl;

    invoke-interface {p1, v0, v1}, Lorg/jshybugger/aJ;->b(Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    .line 112
    const-string v0, "license-handler"

    iget-object v1, p0, Lorg/jshybugger/ir;->k:Lorg/jshybugger/jl;

    invoke-interface {p1, v0, v1}, Lorg/jshybugger/aJ;->b(Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    .line 113
    const-string v0, "not-found"

    iget-object v1, p0, Lorg/jshybugger/ir;->l:Lorg/jshybugger/jl;

    invoke-interface {p1, v0, v1}, Lorg/jshybugger/aJ;->b(Ljava/lang/String;Lorg/jshybugger/at;)Lorg/jshybugger/aJ;

    .line 114
    return-void
.end method

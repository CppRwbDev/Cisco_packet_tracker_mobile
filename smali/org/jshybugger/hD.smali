.class final Lorg/jshybugger/hd;
.super Lorg/jshybugger/gV;
.source "Slf4JLogger.java"


# instance fields
.field private final transient b:Lorg/jshybugger/nS;


# direct methods
.method constructor <init>(Lorg/jshybugger/nS;)V
    .registers 3

    .prologue
    .line 30
    invoke-interface {p1}, Lorg/jshybugger/nS;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jshybugger/gV;-><init>(Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lorg/jshybugger/hd;->b:Lorg/jshybugger/nS;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lorg/jshybugger/hd;->b:Lorg/jshybugger/nS;

    invoke-interface {v0, p1}, Lorg/jshybugger/nS;->a(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 46
    iget-object v0, p0, Lorg/jshybugger/hd;->b:Lorg/jshybugger/nS;

    invoke-interface {v0, p1, p2}, Lorg/jshybugger/nS;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 51
    iget-object v0, p0, Lorg/jshybugger/hd;->b:Lorg/jshybugger/nS;

    invoke-interface {v0, p1, p2, p3}, Lorg/jshybugger/nS;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 91
    iget-object v0, p0, Lorg/jshybugger/hd;->b:Lorg/jshybugger/nS;

    invoke-interface {v0, p1, p2}, Lorg/jshybugger/nS;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/jshybugger/hd;->b:Lorg/jshybugger/nS;

    invoke-interface {v0}, Lorg/jshybugger/nS;->c()Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lorg/jshybugger/hd;->b:Lorg/jshybugger/nS;

    invoke-interface {v0, p1}, Lorg/jshybugger/nS;->b(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 76
    iget-object v0, p0, Lorg/jshybugger/hd;->b:Lorg/jshybugger/nS;

    invoke-interface {v0, p1, p2}, Lorg/jshybugger/nS;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 81
    iget-object v0, p0, Lorg/jshybugger/hd;->b:Lorg/jshybugger/nS;

    invoke-interface {v0, p1, p2, p3}, Lorg/jshybugger/nS;->b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 151
    iget-object v0, p0, Lorg/jshybugger/hd;->b:Lorg/jshybugger/nS;

    invoke-interface {v0, p1, p2}, Lorg/jshybugger/nS;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    return-void
.end method

.method public final b()Z
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lorg/jshybugger/hd;->b:Lorg/jshybugger/nS;

    invoke-interface {v0}, Lorg/jshybugger/nS;->e()Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lorg/jshybugger/hd;->b:Lorg/jshybugger/nS;

    invoke-interface {v0, p1}, Lorg/jshybugger/nS;->c(Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 136
    iget-object v0, p0, Lorg/jshybugger/hd;->b:Lorg/jshybugger/nS;

    invoke-interface {v0, p1, p2}, Lorg/jshybugger/nS;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 146
    iget-object v0, p0, Lorg/jshybugger/hd;->b:Lorg/jshybugger/nS;

    invoke-interface {v0, p1, p2, p3}, Lorg/jshybugger/nS;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 181
    iget-object v0, p0, Lorg/jshybugger/hd;->b:Lorg/jshybugger/nS;

    invoke-interface {v0, p1, p2}, Lorg/jshybugger/nS;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 161
    iget-object v0, p0, Lorg/jshybugger/hd;->b:Lorg/jshybugger/nS;

    invoke-interface {v0, p1}, Lorg/jshybugger/nS;->d(Ljava/lang/String;)V

    .line 162
    return-void
.end method

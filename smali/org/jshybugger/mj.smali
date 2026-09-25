.class public Lorg/jshybugger/mJ;
.super Lorg/jshybugger/mY;
.source "ForInLoop.java"


# instance fields
.field protected i:Lorg/jshybugger/mt;

.field protected j:Lorg/jshybugger/mt;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/jshybugger/mY;-><init>()V

    .line 21
    const/16 v0, 0x77

    iput v0, p0, Lorg/jshybugger/mJ;->a:I

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lorg/jshybugger/mY;-><init>(I)V

    .line 21
    const/16 v0, 0x77

    iput v0, p0, Lorg/jshybugger/mJ;->a:I

    .line 34
    return-void
.end method


# virtual methods
.method public a(Lorg/jshybugger/nb;)V
    .registers 3

    .prologue
    .line 147
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 148
    iget-object v0, p0, Lorg/jshybugger/mJ;->i:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 149
    iget-object v0, p0, Lorg/jshybugger/mJ;->j:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 150
    iget-object v0, p0, Lorg/jshybugger/mJ;->l:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 152
    :cond_15
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 86
    iput-boolean p1, p0, Lorg/jshybugger/mJ;->o:Z

    .line 87
    return-void
.end method

.method public final b(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 53
    invoke-static {p1}, Lorg/jshybugger/mJ;->a(Ljava/lang/Object;)V

    .line 54
    iput-object p1, p0, Lorg/jshybugger/mJ;->i:Lorg/jshybugger/mt;

    .line 55
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 56
    return-void
.end method

.method public final e(I)V
    .registers 2

    .prologue
    .line 102
    return-void
.end method

.method public final e(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 70
    invoke-static {p1}, Lorg/jshybugger/mJ;->a(Ljava/lang/Object;)V

    .line 71
    iput-object p1, p0, Lorg/jshybugger/mJ;->j:Lorg/jshybugger/mt;

    .line 72
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 73
    return-void
.end method

.method public final f(I)V
    .registers 2

    .prologue
    .line 118
    return-void
.end method

.method public h(I)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    invoke-static {p1}, Lorg/jshybugger/mJ;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, "for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p0}, Lorg/jshybugger/mJ;->s()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 127
    const-string v1, "each "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_1d
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v1, p0, Lorg/jshybugger/mJ;->i:Lorg/jshybugger/mt;

    invoke-virtual {v1, v2}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v1, p0, Lorg/jshybugger/mJ;->j:Lorg/jshybugger/mt;

    invoke-virtual {v1, v2}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v1, p0, Lorg/jshybugger/mJ;->l:Lorg/jshybugger/mt;

    instance-of v1, v1, Lorg/jshybugger/mw;

    if-eqz v1, :cond_5c

    .line 135
    iget-object v1, p0, Lorg/jshybugger/mJ;->l:Lorg/jshybugger/mt;

    invoke-virtual {v1, p1}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :goto_57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 137
    :cond_5c
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jshybugger/mJ;->l:Lorg/jshybugger/mt;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_57
.end method

.method public final l()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lorg/jshybugger/mJ;->i:Lorg/jshybugger/mt;

    return-object v0
.end method

.method public final m()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lorg/jshybugger/mJ;->j:Lorg/jshybugger/mt;

    return-object v0
.end method

.method public s()Z
    .registers 2

    .prologue
    .line 79
    iget-boolean v0, p0, Lorg/jshybugger/mJ;->o:Z

    return v0
.end method

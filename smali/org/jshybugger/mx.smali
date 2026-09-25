.class public final Lorg/jshybugger/mX;
.super Lorg/jshybugger/nj;
.source "LetNode.java"


# instance fields
.field private i:Lorg/jshybugger/ns;

.field private j:Lorg/jshybugger/mt;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/jshybugger/nj;-><init>()V

    .line 29
    const/16 v0, 0x9e

    iput v0, p0, Lorg/jshybugger/mX;->a:I

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/jshybugger/nj;-><init>(I)V

    .line 29
    const/16 v0, 0x9e

    iput v0, p0, Lorg/jshybugger/mX;->a:I

    .line 41
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lorg/jshybugger/mX;->j:Lorg/jshybugger/mt;

    .line 84
    if-eqz p1, :cond_7

    .line 85
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 86
    :cond_7
    return-void
.end method

.method public final a(Lorg/jshybugger/nb;)V
    .registers 3

    .prologue
    .line 144
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 145
    iget-object v0, p0, Lorg/jshybugger/mX;->i:Lorg/jshybugger/ns;

    invoke-virtual {v0, p1}, Lorg/jshybugger/ns;->a(Lorg/jshybugger/nb;)V

    .line 146
    iget-object v0, p0, Lorg/jshybugger/mX;->j:Lorg/jshybugger/mt;

    if-eqz v0, :cond_14

    .line 147
    iget-object v0, p0, Lorg/jshybugger/mX;->j:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 150
    :cond_14
    return-void
.end method

.method public final a(Lorg/jshybugger/ns;)V
    .registers 2

    .prologue
    .line 59
    invoke-static {p1}, Lorg/jshybugger/mX;->a(Ljava/lang/Object;)V

    .line 60
    iput-object p1, p0, Lorg/jshybugger/mX;->i:Lorg/jshybugger/ns;

    .line 61
    invoke-virtual {p1, p0}, Lorg/jshybugger/ns;->c(Lorg/jshybugger/mt;)V

    .line 62
    return-void
.end method

.method public final e(I)V
    .registers 2

    .prologue
    .line 99
    return-void
.end method

.method public final f(I)V
    .registers 2

    .prologue
    .line 113
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 126
    invoke-static {p1}, Lorg/jshybugger/mX;->l(I)Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v0, "let ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v0, p0, Lorg/jshybugger/mX;->i:Lorg/jshybugger/ns;

    iget-object v0, v0, Lorg/jshybugger/ns;->i:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/jshybugger/mX;->a(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 131
    const-string v0, ") "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v0, p0, Lorg/jshybugger/mX;->j:Lorg/jshybugger/mt;

    if-eqz v0, :cond_2a

    .line 133
    iget-object v0, p0, Lorg/jshybugger/mX;->j:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lorg/jshybugger/ns;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lorg/jshybugger/mX;->i:Lorg/jshybugger/ns;

    return-object v0
.end method

.method public final l()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/jshybugger/mX;->j:Lorg/jshybugger/mt;

    return-object v0
.end method

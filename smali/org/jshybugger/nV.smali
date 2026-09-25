.class public final Lorg/jshybugger/nv;
.super Lorg/jshybugger/mt;
.source "WithStatement.java"


# instance fields
.field private i:Lorg/jshybugger/mt;

.field private j:Lorg/jshybugger/mt;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/jshybugger/mt;-><init>()V

    .line 21
    const/16 v0, 0x7b

    iput v0, p0, Lorg/jshybugger/nv;->a:I

    .line 29
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/mt;-><init>(II)V

    .line 21
    const/16 v0, 0x7b

    iput v0, p0, Lorg/jshybugger/nv;->a:I

    .line 37
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 51
    invoke-static {p1}, Lorg/jshybugger/nv;->a(Ljava/lang/Object;)V

    .line 52
    iput-object p1, p0, Lorg/jshybugger/nv;->i:Lorg/jshybugger/mt;

    .line 53
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 54
    return-void
.end method

.method public final a(Lorg/jshybugger/nb;)V
    .registers 3

    .prologue
    .line 128
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 129
    iget-object v0, p0, Lorg/jshybugger/nv;->i:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 130
    iget-object v0, p0, Lorg/jshybugger/nv;->j:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 132
    :cond_10
    return-void
.end method

.method public final b(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 68
    invoke-static {p1}, Lorg/jshybugger/nv;->a(Ljava/lang/Object;)V

    .line 69
    iput-object p1, p0, Lorg/jshybugger/nv;->j:Lorg/jshybugger/mt;

    .line 70
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 71
    return-void
.end method

.method public final d(II)V
    .registers 3

    .prologue
    .line 105
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    invoke-static {p1}, Lorg/jshybugger/nv;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "with ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-object v1, p0, Lorg/jshybugger/nv;->i:Lorg/jshybugger/mt;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-object v1, p0, Lorg/jshybugger/nv;->j:Lorg/jshybugger/mt;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, p0, Lorg/jshybugger/nv;->j:Lorg/jshybugger/mt;

    instance-of v1, v1, Lorg/jshybugger/mw;

    if-nez v1, :cond_36

    .line 118
    const-string v1, ";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lorg/jshybugger/nv;->i:Lorg/jshybugger/mt;

    return-object v0
.end method

.method public final l()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lorg/jshybugger/nv;->j:Lorg/jshybugger/mt;

    return-object v0
.end method

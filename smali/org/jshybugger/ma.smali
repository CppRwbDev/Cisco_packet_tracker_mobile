.class public final Lorg/jshybugger/mA;
.super Lorg/jshybugger/mt;
.source "ConditionalExpression.java"


# instance fields
.field private i:Lorg/jshybugger/mt;

.field private j:Lorg/jshybugger/mt;

.field private k:Lorg/jshybugger/mt;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/jshybugger/mt;-><init>()V

    .line 30
    const/16 v0, 0x66

    iput v0, p0, Lorg/jshybugger/mA;->a:I

    .line 38
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/mt;-><init>(II)V

    .line 30
    const/16 v0, 0x66

    iput v0, p0, Lorg/jshybugger/mA;->a:I

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 61
    invoke-static {p1}, Lorg/jshybugger/mA;->a(Ljava/lang/Object;)V

    .line 62
    iput-object p1, p0, Lorg/jshybugger/mA;->i:Lorg/jshybugger/mt;

    .line 63
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 64
    return-void
.end method

.method public final a(Lorg/jshybugger/nb;)V
    .registers 3

    .prologue
    .line 162
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 163
    iget-object v0, p0, Lorg/jshybugger/mA;->i:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 164
    iget-object v0, p0, Lorg/jshybugger/mA;->j:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 165
    iget-object v0, p0, Lorg/jshybugger/mA;->k:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 167
    :cond_15
    return-void
.end method

.method public final b(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 80
    invoke-static {p1}, Lorg/jshybugger/mA;->a(Ljava/lang/Object;)V

    .line 81
    iput-object p1, p0, Lorg/jshybugger/mA;->j:Lorg/jshybugger/mt;

    .line 82
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 83
    return-void
.end method

.method public final e(I)V
    .registers 2

    .prologue
    .line 117
    return-void
.end method

.method public final e(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 100
    invoke-static {p1}, Lorg/jshybugger/mA;->a(Ljava/lang/Object;)V

    .line 101
    iput-object p1, p0, Lorg/jshybugger/mA;->k:Lorg/jshybugger/mt;

    .line 102
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 103
    return-void
.end method

.method public final f(I)V
    .registers 2

    .prologue
    .line 132
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    invoke-static {p1}, Lorg/jshybugger/mA;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    iget-object v1, p0, Lorg/jshybugger/mA;->i:Lorg/jshybugger/mt;

    invoke-virtual {v1, p1}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v1, " ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v1, p0, Lorg/jshybugger/mA;->j:Lorg/jshybugger/mt;

    invoke-virtual {v1, v2}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v1, p0, Lorg/jshybugger/mA;->k:Lorg/jshybugger/mt;

    invoke-virtual {v1, v2}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final i()Z
    .registers 2

    .prologue
    .line 137
    iget-object v0, p0, Lorg/jshybugger/mA;->i:Lorg/jshybugger/mt;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/jshybugger/mA;->j:Lorg/jshybugger/mt;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/jshybugger/mA;->k:Lorg/jshybugger/mt;

    if-nez v0, :cond_11

    .line 139
    :cond_c
    invoke-static {}, Lorg/jshybugger/lh;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 140
    :cond_11
    iget-object v0, p0, Lorg/jshybugger/mA;->j:Lorg/jshybugger/mt;

    invoke-virtual {v0}, Lorg/jshybugger/mt;->i()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lorg/jshybugger/mA;->k:Lorg/jshybugger/mt;

    invoke-virtual {v0}, Lorg/jshybugger/mt;->i()Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    :goto_22
    return v0

    :cond_23
    const/4 v0, 0x0

    goto :goto_22
.end method

.method public final k()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lorg/jshybugger/mA;->i:Lorg/jshybugger/mt;

    return-object v0
.end method

.method public final l()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/jshybugger/mA;->j:Lorg/jshybugger/mt;

    return-object v0
.end method

.method public final m()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/jshybugger/mA;->k:Lorg/jshybugger/mt;

    return-object v0
.end method

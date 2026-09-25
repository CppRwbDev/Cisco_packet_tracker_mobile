.class public final Lorg/jshybugger/mR;
.super Lorg/jshybugger/mt;
.source "IfStatement.java"


# instance fields
.field private i:Lorg/jshybugger/mt;

.field private j:Lorg/jshybugger/mt;

.field private k:Lorg/jshybugger/mt;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/jshybugger/mt;-><init>()V

    .line 22
    const/16 v0, 0x70

    iput v0, p0, Lorg/jshybugger/mR;->a:I

    .line 32
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/mt;-><init>(II)V

    .line 22
    const/16 v0, 0x70

    iput v0, p0, Lorg/jshybugger/mR;->a:I

    .line 40
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 54
    invoke-static {p1}, Lorg/jshybugger/mR;->a(Ljava/lang/Object;)V

    .line 55
    iput-object p1, p0, Lorg/jshybugger/mR;->i:Lorg/jshybugger/mt;

    .line 56
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 57
    return-void
.end method

.method public final a(Lorg/jshybugger/nb;)V
    .registers 3

    .prologue
    .line 173
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 174
    iget-object v0, p0, Lorg/jshybugger/mR;->i:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 175
    iget-object v0, p0, Lorg/jshybugger/mR;->j:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 176
    iget-object v0, p0, Lorg/jshybugger/mR;->k:Lorg/jshybugger/mt;

    if-eqz v0, :cond_19

    .line 177
    iget-object v0, p0, Lorg/jshybugger/mR;->k:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 180
    :cond_19
    return-void
.end method

.method public final b(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 71
    invoke-static {p1}, Lorg/jshybugger/mR;->a(Ljava/lang/Object;)V

    .line 72
    iput-object p1, p0, Lorg/jshybugger/mR;->j:Lorg/jshybugger/mt;

    .line 73
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 74
    return-void
.end method

.method public final d(II)V
    .registers 3

    .prologue
    .line 140
    return-void
.end method

.method public final e(I)V
    .registers 2

    .prologue
    .line 105
    return-void
.end method

.method public final e(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lorg/jshybugger/mR;->k:Lorg/jshybugger/mt;

    .line 90
    if-eqz p1, :cond_7

    .line 91
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 92
    :cond_7
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 146
    invoke-static {p1}, Lorg/jshybugger/mR;->l(I)Ljava/lang/String;

    move-result-object v0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v0, "if ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v0, p0, Lorg/jshybugger/mR;->i:Lorg/jshybugger/mt;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v0, ") "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v0, p0, Lorg/jshybugger/mR;->j:Lorg/jshybugger/mt;

    instance-of v0, v0, Lorg/jshybugger/mw;

    if-nez v0, :cond_35

    .line 153
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/jshybugger/mR;->l(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_35
    iget-object v0, p0, Lorg/jshybugger/mR;->j:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v0, p0, Lorg/jshybugger/mR;->k:Lorg/jshybugger/mt;

    instance-of v0, v0, Lorg/jshybugger/mR;

    if-eqz v0, :cond_64

    .line 157
    const-string v0, " else "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v0, p0, Lorg/jshybugger/mR;->k:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_5a
    :goto_5a
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :cond_64
    iget-object v0, p0, Lorg/jshybugger/mR;->k:Lorg/jshybugger/mt;

    if-eqz v0, :cond_5a

    .line 160
    const-string v0, " else "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v0, p0, Lorg/jshybugger/mR;->k:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5a
.end method

.method public final k()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lorg/jshybugger/mR;->i:Lorg/jshybugger/mt;

    return-object v0
.end method

.method public final l()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/jshybugger/mR;->j:Lorg/jshybugger/mt;

    return-object v0
.end method

.method public final m()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/jshybugger/mR;->k:Lorg/jshybugger/mt;

    return-object v0
.end method

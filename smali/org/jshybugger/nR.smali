.class public final Lorg/jshybugger/nr;
.super Lorg/jshybugger/mt;
.source "UnaryExpression.java"


# instance fields
.field private i:Lorg/jshybugger/mt;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/jshybugger/mt;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/mt;-><init>(II)V

    .line 40
    return-void
.end method

.method public constructor <init>(IILorg/jshybugger/mt;)V
    .registers 5

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jshybugger/nr;-><init>(IILorg/jshybugger/mt;Z)V

    .line 48
    return-void
.end method

.method public constructor <init>(IILorg/jshybugger/mt;Z)V
    .registers 8

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/jshybugger/mt;-><init>()V

    .line 62
    invoke-static {p3}, Lorg/jshybugger/nr;->a(Ljava/lang/Object;)V

    .line 63
    if-eqz p4, :cond_1d

    invoke-virtual {p3}, Lorg/jshybugger/mt;->n()I

    move-result v0

    move v1, v0

    .line 65
    :goto_d
    if-eqz p4, :cond_1f

    add-int/lit8 v0, p2, 0x2

    .line 68
    :goto_11
    invoke-virtual {p0, v1, v0}, Lorg/jshybugger/nr;->c(II)V

    .line 69
    invoke-virtual {p0, p1}, Lorg/jshybugger/nr;->e(I)V

    .line 70
    invoke-virtual {p0, p3}, Lorg/jshybugger/nr;->a(Lorg/jshybugger/mt;)V

    .line 71
    iput-boolean p4, p0, Lorg/jshybugger/nr;->j:Z

    .line 72
    return-void

    :cond_1d
    move v1, p2

    .line 63
    goto :goto_d

    .line 65
    :cond_1f
    invoke-virtual {p3}, Lorg/jshybugger/mt;->n()I

    move-result v0

    invoke-virtual {p3}, Lorg/jshybugger/mt;->p()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_11
.end method


# virtual methods
.method public final a(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 102
    invoke-static {p1}, Lorg/jshybugger/nr;->a(Ljava/lang/Object;)V

    .line 103
    iput-object p1, p0, Lorg/jshybugger/nr;->i:Lorg/jshybugger/mt;

    .line 104
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 105
    return-void
.end method

.method public final a(Lorg/jshybugger/nb;)V
    .registers 3

    .prologue
    .line 151
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 152
    iget-object v0, p0, Lorg/jshybugger/nr;->i:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 154
    :cond_b
    return-void
.end method

.method public final e(I)V
    .registers 5

    .prologue
    .line 88
    const/4 v0, -0x1

    if-lt p1, v0, :cond_1f

    const/16 v0, 0xa3

    if-gt p1, v0, :cond_1f

    const/4 v0, 0x1

    :goto_8
    if-nez v0, :cond_21

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid token: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1f
    const/4 v0, 0x0

    goto :goto_8

    .line 90
    :cond_21
    invoke-virtual {p0, p1}, Lorg/jshybugger/nr;->a(I)Lorg/jshybugger/lH;

    .line 91
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    invoke-static {p1}, Lorg/jshybugger/nr;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p0}, Lorg/jshybugger/nr;->a()I

    move-result v1

    .line 133
    iget-boolean v2, p0, Lorg/jshybugger/nr;->j:Z

    if-nez v2, :cond_2c

    .line 134
    invoke-static {v1}, Lorg/jshybugger/nr;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    const/16 v2, 0x20

    if-eq v1, v2, :cond_27

    const/16 v2, 0x1f

    if-eq v1, v2, :cond_27

    const/16 v2, 0x7e

    if-ne v1, v2, :cond_2c

    .line 136
    :cond_27
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_2c
    iget-object v2, p0, Lorg/jshybugger/nr;->i:Lorg/jshybugger/mt;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-boolean v2, p0, Lorg/jshybugger/nr;->j:Z

    if-eqz v2, :cond_41

    .line 141
    invoke-static {v1}, Lorg/jshybugger/nr;->m(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/jshybugger/nr;->i:Lorg/jshybugger/mt;

    return-object v0
.end method

.method public final l()Z
    .registers 2

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/jshybugger/nr;->j:Z

    return v0
.end method

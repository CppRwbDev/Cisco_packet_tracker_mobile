.class public final Lorg/jshybugger/ne;
.super Lorg/jshybugger/mS;
.source "ObjectProperty.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/jshybugger/mS;-><init>()V

    .line 36
    const/16 v0, 0x67

    iput v0, p0, Lorg/jshybugger/ne;->a:I

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lorg/jshybugger/mS;-><init>(I)V

    .line 36
    const/16 v0, 0x67

    iput v0, p0, Lorg/jshybugger/ne;->a:I

    .line 58
    return-void
.end method


# virtual methods
.method public final h(I)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    invoke-static {p1}, Lorg/jshybugger/ne;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0}, Lorg/jshybugger/ne;->s()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 97
    const-string v1, "get "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    :cond_18
    :goto_18
    iget-object v1, p0, Lorg/jshybugger/ne;->i:Lorg/jshybugger/mt;

    invoke-virtual {v1, v3}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v1, p0, Lorg/jshybugger/ne;->a:I

    const/16 v2, 0x67

    if-ne v1, v2, :cond_2c

    .line 103
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_2c
    iget-object v1, p0, Lorg/jshybugger/ne;->j:Lorg/jshybugger/mt;

    invoke-virtual {v1, v3}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_3a
    invoke-virtual {p0}, Lorg/jshybugger/ne;->u()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 99
    const-string v1, "set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18
.end method

.method public final m()V
    .registers 2

    .prologue
    .line 68
    const/16 v0, 0x97

    iput v0, p0, Lorg/jshybugger/ne;->a:I

    .line 69
    return-void
.end method

.method public final s()Z
    .registers 3

    .prologue
    .line 75
    iget v0, p0, Lorg/jshybugger/ne;->a:I

    const/16 v1, 0x97

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final t()V
    .registers 2

    .prologue
    .line 82
    const/16 v0, 0x98

    iput v0, p0, Lorg/jshybugger/ne;->a:I

    .line 83
    return-void
.end method

.method public final u()Z
    .registers 3

    .prologue
    .line 89
    iget v0, p0, Lorg/jshybugger/ne;->a:I

    const/16 v1, 0x98

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

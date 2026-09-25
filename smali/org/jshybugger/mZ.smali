.class public final Lorg/jshybugger/mz;
.super Lorg/jshybugger/mt;
.source "Comment.java"


# instance fields
.field private i:Ljava/lang/String;


# virtual methods
.method public final a(Lorg/jshybugger/nb;)V
    .registers 2

    .prologue
    .line 100
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    .line 101
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/jshybugger/mz;->p()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 89
    invoke-static {p1}, Lorg/jshybugger/mz;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, p0, Lorg/jshybugger/mz;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/jshybugger/mz;->i:Ljava/lang/String;

    return-object v0
.end method

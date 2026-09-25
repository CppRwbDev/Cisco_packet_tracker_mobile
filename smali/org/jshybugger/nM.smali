.class public final Lorg/jshybugger/nm;
.super Lorg/jshybugger/mt;
.source "SwitchCase.java"


# instance fields
.field private i:Lorg/jshybugger/mt;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/mt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/jshybugger/mt;-><init>()V

    .line 36
    const/16 v0, 0x73

    iput v0, p0, Lorg/jshybugger/nm;->a:I

    .line 40
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/jshybugger/mt;-><init>(I)V

    .line 36
    const/16 v0, 0x73

    iput v0, p0, Lorg/jshybugger/nm;->a:I

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/mt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lorg/jshybugger/nm;->j:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 91
    iget-object v0, p0, Lorg/jshybugger/nm;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 93
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mt;

    .line 94
    invoke-virtual {p0, v0}, Lorg/jshybugger/nm;->b(Lorg/jshybugger/mt;)V

    goto :goto_d

    .line 96
    :cond_1d
    return-void
.end method

.method public final a(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 65
    iput-object p1, p0, Lorg/jshybugger/nm;->i:Lorg/jshybugger/mt;

    .line 66
    if-eqz p1, :cond_7

    .line 67
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 68
    :cond_7
    return-void
.end method

.method public final a(Lorg/jshybugger/nb;)V
    .registers 4

    .prologue
    .line 143
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 144
    iget-object v0, p0, Lorg/jshybugger/nm;->i:Lorg/jshybugger/mt;

    if-eqz v0, :cond_f

    .line 145
    iget-object v0, p0, Lorg/jshybugger/nm;->i:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 147
    :cond_f
    iget-object v0, p0, Lorg/jshybugger/nm;->j:Ljava/util/List;

    if-eqz v0, :cond_29

    .line 148
    iget-object v0, p0, Lorg/jshybugger/nm;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mt;

    .line 149
    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    goto :goto_19

    .line 153
    :cond_29
    return-void
.end method

.method public final b(Lorg/jshybugger/mt;)V
    .registers 4

    .prologue
    .line 108
    invoke-static {p1}, Lorg/jshybugger/nm;->a(Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lorg/jshybugger/nm;->j:Ljava/util/List;

    if-nez v0, :cond_e

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/nm;->j:Ljava/util/List;

    .line 112
    :cond_e
    invoke-virtual {p1}, Lorg/jshybugger/mt;->n()I

    move-result v0

    invoke-virtual {p1}, Lorg/jshybugger/mt;->p()I

    move-result v1

    add-int/2addr v0, v1

    .line 113
    invoke-virtual {p0}, Lorg/jshybugger/nm;->n()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lorg/jshybugger/nm;->j(I)V

    .line 114
    iget-object v0, p0, Lorg/jshybugger/nm;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 116
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    invoke-static {p1}, Lorg/jshybugger/nm;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-object v0, p0, Lorg/jshybugger/nm;->i:Lorg/jshybugger/mt;

    if-nez v0, :cond_35

    .line 123
    const-string v0, "default:\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :goto_15
    iget-object v0, p0, Lorg/jshybugger/nm;->j:Ljava/util/List;

    if-eqz v0, :cond_4a

    .line 130
    iget-object v0, p0, Lorg/jshybugger/nm;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mt;

    .line 131
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f

    .line 125
    :cond_35
    const-string v0, "case "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v0, p0, Lorg/jshybugger/nm;->i:Lorg/jshybugger/mt;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v0, ":\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 134
    :cond_4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lorg/jshybugger/nm;->i:Lorg/jshybugger/mt;

    return-object v0
.end method

.method public final l()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/mt;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lorg/jshybugger/nm;->j:Ljava/util/List;

    return-object v0
.end method

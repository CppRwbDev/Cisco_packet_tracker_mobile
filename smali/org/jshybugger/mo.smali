.class public final Lorg/jshybugger/mO;
.super Lorg/jshybugger/nj;
.source "GeneratorExpression.java"


# instance fields
.field private i:Lorg/jshybugger/mt;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/mP;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lorg/jshybugger/mt;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Lorg/jshybugger/nj;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/mO;->j:Ljava/util/List;

    .line 21
    const/16 v0, 0xa2

    iput v0, p0, Lorg/jshybugger/mO;->a:I

    .line 30
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/nj;-><init>(II)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/mO;->j:Ljava/util/List;

    .line 21
    const/16 v0, 0xa2

    iput v0, p0, Lorg/jshybugger/mO;->a:I

    .line 38
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/mP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-static {p1}, Lorg/jshybugger/mO;->a(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lorg/jshybugger/mO;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mP;

    .line 72
    invoke-static {v0}, Lorg/jshybugger/mO;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/jshybugger/mO;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Lorg/jshybugger/mP;->c(Lorg/jshybugger/mt;)V

    goto :goto_c

    .line 74
    :cond_24
    return-void
.end method

.method public final a(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 52
    invoke-static {p1}, Lorg/jshybugger/mO;->a(Ljava/lang/Object;)V

    .line 53
    iput-object p1, p0, Lorg/jshybugger/mO;->i:Lorg/jshybugger/mt;

    .line 54
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 55
    return-void
.end method

.method public final a(Lorg/jshybugger/nb;)V
    .registers 4

    .prologue
    .line 168
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 178
    :cond_6
    :goto_6
    return-void

    .line 171
    :cond_7
    iget-object v0, p0, Lorg/jshybugger/mO;->i:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 172
    iget-object v0, p0, Lorg/jshybugger/mO;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mP;

    .line 173
    invoke-virtual {v0, p1}, Lorg/jshybugger/mP;->a(Lorg/jshybugger/nb;)V

    goto :goto_12

    .line 175
    :cond_22
    iget-object v0, p0, Lorg/jshybugger/mO;->l:Lorg/jshybugger/mt;

    if-eqz v0, :cond_6

    .line 176
    iget-object v0, p0, Lorg/jshybugger/mO;->l:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    goto :goto_6
.end method

.method public final b(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 98
    iput-object p1, p0, Lorg/jshybugger/mO;->l:Lorg/jshybugger/mt;

    .line 99
    if-eqz p1, :cond_7

    .line 100
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 101
    :cond_7
    return-void
.end method

.method public final e(I)V
    .registers 2

    .prologue
    .line 114
    return-void
.end method

.method public final f(I)V
    .registers 2

    .prologue
    .line 128
    return-void
.end method

.method public final g(I)V
    .registers 2

    .prologue
    .line 142
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0xfa

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 148
    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v0, p0, Lorg/jshybugger/mO;->i:Lorg/jshybugger/mt;

    invoke-virtual {v0, v3}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-object v0, p0, Lorg/jshybugger/mO;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mP;

    .line 151
    invoke-virtual {v0, v3}, Lorg/jshybugger/mP;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 153
    :cond_30
    iget-object v0, p0, Lorg/jshybugger/mO;->l:Lorg/jshybugger/mt;

    if-eqz v0, :cond_47

    .line 154
    const-string v0, " if ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v0, p0, Lorg/jshybugger/mO;->l:Lorg/jshybugger/mt;

    invoke-virtual {v0, v3}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :cond_47
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lorg/jshybugger/mO;->i:Lorg/jshybugger/mt;

    return-object v0
.end method

.method public final l()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/mP;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lorg/jshybugger/mO;->j:Ljava/util/List;

    return-object v0
.end method

.method public final m()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/jshybugger/mO;->l:Lorg/jshybugger/mt;

    return-object v0
.end method

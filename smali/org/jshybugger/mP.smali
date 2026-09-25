.class public final Lorg/jshybugger/mp;
.super Lorg/jshybugger/nj;
.source "ArrayComprehension.java"


# instance fields
.field private i:Lorg/jshybugger/mt;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/mq;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lorg/jshybugger/mt;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/jshybugger/nj;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/mp;->j:Ljava/util/List;

    .line 24
    const/16 v0, 0x9d

    iput v0, p0, Lorg/jshybugger/mp;->a:I

    .line 33
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/nj;-><init>(II)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/mp;->j:Ljava/util/List;

    .line 24
    const/16 v0, 0x9d

    iput v0, p0, Lorg/jshybugger/mp;->a:I

    .line 41
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
            "Lorg/jshybugger/mq;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p1}, Lorg/jshybugger/mp;->a(Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lorg/jshybugger/mp;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mq;

    .line 75
    invoke-static {v0}, Lorg/jshybugger/mp;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/jshybugger/mp;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Lorg/jshybugger/mq;->c(Lorg/jshybugger/mt;)V

    goto :goto_c

    .line 77
    :cond_24
    return-void
.end method

.method public final a(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 55
    invoke-static {p1}, Lorg/jshybugger/mp;->a(Ljava/lang/Object;)V

    .line 56
    iput-object p1, p0, Lorg/jshybugger/mp;->i:Lorg/jshybugger/mt;

    .line 57
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 58
    return-void
.end method

.method public final a(Lorg/jshybugger/nb;)V
    .registers 4

    .prologue
    .line 171
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 181
    :cond_6
    :goto_6
    return-void

    .line 174
    :cond_7
    iget-object v0, p0, Lorg/jshybugger/mp;->i:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 175
    iget-object v0, p0, Lorg/jshybugger/mp;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mq;

    .line 176
    invoke-virtual {v0, p1}, Lorg/jshybugger/mq;->a(Lorg/jshybugger/nb;)V

    goto :goto_12

    .line 178
    :cond_22
    iget-object v0, p0, Lorg/jshybugger/mp;->l:Lorg/jshybugger/mt;

    if-eqz v0, :cond_6

    .line 179
    iget-object v0, p0, Lorg/jshybugger/mp;->l:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    goto :goto_6
.end method

.method public final b(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Lorg/jshybugger/mp;->l:Lorg/jshybugger/mt;

    .line 102
    if-eqz p1, :cond_7

    .line 103
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 104
    :cond_7
    return-void
.end method

.method public final e(I)V
    .registers 2

    .prologue
    .line 117
    return-void
.end method

.method public final f(I)V
    .registers 2

    .prologue
    .line 131
    return-void
.end method

.method public final g(I)V
    .registers 2

    .prologue
    .line 145
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0xfa

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 151
    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v0, p0, Lorg/jshybugger/mp;->i:Lorg/jshybugger/mt;

    invoke-virtual {v0, v3}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    iget-object v0, p0, Lorg/jshybugger/mp;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mq;

    .line 154
    invoke-virtual {v0, v3}, Lorg/jshybugger/mq;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c

    .line 156
    :cond_30
    iget-object v0, p0, Lorg/jshybugger/mp;->l:Lorg/jshybugger/mt;

    if-eqz v0, :cond_47

    .line 157
    const-string v0, " if ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v0, p0, Lorg/jshybugger/mp;->l:Lorg/jshybugger/mt;

    invoke-virtual {v0, v3}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    :cond_47
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lorg/jshybugger/mp;->i:Lorg/jshybugger/mt;

    return-object v0
.end method

.method public final l()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/mq;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lorg/jshybugger/mp;->j:Ljava/util/List;

    return-object v0
.end method

.method public final m()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/jshybugger/mp;->l:Lorg/jshybugger/mt;

    return-object v0
.end method

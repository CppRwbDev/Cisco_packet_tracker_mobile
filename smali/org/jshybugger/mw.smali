.class public final Lorg/jshybugger/mW;
.super Lorg/jshybugger/mt;
.source "LabeledStatement.java"


# instance fields
.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/mV;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lorg/jshybugger/mt;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/jshybugger/mt;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/mW;->i:Ljava/util/List;

    .line 27
    const/16 v0, 0x85

    iput v0, p0, Lorg/jshybugger/mW;->a:I

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lorg/jshybugger/mt;-><init>(I)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/mW;->i:Ljava/util/List;

    .line 27
    const/16 v0, 0x85

    iput v0, p0, Lorg/jshybugger/mW;->a:I

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/mV;)V
    .registers 3

    .prologue
    .line 67
    invoke-static {p1}, Lorg/jshybugger/mW;->a(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lorg/jshybugger/mW;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-virtual {p1, p0}, Lorg/jshybugger/mV;->c(Lorg/jshybugger/mt;)V

    .line 70
    return-void
.end method

.method public final a(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 98
    invoke-static {p1}, Lorg/jshybugger/mW;->a(Ljava/lang/Object;)V

    .line 99
    iput-object p1, p0, Lorg/jshybugger/mW;->j:Lorg/jshybugger/mt;

    .line 100
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 101
    return-void
.end method

.method public final a(Lorg/jshybugger/nb;)V
    .registers 4

    .prologue
    .line 123
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 124
    iget-object v0, p0, Lorg/jshybugger/mW;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mt;

    .line 125
    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    goto :goto_c

    .line 127
    :cond_1c
    iget-object v0, p0, Lorg/jshybugger/mW;->j:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 129
    :cond_21
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    iget-object v0, p0, Lorg/jshybugger/mW;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mV;

    .line 111
    invoke-virtual {v0, p1}, Lorg/jshybugger/mV;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 113
    :cond_1f
    iget-object v0, p0, Lorg/jshybugger/mW;->j:Lorg/jshybugger/mt;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/mV;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lorg/jshybugger/mW;->i:Ljava/util/List;

    return-object v0
.end method

.method public final l()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/jshybugger/mW;->j:Lorg/jshybugger/mt;

    return-object v0
.end method

.method public final m()Lorg/jshybugger/mV;
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lorg/jshybugger/mW;->i:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mV;

    return-object v0
.end method

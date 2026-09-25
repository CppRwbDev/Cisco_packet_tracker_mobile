.class public final Lorg/jshybugger/nq;
.super Lorg/jshybugger/mt;
.source "TryStatement.java"


# static fields
.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/my;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private j:Lorg/jshybugger/mt;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/my;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lorg/jshybugger/mt;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/nq;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/jshybugger/mt;-><init>()V

    .line 35
    const/16 v0, 0x51

    iput v0, p0, Lorg/jshybugger/nq;->a:I

    .line 42
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/mt;-><init>(II)V

    .line 35
    const/16 v0, 0x51

    iput v0, p0, Lorg/jshybugger/nq;->a:I

    .line 50
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
            "Lorg/jshybugger/my;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    if-nez p1, :cond_6

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/nq;->k:Ljava/util/List;

    .line 89
    :cond_5
    return-void

    .line 83
    :cond_6
    iget-object v0, p0, Lorg/jshybugger/nq;->k:Ljava/util/List;

    if-eqz v0, :cond_f

    .line 84
    iget-object v0, p0, Lorg/jshybugger/nq;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 85
    :cond_f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/my;

    .line 86
    invoke-virtual {p0, v0}, Lorg/jshybugger/nq;->a(Lorg/jshybugger/my;)V

    goto :goto_13
.end method

.method public final a(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 61
    invoke-static {p1}, Lorg/jshybugger/nq;->a(Ljava/lang/Object;)V

    .line 62
    iput-object p1, p0, Lorg/jshybugger/nq;->j:Lorg/jshybugger/mt;

    .line 63
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 64
    return-void
.end method

.method public final a(Lorg/jshybugger/my;)V
    .registers 3

    .prologue
    .line 97
    invoke-static {p1}, Lorg/jshybugger/nq;->a(Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lorg/jshybugger/nq;->k:Ljava/util/List;

    if-nez v0, :cond_e

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/nq;->k:Ljava/util/List;

    .line 101
    :cond_e
    iget-object v0, p0, Lorg/jshybugger/nq;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-virtual {p1, p0}, Lorg/jshybugger/my;->c(Lorg/jshybugger/mt;)V

    .line 103
    return-void
.end method

.method public final a(Lorg/jshybugger/nb;)V
    .registers 4

    .prologue
    .line 158
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 159
    iget-object v0, p0, Lorg/jshybugger/nq;->j:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 160
    invoke-virtual {p0}, Lorg/jshybugger/nq;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/my;

    .line 161
    invoke-virtual {v0, p1}, Lorg/jshybugger/my;->a(Lorg/jshybugger/nb;)V

    goto :goto_13

    .line 163
    :cond_23
    iget-object v0, p0, Lorg/jshybugger/nq;->l:Lorg/jshybugger/mt;

    if-eqz v0, :cond_2c

    .line 164
    iget-object v0, p0, Lorg/jshybugger/nq;->l:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 167
    :cond_2c
    return-void
.end method

.method public final b(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 117
    iput-object p1, p0, Lorg/jshybugger/nq;->l:Lorg/jshybugger/mt;

    .line 118
    if-eqz p1, :cond_7

    .line 119
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 120
    :cond_7
    return-void
.end method

.method public final e(I)V
    .registers 2

    .prologue
    .line 133
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v0, 0xfa

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 139
    invoke-static {p1}, Lorg/jshybugger/nq;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v0, "try "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v0, p0, Lorg/jshybugger/nq;->j:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p0}, Lorg/jshybugger/nq;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_28
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/my;

    .line 143
    invoke-virtual {v0, p1}, Lorg/jshybugger/my;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    .line 145
    :cond_3c
    iget-object v0, p0, Lorg/jshybugger/nq;->l:Lorg/jshybugger/mt;

    if-eqz v0, :cond_4e

    .line 146
    const-string v0, " finally "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v0, p0, Lorg/jshybugger/nq;->l:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lorg/jshybugger/nq;->j:Lorg/jshybugger/mt;

    return-object v0
.end method

.method public final l()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/my;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lorg/jshybugger/nq;->k:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/jshybugger/nq;->k:Ljava/util/List;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lorg/jshybugger/nq;->i:Ljava/util/List;

    goto :goto_6
.end method

.method public final m()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/jshybugger/nq;->l:Lorg/jshybugger/mt;

    return-object v0
.end method

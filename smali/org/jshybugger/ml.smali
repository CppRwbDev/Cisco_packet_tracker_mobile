.class public Lorg/jshybugger/mL;
.super Lorg/jshybugger/mt;
.source "FunctionCall.java"


# static fields
.field private static k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/mt;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected i:Lorg/jshybugger/mt;

.field protected j:Ljava/util/List;
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
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/mL;->k:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/jshybugger/mt;-><init>()V

    .line 25
    const/16 v0, 0x26

    iput v0, p0, Lorg/jshybugger/mL;->a:I

    .line 33
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/jshybugger/mt;-><init>(I)V

    .line 25
    const/16 v0, 0x26

    iput v0, p0, Lorg/jshybugger/mL;->a:I

    .line 37
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
    .line 77
    if-nez p1, :cond_6

    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/mL;->j:Ljava/util/List;

    .line 86
    :cond_5
    return-void

    .line 80
    :cond_6
    iget-object v0, p0, Lorg/jshybugger/mL;->j:Ljava/util/List;

    if-eqz v0, :cond_f

    .line 81
    iget-object v0, p0, Lorg/jshybugger/mL;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    :cond_f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mt;

    .line 83
    invoke-virtual {p0, v0}, Lorg/jshybugger/mL;->b(Lorg/jshybugger/mt;)V

    goto :goto_13
.end method

.method public final a(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 57
    invoke-static {p1}, Lorg/jshybugger/mL;->a(Ljava/lang/Object;)V

    .line 58
    iput-object p1, p0, Lorg/jshybugger/mL;->i:Lorg/jshybugger/mt;

    .line 59
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 60
    return-void
.end method

.method public a(Lorg/jshybugger/nb;)V
    .registers 4

    .prologue
    .line 157
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 158
    iget-object v0, p0, Lorg/jshybugger/mL;->i:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 159
    invoke-virtual {p0}, Lorg/jshybugger/mL;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/mt;

    .line 160
    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    goto :goto_13

    .line 163
    :cond_23
    return-void
.end method

.method public final b(Lorg/jshybugger/mt;)V
    .registers 3

    .prologue
    .line 94
    invoke-static {p1}, Lorg/jshybugger/mL;->a(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lorg/jshybugger/mL;->j:Ljava/util/List;

    if-nez v0, :cond_e

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/mL;->j:Ljava/util/List;

    .line 98
    :cond_e
    iget-object v0, p0, Lorg/jshybugger/mL;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 100
    return-void
.end method

.method public final d(II)V
    .registers 3

    .prologue
    .line 135
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

.method public h(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    invoke-static {p1}, Lorg/jshybugger/mL;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v1, p0, Lorg/jshybugger/mL;->i:Lorg/jshybugger/mt;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget-object v1, p0, Lorg/jshybugger/mL;->j:Ljava/util/List;

    if-eqz v1, :cond_24

    .line 146
    iget-object v1, p0, Lorg/jshybugger/mL;->j:Ljava/util/List;

    invoke-static {v1, v0}, Lorg/jshybugger/mL;->a(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 148
    :cond_24
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lorg/jshybugger/mL;->i:Lorg/jshybugger/mt;

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
    .line 68
    iget-object v0, p0, Lorg/jshybugger/mL;->j:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/jshybugger/mL;->j:Ljava/util/List;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lorg/jshybugger/mL;->k:Ljava/util/List;

    goto :goto_6
.end method

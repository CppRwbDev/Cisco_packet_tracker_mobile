.class public final Lorg/jshybugger/nn;
.super Lorg/jshybugger/mT;
.source "SwitchStatement.java"


# static fields
.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/nm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private j:Lorg/jshybugger/mt;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/nm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/nn;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/jshybugger/mT;-><init>()V

    .line 39
    const/16 v0, 0x72

    iput v0, p0, Lorg/jshybugger/nn;->a:I

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0}, Lorg/jshybugger/mT;-><init>()V

    .line 39
    const/16 v0, 0x72

    iput v0, p0, Lorg/jshybugger/nn;->a:I

    .line 51
    iput p1, p0, Lorg/jshybugger/nn;->f:I

    .line 52
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/mt;)V
    .registers 2

    .prologue
    .line 72
    invoke-static {p1}, Lorg/jshybugger/nn;->a(Ljava/lang/Object;)V

    .line 73
    iput-object p1, p0, Lorg/jshybugger/nn;->j:Lorg/jshybugger/mt;

    .line 74
    invoke-virtual {p1, p0}, Lorg/jshybugger/mt;->c(Lorg/jshybugger/mt;)V

    .line 75
    return-void
.end method

.method public final a(Lorg/jshybugger/nb;)V
    .registers 4

    .prologue
    .line 172
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 173
    iget-object v0, p0, Lorg/jshybugger/nn;->j:Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    .line 174
    invoke-virtual {p0}, Lorg/jshybugger/nn;->l()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/nm;

    .line 175
    invoke-virtual {v0, p1}, Lorg/jshybugger/nm;->a(Lorg/jshybugger/nb;)V

    goto :goto_13

    .line 178
    :cond_23
    return-void
.end method

.method public final a(Lorg/jshybugger/nm;)V
    .registers 3

    .prologue
    .line 106
    invoke-static {p1}, Lorg/jshybugger/nn;->a(Ljava/lang/Object;)V

    .line 107
    iget-object v0, p0, Lorg/jshybugger/nn;->l:Ljava/util/List;

    if-nez v0, :cond_e

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/nn;->l:Ljava/util/List;

    .line 110
    :cond_e
    iget-object v0, p0, Lorg/jshybugger/nn;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    invoke-virtual {p1, p0}, Lorg/jshybugger/nm;->c(Lorg/jshybugger/mt;)V

    .line 112
    return-void
.end method

.method public final e(I)V
    .registers 2

    .prologue
    .line 125
    return-void
.end method

.method public final f(I)V
    .registers 2

    .prologue
    .line 139
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 7

    .prologue
    .line 152
    invoke-static {p1}, Lorg/jshybugger/nn;->l(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v0, "switch ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v0, p0, Lorg/jshybugger/nn;->j:Lorg/jshybugger/mt;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v0, ") {\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v0, p0, Lorg/jshybugger/nn;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/nm;

    .line 159
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Lorg/jshybugger/nm;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_26

    .line 161
    :cond_3c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v0, "}\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lorg/jshybugger/mt;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/jshybugger/nn;->j:Lorg/jshybugger/mt;

    return-object v0
.end method

.method public final l()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/nm;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lorg/jshybugger/nn;->l:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/jshybugger/nn;->l:Ljava/util/List;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lorg/jshybugger/nn;->i:Ljava/util/List;

    goto :goto_6
.end method

.class public Lorg/jshybugger/nj;
.super Lorg/jshybugger/mT;
.source "Scope.java"


# instance fields
.field private i:Lorg/jshybugger/nj;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/nj;",
            ">;"
        }
    .end annotation
.end field

.field protected m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jshybugger/no;",
            ">;"
        }
    .end annotation
.end field

.field protected n:Lorg/jshybugger/nk;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/jshybugger/mT;-><init>()V

    .line 32
    const/16 v0, 0x81

    iput v0, p0, Lorg/jshybugger/nj;->a:I

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 38
    invoke-direct {p0}, Lorg/jshybugger/mT;-><init>()V

    .line 32
    const/16 v0, 0x81

    iput v0, p0, Lorg/jshybugger/nj;->a:I

    .line 39
    iput p1, p0, Lorg/jshybugger/nj;->f:I

    .line 40
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/jshybugger/nj;-><init>(I)V

    .line 44
    iput p2, p0, Lorg/jshybugger/nj;->g:I

    .line 45
    return-void
.end method

.method public static a(Lorg/jshybugger/nj;Lorg/jshybugger/nj;)V
    .registers 6

    .prologue
    .line 146
    invoke-direct {p0}, Lorg/jshybugger/nj;->k()Ljava/util/Map;

    move-result-object v0

    .line 147
    invoke-direct {p1}, Lorg/jshybugger/nj;->k()Ljava/util/Map;

    move-result-object v2

    .line 148
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 149
    invoke-static {}, Lorg/jshybugger/lh;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 151
    :cond_1b
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 152
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jshybugger/no;

    .line 153
    iput-object p1, v1, Lorg/jshybugger/no;->d:Lorg/jshybugger/nj;

    .line 154
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 156
    :cond_3f
    return-void
.end method

.method private k()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jshybugger/no;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Lorg/jshybugger/nj;->m:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 212
    new-instance v0, Ljava/util/LinkedHashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jshybugger/nj;->m:Ljava/util/Map;

    .line 214
    :cond_c
    iget-object v0, p0, Lorg/jshybugger/nj;->m:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/jshybugger/nb;)V
    .registers 4

    .prologue
    .line 249
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 250
    invoke-virtual {p0}, Lorg/jshybugger/nj;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/lH;

    .line 251
    check-cast v0, Lorg/jshybugger/mt;

    invoke-virtual {v0, p1}, Lorg/jshybugger/mt;->a(Lorg/jshybugger/nb;)V

    goto :goto_a

    .line 254
    :cond_1c
    return-void
.end method

.method public final a(Lorg/jshybugger/nj;)V
    .registers 3

    .prologue
    .line 55
    iput-object p1, p0, Lorg/jshybugger/nj;->i:Lorg/jshybugger/nj;

    .line 56
    if-nez p1, :cond_a

    move-object v0, p0

    check-cast v0, Lorg/jshybugger/nk;

    :goto_7
    iput-object v0, p0, Lorg/jshybugger/nj;->n:Lorg/jshybugger/nk;

    .line 57
    return-void

    .line 56
    :cond_a
    iget-object v0, p1, Lorg/jshybugger/nj;->n:Lorg/jshybugger/nk;

    goto :goto_7
.end method

.method public final a(Lorg/jshybugger/no;)V
    .registers 5

    .prologue
    .line 187
    iget-object v0, p1, Lorg/jshybugger/no;->c:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null symbol name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_c
    invoke-direct {p0}, Lorg/jshybugger/nj;->k()Ljava/util/Map;

    .line 190
    iget-object v0, p0, Lorg/jshybugger/nj;->m:Ljava/util/Map;

    iget-object v1, p1, Lorg/jshybugger/no;->c:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iput-object p0, p1, Lorg/jshybugger/no;->d:Lorg/jshybugger/nj;

    .line 192
    iget-object v0, p0, Lorg/jshybugger/nj;->n:Lorg/jshybugger/nk;

    iget-object v1, v0, Lorg/jshybugger/nk;->l:[Ljava/lang/String;

    if-eqz v1, :cond_23

    invoke-static {}, Lorg/jshybugger/lh;->a()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_23
    iget v1, p1, Lorg/jshybugger/no;->a:I

    const/16 v2, 0x57

    if-ne v1, v2, :cond_2f

    iget v1, v0, Lorg/jshybugger/nk;->j:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/jshybugger/nk;->j:I

    :cond_2f
    iget-object v0, v0, Lorg/jshybugger/nk;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method public final b(Ljava/lang/String;)Lorg/jshybugger/nj;
    .registers 4

    .prologue
    .line 165
    move-object v0, p0

    :goto_1
    if-eqz v0, :cond_11

    .line 166
    iget-object v1, v0, Lorg/jshybugger/nj;->m:Ljava/util/Map;

    .line 167
    if-eqz v1, :cond_e

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 171
    :goto_d
    return-object v0

    .line 165
    :cond_e
    iget-object v0, v0, Lorg/jshybugger/nj;->i:Lorg/jshybugger/nj;

    goto :goto_1

    .line 171
    :cond_11
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final b(Lorg/jshybugger/nj;)V
    .registers 3

    .prologue
    .line 81
    iget-object v0, p0, Lorg/jshybugger/nj;->j:Ljava/util/List;

    if-nez v0, :cond_b

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/nj;->j:Ljava/util/List;

    .line 84
    :cond_b
    iget-object v0, p0, Lorg/jshybugger/nj;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-virtual {p1, p0}, Lorg/jshybugger/nj;->a(Lorg/jshybugger/nj;)V

    .line 86
    return-void
.end method

.method public final c(Ljava/lang/String;)Lorg/jshybugger/no;
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lorg/jshybugger/nj;->m:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lorg/jshybugger/nj;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/no;

    goto :goto_5
.end method

.method public final c(Lorg/jshybugger/nj;)V
    .registers 4

    .prologue
    .line 98
    iget-object v0, p0, Lorg/jshybugger/nj;->j:Ljava/util/List;

    if-eqz v0, :cond_22

    .line 99
    iget-object v0, p0, Lorg/jshybugger/nj;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/nj;

    .line 100
    invoke-virtual {p1, v0}, Lorg/jshybugger/nj;->b(Lorg/jshybugger/nj;)V

    goto :goto_a

    .line 102
    :cond_1a
    iget-object v0, p0, Lorg/jshybugger/nj;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/nj;->j:Ljava/util/List;

    .line 105
    :cond_22
    iget-object v0, p0, Lorg/jshybugger/nj;->m:Ljava/util/Map;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lorg/jshybugger/nj;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_31

    .line 106
    invoke-static {p0, p1}, Lorg/jshybugger/nj;->a(Lorg/jshybugger/nj;Lorg/jshybugger/nj;)V

    .line 108
    :cond_31
    return-void
.end method

.method public h(I)Ljava/lang/String;
    .registers 6

    .prologue
    .line 236
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    invoke-static {p1}, Lorg/jshybugger/nj;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string v0, "{\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p0}, Lorg/jshybugger/nj;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/lH;

    .line 240
    check-cast v0, Lorg/jshybugger/mt;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Lorg/jshybugger/mt;->h(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 242
    :cond_2d
    invoke-static {p1}, Lorg/jshybugger/nj;->l(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string v0, "}\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Lorg/jshybugger/nj;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lorg/jshybugger/nj;->i:Lorg/jshybugger/nj;

    return-object v0
.end method

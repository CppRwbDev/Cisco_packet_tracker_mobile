.class public abstract Lorg/jshybugger/hs;
.super Ljava/lang/Object;
.source "Parser.java"

# interfaces
.implements Lorg/jshybugger/hj;


# instance fields
.field private a:Lorg/jshybugger/hi;

.field private b:Lorg/jshybugger/hq;

.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/util/Properties;)V
    .registers 6

    .prologue
    .line 243
    if-nez p1, :cond_3

    .line 285
    :cond_2
    return-void

    .line 248
    :cond_3
    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    :cond_7
    :goto_7
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lorg/jshybugger/hs;->a:Lorg/jshybugger/hi;

    invoke-virtual {v2, v1}, Lorg/jshybugger/hi;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 254
    iget-object v2, p0, Lorg/jshybugger/hs;->b:Lorg/jshybugger/hq;

    invoke-virtual {v2, v1}, Lorg/jshybugger/hq;->a(Ljava/lang/String;)Lorg/jshybugger/ho;

    move-result-object v2

    .line 257
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {v2}, Lorg/jshybugger/ho;->f()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 261
    invoke-virtual {v2}, Lorg/jshybugger/ho;->k()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3a

    invoke-virtual {v2}, Lorg/jshybugger/ho;->k()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_3d

    .line 265
    :cond_3a
    :try_start_3a
    invoke-virtual {v2, v1}, Lorg/jshybugger/ho;->a(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_3d} :catch_5c

    .line 279
    :cond_3d
    :goto_3d
    iget-object v1, p0, Lorg/jshybugger/hs;->a:Lorg/jshybugger/hi;

    invoke-virtual {v1, v2}, Lorg/jshybugger/hi;->a(Lorg/jshybugger/ho;)V

    goto :goto_7

    .line 273
    :cond_43
    const-string v3, "yes"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3d

    .line 270
    :catch_5c
    move-exception v1

    goto :goto_3d
.end method

.method private a(Lorg/jshybugger/ho;Ljava/util/ListIterator;)V
    .registers 5

    .prologue
    .line 318
    :goto_0
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 320
    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 323
    iget-object v1, p0, Lorg/jshybugger/hs;->b:Lorg/jshybugger/hq;

    invoke-virtual {v1, v0}, Lorg/jshybugger/hq;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 325
    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 339
    :cond_1f
    :goto_1f
    invoke-virtual {p1}, Lorg/jshybugger/ho;->k()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3e

    invoke-virtual {p1}, Lorg/jshybugger/ho;->d()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 343
    new-instance v0, Lorg/jshybugger/hm;

    invoke-direct {v0, p1}, Lorg/jshybugger/hm;-><init>(Lorg/jshybugger/ho;)V

    throw v0

    .line 332
    :cond_31
    :try_start_31
    invoke-static {v0}, Lorg/jshybugger/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/ho;->a(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_38} :catch_39

    goto :goto_0

    .line 336
    :catch_39
    move-exception v0

    invoke-interface {p2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    goto :goto_1f

    .line 345
    :cond_3e
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/hq;[Ljava/lang/String;)Lorg/jshybugger/hi;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p1}, Lorg/jshybugger/hq;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/ho;

    invoke-virtual {v0}, Lorg/jshybugger/ho;->m()V

    goto :goto_9

    :cond_19
    iput-object p1, p0, Lorg/jshybugger/hs;->b:Lorg/jshybugger/hq;

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/jshybugger/hq;->c()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/jshybugger/hs;->c:Ljava/util/List;

    new-instance v0, Lorg/jshybugger/hi;

    invoke-direct {v0}, Lorg/jshybugger/hi;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/hs;->a:Lorg/jshybugger/hi;

    if-nez p2, :cond_31

    new-array p2, v1, [Ljava/lang/String;

    :cond_31
    iget-object v0, p0, Lorg/jshybugger/hs;->b:Lorg/jshybugger/hq;

    invoke-virtual {p0, p2}, Lorg/jshybugger/hs;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_3f
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_eb

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "--"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    const/4 v1, 0x1

    :goto_54
    if-eqz v1, :cond_3f

    :cond_56
    :goto_56
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "--"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    iget-object v3, p0, Lorg/jshybugger/hs;->a:Lorg/jshybugger/hi;

    invoke-virtual {v3, v0}, Lorg/jshybugger/hi;->c(Ljava/lang/String;)V

    goto :goto_56

    :cond_70
    const-string v3, "-"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e4

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e4

    iget-object v3, p0, Lorg/jshybugger/hs;->b:Lorg/jshybugger/hq;

    invoke-virtual {v3, v0}, Lorg/jshybugger/hq;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9d

    new-instance v1, Lorg/jshybugger/ht;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Unrecognized option: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/jshybugger/ht;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_9d
    iget-object v3, p0, Lorg/jshybugger/hs;->b:Lorg/jshybugger/hq;

    invoke-virtual {v3, v0}, Lorg/jshybugger/hq;->a(Ljava/lang/String;)Lorg/jshybugger/ho;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/ho;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/ho;

    invoke-virtual {v0}, Lorg/jshybugger/ho;->h()Z

    move-result v3

    if-eqz v3, :cond_b8

    iget-object v3, p0, Lorg/jshybugger/hs;->c:Ljava/util/List;

    invoke-virtual {v0}, Lorg/jshybugger/ho;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_b8
    iget-object v3, p0, Lorg/jshybugger/hs;->b:Lorg/jshybugger/hq;

    invoke-virtual {v3, v0}, Lorg/jshybugger/hq;->a(Lorg/jshybugger/ho;)Lorg/jshybugger/hp;

    move-result-object v3

    if-eqz v3, :cond_d4

    iget-object v3, p0, Lorg/jshybugger/hs;->b:Lorg/jshybugger/hq;

    invoke-virtual {v3, v0}, Lorg/jshybugger/hq;->a(Lorg/jshybugger/ho;)Lorg/jshybugger/hp;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jshybugger/hp;->b()Z

    move-result v4

    if-eqz v4, :cond_d1

    iget-object v4, p0, Lorg/jshybugger/hs;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_d1
    invoke-virtual {v3, v0}, Lorg/jshybugger/hp;->a(Lorg/jshybugger/ho;)V

    :cond_d4
    invoke-virtual {v0}, Lorg/jshybugger/ho;->f()Z

    move-result v3

    if-eqz v3, :cond_dd

    invoke-direct {p0, v0, v2}, Lorg/jshybugger/hs;->a(Lorg/jshybugger/ho;Ljava/util/ListIterator;)V

    :cond_dd
    iget-object v3, p0, Lorg/jshybugger/hs;->a:Lorg/jshybugger/hi;

    invoke-virtual {v3, v0}, Lorg/jshybugger/hi;->a(Lorg/jshybugger/ho;)V

    goto/16 :goto_54

    :cond_e4
    iget-object v3, p0, Lorg/jshybugger/hs;->a:Lorg/jshybugger/hi;

    invoke-virtual {v3, v0}, Lorg/jshybugger/hi;->c(Ljava/lang/String;)V

    goto/16 :goto_54

    :cond_eb
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/jshybugger/hs;->a(Ljava/util/Properties;)V

    iget-object v0, p0, Lorg/jshybugger/hs;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_ff

    new-instance v0, Lorg/jshybugger/hn;

    iget-object v1, p0, Lorg/jshybugger/hs;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Lorg/jshybugger/hn;-><init>(Ljava/util/List;)V

    throw v0

    :cond_ff
    iget-object v0, p0, Lorg/jshybugger/hs;->a:Lorg/jshybugger/hi;

    return-object v0
.end method

.method protected abstract a([Ljava/lang/String;)[Ljava/lang/String;
.end method

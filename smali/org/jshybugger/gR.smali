.class public final Lorg/jshybugger/gr;
.super Ljava/util/ArrayList;
.source "RecyclableArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lorg/jshybugger/fl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jshybugger/fl",
            "<",
            "Lorg/jshybugger/gr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lorg/jshybugger/fn;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    new-instance v0, Lorg/jshybugger/gs;

    invoke-direct {v0}, Lorg/jshybugger/gs;-><init>()V

    sput-object v0, Lorg/jshybugger/gr;->a:Lorg/jshybugger/fl;

    return-void
.end method

.method private constructor <init>(Lorg/jshybugger/fn;)V
    .registers 3

    .prologue
    .line 62
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/gr;-><init>(Lorg/jshybugger/fn;I)V

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Lorg/jshybugger/fn;B)V
    .registers 3

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lorg/jshybugger/gr;-><init>(Lorg/jshybugger/fn;)V

    return-void
.end method

.method private constructor <init>(Lorg/jshybugger/fn;I)V
    .registers 4

    .prologue
    .line 66
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    iput-object p1, p0, Lorg/jshybugger/gr;->b:Lorg/jshybugger/fn;

    .line 68
    return-void
.end method

.method public static a()Lorg/jshybugger/gr;
    .registers 1

    .prologue
    .line 47
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/jshybugger/gr;->a(I)Lorg/jshybugger/gr;

    move-result-object v0

    return-object v0
.end method

.method public static a(I)Lorg/jshybugger/gr;
    .registers 2

    .prologue
    .line 54
    sget-object v0, Lorg/jshybugger/gr;->a:Lorg/jshybugger/fl;

    invoke-virtual {v0}, Lorg/jshybugger/fl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/gr;

    .line 55
    invoke-virtual {v0, p0}, Lorg/jshybugger/gr;->ensureCapacity(I)V

    .line 56
    return-object v0
.end method

.method private static a(Ljava/util/Collection;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 83
    instance-of v0, p0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_22

    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_22

    .line 85
    check-cast p0, Ljava/util/List;

    .line 86
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 87
    const/4 v0, 0x0

    :goto_f
    if-ge v0, v1, :cond_3a

    .line 88
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "c contains null values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 93
    :cond_22
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 94
    if-nez v1, :cond_26

    .line 95
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "c contains null values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_3a
    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .registers 5

    .prologue
    .line 111
    if-nez p2, :cond_a

    .line 112
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "element"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_a
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 115
    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 103
    if-nez p1, :cond_a

    .line 104
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "element"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_a
    invoke-super {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p2}, Lorg/jshybugger/gr;->a(Ljava/util/Collection;)V

    .line 79
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p1}, Lorg/jshybugger/gr;->a(Ljava/util/Collection;)V

    .line 73
    invoke-super {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .registers 3

    .prologue
    .line 129
    invoke-virtual {p0}, Lorg/jshybugger/gr;->clear()V

    .line 130
    sget-object v0, Lorg/jshybugger/gr;->a:Lorg/jshybugger/fl;

    iget-object v1, p0, Lorg/jshybugger/gr;->b:Lorg/jshybugger/fn;

    invoke-virtual {v0, p0, v1}, Lorg/jshybugger/fl;->a(Ljava/lang/Object;Lorg/jshybugger/fn;)Z

    move-result v0

    return v0
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 119
    if-nez p2, :cond_a

    .line 120
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "element"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_a
    invoke-super {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

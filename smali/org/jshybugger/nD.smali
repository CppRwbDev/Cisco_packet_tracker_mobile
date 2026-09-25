.class public final Lorg/jshybugger/nd;
.super Lorg/jshybugger/mt;
.source "ObjectLiteral.java"

# interfaces
.implements Lorg/jshybugger/mC;


# static fields
.field private static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/ne;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/jshybugger/ne;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/nd;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/jshybugger/mt;-><init>()V

    .line 42
    const/16 v0, 0x42

    iput v0, p0, Lorg/jshybugger/nd;->a:I

    .line 46
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/mt;-><init>(II)V

    .line 42
    const/16 v0, 0x42

    iput v0, p0, Lorg/jshybugger/nd;->a:I

    .line 54
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
            "Lorg/jshybugger/ne;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    if-nez p1, :cond_6

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/nd;->j:Ljava/util/List;

    .line 78
    :cond_5
    return-void

    .line 73
    :cond_6
    iget-object v0, p0, Lorg/jshybugger/nd;->j:Ljava/util/List;

    if-eqz v0, :cond_f

    .line 74
    iget-object v0, p0, Lorg/jshybugger/nd;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 75
    :cond_f
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/ne;

    .line 76
    invoke-static {v0}, Lorg/jshybugger/nd;->a(Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/jshybugger/nd;->j:Ljava/util/List;

    if-nez v2, :cond_2d

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/jshybugger/nd;->j:Ljava/util/List;

    :cond_2d
    iget-object v2, p0, Lorg/jshybugger/nd;->j:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p0}, Lorg/jshybugger/ne;->c(Lorg/jshybugger/mt;)V

    goto :goto_13
.end method

.method public final a(Lorg/jshybugger/nb;)V
    .registers 4

    .prologue
    .line 130
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 131
    invoke-virtual {p0}, Lorg/jshybugger/nd;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/ne;

    .line 132
    invoke-virtual {v0, p1}, Lorg/jshybugger/ne;->a(Lorg/jshybugger/nb;)V

    goto :goto_e

    .line 135
    :cond_1e
    return-void
.end method

.method public final a(Z)V
    .registers 3

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jshybugger/nd;->k:Z

    .line 101
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    invoke-static {p1}, Lorg/jshybugger/nd;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v1, p0, Lorg/jshybugger/nd;->j:Ljava/util/List;

    if-eqz v1, :cond_1a

    .line 118
    iget-object v1, p0, Lorg/jshybugger/nd;->j:Ljava/util/List;

    invoke-static {v1, v0}, Lorg/jshybugger/nd;->a(Ljava/util/List;Ljava/lang/StringBuilder;)V

    .line 120
    :cond_1a
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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
            "Lorg/jshybugger/ne;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lorg/jshybugger/nd;->j:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/jshybugger/nd;->j:Ljava/util/List;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lorg/jshybugger/nd;->i:Ljava/util/List;

    goto :goto_6
.end method

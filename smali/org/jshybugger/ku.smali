.class final Lorg/jshybugger/kU;
.super Lorg/jshybugger/lv;
.source "JavaMembers.java"


# instance fields
.field c:Ljava/lang/reflect/Field;

.field d:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/jshybugger/lU;[Lorg/jshybugger/ll;Ljava/lang/reflect/Field;)V
    .registers 5

    .prologue
    .line 878
    invoke-direct {p0, p2}, Lorg/jshybugger/lv;-><init>([Lorg/jshybugger/ll;)V

    .line 879
    iput-object p3, p0, Lorg/jshybugger/kU;->c:Ljava/lang/reflect/Field;

    .line 880
    invoke-virtual {p0, p1}, Lorg/jshybugger/kU;->b(Lorg/jshybugger/lU;)V

    .line 881
    invoke-static {p1}, Lorg/jshybugger/lV;->d(Lorg/jshybugger/lU;)Lorg/jshybugger/lU;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jshybugger/kU;->a(Lorg/jshybugger/lU;)V

    .line 882
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 887
    sget-object v0, Lorg/jshybugger/lS;->p:Ljava/lang/Class;

    if-ne p1, v0, :cond_5

    .line 903
    :goto_4
    return-object p0

    .line 892
    :cond_5
    :try_start_5
    iget-object v0, p0, Lorg/jshybugger/kU;->c:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lorg/jshybugger/kU;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 893
    iget-object v1, p0, Lorg/jshybugger/kU;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;
    :try_end_12
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_12} :catch_2b

    move-result-object v1

    .line 898
    invoke-static {}, Lorg/jshybugger/kK;->h()Lorg/jshybugger/kK;

    move-result-object v2

    .line 899
    invoke-virtual {v2}, Lorg/jshybugger/kK;->g()Lorg/jshybugger/mh;

    move-result-object v3

    invoke-virtual {v3, v2, p0, v0, v1}, Lorg/jshybugger/mh;->a(Lorg/jshybugger/kK;Lorg/jshybugger/lU;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 900
    instance-of v1, v0, Lorg/jshybugger/lU;

    if-eqz v1, :cond_29

    .line 901
    check-cast v0, Lorg/jshybugger/lU;

    invoke-interface {v0, p1}, Lorg/jshybugger/lU;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :cond_29
    move-object p0, v0

    .line 903
    goto :goto_4

    .line 895
    :catch_2b
    move-exception v0

    const-string v0, "msg.java.internal.private"

    iget-object v1, p0, Lorg/jshybugger/kU;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jshybugger/kK;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/kT;

    move-result-object v0

    throw v0
.end method

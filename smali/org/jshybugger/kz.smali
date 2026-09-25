.class public final Lorg/jshybugger/kZ;
.super Ljava/lang/Object;
.source "InterfaceAdapter.java"


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lorg/jshybugger/kM;Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/kM;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lorg/jshybugger/mg;->a:Lorg/jshybugger/mg;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lorg/jshybugger/mg;->a([Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/kZ;->a:Ljava/lang/Object;

    .line 71
    return-void
.end method

.method static a(Lorg/jshybugger/kK;Ljava/lang/Class;Lorg/jshybugger/lV;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/kK;",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/jshybugger/lV;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 31
    :cond_d
    invoke-static {p0}, Lorg/jshybugger/lS;->a(Lorg/jshybugger/kK;)Lorg/jshybugger/lU;

    move-result-object v5

    .line 32
    invoke-static {v5}, Lorg/jshybugger/kH;->a(Lorg/jshybugger/lU;)Lorg/jshybugger/kH;

    move-result-object v4

    .line 34
    invoke-virtual {v4, p1}, Lorg/jshybugger/kH;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/kZ;

    .line 35
    invoke-virtual {p0}, Lorg/jshybugger/kK;->c()Lorg/jshybugger/kM;

    move-result-object v2

    .line 36
    if-nez v0, :cond_6f

    .line 37
    invoke-virtual {p1}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 38
    instance-of v0, p2, Lorg/jshybugger/kG;

    if-eqz v0, :cond_5d

    .line 43
    array-length v6, v3

    .line 44
    if-nez v6, :cond_37

    .line 45
    const-string v0, "msg.no.empty.interface.conversion"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jshybugger/kK;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/kT;

    move-result-object v0

    throw v0

    .line 48
    :cond_37
    if-le v6, v1, :cond_5d

    .line 49
    const/4 v0, 0x0

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    move v0, v1

    .line 50
    :goto_41
    if-ge v0, v6, :cond_5d

    .line 51
    aget-object v1, v3, v0

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    .line 52
    const-string v0, "msg.no.function.interface.conversion"

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jshybugger/kK;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/kT;

    move-result-object v0

    throw v0

    .line 50
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_41

    .line 59
    :cond_5d
    new-instance v3, Lorg/jshybugger/kZ;

    invoke-direct {v3, v2, p1}, Lorg/jshybugger/kZ;-><init>(Lorg/jshybugger/kM;Ljava/lang/Class;)V

    .line 60
    invoke-virtual {v4, p1, v3}, Lorg/jshybugger/kH;->a(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 62
    :goto_65
    sget-object v0, Lorg/jshybugger/mg;->a:Lorg/jshybugger/mg;

    iget-object v1, v3, Lorg/jshybugger/kZ;->a:Ljava/lang/Object;

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/jshybugger/mg;->a(Ljava/lang/Object;Lorg/jshybugger/kM;Lorg/jshybugger/kZ;Ljava/lang/Object;Lorg/jshybugger/lU;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_6f
    move-object v3, v0

    goto :goto_65
.end method

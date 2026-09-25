.class public final Lorg/jshybugger/la;
.super Ljava/lang/Object;
.source "InterfaceAdapter.java"

# interfaces
.implements Lorg/jshybugger/kL;


# instance fields
.field private synthetic a:Ljava/lang/Object;

.field private synthetic b:Lorg/jshybugger/lU;

.field private synthetic c:Ljava/lang/Object;

.field private synthetic d:Ljava/lang/reflect/Method;

.field private synthetic e:[Ljava/lang/Object;

.field private synthetic f:Lorg/jshybugger/kZ;


# direct methods
.method public constructor <init>(Lorg/jshybugger/kZ;Ljava/lang/Object;Lorg/jshybugger/lU;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 80
    iput-object p1, p0, Lorg/jshybugger/la;->f:Lorg/jshybugger/kZ;

    iput-object p2, p0, Lorg/jshybugger/la;->a:Ljava/lang/Object;

    iput-object p3, p0, Lorg/jshybugger/la;->b:Lorg/jshybugger/lU;

    iput-object p4, p0, Lorg/jshybugger/la;->c:Ljava/lang/Object;

    iput-object p5, p0, Lorg/jshybugger/la;->d:Ljava/lang/reflect/Method;

    iput-object p6, p0, Lorg/jshybugger/la;->e:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/kK;)Ljava/lang/Object;
    .registers 13

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Lorg/jshybugger/la;->f:Lorg/jshybugger/kZ;

    iget-object v0, p0, Lorg/jshybugger/la;->a:Ljava/lang/Object;

    iget-object v4, p0, Lorg/jshybugger/la;->b:Lorg/jshybugger/lU;

    iget-object v5, p0, Lorg/jshybugger/la;->c:Ljava/lang/Object;

    iget-object v6, p0, Lorg/jshybugger/la;->d:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lorg/jshybugger/la;->e:[Ljava/lang/Object;

    instance-of v3, v0, Lorg/jshybugger/kG;

    if-eqz v3, :cond_2e

    check-cast v0, Lorg/jshybugger/kG;

    :goto_13
    invoke-virtual {p1}, Lorg/jshybugger/kK;->g()Lorg/jshybugger/mh;

    move-result-object v7

    if-nez v1, :cond_60

    sget-object v1, Lorg/jshybugger/lS;->v:[Ljava/lang/Object;

    :cond_1b
    invoke-static {v4, v5, v2}, Lorg/jshybugger/mh;->a(Lorg/jshybugger/lU;Ljava/lang/Object;Ljava/lang/Class;)Lorg/jshybugger/lU;

    move-result-object v3

    invoke-interface {v0, p1, v4, v3, v1}, Lorg/jshybugger/kG;->a(Lorg/jshybugger/kK;Lorg/jshybugger/lU;Lorg/jshybugger/lU;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v3, :cond_7b

    move-object v0, v2

    :goto_2c
    move-object v2, v0

    :cond_2d
    :goto_2d
    return-object v2

    :cond_2e
    check-cast v0, Lorg/jshybugger/lU;

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/jshybugger/lV;->b(Lorg/jshybugger/lU;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sget-object v7, Lorg/jshybugger/lV;->f:Ljava/lang/Object;

    if-ne v0, v7, :cond_52

    const-string v0, "msg.undefined.function.interface"

    invoke-static {v0, v3}, Lorg/jshybugger/lS;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/kK;->a(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq v0, v1, :cond_2d

    invoke-static {v2, v0}, Lorg/jshybugger/kK;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2d

    :cond_52
    instance-of v7, v0, Lorg/jshybugger/kG;

    if-nez v7, :cond_5d

    const-string v0, "msg.not.function.interface"

    invoke-static {v0, v3}, Lorg/jshybugger/kK;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/kT;

    move-result-object v0

    throw v0

    :cond_5d
    check-cast v0, Lorg/jshybugger/kG;

    goto :goto_13

    :cond_60
    const/4 v3, 0x0

    array-length v8, v1

    :goto_62
    if-eq v3, v8, :cond_1b

    aget-object v9, v1, v3

    instance-of v10, v9, Ljava/lang/String;

    if-nez v10, :cond_78

    instance-of v10, v9, Ljava/lang/Number;

    if-nez v10, :cond_78

    instance-of v10, v9, Ljava/lang/Boolean;

    if-nez v10, :cond_78

    invoke-virtual {v7, p1, v4, v9, v2}, Lorg/jshybugger/mh;->a(Lorg/jshybugger/kK;Lorg/jshybugger/lU;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v1, v3

    :cond_78
    add-int/lit8 v3, v3, 0x1

    goto :goto_62

    :cond_7b
    invoke-static {v0, v1}, Lorg/jshybugger/kK;->a(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2c
.end method

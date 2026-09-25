.class public final Lorg/jshybugger/mh;
.super Ljava/lang/Object;
.source "WrapFactory.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jshybugger/mh;->a:Z

    return-void
.end method

.method public static a(Lorg/jshybugger/lU;Ljava/lang/Object;Ljava/lang/Class;)Lorg/jshybugger/lU;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/lU;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/jshybugger/lU;"
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Lorg/jshybugger/lw;

    invoke-direct {v0, p0, p1, p2}, Lorg/jshybugger/lw;-><init>(Lorg/jshybugger/lU;Ljava/lang/Object;Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lorg/jshybugger/kK;Lorg/jshybugger/lU;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/kK;",
            "Lorg/jshybugger/lU;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 47
    if-eqz p3, :cond_a

    sget-object v0, Lorg/jshybugger/me;->a:Ljava/lang/Object;

    if-eq p3, v0, :cond_a

    instance-of v0, p3, Lorg/jshybugger/lU;

    if-eqz v0, :cond_b

    .line 72
    :cond_a
    :goto_a
    return-object p3

    .line 52
    :cond_b
    if-eqz p4, :cond_29

    invoke-virtual {p4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 53
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p4, v0, :cond_1a

    .line 54
    sget-object p3, Lorg/jshybugger/me;->a:Ljava/lang/Object;

    goto :goto_a

    .line 55
    :cond_1a
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p4, v0, :cond_a

    .line 56
    check-cast p3, Ljava/lang/Character;

    invoke-virtual {p3}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    goto :goto_a

    .line 59
    :cond_29
    iget-boolean v0, p0, Lorg/jshybugger/mh;->a:Z

    if-nez v0, :cond_48

    .line 60
    instance-of v0, p3, Ljava/lang/String;

    if-nez v0, :cond_a

    instance-of v0, p3, Ljava/lang/Number;

    if-nez v0, :cond_a

    instance-of v0, p3, Ljava/lang/Boolean;

    if-nez v0, :cond_a

    .line 64
    instance-of v0, p3, Ljava/lang/Character;

    if-eqz v0, :cond_48

    .line 65
    check-cast p3, Ljava/lang/Character;

    invoke-virtual {p3}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p3

    goto :goto_a

    .line 68
    :cond_48
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_57

    .line 70
    invoke-static {p2, p3}, Lorg/jshybugger/ls;->a(Lorg/jshybugger/lU;Ljava/lang/Object;)Lorg/jshybugger/ls;

    move-result-object p3

    goto :goto_a

    .line 72
    :cond_57
    invoke-static {p2, p3, p4}, Lorg/jshybugger/mh;->a(Lorg/jshybugger/lU;Ljava/lang/Object;Ljava/lang/Class;)Lorg/jshybugger/lU;

    move-result-object p3

    goto :goto_a
.end method

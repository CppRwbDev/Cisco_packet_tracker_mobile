.class final Lorg/jshybugger/lo;
.super Lorg/jshybugger/kY;
.source "NativeBoolean.java"


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-string v0, "Boolean"

    sput-object v0, Lorg/jshybugger/lo;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lorg/jshybugger/kY;-><init>()V

    .line 28
    iput-boolean p1, p0, Lorg/jshybugger/lo;->b:Z

    .line 29
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lorg/jshybugger/lS;->a:Ljava/lang/Class;

    if-ne p1, v0, :cond_b

    .line 42
    iget-boolean v0, p0, Lorg/jshybugger/lo;->b:Z

    invoke-static {v0}, Lorg/jshybugger/lS;->a(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 43
    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0, p1}, Lorg/jshybugger/kY;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_a
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    const-string v0, "Boolean"

    return-object v0
.end method

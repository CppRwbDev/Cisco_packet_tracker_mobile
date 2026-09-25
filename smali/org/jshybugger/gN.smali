.class public final Lorg/jshybugger/gn;
.super Ljava/lang/Object;
.source "PendingWrite.java"


# static fields
.field private static final a:Lorg/jshybugger/fl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jshybugger/fl",
            "<",
            "Lorg/jshybugger/gn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lorg/jshybugger/fn;

.field private c:Ljava/lang/Object;

.field private d:Lorg/jshybugger/fZ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jshybugger/fZ",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lorg/jshybugger/go;

    invoke-direct {v0}, Lorg/jshybugger/go;-><init>()V

    sput-object v0, Lorg/jshybugger/gn;->a:Lorg/jshybugger/fl;

    return-void
.end method

.method private constructor <init>(Lorg/jshybugger/fn;)V
    .registers 2

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lorg/jshybugger/gn;->b:Lorg/jshybugger/fn;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Lorg/jshybugger/fn;B)V
    .registers 3

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lorg/jshybugger/gn;-><init>(Lorg/jshybugger/fn;)V

    return-void
.end method

.method public static a(Ljava/lang/Object;Lorg/jshybugger/fZ;)Lorg/jshybugger/gn;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lorg/jshybugger/fZ",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lorg/jshybugger/gn;"
        }
    .end annotation

    .prologue
    .line 37
    sget-object v0, Lorg/jshybugger/gn;->a:Lorg/jshybugger/fl;

    invoke-virtual {v0}, Lorg/jshybugger/fl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/gn;

    .line 38
    iput-object p0, v0, Lorg/jshybugger/gn;->c:Ljava/lang/Object;

    .line 39
    iput-object p1, v0, Lorg/jshybugger/gn;->d:Lorg/jshybugger/fZ;

    .line 40
    return-object v0
.end method

.method private c()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lorg/jshybugger/gn;->c:Ljava/lang/Object;

    .line 56
    iput-object v0, p0, Lorg/jshybugger/gn;->d:Lorg/jshybugger/fZ;

    .line 57
    sget-object v0, Lorg/jshybugger/gn;->a:Lorg/jshybugger/fl;

    iget-object v1, p0, Lorg/jshybugger/gn;->b:Lorg/jshybugger/fn;

    invoke-virtual {v0, p0, v1}, Lorg/jshybugger/fl;->a(Ljava/lang/Object;Lorg/jshybugger/fn;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/jshybugger/gn;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Ljava/lang/Throwable;)Z
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lorg/jshybugger/gn;->c:Ljava/lang/Object;

    invoke-static {v0}, Lorg/jshybugger/a;->b(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lorg/jshybugger/gn;->d:Lorg/jshybugger/fZ;

    if-eqz v0, :cond_e

    .line 66
    iget-object v0, p0, Lorg/jshybugger/gn;->d:Lorg/jshybugger/fZ;

    invoke-interface {v0, p1}, Lorg/jshybugger/fZ;->c(Ljava/lang/Throwable;)Lorg/jshybugger/fZ;

    .line 68
    :cond_e
    invoke-direct {p0}, Lorg/jshybugger/gn;->c()Z

    move-result v0

    return v0
.end method

.method public final b()Lorg/jshybugger/fZ;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jshybugger/fZ",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v0, p0, Lorg/jshybugger/gn;->d:Lorg/jshybugger/fZ;

    .line 94
    invoke-direct {p0}, Lorg/jshybugger/gn;->c()Z

    .line 95
    return-object v0
.end method

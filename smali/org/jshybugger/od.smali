.class public final Lorg/jshybugger/od;
.super Ljava/lang/Object;
.source "StaticLoggerBinder.java"


# static fields
.field public static a:Ljava/lang/String;

.field private static final b:Lorg/jshybugger/od;

.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Lorg/jshybugger/nR;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    new-instance v0, Lorg/jshybugger/od;

    invoke-direct {v0}, Lorg/jshybugger/od;-><init>()V

    sput-object v0, Lorg/jshybugger/od;->b:Lorg/jshybugger/od;

    .line 61
    const-string v0, "1.6.99"

    sput-object v0, Lorg/jshybugger/od;->a:Ljava/lang/String;

    .line 63
    const-class v0, Lorg/jshybugger/oc;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/od;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lorg/jshybugger/oc;

    invoke-direct {v0}, Lorg/jshybugger/oc;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/od;->d:Lorg/jshybugger/nR;

    .line 73
    return-void
.end method

.method public static final a()Lorg/jshybugger/od;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lorg/jshybugger/od;->b:Lorg/jshybugger/od;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lorg/jshybugger/od;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final b()Lorg/jshybugger/nR;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/jshybugger/od;->d:Lorg/jshybugger/nR;

    return-object v0
.end method

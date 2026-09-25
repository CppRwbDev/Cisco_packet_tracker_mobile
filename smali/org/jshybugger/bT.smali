.class public final Lorg/jshybugger/bt;
.super Ljava/lang/Object;
.source "DefaultMessageSizeEstimator.java"

# interfaces
.implements Lorg/jshybugger/by;


# static fields
.field public static final a:Lorg/jshybugger/by;


# instance fields
.field private final b:Lorg/jshybugger/bz;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 52
    new-instance v0, Lorg/jshybugger/bt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/jshybugger/bt;-><init>(I)V

    sput-object v0, Lorg/jshybugger/bt;->a:Lorg/jshybugger/by;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lorg/jshybugger/bz;

    invoke-direct {v0, v1, v1}, Lorg/jshybugger/bz;-><init>(IB)V

    iput-object v0, p0, Lorg/jshybugger/bt;->b:Lorg/jshybugger/bz;

    .line 66
    return-void
.end method


# virtual methods
.method public final a()Lorg/jshybugger/bz;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/jshybugger/bt;->b:Lorg/jshybugger/bz;

    return-object v0
.end method

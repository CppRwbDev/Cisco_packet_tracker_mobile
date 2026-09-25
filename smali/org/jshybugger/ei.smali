.class public final Lorg/jshybugger/eI;
.super Ljava/lang/Object;
.source "WebSocketServerHandshakerFactory.java"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .prologue
    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x10000

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/jshybugger/eI;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 54
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 6

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/jshybugger/eI;->a:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lorg/jshybugger/eI;->b:Ljava/lang/String;

    .line 75
    iput-boolean p3, p0, Lorg/jshybugger/eI;->c:Z

    .line 76
    const/high16 v0, 0x10000

    iput v0, p0, Lorg/jshybugger/eI;->d:I

    .line 77
    return-void
.end method

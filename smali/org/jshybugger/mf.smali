.class public final Lorg/jshybugger/mF;
.super Lorg/jshybugger/mt;
.source "EmptyExpression.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/jshybugger/mt;-><init>()V

    .line 19
    const/16 v0, 0x80

    iput v0, p0, Lorg/jshybugger/mF;->a:I

    .line 23
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/mt;-><init>(II)V

    .line 19
    const/16 v0, 0x80

    iput v0, p0, Lorg/jshybugger/mF;->a:I

    .line 31
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/nb;)V
    .registers 2

    .prologue
    .line 43
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    .line 44
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 35
    invoke-static {p1}, Lorg/jshybugger/mF;->l(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

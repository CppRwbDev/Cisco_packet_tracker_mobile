.class public final Lorg/jshybugger/mG;
.super Lorg/jshybugger/mt;
.source "EmptyStatement.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/jshybugger/mt;-><init>()V

    .line 18
    const/16 v0, 0x80

    iput v0, p0, Lorg/jshybugger/mG;->a:I

    .line 22
    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/mt;-><init>(II)V

    .line 18
    const/16 v0, 0x80

    iput v0, p0, Lorg/jshybugger/mG;->a:I

    .line 30
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/nb;)V
    .registers 2

    .prologue
    .line 44
    invoke-virtual {p1, p0}, Lorg/jshybugger/nb;->a(Lorg/jshybugger/mt;)Z

    .line 45
    return-void
.end method

.method public final h(I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    invoke-static {p1}, Lorg/jshybugger/mG;->l(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

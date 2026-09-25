.class public abstract Lorg/jshybugger/ey;
.super Lorg/jshybugger/N;
.source "WebSocketFrame.java"


# instance fields
.field final a:Z

.field final b:I


# direct methods
.method protected constructor <init>(Lorg/jshybugger/H;)V
    .registers 4

    .prologue
    .line 39
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/jshybugger/ey;-><init>(ZILorg/jshybugger/H;)V

    .line 40
    return-void
.end method

.method protected constructor <init>(ZILorg/jshybugger/H;)V
    .registers 4

    .prologue
    .line 43
    invoke-direct {p0, p3}, Lorg/jshybugger/N;-><init>(Lorg/jshybugger/H;)V

    .line 44
    iput-boolean p1, p0, Lorg/jshybugger/ey;->a:Z

    .line 45
    iput p2, p0, Lorg/jshybugger/ey;->b:I

    .line 46
    return-void
.end method


# virtual methods
.method public synthetic b()Lorg/jshybugger/J;
    .registers 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lorg/jshybugger/ey;->c()Lorg/jshybugger/ey;

    move-result-object v0

    return-object v0
.end method

.method public c()Lorg/jshybugger/ey;
    .registers 1

    .prologue
    .line 76
    invoke-super {p0}, Lorg/jshybugger/N;->b()Lorg/jshybugger/J;

    .line 77
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lorg/jshybugger/gt;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jshybugger/ey;->a()Lorg/jshybugger/H;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jshybugger/H;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic w()Lorg/jshybugger/fp;
    .registers 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lorg/jshybugger/ey;->c()Lorg/jshybugger/ey;

    move-result-object v0

    return-object v0
.end method

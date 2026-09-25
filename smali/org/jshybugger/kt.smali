.class public Lorg/jshybugger/kT;
.super Lorg/jshybugger/lR;
.source "EvaluatorException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/jshybugger/lR;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 6

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lorg/jshybugger/lR;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/jshybugger/kT;->a(Ljava/lang/String;ILjava/lang/String;I)V

    .line 57
    return-void
.end method

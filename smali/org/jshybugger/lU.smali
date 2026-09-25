.class public final Lorg/jshybugger/lu;
.super Lorg/jshybugger/kE;
.source "NativeJavaConstructor.java"


# instance fields
.field private c:Lorg/jshybugger/ll;


# direct methods
.method public constructor <init>(Lorg/jshybugger/ll;)V
    .registers 2

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/jshybugger/kE;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/jshybugger/lu;->c:Lorg/jshybugger/ll;

    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/kK;Lorg/jshybugger/lU;Lorg/jshybugger/lU;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .prologue
    .line 38
    iget-object v0, p0, Lorg/jshybugger/lu;->c:Lorg/jshybugger/ll;

    invoke-static {p1, p2, p4, v0}, Lorg/jshybugger/lt;->a(Lorg/jshybugger/kK;Lorg/jshybugger/lU;[Ljava/lang/Object;Lorg/jshybugger/ll;)Lorg/jshybugger/lU;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lorg/jshybugger/lu;->c:Lorg/jshybugger/ll;

    iget-object v0, v0, Lorg/jshybugger/ll;->a:[Ljava/lang/Class;

    invoke-static {v0}, Lorg/jshybugger/lf;->a([Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 45
    const-string v1, "<init>"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[JavaConstructor "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jshybugger/lu;->c:Lorg/jshybugger/ll;

    invoke-virtual {v1}, Lorg/jshybugger/ll;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

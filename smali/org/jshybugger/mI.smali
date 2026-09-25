.class public final Lorg/jshybugger/mi;
.super Lorg/jshybugger/kT;
.source "WrappedException.java"


# instance fields
.field private c:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrapped "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jshybugger/kT;-><init>(Ljava/lang/String;)V

    .line 27
    iput-object p1, p0, Lorg/jshybugger/mi;->c:Ljava/lang/Throwable;

    .line 28
    invoke-static {p0, p1}, Lorg/jshybugger/lh;->a(Ljava/lang/RuntimeException;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v2, v0, v2

    .line 31
    invoke-static {v0}, Lorg/jshybugger/kK;->a([I)Ljava/lang/String;

    move-result-object v1

    .line 32
    aget v0, v0, v2

    .line 33
    if-eqz v1, :cond_2c

    .line 34
    invoke-virtual {p0, v1}, Lorg/jshybugger/mi;->a(Ljava/lang/String;)V

    .line 36
    :cond_2c
    if-eqz v0, :cond_31

    .line 37
    invoke-virtual {p0, v0}, Lorg/jshybugger/mi;->a(I)V

    .line 39
    :cond_31
    return-void
.end method

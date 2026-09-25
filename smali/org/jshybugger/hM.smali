.class public final Lorg/jshybugger/hm;
.super Lorg/jshybugger/hr;
.source "MissingArgumentException.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lorg/jshybugger/hr;-><init>(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lorg/jshybugger/ho;)V
    .registers 4

    .prologue
    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Missing argument for option: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jshybugger/ho;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jshybugger/hm;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

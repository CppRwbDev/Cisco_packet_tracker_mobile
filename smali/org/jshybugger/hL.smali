.class final Lorg/jshybugger/hl;
.super Ljava/lang/Object;
.source "HelpFormatter.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 962
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(B)V
    .registers 2

    .prologue
    .line 962
    invoke-direct {p0}, Lorg/jshybugger/hl;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .prologue
    .line 978
    check-cast p1, Lorg/jshybugger/ho;

    .line 979
    check-cast p2, Lorg/jshybugger/ho;

    .line 981
    invoke-virtual {p1}, Lorg/jshybugger/ho;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jshybugger/ho;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

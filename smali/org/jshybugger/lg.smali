.class final Lorg/jshybugger/lG;
.super Lorg/jshybugger/kY;
.source "NativeString.java"


# static fields
.field private static final a:Ljava/lang/Object;


# instance fields
.field private b:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-string v0, "String"

    sput-object v0, Lorg/jshybugger/lG;->a:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .registers 2

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/jshybugger/kY;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/jshybugger/lG;->b:Ljava/lang/CharSequence;

    .line 37
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 57
    const-string v0, "length"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 58
    const v0, 0x70001

    .line 60
    :goto_b
    return v0

    :cond_c
    invoke-super {p0, p1}, Lorg/jshybugger/kY;->a(Ljava/lang/String;)I

    move-result v0

    goto :goto_b
.end method

.method public final a(ILorg/jshybugger/lU;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 448
    if-ltz p1, :cond_15

    iget-object v0, p0, Lorg/jshybugger/lG;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 449
    iget-object v0, p0, Lorg/jshybugger/lG;->b:Ljava/lang/CharSequence;

    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 451
    :goto_14
    return-object v0

    :cond_15
    invoke-super {p0, p1, p2}, Lorg/jshybugger/kY;->a(ILorg/jshybugger/lU;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_14
.end method

.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    const-string v0, "String"

    return-object v0
.end method

.method protected final a(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 66
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const-string v0, "length"

    .line 67
    :goto_5
    return-object v0

    :cond_6
    invoke-super {p0, p1}, Lorg/jshybugger/kY;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method protected final b(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 73
    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    .line 74
    iget-object v0, p0, Lorg/jshybugger/lG;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {v0}, Lorg/jshybugger/lS;->c(I)Ljava/lang/Integer;

    move-result-object v0

    .line 76
    :goto_d
    return-object v0

    :cond_e
    invoke-super {p0, p1}, Lorg/jshybugger/kY;->b(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_d
.end method

.method protected final c()I
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 440
    iget-object v0, p0, Lorg/jshybugger/lG;->b:Ljava/lang/CharSequence;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/jshybugger/lG;->b:Ljava/lang/CharSequence;

    check-cast v0, Ljava/lang/String;

    :goto_a
    return-object v0

    :cond_b
    iget-object v0, p0, Lorg/jshybugger/lG;->b:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

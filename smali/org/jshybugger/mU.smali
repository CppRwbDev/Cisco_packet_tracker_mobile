.class public final Lorg/jshybugger/mu;
.super Ljava/lang/Object;
.source "AstNode.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/jshybugger/mt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .prologue
    .line 122
    check-cast p1, Lorg/jshybugger/mt;

    check-cast p2, Lorg/jshybugger/mt;

    iget v0, p1, Lorg/jshybugger/mt;->f:I

    iget v1, p2, Lorg/jshybugger/mt;->f:I

    sub-int/2addr v0, v1

    return v0
.end method

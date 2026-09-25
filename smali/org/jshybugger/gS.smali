.class final Lorg/jshybugger/gs;
.super Lorg/jshybugger/fl;
.source "RecyclableArrayList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jshybugger/fl",
        "<",
        "Lorg/jshybugger/gr;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/jshybugger/fl;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a(Lorg/jshybugger/fn;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 36
    new-instance v0, Lorg/jshybugger/gr;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/jshybugger/gr;-><init>(Lorg/jshybugger/fn;B)V

    return-object v0
.end method

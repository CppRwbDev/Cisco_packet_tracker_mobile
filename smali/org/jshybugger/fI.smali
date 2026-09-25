.class final Lorg/jshybugger/fi;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "DefaultAttributeMap.java"

# interfaces
.implements Lorg/jshybugger/fb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<TT;>;",
        "Lorg/jshybugger/fb",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/Map;Lorg/jshybugger/fc;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lorg/jshybugger/fc",
            "<*>;",
            "Lorg/jshybugger/fb",
            "<*>;>;",
            "Lorg/jshybugger/fc",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 67
    return-void
.end method

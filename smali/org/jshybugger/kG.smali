.class final Lorg/jshybugger/kg;
.super Ljava/lang/Object;
.source "ProxyConnection.java"

# interfaces
.implements Lorg/jshybugger/fO;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jshybugger/fO",
        "<",
        "Lorg/jshybugger/fN",
        "<-",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field private synthetic a:Lorg/jshybugger/fZ;

.field private synthetic b:Lorg/jshybugger/kd;


# direct methods
.method constructor <init>(Lorg/jshybugger/kd;Lorg/jshybugger/fZ;)V
    .registers 3

    .prologue
    .line 457
    iput-object p1, p0, Lorg/jshybugger/kg;->b:Lorg/jshybugger/kd;

    iput-object p2, p0, Lorg/jshybugger/kg;->a:Lorg/jshybugger/fZ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/fN;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jshybugger/fN",
            "<-",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lorg/jshybugger/kg;->b:Lorg/jshybugger/kd;

    iget-object v1, p0, Lorg/jshybugger/kg;->a:Lorg/jshybugger/fZ;

    invoke-static {v0, v1}, Lorg/jshybugger/kd;->a(Lorg/jshybugger/kd;Lorg/jshybugger/fZ;)V

    .line 463
    return-void
.end method

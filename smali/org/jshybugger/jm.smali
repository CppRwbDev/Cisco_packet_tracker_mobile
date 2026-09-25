.class final Lorg/jshybugger/jM;
.super Lorg/jshybugger/ko;
.source "ClientToProxyConnection.java"


# instance fields
.field private synthetic b:Lorg/jshybugger/jG;


# direct methods
.method constructor <init>(Lorg/jshybugger/jG;)V
    .registers 2

    .prologue
    .line 1187
    iput-object p1, p0, Lorg/jshybugger/jM;->b:Lorg/jshybugger/jG;

    invoke-direct {p0, p1}, Lorg/jshybugger/ko;-><init>(Lorg/jshybugger/kd;)V

    return-void
.end method


# virtual methods
.method protected final a(Lorg/jshybugger/dX;)V
    .registers 4

    .prologue
    .line 1190
    iget-object v0, p0, Lorg/jshybugger/jM;->b:Lorg/jshybugger/jG;

    invoke-static {v0}, Lorg/jshybugger/jG;->b(Lorg/jshybugger/jG;)Lorg/jshybugger/jv;

    .line 1191
    iget-object v0, p0, Lorg/jshybugger/jM;->b:Lorg/jshybugger/jG;

    iget-object v0, v0, Lorg/jshybugger/jG;->d:Lorg/jshybugger/jT;

    invoke-virtual {v0}, Lorg/jshybugger/jT;->j()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_11

    .line 1196
    :cond_1b
    return-void
.end method

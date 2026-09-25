.class public interface abstract Lorg/jshybugger/ap;
.super Ljava/lang/Object;
.source "ChannelFutureListener.java"

# interfaces
.implements Lorg/jshybugger/fO;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jshybugger/fO",
        "<",
        "Lorg/jshybugger/ao;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lorg/jshybugger/ap;

.field public static final b:Lorg/jshybugger/ap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    new-instance v0, Lorg/jshybugger/aq;

    invoke-direct {v0}, Lorg/jshybugger/aq;-><init>()V

    sput-object v0, Lorg/jshybugger/ap;->a:Lorg/jshybugger/ap;

    .line 52
    new-instance v0, Lorg/jshybugger/ar;

    invoke-direct {v0}, Lorg/jshybugger/ar;-><init>()V

    sput-object v0, Lorg/jshybugger/ap;->b:Lorg/jshybugger/ap;

    .line 65
    new-instance v0, Lorg/jshybugger/as;

    invoke-direct {v0}, Lorg/jshybugger/as;-><init>()V

    return-void
.end method

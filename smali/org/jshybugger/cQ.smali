.class public final Lorg/jshybugger/cq;
.super Ljava/lang/Object;
.source "ChannelInputShutdownEvent.java"


# static fields
.field public static final a:Lorg/jshybugger/cq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lorg/jshybugger/cq;

    invoke-direct {v0}, Lorg/jshybugger/cq;-><init>()V

    sput-object v0, Lorg/jshybugger/cq;->a:Lorg/jshybugger/cq;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

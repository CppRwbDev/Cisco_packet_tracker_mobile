.class public final Lorg/jshybugger/hc;
.super Lorg/jshybugger/gY;
.source "Log4JLoggerFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/jshybugger/gY;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/jshybugger/gX;
    .registers 4

    .prologue
    .line 29
    new-instance v0, Lorg/jshybugger/hb;

    invoke-static {p1}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jshybugger/hb;-><init>(Lorg/apache/log4j/Logger;)V

    return-object v0
.end method

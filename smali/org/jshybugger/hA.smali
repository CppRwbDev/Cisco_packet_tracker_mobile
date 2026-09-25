.class public final Lorg/jshybugger/ha;
.super Lorg/jshybugger/gY;
.source "JdkLoggerFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/jshybugger/gY;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lorg/jshybugger/gX;
    .registers 4

    .prologue
    .line 30
    new-instance v0, Lorg/jshybugger/gZ;

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jshybugger/gZ;-><init>(Ljava/util/logging/Logger;)V

    return-object v0
.end method

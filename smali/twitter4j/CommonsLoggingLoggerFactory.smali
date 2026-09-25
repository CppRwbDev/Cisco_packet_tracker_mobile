.class final Ltwitter4j/CommonsLoggingLoggerFactory;
.super Ltwitter4j/LoggerFactory;
.source "CommonsLoggingLoggerFactory.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ltwitter4j/LoggerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;
    .registers 4
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 30
    new-instance v0, Ltwitter4j/CommonsLoggingLogger;

    invoke-static {p1}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/CommonsLoggingLogger;-><init>(Lorg/apache/commons/logging/Log;)V

    return-object v0
.end method

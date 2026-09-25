.class final Ltwitter4j/JULLoggerFactory;
.super Ltwitter4j/LoggerFactory;
.source "JULLoggerFactory.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ltwitter4j/LoggerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;
    .registers 4
    .param p1, "clazz"    # Ljava/lang/Class;

    .prologue
    .line 25
    new-instance v0, Ltwitter4j/JULLogger;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    invoke-direct {v0, v1}, Ltwitter4j/JULLogger;-><init>(Ljava/util/logging/Logger;)V

    return-object v0
.end method

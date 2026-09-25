.class Lorg/jshybugger/hb;
.super Lorg/jshybugger/gV;
.source "Log4JLogger.java"


# static fields
.field private static c:Ljava/lang/String;


# instance fields
.field private transient b:Lorg/apache/log4j/Logger;

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 59
    const-class v0, Lorg/jshybugger/hb;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/hb;->c:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/apache/log4j/Logger;)V
    .registers 3

    .prologue
    .line 66
    invoke-virtual {p1}, Lorg/apache/log4j/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jshybugger/gV;-><init>(Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    .line 68
    invoke-direct {p0}, Lorg/jshybugger/hb;->c()Z

    move-result v0

    iput-boolean v0, p0, Lorg/jshybugger/hb;->d:Z

    .line 69
    return-void
.end method

.method private c()Z
    .registers 2

    .prologue
    .line 73
    :try_start_0
    iget-object v0, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isTraceEnabled()Z
    :try_end_5
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_5} :catch_7

    .line 74
    const/4 v0, 0x1

    .line 76
    :goto_6
    return v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method private d()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lorg/jshybugger/hb;->d:Z

    if-eqz v0, :cond_b

    .line 88
    iget-object v0, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isTraceEnabled()Z

    move-result v0

    .line 90
    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    goto :goto_a
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 207
    iget-object v0, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/jshybugger/hb;->c:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 208
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 121
    invoke-direct {p0}, Lorg/jshybugger/hb;->d()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 122
    invoke-static {p1, p2}, Lorg/jshybugger/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/gW;

    move-result-object v1

    .line 123
    iget-object v2, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    sget-object v3, Lorg/jshybugger/hb;->c:Ljava/lang/String;

    iget-boolean v0, p0, Lorg/jshybugger/hb;->d:Z

    if-eqz v0, :cond_20

    sget-object v0, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    :goto_14
    invoke-virtual {v1}, Lorg/jshybugger/gW;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/jshybugger/gW;->b()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v4, v1}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 126
    :cond_1f
    return-void

    .line 123
    :cond_20
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    goto :goto_14
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    .prologue
    .line 146
    invoke-direct {p0}, Lorg/jshybugger/hb;->d()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 147
    invoke-static {p1, p2, p3}, Lorg/jshybugger/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/jshybugger/gW;

    move-result-object v1

    .line 148
    iget-object v2, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    sget-object v3, Lorg/jshybugger/hb;->c:Ljava/lang/String;

    iget-boolean v0, p0, Lorg/jshybugger/hb;->d:Z

    if-eqz v0, :cond_20

    sget-object v0, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    :goto_14
    invoke-virtual {v1}, Lorg/jshybugger/gW;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lorg/jshybugger/gW;->b()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v2, v3, v0, v4, v1}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 151
    :cond_1f
    return-void

    .line 148
    :cond_20
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    goto :goto_14
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 287
    iget-object v0, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/jshybugger/hb;->c:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 288
    return-void
.end method

.method public final a()Z
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 308
    iget-object v0, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/jshybugger/hb;->c:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 309
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 226
    iget-object v0, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 227
    invoke-static {p1, p2}, Lorg/jshybugger/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/gW;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    sget-object v2, Lorg/jshybugger/hb;->c:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/jshybugger/gW;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jshybugger/gW;->b()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 230
    :cond_1d
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    .prologue
    .line 250
    iget-object v0, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 251
    invoke-static {p1, p2, p3}, Lorg/jshybugger/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/jshybugger/gW;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    sget-object v2, Lorg/jshybugger/hb;->c:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/jshybugger/gW;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jshybugger/gW;->b()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 254
    :cond_1d
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 492
    iget-object v0, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/jshybugger/hb;->c:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 493
    return-void
.end method

.method public final b()Z
    .registers 3

    .prologue
    .line 399
    iget-object v0, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 410
    iget-object v0, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/jshybugger/hb;->c:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 411
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 429
    iget-object v0, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 430
    invoke-static {p1, p2}, Lorg/jshybugger/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/gW;

    move-result-object v0

    .line 431
    iget-object v1, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    sget-object v2, Lorg/jshybugger/hb;->c:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/jshybugger/gW;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jshybugger/gW;->b()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 433
    :cond_1f
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 9

    .prologue
    .line 453
    iget-object v0, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 454
    invoke-static {p1, p2, p3}, Lorg/jshybugger/a;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Lorg/jshybugger/gW;

    move-result-object v0

    .line 455
    iget-object v1, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    sget-object v2, Lorg/jshybugger/hb;->c:Ljava/lang/String;

    sget-object v3, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/jshybugger/gW;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jshybugger/gW;->b()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 457
    :cond_1f
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 595
    iget-object v0, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/jshybugger/hb;->c:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 596
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 513
    iget-object v0, p0, Lorg/jshybugger/hb;->b:Lorg/apache/log4j/Logger;

    sget-object v1, Lorg/jshybugger/hb;->c:Ljava/lang/String;

    sget-object v2, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p1, v3}, Lorg/apache/log4j/Logger;->log(Ljava/lang/String;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 514
    return-void
.end method

.class public final Lorg/jshybugger/fr;
.super Ljava/lang/Object;
.source "ResourceLeakDetector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static a:Z

.field private static final b:Lorg/jshybugger/gX;


# instance fields
.field private final c:Lorg/jshybugger/fs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jshybugger/fr",
            "<TT;>.org/jshybugger/fs;"
        }
    .end annotation
.end field

.field private final d:Lorg/jshybugger/fs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jshybugger/fr",
            "<TT;>.org/jshybugger/fs;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Exception;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/String;

.field private final h:I

.field private final i:J

.field private j:J

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 34
    const-class v0, Lorg/jshybugger/fr;

    invoke-static {v0}, Lorg/jshybugger/gY;->a(Ljava/lang/Class;)Lorg/jshybugger/gX;

    move-result-object v0

    sput-object v0, Lorg/jshybugger/fr;->b:Lorg/jshybugger/gX;

    .line 37
    const-string v0, "io.netty.noResourceLeakDetection"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jshybugger/gu;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 38
    sget-object v1, Lorg/jshybugger/fr;->b:Lorg/jshybugger/gX;

    const-string v2, "-Dio.netty.noResourceLeakDetection: {}"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    sput-boolean v0, Lorg/jshybugger/fr;->a:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-static {p1}, Lorg/jshybugger/gt;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jshybugger/fr;-><init>(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 78
    const/16 v0, 0x71

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/jshybugger/fr;-><init>(Ljava/lang/String;IJ)V

    .line 79
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    const-wide v4, 0x7fffffffffffffffL

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lorg/jshybugger/fs;

    invoke-direct {v0, p0, v1}, Lorg/jshybugger/fs;-><init>(Lorg/jshybugger/fr;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/jshybugger/fr;->c:Lorg/jshybugger/fs;

    .line 60
    new-instance v0, Lorg/jshybugger/fs;

    invoke-direct {v0, p0, v1}, Lorg/jshybugger/fs;-><init>(Lorg/jshybugger/fr;Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/jshybugger/fr;->d:Lorg/jshybugger/fs;

    .line 62
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/fr;->e:Ljava/lang/ref/ReferenceQueue;

    .line 63
    invoke-static {}, Lorg/jshybugger/gp;->h()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/fr;->f:Ljava/util/concurrent/ConcurrentMap;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/fr;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    if-nez p1, :cond_35

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resourceType"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_35
    const-wide/16 v0, 0x0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_56

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maxActive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: 1+)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_56
    iput-object p1, p0, Lorg/jshybugger/fr;->g:Ljava/lang/String;

    .line 97
    const/16 v0, 0x71

    iput v0, p0, Lorg/jshybugger/fr;->h:I

    .line 98
    iput-wide v4, p0, Lorg/jshybugger/fr;->i:J

    .line 100
    iget-object v0, p0, Lorg/jshybugger/fr;->c:Lorg/jshybugger/fs;

    iget-object v1, p0, Lorg/jshybugger/fr;->d:Lorg/jshybugger/fs;

    invoke-static {v0, v1}, Lorg/jshybugger/fs;->a(Lorg/jshybugger/fs;Lorg/jshybugger/fs;)Lorg/jshybugger/fs;

    .line 101
    iget-object v0, p0, Lorg/jshybugger/fr;->d:Lorg/jshybugger/fs;

    iget-object v1, p0, Lorg/jshybugger/fr;->c:Lorg/jshybugger/fs;

    invoke-static {v0, v1}, Lorg/jshybugger/fs;->b(Lorg/jshybugger/fs;Lorg/jshybugger/fs;)Lorg/jshybugger/fs;

    .line 102
    return-void
.end method

.method static synthetic a(Lorg/jshybugger/fr;)Ljava/lang/ref/ReferenceQueue;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lorg/jshybugger/fr;->e:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method static synthetic b(Lorg/jshybugger/fr;)Lorg/jshybugger/fs;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lorg/jshybugger/fr;->c:Lorg/jshybugger/fs;

    return-object v0
.end method

.method static synthetic c(Lorg/jshybugger/fr;)J
    .registers 5

    .prologue
    .line 30
    iget-wide v0, p0, Lorg/jshybugger/fr;->j:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/jshybugger/fr;->j:J

    return-wide v0
.end method

.method static synthetic d(Lorg/jshybugger/fr;)J
    .registers 5

    .prologue
    .line 30
    iget-wide v0, p0, Lorg/jshybugger/fr;->j:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lorg/jshybugger/fr;->j:J

    return-wide v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lorg/jshybugger/fq;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/jshybugger/fq;"
        }
    .end annotation

    .prologue
    .line 111
    sget-boolean v0, Lorg/jshybugger/fr;->a:Z

    if-nez v0, :cond_15

    iget-wide v0, p0, Lorg/jshybugger/fr;->l:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/jshybugger/fr;->l:J

    iget v2, p0, Lorg/jshybugger/fr;->h:I

    int-to-long v2, v2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_17

    .line 112
    :cond_15
    const/4 v0, 0x0

    .line 117
    :goto_16
    return-object v0

    .line 115
    :cond_17
    sget-object v0, Lorg/jshybugger/fr;->b:Lorg/jshybugger/gX;

    invoke-interface {v0}, Lorg/jshybugger/gX;->b()Z

    move-result v0

    if-nez v0, :cond_2d

    :goto_1f
    iget-object v0, p0, Lorg/jshybugger/fr;->e:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/fs;

    if-eqz v0, :cond_b3

    invoke-virtual {v0}, Lorg/jshybugger/fs;->a()Z

    goto :goto_1f

    :cond_2d
    iget-wide v0, p0, Lorg/jshybugger/fr;->j:J

    iget v2, p0, Lorg/jshybugger/fr;->h:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lorg/jshybugger/fr;->i:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_6b

    iget-object v0, p0, Lorg/jshybugger/fr;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6b

    sget-object v0, Lorg/jshybugger/fr;->b:Lorg/jshybugger/gX;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "LEAK: You are creating too many "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/jshybugger/fr;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instances.  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jshybugger/fr;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is a shared resource that must be reused across the JVM,so that only a few instances are created."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jshybugger/gX;->c(Ljava/lang/String;)V

    :cond_6b
    :goto_6b
    iget-object v0, p0, Lorg/jshybugger/fr;->e:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/fs;

    if-eqz v0, :cond_b3

    invoke-virtual {v0}, Lorg/jshybugger/fs;->clear()V

    invoke-virtual {v0}, Lorg/jshybugger/fs;->a()Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-object v1, p0, Lorg/jshybugger/fr;->f:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v0}, Lorg/jshybugger/fs;->a(Lorg/jshybugger/fs;)Lorg/jshybugger/ft;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6b

    sget-object v1, Lorg/jshybugger/fr;->b:Lorg/jshybugger/gX;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LEAK: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jshybugger/fr;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was GC\'d before being released correctly.  The following stack trace shows where the leaked object was created, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "rather than where you failed to release it."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lorg/jshybugger/fs;->a(Lorg/jshybugger/fs;)Lorg/jshybugger/ft;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/jshybugger/gX;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6b

    .line 117
    :cond_b3
    new-instance v0, Lorg/jshybugger/fs;

    invoke-direct {v0, p0, p1}, Lorg/jshybugger/fs;-><init>(Lorg/jshybugger/fr;Ljava/lang/Object;)V

    goto/16 :goto_16
.end method

.class final Lorg/jshybugger/fs;
.super Ljava/lang/ref/PhantomReference;
.source "ResourceLeakDetector.java"

# interfaces
.implements Lorg/jshybugger/fq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference",
        "<",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/jshybugger/fq;"
    }
.end annotation


# instance fields
.field private final a:Lorg/jshybugger/ft;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private c:Lorg/jshybugger/fs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jshybugger/fr",
            "<TT;>.org/jshybugger/fs;"
        }
    .end annotation
.end field

.field private d:Lorg/jshybugger/fs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jshybugger/fr",
            "<TT;>.org/jshybugger/fs;"
        }
    .end annotation
.end field

.field private synthetic e:Lorg/jshybugger/fr;


# direct methods
.method public constructor <init>(Lorg/jshybugger/fr;Ljava/lang/Object;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 171
    iput-object p1, p0, Lorg/jshybugger/fs;->e:Lorg/jshybugger/fr;

    .line 172
    if-eqz p2, :cond_69

    invoke-static {p1}, Lorg/jshybugger/fr;->a(Lorg/jshybugger/fr;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    :goto_9
    invoke-direct {p0, p2, v0}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 174
    if-eqz p2, :cond_6e

    .line 175
    new-instance v0, Lorg/jshybugger/ft;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jshybugger/ft;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jshybugger/fs;->a:Lorg/jshybugger/ft;

    .line 179
    invoke-static {p1}, Lorg/jshybugger/fr;->b(Lorg/jshybugger/fr;)Lorg/jshybugger/fs;

    move-result-object v1

    monitor-enter v1

    .line 180
    :try_start_41
    invoke-static {p1}, Lorg/jshybugger/fr;->b(Lorg/jshybugger/fr;)Lorg/jshybugger/fs;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/fs;->c:Lorg/jshybugger/fs;

    .line 181
    invoke-static {p1}, Lorg/jshybugger/fr;->b(Lorg/jshybugger/fr;)Lorg/jshybugger/fs;

    move-result-object v0

    iget-object v0, v0, Lorg/jshybugger/fs;->d:Lorg/jshybugger/fs;

    iput-object v0, p0, Lorg/jshybugger/fs;->d:Lorg/jshybugger/fs;

    .line 182
    invoke-static {p1}, Lorg/jshybugger/fr;->b(Lorg/jshybugger/fr;)Lorg/jshybugger/fs;

    move-result-object v0

    iget-object v0, v0, Lorg/jshybugger/fs;->d:Lorg/jshybugger/fs;

    iput-object p0, v0, Lorg/jshybugger/fs;->c:Lorg/jshybugger/fs;

    .line 183
    invoke-static {p1}, Lorg/jshybugger/fr;->b(Lorg/jshybugger/fr;)Lorg/jshybugger/fs;

    move-result-object v0

    iput-object p0, v0, Lorg/jshybugger/fs;->d:Lorg/jshybugger/fs;

    .line 184
    invoke-static {p1}, Lorg/jshybugger/fr;->c(Lorg/jshybugger/fr;)J

    .line 185
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_41 .. :try_end_61} :catchall_6b

    .line 186
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/fs;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 191
    :goto_68
    return-void

    :cond_69
    move-object v0, v1

    .line 172
    goto :goto_9

    .line 185
    :catchall_6b
    move-exception v0

    monitor-exit v1

    throw v0

    .line 188
    :cond_6e
    iput-object v1, p0, Lorg/jshybugger/fs;->a:Lorg/jshybugger/ft;

    .line 189
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jshybugger/fs;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    goto :goto_68
.end method

.method static synthetic a(Lorg/jshybugger/fs;Lorg/jshybugger/fs;)Lorg/jshybugger/fs;
    .registers 2

    .prologue
    .line 164
    iput-object p1, p0, Lorg/jshybugger/fs;->d:Lorg/jshybugger/fs;

    return-object p1
.end method

.method static synthetic a(Lorg/jshybugger/fs;)Lorg/jshybugger/ft;
    .registers 2

    .prologue
    .line 164
    iget-object v0, p0, Lorg/jshybugger/fs;->a:Lorg/jshybugger/ft;

    return-object v0
.end method

.method static synthetic b(Lorg/jshybugger/fs;Lorg/jshybugger/fs;)Lorg/jshybugger/fs;
    .registers 2

    .prologue
    .line 164
    iput-object p1, p0, Lorg/jshybugger/fs;->c:Lorg/jshybugger/fs;

    return-object p1
.end method


# virtual methods
.method public final a()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 195
    iget-object v2, p0, Lorg/jshybugger/fs;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 196
    iget-object v1, p0, Lorg/jshybugger/fs;->e:Lorg/jshybugger/fr;

    invoke-static {v1}, Lorg/jshybugger/fr;->b(Lorg/jshybugger/fr;)Lorg/jshybugger/fs;

    move-result-object v1

    monitor-enter v1

    .line 197
    :try_start_11
    iget-object v2, p0, Lorg/jshybugger/fs;->e:Lorg/jshybugger/fr;

    invoke-static {v2}, Lorg/jshybugger/fr;->d(Lorg/jshybugger/fr;)J

    .line 198
    iget-object v2, p0, Lorg/jshybugger/fs;->c:Lorg/jshybugger/fs;

    iget-object v3, p0, Lorg/jshybugger/fs;->d:Lorg/jshybugger/fs;

    iput-object v3, v2, Lorg/jshybugger/fs;->d:Lorg/jshybugger/fs;

    .line 199
    iget-object v2, p0, Lorg/jshybugger/fs;->d:Lorg/jshybugger/fs;

    iget-object v3, p0, Lorg/jshybugger/fs;->c:Lorg/jshybugger/fs;

    iput-object v3, v2, Lorg/jshybugger/fs;->c:Lorg/jshybugger/fs;

    .line 200
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jshybugger/fs;->c:Lorg/jshybugger/fs;

    .line 201
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jshybugger/fs;->d:Lorg/jshybugger/fs;

    .line 202
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_2a

    .line 205
    :goto_29
    return v0

    .line 202
    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2d
    move v0, v1

    .line 205
    goto :goto_29
.end method

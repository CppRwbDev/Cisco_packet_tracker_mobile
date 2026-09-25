.class public abstract Lcom/google/android/gms/internal/i;
.super Lcom/google/android/gms/internal/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/i$a;
    }
.end annotation


# static fields
.field private static kA:Ljava/lang/reflect/Method;

.field private static kB:Ljava/lang/reflect/Method;

.field private static kC:Ljava/lang/reflect/Method;

.field private static kD:Ljava/lang/reflect/Method;

.field private static kE:Ljava/lang/reflect/Method;

.field private static kF:Ljava/lang/reflect/Method;

.field private static kG:Ljava/lang/reflect/Method;

.field private static kH:Ljava/lang/reflect/Method;

.field private static kI:Ljava/lang/reflect/Method;

.field private static kJ:Ljava/lang/String;

.field private static kK:Ljava/lang/String;

.field private static kL:Ljava/lang/String;

.field private static kM:Lcom/google/android/gms/internal/o;

.field static kN:Z

.field private static startTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/internal/i;->startTime:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/internal/i;->kN:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/m;Lcom/google/android/gms/internal/n;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/h;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/m;Lcom/google/android/gms/internal/n;)V

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/google/android/gms/internal/m;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/i;->kK:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/i;->kK:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/i;->kD:Ljava/lang/reflect/Method;

    if-nez v0, :cond_11

    new-instance v0, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    throw v0

    :cond_11
    :try_start_11
    sget-object v0, Lcom/google/android/gms/internal/i;->kD:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2f

    new-instance v0, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    throw v0
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_28} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_28} :catch_3d

    :catch_28
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2f
    :try_start_2f
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/m;->a([BZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/i;->kK:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/i;->kK:Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_3c} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2f .. :try_end_3c} :catch_3d

    goto :goto_6

    :catch_3d
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static a(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Landroid/util/DisplayMetrics;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/i;->kE:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_6

    if-nez p0, :cond_c

    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    throw v0

    :cond_c
    :try_start_c
    sget-object v0, Lcom/google/android/gms/internal/i;->kE:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_1e
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_1e} :catch_1f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_1e} :catch_26

    return-object v0

    :catch_1f
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_26
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static declared-synchronized a(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/m;)V
    .registers 7

    const-class v1, Lcom/google/android/gms/internal/i;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/google/android/gms/internal/i;->kN:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_23

    if-nez v0, :cond_21

    :try_start_7
    new-instance v0, Lcom/google/android/gms/internal/o;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v2}, Lcom/google/android/gms/internal/o;-><init>(Lcom/google/android/gms/internal/m;Ljava/security/SecureRandom;)V

    sput-object v0, Lcom/google/android/gms/internal/i;->kM:Lcom/google/android/gms/internal/o;

    sput-object p0, Lcom/google/android/gms/internal/i;->kJ:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/i;->g(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/i;->w()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sput-wide v2, Lcom/google/android/gms/internal/i;->startTime:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/android/gms/internal/i;->kN:Z
    :try_end_21
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_7 .. :try_end_21} :catch_28
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_21} :catch_26
    .catchall {:try_start_7 .. :try_end_21} :catchall_23

    :cond_21
    :goto_21
    monitor-exit v1

    return-void

    :catchall_23
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_26
    move-exception v0

    goto :goto_21

    :catch_28
    move-exception v0

    goto :goto_21
.end method

.method static b(Landroid/content/Context;Lcom/google/android/gms/internal/m;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/i;->kL:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/i;->kL:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/google/android/gms/internal/i;->kG:Ljava/lang/reflect/Method;

    if-nez v0, :cond_11

    new-instance v0, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    throw v0

    :cond_11
    :try_start_11
    sget-object v0, Lcom/google/android/gms/internal/i;->kG:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2f

    new-instance v0, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    throw v0
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_28} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_28} :catch_3d

    :catch_28
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2f
    :try_start_2f
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/m;->a([BZ)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/i;->kL:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/i;->kL:Ljava/lang/String;
    :try_end_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_3c} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2f .. :try_end_3c} :catch_3d

    goto :goto_6

    :catch_3d
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static b([BLjava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/i;->kM:Lcom/google/android/gms/internal/o;

    invoke-virtual {v1, p0, p1}, Lcom/google/android/gms/internal/o;->c([BLjava/lang/String;)[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_d
    .catch Lcom/google/android/gms/internal/o$a; {:try_start_0 .. :try_end_d} :catch_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_15

    return-object v0

    :catch_e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_15
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/i;->kF:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    throw v0

    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/i;->kF:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2f

    new-instance v0, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    throw v0
    :try_end_21
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_21} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_21} :catch_28

    :catch_21
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_28
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2f
    return-object v0
.end method

.method static e(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/i;->kH:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    throw v0

    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/i;->kH:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_36

    :cond_22
    new-instance v0, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    throw v0
    :try_end_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_28} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_28} :catch_2f

    :catch_28
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2f
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_36
    return-object v0
.end method

.method static f(Landroid/content/Context;)[I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/i;->kI:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    throw v0

    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/i;->kI:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_1b} :catch_1c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_1b} :catch_23

    return-object v0

    :catch_1c
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_23
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static g(Landroid/content/Context;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/i;->kM:Lcom/google/android/gms/internal/o;

    invoke-static {}, Lcom/google/android/gms/internal/q;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/o;->b(Ljava/lang/String;)[B

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/internal/i;->kM:Lcom/google/android/gms/internal/o;

    invoke-static {}, Lcom/google/android/gms/internal/q;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/o;->c([BLjava/lang/String;)[B

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_30

    const-string v0, "dex"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_30

    new-instance v0, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    throw v0
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_29} :catch_29
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_29} :catch_1b1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_29} :catch_1b8
    .catch Lcom/google/android/gms/internal/o$a; {:try_start_0 .. :try_end_29} :catch_1bf
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_29} :catch_1c6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_29} :catch_1cd

    :catch_29
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_30
    move-object v1, v0

    :try_start_31
    const-string v0, "ads"

    const-string v4, ".jar"

    invoke-static {v0, v4, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v5, 0x0

    array-length v6, v3

    invoke-virtual {v0, v3, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_46
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_46} :catch_29
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_46} :catch_1b1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_46} :catch_1b8
    .catch Lcom/google/android/gms/internal/o$a; {:try_start_31 .. :try_end_46} :catch_1bf
    .catch Ljava/lang/NoSuchMethodException; {:try_start_31 .. :try_end_46} :catch_1c6
    .catch Ljava/lang/NullPointerException; {:try_start_31 .. :try_end_46} :catch_1cd

    :try_start_46
    new-instance v0, Ldalvik/system/DexClassLoader;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v0, v3, v5, v6, v7}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {}, Lcom/google/android/gms/internal/q;->E()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/internal/q;->Q()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-static {}, Lcom/google/android/gms/internal/q;->K()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/q;->I()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-static {}, Lcom/google/android/gms/internal/q;->S()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-static {}, Lcom/google/android/gms/internal/q;->G()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-static {}, Lcom/google/android/gms/internal/q;->O()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-static {}, Lcom/google/android/gms/internal/q;->M()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    invoke-static {}, Lcom/google/android/gms/internal/q;->C()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/q;->F()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v3, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/i;->kA:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/q;->R()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v5, v3, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/i;->kB:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/q;->L()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v6, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/i;->kC:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/q;->J()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v12, Landroid/content/Context;

    aput-object v12, v5, v6

    invoke-virtual {v7, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/i;->kD:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/q;->T()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/view/MotionEvent;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/util/DisplayMetrics;

    aput-object v7, v5, v6

    invoke-virtual {v8, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/i;->kE:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/q;->H()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v9, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/i;->kF:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/q;->P()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v10, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/i;->kG:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/q;->N()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    invoke-virtual {v11, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/google/android/gms/internal/i;->kH:Ljava/lang/reflect/Method;

    invoke-static {}, Lcom/google/android/gms/internal/q;->D()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/i;->b([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/i;->kI:Ljava/lang/reflect/Method;
    :try_end_180
    .catchall {:try_start_46 .. :try_end_180} :catchall_198

    :try_start_180
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance v2, Ljava/io/File;

    const-string v3, ".jar"

    const-string v4, ".dex"

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    return-void

    :catchall_198
    move-exception v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/io/File;

    const-string v4, ".jar"

    const-string v5, ".dex"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    throw v0
    :try_end_1b1
    .catch Ljava/io/FileNotFoundException; {:try_start_180 .. :try_end_1b1} :catch_29
    .catch Ljava/io/IOException; {:try_start_180 .. :try_end_1b1} :catch_1b1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_180 .. :try_end_1b1} :catch_1b8
    .catch Lcom/google/android/gms/internal/o$a; {:try_start_180 .. :try_end_1b1} :catch_1bf
    .catch Ljava/lang/NoSuchMethodException; {:try_start_180 .. :try_end_1b1} :catch_1c6
    .catch Ljava/lang/NullPointerException; {:try_start_180 .. :try_end_1b1} :catch_1cd

    :catch_1b1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1b8
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1bf
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1c6
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1cd
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static v()Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/i;->kJ:Ljava/lang/String;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    throw v0

    :cond_a
    sget-object v0, Lcom/google/android/gms/internal/i;->kJ:Ljava/lang/String;

    return-object v0
.end method

.method static w()Ljava/lang/Long;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/i;->kA:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    throw v0

    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/i;->kA:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_16} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_16} :catch_1e

    return-object v0

    :catch_17
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static x()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/i;->kC:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    throw v0

    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/i;->kC:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_16} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_16} :catch_1e

    return-object v0

    :catch_17
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static y()Ljava/lang/Long;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/i$a;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/i;->kB:Ljava/lang/reflect/Method;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/i$a;-><init>()V

    throw v0

    :cond_a
    :try_start_a
    sget-object v0, Lcom/google/android/gms/internal/i;->kB:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;
    :try_end_16
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_16} :catch_17
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_16} :catch_1e

    return-object v0

    :catch_17
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/i$a;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/i$a;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected b(Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x1

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/i;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/i;->a(ILjava/lang/String;)V
    :try_end_8
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_1 .. :try_end_8} :catch_a1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_90

    :goto_8
    const/4 v0, 0x2

    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/i;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/i;->a(ILjava/lang/String;)V
    :try_end_10
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_9 .. :try_end_10} :catch_9e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_90

    :goto_10
    :try_start_10
    invoke-static {}, Lcom/google/android/gms/internal/i;->w()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/16 v2, 0x19

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/i;->a(IJ)V

    sget-wide v2, Lcom/google/android/gms/internal/i;->startTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_34

    const/16 v2, 0x11

    sget-wide v4, Lcom/google/android/gms/internal/i;->startTime:J

    sub-long/2addr v0, v4

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/i;->a(IJ)V

    const/16 v0, 0x17

    sget-wide v2, Lcom/google/android/gms/internal/i;->startTime:J

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/i;->a(IJ)V
    :try_end_34
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_10 .. :try_end_34} :catch_9c
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_34} :catch_90

    :cond_34
    :goto_34
    :try_start_34
    invoke-static {p1}, Lcom/google/android/gms/internal/i;->e(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, 0x1f

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/android/gms/internal/i;->a(IJ)V

    const/16 v2, 0x20

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/i;->a(IJ)V
    :try_end_58
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_34 .. :try_end_58} :catch_9a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_58} :catch_90

    :goto_58
    const/16 v0, 0x21

    :try_start_5a
    invoke-static {}, Lcom/google/android/gms/internal/i;->y()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/i;->a(IJ)V
    :try_end_65
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_5a .. :try_end_65} :catch_98
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_65} :catch_90

    :goto_65
    const/16 v0, 0x1b

    :try_start_67
    iget-object v1, p0, Lcom/google/android/gms/internal/i;->ky:Lcom/google/android/gms/internal/m;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/i;->a(Landroid/content/Context;Lcom/google/android/gms/internal/m;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/i;->a(ILjava/lang/String;)V
    :try_end_70
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_67 .. :try_end_70} :catch_96
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_70} :catch_90

    :goto_70
    const/16 v0, 0x1d

    :try_start_72
    iget-object v1, p0, Lcom/google/android/gms/internal/i;->ky:Lcom/google/android/gms/internal/m;

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/i;->b(Landroid/content/Context;Lcom/google/android/gms/internal/m;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/i;->a(ILjava/lang/String;)V
    :try_end_7b
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_72 .. :try_end_7b} :catch_94
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_7b} :catch_90

    :goto_7b
    :try_start_7b
    invoke-static {p1}, Lcom/google/android/gms/internal/i;->f(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/i;->a(IJ)V

    const/4 v1, 0x6

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/gms/internal/i;->a(IJ)V
    :try_end_8f
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_7b .. :try_end_8f} :catch_92
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_8f} :catch_90

    :goto_8f
    return-void

    :catch_90
    move-exception v0

    goto :goto_8f

    :catch_92
    move-exception v0

    goto :goto_8f

    :catch_94
    move-exception v0

    goto :goto_7b

    :catch_96
    move-exception v0

    goto :goto_70

    :catch_98
    move-exception v0

    goto :goto_65

    :catch_9a
    move-exception v0

    goto :goto_58

    :catch_9c
    move-exception v0

    goto :goto_34

    :catch_9e
    move-exception v0

    goto/16 :goto_10

    :catch_a1
    move-exception v0

    goto/16 :goto_8
.end method

.method protected c(Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x2

    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/i;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/i;->a(ILjava/lang/String;)V
    :try_end_8
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_1 .. :try_end_8} :catch_65
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_5d

    :goto_8
    const/4 v0, 0x1

    :try_start_9
    invoke-static {}, Lcom/google/android/gms/internal/i;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/i;->a(ILjava/lang/String;)V
    :try_end_10
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_9 .. :try_end_10} :catch_63
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_10} :catch_5d

    :goto_10
    const/16 v0, 0x19

    :try_start_12
    invoke-static {}, Lcom/google/android/gms/internal/i;->w()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/android/gms/internal/i;->a(IJ)V
    :try_end_1d
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_12 .. :try_end_1d} :catch_61
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1d} :catch_5d

    :goto_1d
    :try_start_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/i;->kw:Landroid/view/MotionEvent;

    iget-object v1, p0, Lcom/google/android/gms/internal/i;->kx:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/i;->a(Landroid/view/MotionEvent;Landroid/util/DisplayMetrics;)Ljava/util/ArrayList;

    move-result-object v1

    const/16 v2, 0xe

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/android/gms/internal/i;->a(IJ)V

    const/16 v2, 0xf

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v2, v4, v5}, Lcom/google/android/gms/internal/i;->a(IJ)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_5c

    const/16 v2, 0x10

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/google/android/gms/internal/i;->a(IJ)V
    :try_end_5c
    .catch Lcom/google/android/gms/internal/i$a; {:try_start_1d .. :try_end_5c} :catch_5f
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_5c} :catch_5d

    :cond_5c
    :goto_5c
    return-void

    :catch_5d
    move-exception v0

    goto :goto_5c

    :catch_5f
    move-exception v0

    goto :goto_5c

    :catch_61
    move-exception v0

    goto :goto_1d

    :catch_63
    move-exception v0

    goto :goto_10

    :catch_65
    move-exception v0

    goto :goto_8
.end method

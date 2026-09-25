.class public Lcom/google/android/gms/internal/gb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/cf$b;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ez;
.end annotation


# static fields
.field private static final vJ:Lcom/google/android/gms/internal/gb;

.field public static final vK:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mw:Ljava/lang/Object;

.field private nu:Lcom/google/android/gms/internal/am;

.field private nv:Lcom/google/android/gms/internal/al;

.field private nw:Lcom/google/android/gms/internal/ey;

.field private qs:Lcom/google/android/gms/internal/gt;

.field private uH:Z

.field private uI:Z

.field public final vL:Ljava/lang/String;

.field private final vM:Lcom/google/android/gms/internal/gc;

.field private vN:Ljava/math/BigInteger;

.field private final vO:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/ga;",
            ">;"
        }
    .end annotation
.end field

.field private final vP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ge;",
            ">;"
        }
    .end annotation
.end field

.field private vQ:Z

.field private vR:Z

.field private vS:Lcom/google/android/gms/internal/an;

.field private vT:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private vU:Z

.field private vV:Landroid/os/Bundle;

.field private vW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/gb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gb;->vJ:Lcom/google/android/gms/internal/gb;

    sget-object v0, Lcom/google/android/gms/internal/gb;->vJ:Lcom/google/android/gms/internal/gb;

    iget-object v0, v0, Lcom/google/android/gms/internal/gb;->vL:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/gb;->vK:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->mw:Ljava/lang/Object;

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->vN:Ljava/math/BigInteger;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->vO:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->vP:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/gb;->vQ:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/gb;->uH:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/gb;->vR:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/gb;->uI:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/gb;->nu:Lcom/google/android/gms/internal/am;

    iput-object v1, p0, Lcom/google/android/gms/internal/gb;->vS:Lcom/google/android/gms/internal/an;

    iput-object v1, p0, Lcom/google/android/gms/internal/gb;->nv:Lcom/google/android/gms/internal/al;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->vT:Ljava/util/LinkedList;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/gb;->vU:Z

    invoke-static {}, Lcom/google/android/gms/internal/bn;->bs()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->vV:Landroid/os/Bundle;

    iput-object v1, p0, Lcom/google/android/gms/internal/gb;->nw:Lcom/google/android/gms/internal/ey;

    invoke-static {}, Lcom/google/android/gms/internal/gj;->dp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->vL:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/gc;

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->vL:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gc;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->vM:Lcom/google/android/gms/internal/gc;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/gd;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4

    sget-object v0, Lcom/google/android/gms/internal/gb;->vJ:Lcom/google/android/gms/internal/gb;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/gb;->b(Landroid/content/Context;Lcom/google/android/gms/internal/gd;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/gt;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/gb;->vJ:Lcom/google/android/gms/internal/gb;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/gb;->b(Landroid/content/Context;Lcom/google/android/gms/internal/gt;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/gb;->vJ:Lcom/google/android/gms/internal/gb;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/gb;->b(Landroid/content/Context;Z)V

    return-void
.end method

.method public static b(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/ga;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/gb;->vJ:Lcom/google/android/gms/internal/gb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gb;->c(Ljava/util/HashSet;)V

    return-void
.end method

.method public static bD()Landroid/os/Bundle;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gb;->vJ:Lcom/google/android/gms/internal/gb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gb;->dh()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static c(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/gb;->vJ:Lcom/google/android/gms/internal/gb;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/gb;->d(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cV()Lcom/google/android/gms/internal/gb;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gb;->vJ:Lcom/google/android/gms/internal/gb;

    return-object v0
.end method

.method public static cX()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gb;->vJ:Lcom/google/android/gms/internal/gb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gb;->cY()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cZ()Lcom/google/android/gms/internal/gc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gb;->vJ:Lcom/google/android/gms/internal/gb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gb;->da()Lcom/google/android/gms/internal/gc;

    move-result-object v0

    return-object v0
.end method

.method public static db()Z
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gb;->vJ:Lcom/google/android/gms/internal/gb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gb;->dc()Z

    move-result v0

    return v0
.end method

.method public static dd()Z
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gb;->vJ:Lcom/google/android/gms/internal/gb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gb;->de()Z

    move-result v0

    return v0
.end method

.method public static df()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/gb;->vJ:Lcom/google/android/gms/internal/gb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gb;->dg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Ljava/lang/Throwable;)V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/gb;->vJ:Lcom/google/android/gms/internal/gb;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gb;->f(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->mw:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/gb;->vU:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/gb;->vV:Landroid/os/Bundle;

    :goto_8
    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->vT:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v2, p0, Lcom/google/android/gms/internal/gb;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->vT:Ljava/util/LinkedList;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/google/android/gms/internal/gb;->qs:Lcom/google/android/gms/internal/gt;

    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/ey;->a(Landroid/content/Context;Ljava/lang/Thread;Lcom/google/android/gms/internal/gt;)Lcom/google/android/gms/internal/ey;

    goto :goto_8

    :catchall_21
    move-exception v0

    monitor-exit v1
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_21

    throw v0

    :cond_24
    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_21

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/ga;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->mw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->vO:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public a(Ljava/lang/String;Lcom/google/android/gms/internal/ge;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->mw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->vP:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public a(Ljava/lang/Thread;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->mw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gb;->vU:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/gb;->qs:Lcom/google/android/gms/internal/gt;

    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/ey;->a(Landroid/content/Context;Ljava/lang/Thread;Lcom/google/android/gms/internal/gt;)Lcom/google/android/gms/internal/ey;

    :goto_e
    monitor-exit v1

    return-void

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->vT:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :catchall_16
    move-exception v0

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public b(Landroid/content/Context;Lcom/google/android/gms/internal/gd;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 10

    iget-object v2, p0, Lcom/google/android/gms/internal/gb;->mw:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "app"

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->vM:Lcom/google/android/gms/internal/gc;

    invoke-virtual {v1, p1, p3}, Lcom/google/android/gms/internal/gc;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->vP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_22
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->vP:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ge;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ge;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_22

    :catchall_3e
    move-exception v0

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_3e

    throw v0

    :cond_41
    :try_start_41
    const-string v0, "slots"

    invoke-virtual {v3, v0, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->vO:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_51
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_65

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ga;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ga;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_51

    :cond_65
    const-string v0, "ads"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->vO:Ljava/util/HashSet;

    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/gd;->a(Ljava/util/HashSet;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->vO:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    monitor-exit v2
    :try_end_75
    .catchall {:try_start_41 .. :try_end_75} :catchall_3e

    return-object v3
.end method

.method public b(Landroid/content/Context;Lcom/google/android/gms/internal/gt;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->mw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gb;->vR:Z

    if-nez v0, :cond_2d

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/gb;->qs:Lcom/google/android/gms/internal/gt;

    invoke-static {p1}, Lcom/google/android/gms/internal/gh;->o(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gb;->uH:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/iv;->H(Landroid/content/Context;)V

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/cf;->a(Landroid/content/Context;Lcom/google/android/gms/internal/cf$b;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gb;->a(Ljava/lang/Thread;)V

    iget-object v0, p2, Lcom/google/android/gms/internal/gt;->wD:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/gj;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->vW:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gb;->vR:Z

    :cond_2d
    monitor-exit v1

    return-void

    :catchall_2f
    move-exception v0

    monitor-exit v1
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v0
.end method

.method public b(Landroid/content/Context;Z)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->mw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gb;->uH:Z

    if-eq p2, v0, :cond_c

    iput-boolean p2, p0, Lcom/google/android/gms/internal/gb;->uH:Z

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gh;->a(Landroid/content/Context;Z)V

    :cond_c
    monitor-exit v1

    return-void

    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public c(Ljava/util/HashSet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/ga;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->mw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->vO:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public cW()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->mw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gb;->uI:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public cY()Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->mw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->vN:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/gb;->vN:Ljava/math/BigInteger;

    sget-object v3, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/gb;->vN:Ljava/math/BigInteger;

    monitor-exit v1

    return-object v0

    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public d(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->qs:Lcom/google/android/gms/internal/gt;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/gt;->wG:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :goto_c
    if-nez v0, :cond_16

    :goto_e
    return-object p2

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getRemoteResource(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_c

    :cond_16
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_e
.end method

.method public da()Lcom/google/android/gms/internal/gc;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->mw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->vM:Lcom/google/android/gms/internal/gc;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public dc()Z
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->mw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gb;->vQ:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/internal/gb;->vQ:Z

    monitor-exit v1

    return v0

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public de()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->mw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gb;->uH:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public dg()Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->mw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->vW:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public dh()Landroid/os/Bundle;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->mw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->vV:Landroid/os/Bundle;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public f(Ljava/lang/Throwable;)V
    .registers 6

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gb;->vR:Z

    if-eqz v0, :cond_11

    new-instance v0, Lcom/google/android/gms/internal/ey;

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/gb;->qs:Lcom/google/android/gms/internal/gt;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/internal/ey;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gt;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ey;->b(Ljava/lang/Throwable;)V

    :cond_11
    return-void
.end method

.method public l(Landroid/content/Context;)Lcom/google/android/gms/internal/an;
    .registers 12

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/internal/gb;->bD()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/bn;->pd:Lcom/google/android/gms/internal/iv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/iv;->getKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-static {}, Lcom/google/android/gms/internal/kc;->hE()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gb;->cW()Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_1e
    :goto_1e
    return-object v0

    :cond_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->mw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_22
    iget-object v2, p0, Lcom/google/android/gms/internal/gb;->nu:Lcom/google/android/gms/internal/am;

    if-nez v2, :cond_3e

    instance-of v2, p1, Landroid/app/Activity;

    if-nez v2, :cond_2f

    monitor-exit v1

    goto :goto_1e

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_2c

    throw v0

    :cond_2f
    :try_start_2f
    new-instance v2, Lcom/google/android/gms/internal/am;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/am;-><init>(Landroid/app/Application;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/gb;->nu:Lcom/google/android/gms/internal/am;

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->nv:Lcom/google/android/gms/internal/al;

    if-nez v0, :cond_49

    new-instance v0, Lcom/google/android/gms/internal/al;

    invoke-direct {v0}, Lcom/google/android/gms/internal/al;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->nv:Lcom/google/android/gms/internal/al;

    :cond_49
    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->vS:Lcom/google/android/gms/internal/an;

    if-nez v0, :cond_65

    new-instance v0, Lcom/google/android/gms/internal/an;

    iget-object v2, p0, Lcom/google/android/gms/internal/gb;->nu:Lcom/google/android/gms/internal/am;

    iget-object v3, p0, Lcom/google/android/gms/internal/gb;->nv:Lcom/google/android/gms/internal/al;

    iget-object v4, p0, Lcom/google/android/gms/internal/gb;->vV:Landroid/os/Bundle;

    new-instance v5, Lcom/google/android/gms/internal/ey;

    iget-object v6, p0, Lcom/google/android/gms/internal/gb;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/gms/internal/gb;->qs:Lcom/google/android/gms/internal/gt;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ey;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gt;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/internal/an;-><init>(Lcom/google/android/gms/internal/am;Lcom/google/android/gms/internal/al;Landroid/os/Bundle;Lcom/google/android/gms/internal/ey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gb;->vS:Lcom/google/android/gms/internal/an;

    :cond_65
    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->vS:Lcom/google/android/gms/internal/an;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/an;->aV()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gb;->vS:Lcom/google/android/gms/internal/an;

    monitor-exit v1
    :try_end_6d
    .catchall {:try_start_2f .. :try_end_6d} :catchall_2c

    goto :goto_1e
.end method

.method public v(Z)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/gb;->mw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/gb;->uI:Z

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

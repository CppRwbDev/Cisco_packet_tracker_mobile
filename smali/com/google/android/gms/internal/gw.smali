.class public Lcom/google/android/gms/internal/gw;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ez;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/gw$a;
    }
.end annotation


# instance fields
.field protected final md:Lcom/google/android/gms/internal/gv;

.field private final mw:Ljava/lang/Object;

.field private pJ:Lcom/google/android/gms/internal/cb;

.field private pL:Lcom/google/android/gms/internal/bz;

.field private pM:Lcom/google/android/gms/internal/v;

.field private pz:Lcom/google/android/gms/internal/bw;

.field private tg:Lcom/google/android/gms/internal/gw$a;

.field private final wP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/by;",
            ">;"
        }
    .end annotation
.end field

.field private wQ:Lcom/google/android/gms/internal/t;

.field private wR:Lcom/google/android/gms/internal/dn;

.field private wS:Z

.field private wT:Z

.field private wU:Lcom/google/android/gms/internal/dq;

.field private final wV:Lcom/google/android/gms/internal/dg;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gv;Z)V
    .registers 7

    new-instance v0, Lcom/google/android/gms/internal/dg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gv;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/bl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gv;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/bl;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/dg;-><init>(Lcom/google/android/gms/internal/gv;Landroid/content/Context;Lcom/google/android/gms/internal/bl;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/gw;-><init>(Lcom/google/android/gms/internal/gv;ZLcom/google/android/gms/internal/dg;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/gv;ZLcom/google/android/gms/internal/dg;)V
    .registers 5

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gw;->wP:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gw;->mw:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gw;->wS:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/gw;->wT:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/gw;->wV:Lcom/google/android/gms/internal/dg;

    return-void
.end method

.method private static d(Landroid/net/Uri;)Z
    .registers 3

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :cond_14
    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private e(Landroid/net/Uri;)V
    .registers 8

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->wP:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/by;

    if-eqz v0, :cond_70

    invoke-static {p1}, Lcom/google/android/gms/internal/gj;->c(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/google/android/gms/internal/gs;->u(I)Z

    move-result v3

    if-eqz v3, :cond_6a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received GMSG: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gs;->V(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gs;->V(Ljava/lang/String;)V

    goto :goto_37

    :cond_6a
    iget-object v1, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/by;->a(Lcom/google/android/gms/internal/gv;Ljava/util/Map;)V

    :goto_6f
    return-void

    :cond_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No GMSG handler found for GMSG: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gs;->V(Ljava/lang/String;)V

    goto :goto_6f
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/dj;)V
    .registers 8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gv;->dz()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/internal/dm;

    if-eqz v1, :cond_28

    iget-object v2, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gv;->Y()Lcom/google/android/gms/internal/ay;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ay;->og:Z

    if-nez v2, :cond_28

    move-object v2, v3

    :goto_16
    if-eqz v1, :cond_2b

    :goto_18
    iget-object v4, p0, Lcom/google/android/gms/internal/gw;->wU:Lcom/google/android/gms/internal/dq;

    iget-object v1, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gv;->dy()Lcom/google/android/gms/internal/gt;

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/dm;-><init>(Lcom/google/android/gms/internal/dj;Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/dn;Lcom/google/android/gms/internal/dq;Lcom/google/android/gms/internal/gt;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gw;->a(Lcom/google/android/gms/internal/dm;)V

    return-void

    :cond_28
    iget-object v2, p0, Lcom/google/android/gms/internal/gw;->wQ:Lcom/google/android/gms/internal/t;

    goto :goto_16

    :cond_2b
    iget-object v3, p0, Lcom/google/android/gms/internal/gw;->wR:Lcom/google/android/gms/internal/dn;

    goto :goto_18
.end method

.method protected a(Lcom/google/android/gms/internal/dm;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gv;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/dk;->a(Landroid/content/Context;Lcom/google/android/gms/internal/dm;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/gw$a;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/gw;->tg:Lcom/google/android/gms/internal/gw$a;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/dn;Lcom/google/android/gms/internal/bw;Lcom/google/android/gms/internal/dq;ZLcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/cb;Lcom/google/android/gms/internal/v;)V
    .registers 17

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/gw;->a(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/dn;Lcom/google/android/gms/internal/bw;Lcom/google/android/gms/internal/dq;ZLcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/v;)V

    const-string v0, "/setInterstitialProperties"

    new-instance v1, Lcom/google/android/gms/internal/ca;

    invoke-direct {v1, p7}, Lcom/google/android/gms/internal/ca;-><init>(Lcom/google/android/gms/internal/cb;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/by;)V

    iput-object p7, p0, Lcom/google/android/gms/internal/gw;->pJ:Lcom/google/android/gms/internal/cb;

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/dn;Lcom/google/android/gms/internal/bw;Lcom/google/android/gms/internal/dq;ZLcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/v;)V
    .registers 10

    if-nez p7, :cond_8

    new-instance p7, Lcom/google/android/gms/internal/v;

    const/4 v0, 0x0

    invoke-direct {p7, v0}, Lcom/google/android/gms/internal/v;-><init>(Z)V

    :cond_8
    const-string v0, "/appEvent"

    new-instance v1, Lcom/google/android/gms/internal/bv;

    invoke-direct {v1, p3}, Lcom/google/android/gms/internal/bv;-><init>(Lcom/google/android/gms/internal/bw;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/by;)V

    const-string v0, "/canOpenURLs"

    sget-object v1, Lcom/google/android/gms/internal/bx;->pB:Lcom/google/android/gms/internal/by;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/by;)V

    const-string v0, "/click"

    sget-object v1, Lcom/google/android/gms/internal/bx;->pC:Lcom/google/android/gms/internal/by;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/by;)V

    const-string v0, "/close"

    sget-object v1, Lcom/google/android/gms/internal/bx;->pD:Lcom/google/android/gms/internal/by;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/by;)V

    const-string v0, "/customClose"

    sget-object v1, Lcom/google/android/gms/internal/bx;->pE:Lcom/google/android/gms/internal/by;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/by;)V

    const-string v0, "/httpTrack"

    sget-object v1, Lcom/google/android/gms/internal/bx;->pF:Lcom/google/android/gms/internal/by;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/by;)V

    const-string v0, "/log"

    sget-object v1, Lcom/google/android/gms/internal/bx;->pG:Lcom/google/android/gms/internal/by;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/by;)V

    const-string v0, "/open"

    new-instance v1, Lcom/google/android/gms/internal/cd;

    invoke-direct {v1, p6, p7}, Lcom/google/android/gms/internal/cd;-><init>(Lcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/v;)V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/by;)V

    const-string v0, "/touch"

    sget-object v1, Lcom/google/android/gms/internal/bx;->pH:Lcom/google/android/gms/internal/by;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/by;)V

    const-string v0, "/video"

    sget-object v1, Lcom/google/android/gms/internal/bx;->pI:Lcom/google/android/gms/internal/by;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/by;)V

    const-string v0, "/mraid"

    new-instance v1, Lcom/google/android/gms/internal/cc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/cc;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gw;->a(Ljava/lang/String;Lcom/google/android/gms/internal/by;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/gw;->wQ:Lcom/google/android/gms/internal/t;

    iput-object p2, p0, Lcom/google/android/gms/internal/gw;->wR:Lcom/google/android/gms/internal/dn;

    iput-object p3, p0, Lcom/google/android/gms/internal/gw;->pz:Lcom/google/android/gms/internal/bw;

    iput-object p6, p0, Lcom/google/android/gms/internal/gw;->pL:Lcom/google/android/gms/internal/bz;

    iput-object p4, p0, Lcom/google/android/gms/internal/gw;->wU:Lcom/google/android/gms/internal/dq;

    iput-object p7, p0, Lcom/google/android/gms/internal/gw;->pM:Lcom/google/android/gms/internal/v;

    invoke-virtual {p0, p5}, Lcom/google/android/gms/internal/gw;->y(Z)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/by;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->wP:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(ZI)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gv;->dz()Z

    move-result v1

    new-instance v0, Lcom/google/android/gms/internal/dm;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gv;->Y()Lcom/google/android/gms/internal/ay;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ay;->og:Z

    if-nez v1, :cond_2a

    const/4 v1, 0x0

    :goto_15
    iget-object v2, p0, Lcom/google/android/gms/internal/gw;->wR:Lcom/google/android/gms/internal/dn;

    iget-object v3, p0, Lcom/google/android/gms/internal/gw;->wU:Lcom/google/android/gms/internal/dq;

    iget-object v4, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    iget-object v5, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/gv;->dy()Lcom/google/android/gms/internal/gt;

    move-result-object v7

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/dm;-><init>(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/dn;Lcom/google/android/gms/internal/dq;Lcom/google/android/gms/internal/gv;ZILcom/google/android/gms/internal/gt;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gw;->a(Lcom/google/android/gms/internal/dm;)V

    return-void

    :cond_2a
    iget-object v1, p0, Lcom/google/android/gms/internal/gw;->wQ:Lcom/google/android/gms/internal/t;

    goto :goto_15
.end method

.method public final a(ZILjava/lang/String;)V
    .registers 15

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gv;->dz()Z

    move-result v3

    new-instance v0, Lcom/google/android/gms/internal/dm;

    if-eqz v3, :cond_30

    iget-object v1, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gv;->Y()Lcom/google/android/gms/internal/ay;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ay;->og:Z

    if-nez v1, :cond_30

    move-object v1, v2

    :goto_16
    if-eqz v3, :cond_33

    :goto_18
    iget-object v3, p0, Lcom/google/android/gms/internal/gw;->pz:Lcom/google/android/gms/internal/bw;

    iget-object v4, p0, Lcom/google/android/gms/internal/gw;->wU:Lcom/google/android/gms/internal/dq;

    iget-object v5, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    iget-object v6, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/gv;->dy()Lcom/google/android/gms/internal/gt;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gms/internal/gw;->pL:Lcom/google/android/gms/internal/bz;

    move v6, p1

    move v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/internal/dm;-><init>(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/dn;Lcom/google/android/gms/internal/bw;Lcom/google/android/gms/internal/dq;Lcom/google/android/gms/internal/gv;ZILjava/lang/String;Lcom/google/android/gms/internal/gt;Lcom/google/android/gms/internal/bz;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gw;->a(Lcom/google/android/gms/internal/dm;)V

    return-void

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/gw;->wQ:Lcom/google/android/gms/internal/t;

    goto :goto_16

    :cond_33
    iget-object v2, p0, Lcom/google/android/gms/internal/gw;->wR:Lcom/google/android/gms/internal/dn;

    goto :goto_18
.end method

.method public final a(ZILjava/lang/String;Ljava/lang/String;)V
    .registers 17

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gv;->dz()Z

    move-result v2

    new-instance v0, Lcom/google/android/gms/internal/dm;

    if-eqz v2, :cond_32

    iget-object v1, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gv;->Y()Lcom/google/android/gms/internal/ay;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ay;->og:Z

    if-nez v1, :cond_32

    const/4 v1, 0x0

    :goto_15
    if-eqz v2, :cond_35

    const/4 v2, 0x0

    :goto_18
    iget-object v3, p0, Lcom/google/android/gms/internal/gw;->pz:Lcom/google/android/gms/internal/bw;

    iget-object v4, p0, Lcom/google/android/gms/internal/gw;->wU:Lcom/google/android/gms/internal/dq;

    iget-object v5, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    iget-object v6, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/gv;->dy()Lcom/google/android/gms/internal/gt;

    move-result-object v10

    iget-object v11, p0, Lcom/google/android/gms/internal/gw;->pL:Lcom/google/android/gms/internal/bz;

    move v6, p1

    move v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/internal/dm;-><init>(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/dn;Lcom/google/android/gms/internal/bw;Lcom/google/android/gms/internal/dq;Lcom/google/android/gms/internal/gv;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gt;Lcom/google/android/gms/internal/bz;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gw;->a(Lcom/google/android/gms/internal/dm;)V

    return-void

    :cond_32
    iget-object v1, p0, Lcom/google/android/gms/internal/gw;->wQ:Lcom/google/android/gms/internal/t;

    goto :goto_15

    :cond_35
    iget-object v2, p0, Lcom/google/android/gms/internal/gw;->wR:Lcom/google/android/gms/internal/dn;

    goto :goto_18
.end method

.method public final bY()V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/gw;->mw:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/gw;->wS:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gw;->wT:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gv;->du()Lcom/google/android/gms/internal/dk;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/google/android/gms/internal/gr;->dt()Z

    move-result v2

    if-nez v2, :cond_23

    sget-object v2, Lcom/google/android/gms/internal/gr;->wC:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/gms/internal/gw$1;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/gw$1;-><init>(Lcom/google/android/gms/internal/gw;Lcom/google/android/gms/internal/dk;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_21
    :goto_21
    monitor-exit v1

    return-void

    :cond_23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/dk;->bY()V

    goto :goto_21

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public dE()Lcom/google/android/gms/internal/v;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->pM:Lcom/google/android/gms/internal/v;

    return-object v0
.end method

.method public dF()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/gw;->mw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gw;->wT:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public dG()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gw;->dF()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->wV:Lcom/google/android/gms/internal/dg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dg;->bQ()V

    :cond_b
    return-void
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 6
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading resource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gs;->V(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    const-string v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gw;->e(Landroid/net/Uri;)V

    :cond_35
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->tg:Lcom/google/android/gms/internal/gw$a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->tg:Lcom/google/android/gms/internal/gw$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/gw$a;->a(Lcom/google/android/gms/internal/gv;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gw;->tg:Lcom/google/android/gms/internal/gw$a;

    :cond_e
    return-void
.end method

.method public final reset()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/gw;->mw:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->wP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gw;->wQ:Lcom/google/android/gms/internal/t;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gw;->wR:Lcom/google/android/gms/internal/dn;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gw;->tg:Lcom/google/android/gms/internal/gw$a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gw;->pz:Lcom/google/android/gms/internal/bw;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gw;->wS:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gw;->wT:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gw;->pL:Lcom/google/android/gms/internal/bz;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gw;->wU:Lcom/google/android/gms/internal/dq;

    monitor-exit v1

    return-void

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 11
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdWebView shouldOverrideUrlLoading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gs;->V(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gw;->e(Landroid/net/Uri;)V

    :goto_36
    const/4 v0, 0x1

    :goto_37
    return v0

    :cond_38
    iget-boolean v1, p0, Lcom/google/android/gms/internal/gw;->wS:Z

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    if-ne p1, v1, :cond_4b

    invoke-static {v0}, Lcom/google/android/gms/internal/gw;->d(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto :goto_37

    :cond_4b
    iget-object v1, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gv;->willNotDraw()Z

    move-result v1

    if-nez v1, :cond_aa

    :try_start_53
    iget-object v1, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gv;->dx()Lcom/google/android/gms/internal/k;

    move-result-object v1

    if-eqz v1, :cond_6b

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/k;->b(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_6b

    iget-object v2, p0, Lcom/google/android/gms/internal/gw;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gv;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/k;->a(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_6a
    .catch Lcom/google/android/gms/internal/l; {:try_start_53 .. :try_end_6a} :catch_8b

    move-result-object v0

    :cond_6b
    move-object v2, v0

    :goto_6c
    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->pM:Lcom/google/android/gms/internal/v;

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->pM:Lcom/google/android/gms/internal/v;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/v;->av()Z

    move-result v0

    if-eqz v0, :cond_a4

    :cond_78
    new-instance v0, Lcom/google/android/gms/internal/dj;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/dj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gw;->a(Lcom/google/android/gms/internal/dj;)V

    goto :goto_36

    :catch_8b
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to append parameter to URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gs;->W(Ljava/lang/String;)V

    move-object v2, v0

    goto :goto_6c

    :cond_a4
    iget-object v0, p0, Lcom/google/android/gms/internal/gw;->pM:Lcom/google/android/gms/internal/v;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/v;->d(Ljava/lang/String;)V

    goto :goto_36

    :cond_aa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdWebView unable to handle URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gs;->W(Ljava/lang/String;)V

    goto/16 :goto_36
.end method

.method public final y(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gw;->wS:Z

    return-void
.end method

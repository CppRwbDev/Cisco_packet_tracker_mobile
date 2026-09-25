.class public final Lorg/jshybugger/iU;
.super Lorg/jshybugger/ig;
.source "PageMsgHandler.java"


# instance fields
.field protected b:D

.field protected c:D

.field protected d:Lorg/jshybugger/hQ;

.field e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Lorg/jshybugger/iz;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 70
    const-string v0, "Page"

    invoke-direct {p0, p1, v0}, Lorg/jshybugger/ig;-><init>(Lorg/jshybugger/iz;Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jshybugger/iU;->f:Ljava/util/HashMap;

    .line 53
    iput-boolean v1, p0, Lorg/jshybugger/iU;->h:Z

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/jshybugger/iU;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 72
    iget-object v0, p0, Lorg/jshybugger/iU;->f:Ljava/util/HashMap;

    const-string v1, "disable"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method static synthetic a(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    .registers 3

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    return-object v0
.end method

.method static synthetic a(Lorg/jshybugger/iU;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lorg/jshybugger/iU;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lorg/jshybugger/iU;Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V
    .registers 3

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lorg/jshybugger/iU;->b(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V

    return-void
.end method

.method static synthetic a(Lorg/jshybugger/iU;Z)Z
    .registers 3

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jshybugger/iU;->h:Z

    return v0
.end method

.method static synthetic b(Lorg/jshybugger/iU;)I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lorg/jshybugger/iU;->j:I

    return v0
.end method

.method private b(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V
    .registers 5

    .prologue
    .line 285
    iget-boolean v0, p0, Lorg/jshybugger/iU;->h:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/jshybugger/iU;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_e

    if-nez p1, :cond_f

    .line 340
    :cond_e
    :goto_e
    return-void

    .line 289
    :cond_f
    iget-object v0, p0, Lorg/jshybugger/iU;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 290
    iget-object v0, p0, Lorg/jshybugger/iU;->a:Lorg/jshybugger/iz;

    invoke-virtual {v0}, Lorg/jshybugger/iz;->b()Lorg/jshybugger/ii;

    move-result-object v0

    check-cast v0, Lorg/jshybugger/iP;

    invoke-virtual {v0}, Lorg/jshybugger/iP;->f()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lorg/jshybugger/iY;

    invoke-direct {v1, p0, p1, p2}, Lorg/jshybugger/iY;-><init>(Lorg/jshybugger/iU;Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_e
.end method

.method static synthetic c(Lorg/jshybugger/iU;)I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lorg/jshybugger/iU;->k:I

    return v0
.end method

.method static synthetic d(Lorg/jshybugger/iU;)I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lorg/jshybugger/iU;->l:I

    return v0
.end method


# virtual methods
.method public final a(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 81
    const-string v0, "enable"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 82
    iput-boolean v4, p0, Lorg/jshybugger/iU;->g:Z

    .line 83
    iget-object v0, p0, Lorg/jshybugger/iU;->a:Lorg/jshybugger/iz;

    invoke-virtual {v0}, Lorg/jshybugger/iz;->b()Lorg/jshybugger/ii;

    move-result-object v0

    const-string v1, "Debugger.resume"

    new-instance v2, Lorg/jshybugger/hQ;

    invoke-direct {v2}, Lorg/jshybugger/hQ;-><init>()V

    invoke-interface {v0, v1, v2, v3}, Lorg/jshybugger/ii;->sendMsgToWebView(Ljava/lang/String;Lorg/jshybugger/hQ;Lorg/jshybugger/ja;)V

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Lorg/jshybugger/iU;->c(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V

    .line 122
    :cond_21
    :goto_21
    return-void

    .line 89
    :cond_22
    const-string v0, "disable"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 91
    iput-boolean v2, p0, Lorg/jshybugger/iU;->g:Z

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lorg/jshybugger/iU;->c(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V

    goto :goto_21

    .line 94
    :cond_30
    const-string v0, "getResourceContent"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 96
    const-string v0, "params"

    invoke-virtual {p3, v0}, Lorg/jshybugger/hQ;->f(Ljava/lang/String;)Lorg/jshybugger/hQ;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hQ;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ac

    new-instance v1, Lorg/jshybugger/hT;

    invoke-direct {v1}, Lorg/jshybugger/hT;-><init>()V

    invoke-virtual {v1}, Lorg/jshybugger/hT;->d()Lorg/jshybugger/hV;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p3, v2}, Lorg/jshybugger/hQ;->d(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lorg/jshybugger/hV;->a(J)Lorg/jshybugger/hV;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v1

    new-instance v2, Lorg/jshybugger/hQ;

    invoke-direct {v2}, Lorg/jshybugger/hQ;-><init>()V

    const-string v3, "content"

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v2

    const-string v3, "base64Encoded"

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "base64"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v2, v3, v0}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Z)Lorg/jshybugger/hQ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_ac
    iget-object v1, p0, Lorg/jshybugger/iU;->a:Lorg/jshybugger/iz;

    invoke-virtual {v1}, Lorg/jshybugger/iz;->b()Lorg/jshybugger/ii;

    move-result-object v1

    const-string v2, "Page.getResourceContent"

    new-instance v3, Lorg/jshybugger/hQ;

    invoke-direct {v3}, Lorg/jshybugger/hQ;-><init>()V

    const-string v4, "params"

    const-string v5, "params"

    invoke-virtual {p3, v5}, Lorg/jshybugger/hQ;->f(Ljava/lang/String;)Lorg/jshybugger/hQ;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v3

    new-instance v4, Lorg/jshybugger/iW;

    invoke-direct {v4, p0, p1, p3, v0}, Lorg/jshybugger/iW;-><init>(Lorg/jshybugger/iU;Lorg/jshybugger/jn;Lorg/jshybugger/hQ;Ljava/lang/String;)V

    invoke-interface {v1, v2, v3, v4}, Lorg/jshybugger/ii;->sendMsgToWebView(Ljava/lang/String;Lorg/jshybugger/hQ;Lorg/jshybugger/ja;)V

    goto/16 :goto_21

    .line 98
    :cond_cf
    const-string v0, "reload"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 100
    iget-object v0, p0, Lorg/jshybugger/iU;->a:Lorg/jshybugger/iz;

    const-string v1, "GlobalPageReload"

    invoke-virtual {v0, v1, v3}, Lorg/jshybugger/iz;->a(Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;

    iget-object v0, p0, Lorg/jshybugger/iU;->a:Lorg/jshybugger/iz;

    invoke-virtual {v0}, Lorg/jshybugger/iz;->b()Lorg/jshybugger/ii;

    move-result-object v1

    const-string v2, "Page.pageReload"

    const-string v0, "params"

    invoke-virtual {p3, v0}, Lorg/jshybugger/hQ;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_109

    new-instance v0, Lorg/jshybugger/hQ;

    invoke-direct {v0}, Lorg/jshybugger/hQ;-><init>()V

    const-string v3, "params"

    const-string v4, "params"

    invoke-virtual {p3, v4}, Lorg/jshybugger/hQ;->f(Ljava/lang/String;)Lorg/jshybugger/hQ;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v0

    :goto_ff
    new-instance v3, Lorg/jshybugger/iX;

    invoke-direct {v3, p0, p1, p3}, Lorg/jshybugger/iX;-><init>(Lorg/jshybugger/iU;Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V

    invoke-interface {v1, v2, v0, v3}, Lorg/jshybugger/ii;->sendMsgToWebView(Ljava/lang/String;Lorg/jshybugger/hQ;Lorg/jshybugger/ja;)V

    goto/16 :goto_21

    :cond_109
    new-instance v0, Lorg/jshybugger/hQ;

    invoke-direct {v0}, Lorg/jshybugger/hQ;-><init>()V

    goto :goto_ff

    .line 102
    :cond_10f
    const-string v0, "canScreencast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15f

    .line 104
    sget-boolean v0, Lorg/jshybugger/jk;->a:Z

    if-eqz v0, :cond_15a

    .line 105
    new-instance v0, Lorg/jshybugger/hT;

    invoke-direct {v0}, Lorg/jshybugger/hT;-><init>()V

    invoke-virtual {v0}, Lorg/jshybugger/hT;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p3, v1}, Lorg/jshybugger/hQ;->d(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/jshybugger/hV;->a(J)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/jshybugger/hV;->a(Z)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V

    goto/16 :goto_21

    .line 107
    :cond_15a
    invoke-static {p1, p3}, Lorg/jshybugger/iU;->a(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V

    goto/16 :goto_21

    .line 110
    :cond_15f
    const-string v0, "startScreencast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e8

    .line 112
    iget-object v0, p0, Lorg/jshybugger/iU;->a:Lorg/jshybugger/iz;

    invoke-virtual {v0}, Lorg/jshybugger/iz;->b()Lorg/jshybugger/ii;

    move-result-object v0

    instance-of v0, v0, Lorg/jshybugger/iP;

    if-nez v0, :cond_178

    const-string v0, "screencast not supported for stock browser"

    invoke-static {p1, p3, v0}, Lorg/jshybugger/iU;->a(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;Ljava/lang/String;)V

    goto/16 :goto_21

    :cond_178
    invoke-static {p1, p3}, Lorg/jshybugger/iU;->a(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V

    const-string v0, "params"

    invoke-virtual {p3, v0}, Lorg/jshybugger/hQ;->f(Ljava/lang/String;)Lorg/jshybugger/hQ;

    move-result-object v2

    if-eqz v2, :cond_21

    const-string v0, "format"

    invoke-virtual {v2, v0}, Lorg/jshybugger/hQ;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e0

    const-string v0, "format"

    invoke-virtual {v2, v0}, Lorg/jshybugger/hQ;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_191
    iput-object v0, p0, Lorg/jshybugger/iU;->i:Ljava/lang/String;

    const-string v0, "quality"

    invoke-virtual {v2, v0}, Lorg/jshybugger/hQ;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e3

    const-string v0, "quality"

    invoke-virtual {v2, v0}, Lorg/jshybugger/hQ;->d(Ljava/lang/String;)I

    move-result v0

    :goto_1a1
    iput v0, p0, Lorg/jshybugger/iU;->j:I

    const-string v0, "maxWidth"

    invoke-virtual {v2, v0}, Lorg/jshybugger/hQ;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e6

    const-string v0, "maxWidth"

    invoke-virtual {v2, v0}, Lorg/jshybugger/hQ;->d(Ljava/lang/String;)I

    move-result v0

    :goto_1b1
    iput v0, p0, Lorg/jshybugger/iU;->k:I

    const-string v0, "maxHeight"

    invoke-virtual {v2, v0}, Lorg/jshybugger/hQ;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    const-string v0, "maxHeight"

    invoke-virtual {v2, v0}, Lorg/jshybugger/hQ;->d(Ljava/lang/String;)I

    move-result v1

    :cond_1c1
    iput v1, p0, Lorg/jshybugger/iU;->l:I

    iget-object v0, p0, Lorg/jshybugger/iU;->a:Lorg/jshybugger/iz;

    invoke-virtual {v0}, Lorg/jshybugger/iz;->b()Lorg/jshybugger/ii;

    move-result-object v0

    const-string v1, "Page.startScreencast"

    new-instance v3, Lorg/jshybugger/hQ;

    invoke-direct {v3}, Lorg/jshybugger/hQ;-><init>()V

    const-string v4, "params"

    invoke-virtual {v3, v4, v2}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/hQ;

    move-result-object v2

    new-instance v3, Lorg/jshybugger/iV;

    invoke-direct {v3, p0, p1}, Lorg/jshybugger/iV;-><init>(Lorg/jshybugger/iU;Lorg/jshybugger/jn;)V

    invoke-interface {v0, v1, v2, v3}, Lorg/jshybugger/ii;->sendMsgToWebView(Ljava/lang/String;Lorg/jshybugger/hQ;Lorg/jshybugger/ja;)V

    goto/16 :goto_21

    :cond_1e0
    const-string v0, "PNG"

    goto :goto_191

    :cond_1e3
    const/16 v0, 0x50

    goto :goto_1a1

    :cond_1e6
    move v0, v1

    goto :goto_1b1

    .line 114
    :cond_1e8
    const-string v0, "stopScreencast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f7

    .line 116
    iput-boolean v2, p0, Lorg/jshybugger/iU;->h:Z

    .line 117
    invoke-static {p1, p3}, Lorg/jshybugger/iU;->a(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V

    goto/16 :goto_21

    .line 120
    :cond_1f7
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/ig;->a(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)V

    goto/16 :goto_21
.end method

.method public final b(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 251
    const-string v0, "GlobalInitHybugger"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 253
    iget-object v0, p0, Lorg/jshybugger/iU;->a:Lorg/jshybugger/iz;

    const-string v1, "title"

    invoke-virtual {p3, v1}, Lorg/jshybugger/hQ;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/iz;->a(Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lorg/jshybugger/iU;->a:Lorg/jshybugger/iz;

    const-string v1, "url"

    invoke-virtual {p3, v1}, Lorg/jshybugger/hQ;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/iz;->b(Ljava/lang/String;)V

    .line 256
    iget-boolean v0, p0, Lorg/jshybugger/iU;->g:Z

    if-eqz v0, :cond_33

    .line 257
    iget-object v0, p0, Lorg/jshybugger/iU;->a:Lorg/jshybugger/iz;

    invoke-virtual {v0}, Lorg/jshybugger/iz;->b()Lorg/jshybugger/ii;

    move-result-object v0

    const-string v1, "Page.enable"

    new-instance v2, Lorg/jshybugger/hQ;

    invoke-direct {v2}, Lorg/jshybugger/hQ;-><init>()V

    invoke-interface {v0, v1, v2, v4}, Lorg/jshybugger/ii;->sendMsgToWebView(Ljava/lang/String;Lorg/jshybugger/hQ;Lorg/jshybugger/ja;)V

    .line 259
    :cond_33
    iget-boolean v0, p0, Lorg/jshybugger/iU;->h:Z

    if-eqz v0, :cond_47

    .line 260
    iget-object v0, p0, Lorg/jshybugger/iU;->a:Lorg/jshybugger/iz;

    invoke-virtual {v0}, Lorg/jshybugger/iz;->b()Lorg/jshybugger/ii;

    move-result-object v0

    const-string v1, "Page.startScreencast"

    new-instance v2, Lorg/jshybugger/hQ;

    invoke-direct {v2}, Lorg/jshybugger/hQ;-><init>()V

    invoke-interface {v0, v1, v2, v4}, Lorg/jshybugger/ii;->sendMsgToWebView(Ljava/lang/String;Lorg/jshybugger/hQ;Lorg/jshybugger/ja;)V

    .line 263
    :cond_47
    if-eqz p1, :cond_10f

    new-instance v0, Lorg/jshybugger/hT;

    invoke-direct {v0}, Lorg/jshybugger/hT;-><init>()V

    invoke-virtual {v0}, Lorg/jshybugger/hT;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "method"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "Page.frameStartedLoading"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "frameId"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "frameId"

    invoke-virtual {p3, v1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V

    new-instance v0, Lorg/jshybugger/hT;

    invoke-direct {v0}, Lorg/jshybugger/hT;-><init>()V

    invoke-virtual {v0}, Lorg/jshybugger/hT;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "method"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "Page.frameNavigated"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "frame"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "frameId"

    invoke-virtual {p3, v1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "loaderId"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "loaderId"

    invoke-virtual {p3, v1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p3, v1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "securityOrigin"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "securityOrigin"

    invoke-virtual {p3, v1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "mimeType"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "text/html"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V

    .line 279
    :cond_10f
    :goto_10f
    return-object v4

    .line 265
    :cond_110
    const-string v0, "GlobalPageLoaded"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e8

    .line 267
    iget-object v0, p0, Lorg/jshybugger/iU;->a:Lorg/jshybugger/iz;

    const-string v1, "title"

    invoke-virtual {p3, v1}, Lorg/jshybugger/hQ;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/iz;->a(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lorg/jshybugger/iU;->a:Lorg/jshybugger/iz;

    const-string v1, "url"

    invoke-virtual {p3, v1}, Lorg/jshybugger/hQ;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/iz;->b(Ljava/lang/String;)V

    .line 270
    if-eqz p1, :cond_10f

    new-instance v0, Lorg/jshybugger/hT;

    invoke-direct {v0}, Lorg/jshybugger/hT;-><init>()V

    invoke-virtual {v0}, Lorg/jshybugger/hT;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "method"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "Page.domContentEventFired"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-static {}, Lorg/jshybugger/jk;->f()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/jshybugger/hV;->a(D)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V

    new-instance v0, Lorg/jshybugger/hT;

    invoke-direct {v0}, Lorg/jshybugger/hT;-><init>()V

    invoke-virtual {v0}, Lorg/jshybugger/hT;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "method"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "Page.loadEventFired"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-static {}, Lorg/jshybugger/jk;->f()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/jshybugger/hV;->a(D)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V

    new-instance v0, Lorg/jshybugger/hT;

    invoke-direct {v0}, Lorg/jshybugger/hT;-><init>()V

    invoke-virtual {v0}, Lorg/jshybugger/hT;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "method"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "Page.frameStoppedLoading"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "params"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->d()Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "frameId"

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/String;)Lorg/jshybugger/hV;

    move-result-object v0

    const-string v1, "frameId"

    invoke-virtual {p3, v1}, Lorg/jshybugger/hQ;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/hV;->a(Ljava/lang/Object;)Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jshybugger/hV;->c()Lorg/jshybugger/hV;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jshybugger/jn;->a(Ljava/lang/String;)V

    goto/16 :goto_10f

    .line 272
    :cond_1e8
    const-string v0, "screencastFrame"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f5

    .line 274
    invoke-direct {p0, p1, p3}, Lorg/jshybugger/iU;->b(Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V

    goto/16 :goto_10f

    .line 277
    :cond_1f5
    invoke-super {p0, p1, p2, p3}, Lorg/jshybugger/ig;->b(Lorg/jshybugger/jn;Ljava/lang/String;Lorg/jshybugger/hQ;)Lorg/jshybugger/hQ;

    goto/16 :goto_10f
.end method

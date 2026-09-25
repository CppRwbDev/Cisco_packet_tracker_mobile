.class public Lcom/google/android/gms/internal/dk;
.super Lcom/google/android/gms/internal/ds$a;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ez;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/dk$b;,
        Lcom/google/android/gms/internal/dk$c;,
        Lcom/google/android/gms/internal/dk$a;
    }
.end annotation


# static fields
.field private static final ru:I


# instance fields
.field private md:Lcom/google/android/gms/internal/gv;

.field private final nr:Landroid/app/Activity;

.field private rA:Z

.field private rB:Landroid/widget/FrameLayout;

.field private rC:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private rD:Z

.field private rE:Z

.field private rF:Z

.field private rG:Landroid/widget/RelativeLayout;

.field private rv:Lcom/google/android/gms/internal/dm;

.field private rw:Lcom/google/android/gms/internal/do;

.field private rx:Lcom/google/android/gms/internal/dk$c;

.field private ry:Lcom/google/android/gms/internal/dp;

.field private rz:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/dk;->ru:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ds$a;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dk;->rA:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dk;->rD:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dk;->rE:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dk;->rF:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    return-void
.end method

.method private static a(IIII)Landroid/widget/RelativeLayout$LayoutParams;
    .registers 6

    const/4 v1, 0x0

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p2, p3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, p1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/dm;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.android.gms.ads.AdActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.google.android.gms.ads.internal.overlay.useClientJar"

    iget-object v2, p1, Lcom/google/android/gms/internal/dm;->lD:Lcom/google/android/gms/internal/gt;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/gt;->wG:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/dm;->a(Landroid/content/Intent;Lcom/google/android/gms/internal/dm;)V

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_24

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_24
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public U()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dk;->rz:Z

    return-void
.end method

.method public a(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 6

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dk;->rB:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rB:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rB:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->rB:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dk;->U()V

    iput-object p2, p0, Lcom/google/android/gms/internal/dk;->rC:Landroid/webkit/WebChromeClient$CustomViewCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dk;->rA:Z

    return-void
.end method

.method public b(IIII)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rw:Lcom/google/android/gms/internal/do;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rw:Lcom/google/android/gms/internal/do;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/dk;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/do;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    return-void
.end method

.method public bW()Lcom/google/android/gms/internal/do;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rw:Lcom/google/android/gms/internal/do;

    return-object v0
.end method

.method public bX()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dk;->rA:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget v0, v0, Lcom/google/android/gms/internal/dm;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dk;->setRequestedOrientation(I)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rB:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->rG:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dk;->U()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rB:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/google/android/gms/internal/dk;->rB:Landroid/widget/FrameLayout;

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rC:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rC:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v2, p0, Lcom/google/android/gms/internal/dk;->rC:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dk;->rA:Z

    return-void
.end method

.method public bY()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rG:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->ry:Lcom/google/android/gms/internal/dp;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dk;->n(Z)V

    return-void
.end method

.method bZ()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dk;->rE:Z

    if-eqz v0, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dk;->rE:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    if-eqz v0, :cond_41

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dk;->cb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rG:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rx:Lcom/google/android/gms/internal/dk$c;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gv;->x(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rx:Lcom/google/android/gms/internal/dk$c;

    iget-object v0, v0, Lcom/google/android/gms/internal/dk$c;->rJ:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    iget-object v2, p0, Lcom/google/android/gms/internal/dk;->rx:Lcom/google/android/gms/internal/dk$c;

    iget v2, v2, Lcom/google/android/gms/internal/dk$c;->index:I

    iget-object v3, p0, Lcom/google/android/gms/internal/dk;->rx:Lcom/google/android/gms/internal/dk$c;

    iget-object v3, v3, Lcom/google/android/gms/internal/dk$c;->rI:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :cond_41
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->rM:Lcom/google/android/gms/internal/dn;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->rM:Lcom/google/android/gms/internal/dn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dn;->ac()V

    goto :goto_c
.end method

.method public c(IIII)V
    .registers 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rw:Lcom/google/android/gms/internal/do;

    if-nez v0, :cond_24

    new-instance v0, Lcom/google/android/gms/internal/do;

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/do;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dk;->rw:Lcom/google/android/gms/internal/do;

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rG:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->rw:Lcom/google/android/gms/internal/do;

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/dk;->a(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gv;->dv()Lcom/google/android/gms/internal/gw;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/gw;->y(Z)V

    :cond_24
    return-void
.end method

.method ca()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gv;->ca()V

    return-void
.end method

.method cb()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gv;->cb()V

    return-void
.end method

.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public n(Z)V
    .registers 6

    const/4 v3, -0x2

    if-eqz p1, :cond_30

    const/16 v0, 0x32

    :goto_5
    new-instance v1, Lcom/google/android/gms/internal/dp;

    iget-object v2, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/dp;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/dk;->ry:Lcom/google/android/gms/internal/dp;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_33

    const/16 v0, 0xb

    :goto_1c
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->ry:Lcom/google/android/gms/internal/dp;

    iget-object v2, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-boolean v2, v2, Lcom/google/android/gms/internal/dm;->rQ:Z

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/dp;->o(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rG:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/google/android/gms/internal/dk;->ry:Lcom/google/android/gms/internal/dp;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_30
    const/16 v0, 0x20

    goto :goto_5

    :cond_33
    const/16 v0, 0x9

    goto :goto_1c
.end method

.method public o(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->ry:Lcom/google/android/gms/internal/dp;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->ry:Lcom/google/android/gms/internal/dp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dp;->o(Z)V

    :cond_9
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_a
    iput-boolean v0, p0, Lcom/google/android/gms/internal/dk;->rD:Z

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/dm;->b(Landroid/content/Intent;)Lcom/google/android/gms/internal/dm;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    if-nez v0, :cond_32

    new-instance v0, Lcom/google/android/gms/internal/dk$a;

    const-string v1, "Could not get info for ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dk$a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_24
    .catch Lcom/google/android/gms/internal/dk$a; {:try_start_c .. :try_end_24} :catch_24

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dk$a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gs;->W(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_31
    :goto_31
    return-void

    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->rW:Lcom/google/android/gms/internal/x;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->rW:Lcom/google/android/gms/internal/x;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/x;->lX:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dk;->rF:Z

    :goto_40
    if-nez p1, :cond_62

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->rM:Lcom/google/android/gms/internal/dn;

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->rM:Lcom/google/android/gms/internal/dn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/dn;->ad()V

    :cond_4f
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget v0, v0, Lcom/google/android/gms/internal/dm;->rT:I

    if-eq v0, v2, :cond_62

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->rL:Lcom/google/android/gms/internal/t;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->rL:Lcom/google/android/gms/internal/t;

    invoke-interface {v0}, Lcom/google/android/gms/internal/t;->onAdClicked()V

    :cond_62
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget v0, v0, Lcom/google/android/gms/internal/dm;->rT:I

    packed-switch v0, :pswitch_data_b0

    new-instance v0, Lcom/google/android/gms/internal/dk$a;

    const-string v1, "Could not determine ad overlay type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dk$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dk;->rF:Z

    goto :goto_40

    :pswitch_75
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dk;->p(Z)V

    goto :goto_31

    :pswitch_7a
    new-instance v0, Lcom/google/android/gms/internal/dk$c;

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v1, v1, Lcom/google/android/gms/internal/dm;->rN:Lcom/google/android/gms/internal/gv;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dk$c;-><init>(Lcom/google/android/gms/internal/gv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dk;->rx:Lcom/google/android/gms/internal/dk$c;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dk;->p(Z)V

    goto :goto_31

    :pswitch_8a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/dk;->p(Z)V

    goto :goto_31

    :pswitch_8f
    iget-boolean v0, p0, Lcom/google/android/gms/internal/dk;->rD:Z

    if-eqz v0, :cond_99

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_31

    :cond_99
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v1, v1, Lcom/google/android/gms/internal/dm;->rK:Lcom/google/android/gms/internal/dj;

    iget-object v2, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v2, v2, Lcom/google/android/gms/internal/dm;->rS:Lcom/google/android/gms/internal/dq;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/dh;->a(Landroid/content/Context;Lcom/google/android/gms/internal/dj;Lcom/google/android/gms/internal/dq;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_ae
    .catch Lcom/google/android/gms/internal/dk$a; {:try_start_32 .. :try_end_ae} :catch_24

    goto :goto_31

    nop

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_75
        :pswitch_7a
        :pswitch_8a
        :pswitch_8f
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rw:Lcom/google/android/gms/internal/do;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rw:Lcom/google/android/gms/internal/do;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/do;->destroy()V

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rG:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    :cond_14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dk;->bZ()V

    return-void
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rw:Lcom/google/android/gms/internal/do;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rw:Lcom/google/android/gms/internal/do;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/do;->pause()V

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dk;->bX()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rx:Lcom/google/android/gms/internal/dk$c;

    if-nez v0, :cond_21

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    invoke-static {v0}, Lcom/google/android/gms/internal/gj;->a(Landroid/webkit/WebView;)V

    :cond_21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/dk;->bZ()V

    return-void
.end method

.method public onRestart()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget v0, v0, Lcom/google/android/gms/internal/dm;->rT:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dk;->rD:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    invoke-static {v0}, Lcom/google/android/gms/internal/gj;->b(Landroid/webkit/WebView;)V

    :cond_1d
    return-void

    :cond_1e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/dk;->rD:Z

    goto :goto_14
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outBundle"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/dk;->rD:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dk;->bZ()V

    return-void
.end method

.method p(Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/dk$a;
        }
    .end annotation

    const/16 v3, 0x400

    const/4 v13, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dk;->rz:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/dk;->rF:Z

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v1, v1, Lcom/google/android/gms/internal/dm;->rW:Lcom/google/android/gms/internal/x;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/x;->mh:Z

    if-eqz v1, :cond_23

    :cond_20
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_23
    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget v1, v1, Lcom/google/android/gms/internal/dm;->orientation:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/dk;->setRequestedOrientation(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v1, v3, :cond_38

    const-string v1, "Enabling hardware acceleration on the AdActivity window."

    invoke-static {v1}, Lcom/google/android/gms/internal/gs;->S(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/gn;->a(Landroid/view/Window;)V

    :cond_38
    new-instance v0, Lcom/google/android/gms/internal/dk$b;

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    iget-object v3, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v3, v3, Lcom/google/android/gms/internal/dm;->rV:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/dk$b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/dk;->rG:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/dk;->rF:Z

    if-nez v0, :cond_fb

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rG:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    :goto_50
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->rG:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dk;->U()V

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->rN:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gv;->dv()Lcom/google/android/gms/internal/gw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gw;->dF()Z

    move-result v3

    if-eqz p1, :cond_125

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v1, v1, Lcom/google/android/gms/internal/dm;->rN:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gv;->Y()Lcom/google/android/gms/internal/ay;

    move-result-object v1

    iget-object v5, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v5, v5, Lcom/google/android/gms/internal/dm;->lD:Lcom/google/android/gms/internal/gt;

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/gv;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ay;ZZLcom/google/android/gms/internal/k;Lcom/google/android/gms/internal/gt;)Lcom/google/android/gms/internal/gv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gv;->dv()Lcom/google/android/gms/internal/gw;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v8, v0, Lcom/google/android/gms/internal/dm;->rO:Lcom/google/android/gms/internal/bw;

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v9, v0, Lcom/google/android/gms/internal/dm;->rS:Lcom/google/android/gms/internal/dq;

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v11, v0, Lcom/google/android/gms/internal/dm;->rU:Lcom/google/android/gms/internal/bz;

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->rN:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gv;->dv()Lcom/google/android/gms/internal/gw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gw;->dE()Lcom/google/android/gms/internal/v;

    move-result-object v12

    move-object v6, v4

    move-object v7, v4

    move v10, v2

    invoke-virtual/range {v5 .. v12}, Lcom/google/android/gms/internal/gw;->a(Lcom/google/android/gms/internal/t;Lcom/google/android/gms/internal/dn;Lcom/google/android/gms/internal/bw;Lcom/google/android/gms/internal/dq;ZLcom/google/android/gms/internal/bz;Lcom/google/android/gms/internal/v;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gv;->dv()Lcom/google/android/gms/internal/gw;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/dk$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/dk$1;-><init>(Lcom/google/android/gms/internal/dk;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gw;->a(Lcom/google/android/gms/internal/gw$a;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->rq:Ljava/lang/String;

    if-eqz v0, :cond_104

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v1, v1, Lcom/google/android/gms/internal/dm;->rq:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gv;->loadUrl(Ljava/lang/String;)V

    :goto_bd
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/gv;->a(Lcom/google/android/gms/internal/dk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gv;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_d5

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_d5

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_d5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/dk;->rF:Z

    if-eqz v0, :cond_e0

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    sget v1, Lcom/google/android/gms/internal/dk;->ru:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gv;->setBackgroundColor(I)V

    :cond_e0
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rG:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0, v1, v13, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_ec

    invoke-virtual {p0}, Lcom/google/android/gms/internal/dk;->ca()V

    :cond_ec
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/dk;->n(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gv;->dw()Z

    move-result v0

    if-eqz v0, :cond_fa

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/dk;->o(Z)V

    :cond_fa
    return-void

    :cond_fb
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rG:Landroid/widget/RelativeLayout;

    sget v1, Lcom/google/android/gms/internal/dk;->ru:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto/16 :goto_50

    :cond_104
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->rR:Ljava/lang/String;

    if-eqz v0, :cond_11d

    iget-object v5, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v6, v0, Lcom/google/android/gms/internal/dm;->rP:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v7, v0, Lcom/google/android/gms/internal/dm;->rR:Ljava/lang/String;

    const-string v8, "text/html"

    const-string v9, "UTF-8"

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Lcom/google/android/gms/internal/gv;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bd

    :cond_11d
    new-instance v0, Lcom/google/android/gms/internal/dk$a;

    const-string v1, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/dk$a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_125
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->rv:Lcom/google/android/gms/internal/dm;

    iget-object v0, v0, Lcom/google/android/gms/internal/dm;->rN:Lcom/google/android/gms/internal/gv;

    iput-object v0, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->md:Lcom/google/android/gms/internal/gv;

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gv;->setContext(Landroid/content/Context;)V

    goto :goto_bd
.end method

.method public setRequestedOrientation(I)V
    .registers 3
    .param p1, "requestedOrientation"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/dk;->nr:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

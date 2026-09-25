.class public abstract Lcom/google/android/gms/common/images/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/a$a;,
        Lcom/google/android/gms/common/images/a$c;,
        Lcom/google/android/gms/common/images/a$b;
    }
.end annotation


# instance fields
.field final KA:Lcom/google/android/gms/common/images/a$a;

.field protected KB:I

.field protected KC:I

.field protected KD:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

.field private KE:Z

.field private KF:Z

.field protected KG:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .registers 5

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/android/gms/common/images/a;->KB:I

    iput v1, p0, Lcom/google/android/gms/common/images/a;->KC:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/images/a;->KE:Z

    iput-boolean v1, p0, Lcom/google/android/gms/common/images/a;->KF:Z

    new-instance v0, Lcom/google/android/gms/common/images/a$a;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/images/a$a;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/a;->KA:Lcom/google/android/gms/common/images/a$a;

    iput p2, p0, Lcom/google/android/gms/common/images/a;->KC:I

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/google/android/gms/internal/iz;I)Landroid/graphics/drawable/Drawable;
    .registers 8

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, p0, Lcom/google/android/gms/common/images/a;->KG:I

    if-lez v0, :cond_29

    new-instance v2, Lcom/google/android/gms/internal/iz$a;

    iget v0, p0, Lcom/google/android/gms/common/images/a;->KG:I

    invoke-direct {v2, p3, v0}, Lcom/google/android/gms/internal/iz$a;-><init>(II)V

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/iz;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_28

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v3, p0, Lcom/google/android/gms/common/images/a;->KG:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_25

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_25
    invoke-virtual {p2, v2, v0}, Lcom/google/android/gms/internal/iz;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_28
    :goto_28
    return-object v0

    :cond_29
    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_28
.end method


# virtual methods
.method protected a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 4

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ix;->a(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/google/android/gms/internal/iw;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    instance-of v0, p1, Lcom/google/android/gms/internal/iw;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/google/android/gms/internal/iw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/iw;->gL()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_d
    :goto_d
    new-instance v0, Lcom/google/android/gms/internal/iw;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/iw;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_13
    move-object p1, v0

    goto :goto_d
.end method

.method a(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .registers 8

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/google/android/gms/common/internal/a;->f(Ljava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/common/images/a;->KG:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    invoke-static {p2}, Lcom/google/android/gms/internal/ix;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_e
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/android/gms/common/images/a;->KD:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/google/android/gms/common/images/a;->KD:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    iget-object v2, p0, Lcom/google/android/gms/common/images/a;->KA:Lcom/google/android/gms/common/images/a$a;

    iget-object v2, v2, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;->onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    :cond_24
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1, v3}, Lcom/google/android/gms/common/images/a;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method a(Landroid/content/Context;Lcom/google/android/gms/internal/iz;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/images/a;->KB:I

    if-eqz v1, :cond_c

    iget v0, p0, Lcom/google/android/gms/common/images/a;->KB:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Lcom/google/android/gms/internal/iz;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_c
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/google/android/gms/common/images/a;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method a(Landroid/content/Context;Lcom/google/android/gms/internal/iz;Z)V
    .registers 8

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/images/a;->KC:I

    if-eqz v1, :cond_c

    iget v0, p0, Lcom/google/android/gms/common/images/a;->KC:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/images/a;->a(Landroid/content/Context;Lcom/google/android/gms/internal/iz;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/common/images/a;->KD:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/google/android/gms/common/images/a;->KD:Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    iget-object v2, p0, Lcom/google/android/gms/common/images/a;->KA:Lcom/google/android/gms/common/images/a$a;

    iget-object v2, v2, Lcom/google/android/gms/common/images/a$a;->uri:Landroid/net/Uri;

    invoke-interface {v1, v2, v0, v3}, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;->onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    :cond_19
    invoke-virtual {p0, v0, p3, v3, v3}, Lcom/google/android/gms/common/images/a;->a(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method protected abstract a(Landroid/graphics/drawable/Drawable;ZZZ)V
.end method

.method public aw(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/common/images/a;->KC:I

    return-void
.end method

.method protected b(ZZ)Z
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/common/images/a;->KE:Z

    if-eqz v0, :cond_e

    if-nez p2, :cond_e

    if-eqz p1, :cond_c

    iget-boolean v0, p0, Lcom/google/android/gms/common/images/a;->KF:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

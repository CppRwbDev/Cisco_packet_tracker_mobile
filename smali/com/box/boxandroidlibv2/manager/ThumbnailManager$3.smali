.class Lcom/box/boxandroidlibv2/manager/ThumbnailManager$3;
.super Ljava/lang/Object;
.source "ThumbnailManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->setThumbnail(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

.field final synthetic val$drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$icon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/box/boxandroidlibv2/manager/ThumbnailManager;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "this$0"    # Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$3;->this$0:Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    iput-object p2, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$3;->val$icon:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$3;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$3;->val$icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 130
    iget-object v0, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$3;->val$icon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$3;->val$drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    :cond_b
    return-void
.end method

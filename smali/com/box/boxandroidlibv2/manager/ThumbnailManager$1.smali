.class Lcom/box/boxandroidlibv2/manager/ThumbnailManager$1;
.super Ljava/lang/Object;
.source "ThumbnailManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->setThumbnailIntoView(Landroid/widget/ImageView;Lcom/box/boxjavalibv2/dao/BoxItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

.field final synthetic val$boxItem:Lcom/box/boxjavalibv2/dao/BoxItem;

.field final synthetic val$iconHolder:Ljava/lang/ref/WeakReference;

.field final synthetic val$res:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/box/boxandroidlibv2/manager/ThumbnailManager;Ljava/lang/ref/WeakReference;Lcom/box/boxjavalibv2/dao/BoxItem;Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "this$0"    # Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$1;->this$0:Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    iput-object p2, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$1;->val$iconHolder:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$1;->val$boxItem:Lcom/box/boxjavalibv2/dao/BoxItem;

    iput-object p4, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$1;->val$res:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 87
    iget-object v2, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$1;->this$0:Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    iget-object v1, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$1;->val$iconHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$1;->this$0:Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    iget-object v4, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$1;->val$boxItem:Lcom/box/boxjavalibv2/dao/BoxItem;

    invoke-static {v3, v4}, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->access$000(Lcom/box/boxandroidlibv2/manager/ThumbnailManager;Lcom/box/boxjavalibv2/dao/BoxItem;)I

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->access$100(Lcom/box/boxandroidlibv2/manager/ThumbnailManager;Landroid/widget/ImageView;I)V

    .line 88
    iget-object v1, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$1;->this$0:Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    iget-object v2, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$1;->val$boxItem:Lcom/box/boxjavalibv2/dao/BoxItem;

    invoke-static {v1, v2}, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->access$200(Lcom/box/boxandroidlibv2/manager/ThumbnailManager;Lcom/box/boxjavalibv2/dao/BoxItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    .local v0, "cachedIcon":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_33

    .line 91
    iget-object v2, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$1;->this$0:Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    iget-object v1, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$1;->val$iconHolder:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$1;->val$res:Landroid/content/res/Resources;

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {v2, v1, v3}, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->access$300(Lcom/box/boxandroidlibv2/manager/ThumbnailManager;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 93
    :cond_33
    return-void
.end method

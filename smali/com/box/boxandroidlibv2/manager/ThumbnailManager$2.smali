.class Lcom/box/boxandroidlibv2/manager/ThumbnailManager$2;
.super Ljava/lang/Object;
.source "ThumbnailManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->setThumbnail(Landroid/widget/ImageView;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

.field final synthetic val$icon:Landroid/widget/ImageView;

.field final synthetic val$imageRes:I


# direct methods
.method constructor <init>(Lcom/box/boxandroidlibv2/manager/ThumbnailManager;Landroid/widget/ImageView;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$2;->this$0:Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    iput-object p2, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$2;->val$icon:Landroid/widget/ImageView;

    iput p3, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$2;->val$imageRes:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$2;->val$icon:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 111
    iget-object v0, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$2;->val$icon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$2;->val$imageRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    :cond_b
    return-void
.end method

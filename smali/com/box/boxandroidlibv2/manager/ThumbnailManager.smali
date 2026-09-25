.class public Lcom/box/boxandroidlibv2/manager/ThumbnailManager;
.super Ljava/lang/Object;
.source "ThumbnailManager.java"


# static fields
.field private static final THUMBNAIL_FILE_EXTENSION:Ljava/lang/String; = ".boxthumbnail"

.field private static final THUMBNAIL_FILE_PREFIX:Ljava/lang/String; = "thumbnail_"


# instance fields
.field private mCacheDirectory:Ljava/io/File;

.field private mHandler:Landroid/os/Handler;

.field private thumbnailManagerExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .param p1, "cacheDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->mCacheDirectory:Ljava/io/File;

    .line 66
    iget-object v0, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->mCacheDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 67
    iget-object v0, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->mCacheDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->mCacheDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_20

    .line 68
    :cond_1a
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 70
    :cond_20
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->mHandler:Landroid/os/Handler;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "cacheDirectoryPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;-><init>(Ljava/io/File;)V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/box/boxandroidlibv2/manager/ThumbnailManager;Lcom/box/boxjavalibv2/dao/BoxItem;)I
    .registers 3
    .param p0, "x0"    # Lcom/box/boxandroidlibv2/manager/ThumbnailManager;
    .param p1, "x1"    # Lcom/box/boxjavalibv2/dao/BoxItem;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->getDefaultIconResource(Lcom/box/boxjavalibv2/dao/BoxItem;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/box/boxandroidlibv2/manager/ThumbnailManager;Landroid/widget/ImageView;I)V
    .registers 3
    .param p0, "x0"    # Lcom/box/boxandroidlibv2/manager/ThumbnailManager;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->setThumbnail(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/box/boxandroidlibv2/manager/ThumbnailManager;Lcom/box/boxjavalibv2/dao/BoxItem;)Landroid/graphics/Bitmap;
    .registers 3
    .param p0, "x0"    # Lcom/box/boxandroidlibv2/manager/ThumbnailManager;
    .param p1, "x1"    # Lcom/box/boxjavalibv2/dao/BoxItem;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->getCachedIcon(Lcom/box/boxjavalibv2/dao/BoxItem;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/box/boxandroidlibv2/manager/ThumbnailManager;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p0, "x0"    # Lcom/box/boxandroidlibv2/manager/ThumbnailManager;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->setThumbnail(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getCachedFile(Lcom/box/boxjavalibv2/dao/BoxItem;)Ljava/io/File;
    .registers 3
    .param p1, "boxItem"    # Lcom/box/boxjavalibv2/dao/BoxItem;

    .prologue
    .line 178
    invoke-virtual {p1}, Lcom/box/boxjavalibv2/dao/BoxItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->getThumbnailForFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getCachedIcon(Lcom/box/boxjavalibv2/dao/BoxItem;)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "boxItem"    # Lcom/box/boxjavalibv2/dao/BoxItem;

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->getCachedFile(Lcom/box/boxjavalibv2/dao/BoxItem;)Ljava/io/File;

    move-result-object v1

    .line 163
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 164
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 167
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private getDefaultIconResource(Lcom/box/boxjavalibv2/dao/BoxItem;)I
    .registers 3
    .param p1, "boxItem"    # Lcom/box/boxjavalibv2/dao/BoxItem;

    .prologue
    .line 146
    instance-of v0, p1, Lcom/box/boxjavalibv2/dao/BoxFolder;

    if-eqz v0, :cond_7

    .line 147
    sget v0, Lcom/box/boxandroidlibv2/R$drawable;->boxandroidlibv2_icon_folder_personal:I

    .line 150
    :goto_6
    return v0

    :cond_7
    sget v0, Lcom/box/boxandroidlibv2/R$drawable;->boxandroidlibv2_generic:I

    goto :goto_6
.end method

.method private getThumbnailExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 9

    .prologue
    .line 223
    iget-object v0, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->thumbnailManagerExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->thumbnailManagerExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 224
    :cond_c
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x4

    const/16 v3, 0xa

    const-wide/16 v4, 0xe10

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->thumbnailManagerExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 226
    :cond_1f
    iget-object v0, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->thumbnailManagerExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method private setThumbnail(Landroid/widget/ImageView;I)V
    .registers 5
    .param p1, "icon"    # Landroid/widget/ImageView;
    .param p2, "imageRes"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$2;-><init>(Lcom/box/boxandroidlibv2/manager/ThumbnailManager;Landroid/widget/ImageView;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 115
    return-void
.end method

.method private setThumbnail(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "icon"    # Landroid/widget/ImageView;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$3;-><init>(Lcom/box/boxandroidlibv2/manager/ThumbnailManager;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    return-void
.end method


# virtual methods
.method public deleteFilesInCacheDirectory()V
    .registers 4

    .prologue
    .line 205
    iget-object v2, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->mCacheDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 206
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_1c

    .line 207
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_9
    array-length v2, v0

    if-ge v1, v2, :cond_1c

    .line 208
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 209
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 207
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 213
    .end local v1    # "index":I
    :cond_1c
    return-void
.end method

.method public getCacheDirectory()Ljava/io/File;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->mCacheDirectory:Ljava/io/File;

    return-object v0
.end method

.method public getThumbnailForFile(Ljava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "fileId"    # Ljava/lang/String;

    .prologue
    .line 190
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->getCacheDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thumbnail_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".boxthumbnail"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 191
    .local v0, "file":Ljava/io/File;
    return-object v0
.end method

.method public setThumbnailIntoView(Landroid/widget/ImageView;Lcom/box/boxjavalibv2/dao/BoxItem;)V
    .registers 7
    .param p1, "icon"    # Landroid/widget/ImageView;
    .param p2, "boxItem"    # Lcom/box/boxjavalibv2/dao/BoxItem;

    .prologue
    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 83
    .local v0, "iconHolder":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/widget/ImageView;>;"
    invoke-virtual {p1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 84
    .local v1, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->getThumbnailExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    new-instance v3, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$1;

    invoke-direct {v3, p0, v0, p2, v1}, Lcom/box/boxandroidlibv2/manager/ThumbnailManager$1;-><init>(Lcom/box/boxandroidlibv2/manager/ThumbnailManager;Ljava/lang/ref/WeakReference;Lcom/box/boxjavalibv2/dao/BoxItem;Landroid/content/res/Resources;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

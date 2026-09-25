.class public Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationBoxListItemAdapter;
.super Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;
.source "FolderNavigationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FolderNavigationBoxListItemAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;


# direct methods
.method public constructor <init>(Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;Landroid/app/Activity;Lcom/box/boxandroidlibv2/manager/ThumbnailManager;)V
    .registers 4
    .param p1, "this$0"    # Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;
    .param p2, "context"    # Landroid/app/Activity;
    .param p3, "manager"    # Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationBoxListItemAdapter;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    .line 397
    invoke-direct {p0, p2, p3}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;-><init>(Landroid/app/Activity;Lcom/box/boxandroidlibv2/manager/ThumbnailManager;)V

    .line 398
    return-void
.end method


# virtual methods
.method protected update(Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V
    .registers 8
    .param p1, "holder"    # Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;
    .param p2, "listItem"    # Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    .prologue
    .line 402
    invoke-super {p0, p1, p2}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->update(Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V

    .line 404
    invoke-virtual {p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_22

    .line 405
    invoke-virtual {p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getTask()Ljava/util/concurrent/FutureTask;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v1

    if-nez v1, :cond_21

    .line 406
    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationBoxListItemAdapter;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v1}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getApiExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getTask()Ljava/util/concurrent/FutureTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 437
    :cond_21
    :goto_21
    return-void

    .line 410
    :cond_22
    invoke-virtual {p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2f

    invoke-virtual {p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getType()I

    move-result v1

    if-nez v1, :cond_21

    .line 412
    :cond_2f
    invoke-virtual {p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getBoxItem()Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v1

    instance-of v1, v1, Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;

    if-eqz v1, :cond_21

    .line 413
    invoke-virtual {p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getTask()Ljava/util/concurrent/FutureTask;

    move-result-object v1

    if-nez v1, :cond_7c

    .line 414
    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationBoxListItemAdapter;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-static {v1}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->access$100(Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;)Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    move-result-object v1

    invoke-virtual {p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getBoxItem()Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/box/boxjavalibv2/dao/BoxItem;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationBoxListItemAdapter;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    .line 415
    invoke-static {v3}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->access$000(Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;)Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    move-result-object v3

    invoke-virtual {p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getBoxItem()Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/box/boxjavalibv2/dao/BoxItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->getThumbnailForFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 414
    invoke-virtual {v1, v2, v3, p1}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->downloadThumbnail(Ljava/lang/String;Ljava/io/File;Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;)Ljava/util/concurrent/FutureTask;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->setTask(Ljava/util/concurrent/FutureTask;)V

    .line 431
    :cond_64
    :goto_64
    invoke-virtual {p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getTask()Ljava/util/concurrent/FutureTask;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v1

    if-nez v1, :cond_21

    .line 432
    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationBoxListItemAdapter;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v1}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getThumbnailApiExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getTask()Ljava/util/concurrent/FutureTask;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_21

    .line 417
    :cond_7c
    invoke-virtual {p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getTask()Ljava/util/concurrent/FutureTask;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 419
    :try_start_86
    invoke-virtual {p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getTask()Ljava/util/concurrent/FutureTask;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 421
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "PickerActivity_ArgSuccess"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_64

    .line 422
    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationBoxListItemAdapter;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-static {v1}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->access$100(Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;)Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    move-result-object v1

    invoke-virtual {p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getBoxItem()Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v2

    invoke-virtual {v2}, Lcom/box/boxjavalibv2/dao/BoxItem;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationBoxListItemAdapter;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    .line 423
    invoke-static {v3}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->access$000(Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;)Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    move-result-object v3

    invoke-virtual {p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getBoxItem()Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/box/boxjavalibv2/dao/BoxItem;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->getThumbnailForFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 422
    invoke-virtual {v1, v2, v3, p1}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->downloadThumbnail(Ljava/lang/String;Ljava/io/File;Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;)Ljava/util/concurrent/FutureTask;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->setTask(Ljava/util/concurrent/FutureTask;)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_c0} :catch_c1

    goto :goto_64

    .line 426
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_c1
    move-exception v1

    goto :goto_64
.end method

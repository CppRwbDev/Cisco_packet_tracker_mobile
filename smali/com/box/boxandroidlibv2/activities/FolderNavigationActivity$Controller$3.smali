.class Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;
.super Ljava/lang/Object;
.source "FolderNavigationActivity.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->downloadThumbnail(Ljava/lang/String;Ljava/io/File;Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;)Ljava/util/concurrent/FutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

.field final synthetic val$downloadLocation:Ljava/io/File;

.field final synthetic val$fileId:Ljava/lang/String;

.field final synthetic val$holder:Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;Ljava/lang/String;Ljava/io/File;Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;)V
    .registers 5
    .param p1, "this$1"    # Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iput-object p2, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->val$fileId:Ljava/lang/String;

    iput-object p3, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->val$downloadLocation:Ljava/io/File;

    iput-object p4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->val$holder:Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/content/Intent;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 575
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 576
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "PickerActivity_DownloadedFileThumbnail"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 577
    const-string v4, "PickerActivity_FileId"

    iget-object v5, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->val$fileId:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    const-string v4, "PickerActivity_ArgSuccess"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 581
    :try_start_17
    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->val$downloadLocation:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3d

    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->val$downloadLocation:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3d

    .line 582
    const-string v4, "PickerActivity_ArgSuccess"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_31
    .catch Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException; {:try_start_17 .. :try_end_31} :catch_c8
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_17 .. :try_end_31} :catch_dd
    .catch Lcom/box/boxjavalibv2/exceptions/BoxServerException; {:try_start_17 .. :try_end_31} :catch_f1
    .catchall {:try_start_17 .. :try_end_31} :catchall_105

    .line 615
    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v4, v4, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 618
    :goto_3c
    return-object v2

    .line 586
    :cond_3d
    :try_start_3d
    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->val$holder:Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->getBoxListItem()Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    move-result-object v4

    if-eqz v4, :cond_69

    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->val$holder:Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->getBoxListItem()Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getBoxItem()Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v4

    instance-of v4, v4, Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;

    if-eqz v4, :cond_69

    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->val$holder:Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;

    .line 587
    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->getBoxListItem()Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getBoxItem()Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v4

    invoke-virtual {v4}, Lcom/box/boxjavalibv2/dao/BoxItem;->getId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->val$fileId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7b

    .line 588
    :cond_69
    const-string v4, "PickerActivity_ArgSuccess"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_6f
    .catch Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException; {:try_start_3d .. :try_end_6f} :catch_c8
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_3d .. :try_end_6f} :catch_dd
    .catch Lcom/box/boxjavalibv2/exceptions/BoxServerException; {:try_start_3d .. :try_end_6f} :catch_f1
    .catchall {:try_start_3d .. :try_end_6f} :catchall_105

    .line 615
    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v4, v4, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_3c

    .line 592
    :cond_7b
    :try_start_7b
    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v4, v4, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    iget-object v4, v4, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mClient:Lcom/box/boxandroidlibv2/BoxAndroidClient;

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/BoxAndroidClient;->getFilesManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxFilesManager;

    move-result-object v4

    iget-object v5, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->val$fileId:Ljava/lang/String;

    const-string v6, "png"

    invoke-static {}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;->previewRequestObject()Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;

    move-result-object v7

    invoke-interface {v4, v5, v6, v7}, Lcom/box/boxjavalibv2/resourcemanagers/IBoxFilesManager;->getThumbnail(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxImageRequestObject;)Lcom/box/boxjavalibv2/dao/BoxThumbnail;

    move-result-object v4

    invoke-virtual {v4}, Lcom/box/boxjavalibv2/dao/BoxThumbnail;->getContent()Ljava/io/InputStream;

    move-result-object v1

    .line 593
    .local v1, "input":Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->val$downloadLocation:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_9c
    .catch Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException; {:try_start_7b .. :try_end_9c} :catch_c8
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_7b .. :try_end_9c} :catch_dd
    .catch Lcom/box/boxjavalibv2/exceptions/BoxServerException; {:try_start_7b .. :try_end_9c} :catch_f1
    .catchall {:try_start_7b .. :try_end_9c} :catchall_105

    .line 595
    .local v3, "output":Ljava/io/FileOutputStream;
    :try_start_9c
    invoke-static {v1, v3}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_9f
    .catchall {:try_start_9c .. :try_end_9f} :catchall_c0

    .line 598
    :try_start_9f
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 599
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    .line 601
    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->val$downloadLocation:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b3

    .line 602
    const-string v4, "PickerActivity_ArgSuccess"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_b3
    .catch Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException; {:try_start_9f .. :try_end_b3} :catch_c8
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_9f .. :try_end_b3} :catch_dd
    .catch Lcom/box/boxjavalibv2/exceptions/BoxServerException; {:try_start_9f .. :try_end_b3} :catch_f1
    .catchall {:try_start_9f .. :try_end_b3} :catchall_105

    .line 615
    :cond_b3
    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v4, v4, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_3c

    .line 598
    :catchall_c0
    move-exception v4

    :try_start_c1
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 599
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v4
    :try_end_c8
    .catch Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException; {:try_start_c1 .. :try_end_c8} :catch_c8
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_c1 .. :try_end_c8} :catch_dd
    .catch Lcom/box/boxjavalibv2/exceptions/BoxServerException; {:try_start_c1 .. :try_end_c8} :catch_f1
    .catchall {:try_start_c1 .. :try_end_c8} :catchall_105

    .line 605
    .end local v1    # "input":Ljava/io/InputStream;
    .end local v3    # "output":Ljava/io/FileOutputStream;
    :catch_c8
    move-exception v0

    .line 606
    .local v0, "e":Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
    :try_start_c9
    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v4, v4, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->handleAuthenticationError()V
    :try_end_d0
    .catchall {:try_start_c9 .. :try_end_d0} :catchall_105

    .line 615
    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v4, v4, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_3c

    .line 608
    .end local v0    # "e":Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
    :catch_dd
    move-exception v0

    .line 609
    .local v0, "e":Lcom/box/restclientv2/exceptions/BoxRestException;
    :try_start_de
    const-string v4, "PickerActivity_ArgSuccess"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_e4
    .catchall {:try_start_de .. :try_end_e4} :catchall_105

    .line 615
    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v4, v4, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_3c

    .line 611
    .end local v0    # "e":Lcom/box/restclientv2/exceptions/BoxRestException;
    :catch_f1
    move-exception v0

    .line 612
    .local v0, "e":Lcom/box/boxjavalibv2/exceptions/BoxServerException;
    :try_start_f2
    const-string v4, "PickerActivity_ArgSuccess"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_f8
    .catchall {:try_start_f2 .. :try_end_f8} :catchall_105

    .line 615
    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v4, v4, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto/16 :goto_3c

    .end local v0    # "e":Lcom/box/boxjavalibv2/exceptions/BoxServerException;
    :catchall_105
    move-exception v4

    iget-object v5, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v5, v5, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v5}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    throw v4
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;->call()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

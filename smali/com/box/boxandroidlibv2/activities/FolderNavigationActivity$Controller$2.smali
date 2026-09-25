.class Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$2;
.super Ljava/lang/Object;
.source "FolderNavigationActivity.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->fetchFolderItems(Ljava/lang/String;II)Ljava/util/concurrent/FutureTask;
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

.field final synthetic val$folderId:Ljava/lang/String;

.field final synthetic val$limit:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;IILjava/lang/String;)V
    .registers 5
    .param p1, "this$1"    # Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$2;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iput p2, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$2;->val$offset:I

    iput p3, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$2;->val$limit:I

    iput-object p4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$2;->val$folderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/content/Intent;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 516
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 517
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "PickerActivity_FetchedFolderItems"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 518
    const-string v5, "PickerActivity_ArgOffset"

    iget v6, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$2;->val$offset:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    const-string v5, "PickerActivity_Limit"

    iget v6, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$2;->val$limit:I

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 520
    const-string v5, "PickerActivity_FolderId"

    iget-object v6, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$2;->val$folderId:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    :try_start_1f
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v3, "itemFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "name"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    const-string v5, "size"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    const-string v5, "owned_by"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    iget v5, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$2;->val$limit:I

    iget v6, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$2;->val$offset:I

    invoke-static {v5, v6}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;->pagingRequestObject(II)Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;

    move-result-object v4

    .line 530
    .local v4, "obj":Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;
    invoke-virtual {v4}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->addFields(Ljava/util/List;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    .line 531
    iget-object v5, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$2;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v5, v5, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    iget-object v5, v5, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mClient:Lcom/box/boxandroidlibv2/BoxAndroidClient;

    invoke-virtual {v5}, Lcom/box/boxandroidlibv2/BoxAndroidClient;->getFoldersManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxFoldersManager;

    move-result-object v5

    iget-object v6, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$2;->val$folderId:Ljava/lang/String;

    invoke-interface {v5, v6, v4}, Lcom/box/boxjavalibv2/resourcemanagers/IBoxFoldersManager;->getFolderItems(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;)Lcom/box/boxjavalibv2/dao/BoxCollection;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;

    .line 532
    .local v0, "bc":Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;
    if-eqz v0, :cond_61

    .line 533
    const-string v5, "PickerActivity_ArgSuccess"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 534
    const-string v5, "PickerActivity_Collection"

    invoke-virtual {v2, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_61
    .catch Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException; {:try_start_1f .. :try_end_61} :catch_6d
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_1f .. :try_end_61} :catch_84
    .catch Lcom/box/boxjavalibv2/exceptions/BoxServerException; {:try_start_1f .. :try_end_61} :catch_9a
    .catchall {:try_start_1f .. :try_end_61} :catchall_b0

    .line 554
    :cond_61
    iget-object v5, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$2;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v5, v5, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v5}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 557
    .end local v0    # "bc":Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;
    .end local v3    # "itemFields":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "obj":Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;
    :goto_6c
    return-object v2

    .line 539
    :catch_6d
    move-exception v1

    .line 540
    .local v1, "e":Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
    :try_start_6e
    invoke-virtual {v1}, Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;->printStackTrace()V

    .line 541
    iget-object v5, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$2;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v5, v5, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v5}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->handleAuthenticationError()V
    :try_end_78
    .catchall {:try_start_6e .. :try_end_78} :catchall_b0

    .line 554
    iget-object v5, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$2;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v5, v5, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v5}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_6c

    .line 543
    .end local v1    # "e":Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
    :catch_84
    move-exception v1

    .line 544
    .local v1, "e":Lcom/box/restclientv2/exceptions/BoxRestException;
    :try_start_85
    invoke-virtual {v1}, Lcom/box/restclientv2/exceptions/BoxRestException;->printStackTrace()V

    .line 546
    const-string v5, "PickerActivity_ArgSuccess"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_b0

    .line 554
    iget-object v5, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$2;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v5, v5, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v5}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_6c

    .line 548
    .end local v1    # "e":Lcom/box/restclientv2/exceptions/BoxRestException;
    :catch_9a
    move-exception v1

    .line 549
    .local v1, "e":Lcom/box/boxjavalibv2/exceptions/BoxServerException;
    :try_start_9b
    invoke-virtual {v1}, Lcom/box/boxjavalibv2/exceptions/BoxServerException;->printStackTrace()V

    .line 551
    const-string v5, "PickerActivity_ArgSuccess"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_a4
    .catchall {:try_start_9b .. :try_end_a4} :catchall_b0

    .line 554
    iget-object v5, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$2;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v5, v5, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v5}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_6c

    .end local v1    # "e":Lcom/box/boxjavalibv2/exceptions/BoxServerException;
    :catchall_b0
    move-exception v5

    iget-object v6, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$2;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v6, v6, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v6}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    throw v5
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 512
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$2;->call()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

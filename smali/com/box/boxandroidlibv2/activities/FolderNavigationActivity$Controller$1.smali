.class Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$1;
.super Ljava/lang/Object;
.source "FolderNavigationActivity.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->fetchFolder(Ljava/lang/String;)Ljava/util/concurrent/FutureTask;
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


# direct methods
.method constructor <init>(Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$1"    # Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$1;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iput-object p2, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$1;->val$folderId:Ljava/lang/String;

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
    .line 466
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 467
    .local v3, "intent":Landroid/content/Intent;
    const-string v4, "PickerActivity_FetchedFolder"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    const-string v4, "PickerActivity_FolderId"

    iget-object v5, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$1;->val$folderId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 470
    :try_start_11
    new-instance v1, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;

    invoke-direct {v1}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;-><init>()V

    .line 471
    .local v1, "defaultRequest":Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    invoke-virtual {v1}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v4

    const-string v5, "nav"

    iget-object v6, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$1;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v6, v6, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    iget v6, v6, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mNavNumber:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    .line 472
    invoke-virtual {v1}, Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;->getRequestExtras()Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    move-result-object v4

    const-string v5, "sdk_source"

    iget-object v6, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$1;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v6, v6, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v6}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getSourceType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;->addQueryParam(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxRequestExtras;

    .line 473
    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$1;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v4, v4, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    iget-object v4, v4, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mClient:Lcom/box/boxandroidlibv2/BoxAndroidClient;

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/BoxAndroidClient;->getFoldersManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxFoldersManager;

    move-result-object v4

    iget-object v5, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$1;->val$folderId:Ljava/lang/String;

    invoke-interface {v4, v5, v1}, Lcom/box/boxjavalibv2/resourcemanagers/IBoxFoldersManager;->getFolder(Ljava/lang/String;Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFolder;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    .line 474
    .local v0, "bf":Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;
    if-eqz v0, :cond_59

    .line 475
    const-string v4, "PickerActivity_ArgSuccess"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 476
    const-string v4, "PickerActivity_Folde"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_59
    .catch Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException; {:try_start_11 .. :try_end_59} :catch_65
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_11 .. :try_end_59} :catch_7c
    .catch Lcom/box/boxjavalibv2/exceptions/BoxServerException; {:try_start_11 .. :try_end_59} :catch_92
    .catchall {:try_start_11 .. :try_end_59} :catchall_a8

    .line 495
    :cond_59
    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$1;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v4, v4, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 498
    .end local v0    # "bf":Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;
    .end local v1    # "defaultRequest":Lcom/box/restclientv2/requestsbase/BoxDefaultRequestObject;
    :goto_64
    return-object v3

    .line 480
    :catch_65
    move-exception v2

    .line 481
    .local v2, "e":Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
    :try_start_66
    invoke-virtual {v2}, Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;->printStackTrace()V

    .line 482
    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$1;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v4, v4, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->handleAuthenticationError()V
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_a8

    .line 495
    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$1;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v4, v4, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_64

    .line 484
    .end local v2    # "e":Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
    :catch_7c
    move-exception v2

    .line 485
    .local v2, "e":Lcom/box/restclientv2/exceptions/BoxRestException;
    :try_start_7d
    invoke-virtual {v2}, Lcom/box/restclientv2/exceptions/BoxRestException;->printStackTrace()V

    .line 487
    const-string v4, "PickerActivity_ArgSuccess"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_a8

    .line 495
    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$1;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v4, v4, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_64

    .line 489
    .end local v2    # "e":Lcom/box/restclientv2/exceptions/BoxRestException;
    :catch_92
    move-exception v2

    .line 490
    .local v2, "e":Lcom/box/boxjavalibv2/exceptions/BoxServerException;
    :try_start_93
    invoke-virtual {v2}, Lcom/box/boxjavalibv2/exceptions/BoxServerException;->printStackTrace()V

    .line 492
    const-string v4, "PickerActivity_ArgSuccess"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_9c
    .catchall {:try_start_93 .. :try_end_9c} :catchall_a8

    .line 495
    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$1;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v4, v4, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_64

    .end local v2    # "e":Lcom/box/boxjavalibv2/exceptions/BoxServerException;
    :catchall_a8
    move-exception v4

    iget-object v5, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$1;->this$1:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v5, v5, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v5}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

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
    .line 462
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$1;->call()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

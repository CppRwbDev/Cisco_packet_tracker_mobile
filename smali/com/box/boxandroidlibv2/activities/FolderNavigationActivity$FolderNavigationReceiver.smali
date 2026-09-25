.class public Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FolderNavigationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FolderNavigationReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;


# direct methods
.method protected constructor <init>(Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationReceiver;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 376
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PickerActivity_FetchedFolder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 377
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationReceiver;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v0, p2}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->onFetchedFolder(Landroid/content/Intent;)V

    .line 385
    :cond_11
    :goto_11
    return-void

    .line 379
    :cond_12
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PickerActivity_FetchedFolderItems"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 380
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationReceiver;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v0, p2}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->onFetchedFolderItems(Landroid/content/Intent;)V

    goto :goto_11

    .line 382
    :cond_24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PickerActivity_DownloadedFileThumbnail"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 383
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationReceiver;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-virtual {v0, p2}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->onDownloadedThumbnail(Landroid/content/Intent;)V

    goto :goto_11
.end method

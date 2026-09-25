.class public Lcom/box/boxandroidlibv2/activities/FolderPickerActivity$FolderPickerBoxListItemAdapter;
.super Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationBoxListItemAdapter;
.source "FolderPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FolderPickerBoxListItemAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;


# direct methods
.method public constructor <init>(Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;Landroid/app/Activity;Lcom/box/boxandroidlibv2/manager/ThumbnailManager;)V
    .registers 4
    .param p1, "this$0"    # Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;
    .param p2, "context"    # Landroid/app/Activity;
    .param p3, "manager"    # Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity$FolderPickerBoxListItemAdapter;->this$0:Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;

    .line 130
    invoke-direct {p0, p1, p2, p3}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationBoxListItemAdapter;-><init>(Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;Landroid/app/Activity;Lcom/box/boxandroidlibv2/manager/ThumbnailManager;)V

    .line 131
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V
    .registers 4
    .param p1, "listItem"    # Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getType()I
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_e

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    .line 145
    :goto_8
    monitor-exit p0

    return-void

    .line 144
    :cond_a
    :try_start_a
    invoke-super {p0, p1}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationBoxListItemAdapter;->add(Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_e

    goto :goto_8

    .line 140
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 127
    check-cast p1, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    invoke-virtual {p0, p1}, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity$FolderPickerBoxListItemAdapter;->add(Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V

    return-void
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity$FolderPickerBoxListItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    invoke-virtual {v0}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getBoxItem()Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {p0, p1}, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity$FolderPickerBoxListItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    invoke-virtual {v0}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getBoxItem()Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v0

    instance-of v0, v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

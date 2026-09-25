.class public Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;
.super Ljava/lang/Object;
.source "FolderNavigationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Controller"
.end annotation


# static fields
.field public static final ACTION_DOWNLOADED_FILE_THUMBNAIL:Ljava/lang/String; = "PickerActivity_DownloadedFileThumbnail"

.field public static final ACTION_FETCHED_FOLDER:Ljava/lang/String; = "PickerActivity_FetchedFolder"

.field public static final ACTION_FETCHED_FOLDER_ITEMS:Ljava/lang/String; = "PickerActivity_FetchedFolderItems"

.field public static final ARG_BOX_COLLECTION:Ljava/lang/String; = "PickerActivity_Collection"

.field public static final ARG_BOX_FOLDER:Ljava/lang/String; = "PickerActivity_Folde"

.field public static final ARG_FILE_ID:Ljava/lang/String; = "PickerActivity_FileId"

.field public static final ARG_FOLDER_ID:Ljava/lang/String; = "PickerActivity_FolderId"

.field public static final ARG_LIMIT:Ljava/lang/String; = "PickerActivity_Limit"

.field public static final ARG_OFFSET:Ljava/lang/String; = "PickerActivity_ArgOffset"

.field public static final ARG_SUCCESS:Ljava/lang/String; = "PickerActivity_ArgSuccess"


# instance fields
.field final synthetic this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;


# direct methods
.method public constructor <init>(Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    .prologue
    .line 441
    iput-object p1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->this$0:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadThumbnail(Ljava/lang/String;Ljava/io/File;Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;)Ljava/util/concurrent/FutureTask;
    .registers 6
    .param p1, "fileId"    # Ljava/lang/String;
    .param p2, "downloadLocation"    # Ljava/io/File;
    .param p3, "holder"    # Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;",
            ")",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 571
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$3;-><init>(Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;Ljava/lang/String;Ljava/io/File;Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public fetchFolder(Ljava/lang/String;)Ljava/util/concurrent/FutureTask;
    .registers 4
    .param p1, "folderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 462
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$1;

    invoke-direct {v1, p0, p1}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$1;-><init>(Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public fetchFolderItems(Ljava/lang/String;II)Ljava/util/concurrent/FutureTask;
    .registers 6
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/concurrent/FutureTask",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 512
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$2;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller$2;-><init>(Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;IILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.class public Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;
.super Landroid/app/Activity;
.source "FolderNavigationActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;,
        Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationBoxListItemAdapter;,
        Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationReceiver;
    }
.end annotation


# static fields
.field protected static final EXTRA_BOX_CLIENT_ID:Ljava/lang/String; = "extraClientId"

.field protected static final EXTRA_BOX_CLIENT_OAUTH:Ljava/lang/String; = "extraClient_oauth"

.field protected static final EXTRA_BOX_CLIENT_SECRET:Ljava/lang/String; = "extraClientSecret"

.field protected static final EXTRA_FOLDER_ID:Ljava/lang/String; = "extraFolderId"

.field protected static final EXTRA_NAV_NUMBER:Ljava/lang/String; = "nav"

.field protected static final EXTRA_SOURCE_TYPE:Ljava/lang/String; = "sdk_source"


# instance fields
.field private apiExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field protected clientId:Ljava/lang/String;

.field protected clientSecret:Ljava/lang/String;

.field protected mClient:Lcom/box/boxandroidlibv2/BoxAndroidClient;

.field private mController:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

.field private mControllerReceiver:Landroid/content/BroadcastReceiver;

.field protected mCurrentFolderId:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field protected mNavNumber:I

.field private mThumbnailManager:Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

.field private thumbnailApiExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    const-string v0, "0"

    iput-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mCurrentFolderId:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mNavNumber:I

    return-void
.end method

.method static synthetic access$000(Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;)Lcom/box/boxandroidlibv2/manager/ThumbnailManager;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mThumbnailManager:Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;)Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mController:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    return-object v0
.end method

.method public static getLaunchIntent(Landroid/content/Context;Ljava/lang/String;Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "oauth"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;
    .param p3, "clientId"    # Ljava/lang/String;
    .param p4, "clientSecret"    # Ljava/lang/String;

    .prologue
    .line 245
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extraFolderId"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v1, "extraClient_oauth"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 248
    const-string v1, "extraClientId"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v1, "extraClientSecret"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    return-object v0
.end method


# virtual methods
.method protected getApiExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 9

    .prologue
    .line 341
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->apiExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->apiExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 342
    :cond_c
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x2

    const/16 v3, 0xa

    const-wide/16 v4, 0xe10

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->apiExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 344
    :cond_1f
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->apiExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method protected getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 200
    sget v0, Lcom/box/boxandroidlibv2/R$id;->PickerListView:I

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method public getLocalBroadcastManager()Landroid/support/v4/content/LocalBroadcastManager;
    .registers 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    return-object v0
.end method

.method protected getSourceType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 282
    const-string v0, "base_chooser"

    return-object v0
.end method

.method protected getThumbnailApiExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .registers 9

    .prologue
    .line 353
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->thumbnailApiExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->thumbnailApiExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 354
    :cond_c
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x1

    const/16 v3, 0xa

    const-wide/16 v4, 0xe10

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->thumbnailApiExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 356
    :cond_1f
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->thumbnailApiExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method protected handleAuthenticationError()V
    .registers 1

    .prologue
    .line 688
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->finish()V

    .line 689
    return-void
.end method

.method protected handleFileClick(Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;)V
    .registers 2
    .param p1, "file"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;

    .prologue
    .line 672
    return-void
.end method

.method protected handleFolderClick(Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;)V
    .registers 7
    .param p1, "folder"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    .prologue
    .line 654
    :try_start_0
    invoke-virtual {p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mClient:Lcom/box/boxandroidlibv2/BoxAndroidClient;

    invoke-virtual {v1}, Lcom/box/boxandroidlibv2/BoxAndroidClient;->getAuthData()Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    move-result-object v1

    check-cast v1, Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;

    iget-object v3, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->clientId:Ljava/lang/String;

    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->clientSecret:Ljava/lang/String;

    invoke-static {p0, v2, v1, v3, v4}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 655
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 656
    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1e
    .catch Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 662
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1e
    return-void

    .line 658
    :catch_1f
    move-exception v1

    goto :goto_1e
.end method

.method protected handleOtherClick(Lcom/box/boxjavalibv2/dao/BoxItem;)V
    .registers 2
    .param p1, "item"    # Lcom/box/boxjavalibv2/dao/BoxItem;

    .prologue
    .line 682
    return-void
.end method

.method protected initializeBoxListItemAdapter(Lcom/box/boxandroidlibv2/manager/ThumbnailManager;)Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;
    .registers 4
    .param p1, "thumbNailManager"    # Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    .prologue
    .line 167
    new-instance v0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationBoxListItemAdapter;

    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mThumbnailManager:Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    invoke-direct {v0, p0, p0, v1}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationBoxListItemAdapter;-><init>(Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;Landroid/app/Activity;Lcom/box/boxandroidlibv2/manager/ThumbnailManager;)V

    return-object v0
.end method

.method protected initializeReceiver()Landroid/content/BroadcastReceiver;
    .registers 2

    .prologue
    .line 157
    new-instance v0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationReceiver;

    invoke-direct {v0, p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$FolderNavigationReceiver;-><init>(Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;)V

    return-object v0
.end method

.method protected initializeReceiverFilters()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "PickerActivity_FetchedFolder"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v1, "PickerActivity_FetchedFolderItems"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    const-string v1, "PickerActivity_DownloadedFileThumbnail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    return-object v0
.end method

.method protected initializeThumbnailManager()Lcom/box/boxandroidlibv2/manager/ThumbnailManager;
    .registers 4

    .prologue
    .line 176
    :try_start_0
    new-instance v1, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;-><init>(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    .line 180
    :goto_9
    return-object v1

    .line 178
    :catch_a
    move-exception v0

    .line 179
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->finish()V

    .line 180
    const/4 v1, 0x0

    goto :goto_9
.end method

.method protected initializeViews()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 190
    sget v0, Lcom/box/boxandroidlibv2/R$layout;->boxandroidlibv2_layout_picker:I

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->setContentView(I)V

    .line 192
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 193
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->initializeViews()V

    .line 95
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mListView:Landroid/widget/ListView;

    .line 97
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->initializeThumbnailManager()Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mThumbnailManager:Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    .line 98
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mThumbnailManager:Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    if-nez v0, :cond_19

    .line 138
    :goto_18
    return-void

    .line 102
    :cond_19
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mThumbnailManager:Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    invoke-virtual {p0, v1}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->initializeBoxListItemAdapter(Lcom/box/boxandroidlibv2/manager/ThumbnailManager;)Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 103
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_85

    .line 105
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extraClientId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->clientId:Ljava/lang/String;

    .line 106
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extraClientSecret"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->clientSecret:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extraClient_oauth"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;

    .line 108
    .local v6, "authData":Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;
    new-instance v0, Lcom/box/boxandroidlibv2/BoxAndroidClient;

    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->clientId:Ljava/lang/String;

    iget-object v2, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->clientSecret:Ljava/lang/String;

    new-instance v4, Lcom/box/boxandroidlibv2/BoxAndroidConfigBuilder;

    invoke-direct {v4}, Lcom/box/boxandroidlibv2/BoxAndroidConfigBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/BoxAndroidConfigBuilder;->build()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v5

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/box/boxandroidlibv2/BoxAndroidClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/boxjavalibv2/IBoxConfig;)V

    iput-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mClient:Lcom/box/boxandroidlibv2/BoxAndroidClient;

    .line 109
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mClient:Lcom/box/boxandroidlibv2/BoxAndroidClient;

    invoke-virtual {v0, v6}, Lcom/box/boxandroidlibv2/BoxAndroidClient;->authenticate(Lcom/box/boxjavalibv2/dao/IAuthData;)V

    .line 110
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extraFolderId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mCurrentFolderId:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "nav"

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mNavNumber:I

    .line 113
    .end local v6    # "authData":Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;
    :cond_85
    if-eqz p1, :cond_c9

    .line 115
    const-string v0, "extraClientId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->clientId:Ljava/lang/String;

    .line 116
    const-string v0, "extraClientSecret"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->clientSecret:Ljava/lang/String;

    .line 117
    const-string v0, "extraClient_oauth"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;

    .line 118
    .restart local v6    # "authData":Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;
    new-instance v0, Lcom/box/boxandroidlibv2/BoxAndroidClient;

    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->clientId:Ljava/lang/String;

    iget-object v2, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->clientSecret:Ljava/lang/String;

    new-instance v4, Lcom/box/boxandroidlibv2/BoxAndroidConfigBuilder;

    invoke-direct {v4}, Lcom/box/boxandroidlibv2/BoxAndroidConfigBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/BoxAndroidConfigBuilder;->build()Lcom/box/boxjavalibv2/IBoxConfig;

    move-result-object v5

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/box/boxandroidlibv2/BoxAndroidClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/boxjavalibv2/IBoxConfig;)V

    iput-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mClient:Lcom/box/boxandroidlibv2/BoxAndroidClient;

    .line 119
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mClient:Lcom/box/boxandroidlibv2/BoxAndroidClient;

    invoke-virtual {v0, v6}, Lcom/box/boxandroidlibv2/BoxAndroidClient;->authenticate(Lcom/box/boxjavalibv2/dao/IAuthData;)V

    .line 120
    const-string v0, "extraFolderId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mCurrentFolderId:Ljava/lang/String;

    .line 121
    const-string v0, "nav"

    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mNavNumber:I

    .line 123
    .end local v6    # "authData":Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;
    :cond_c9
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mClient:Lcom/box/boxandroidlibv2/BoxAndroidClient;

    if-nez v0, :cond_e0

    .line 124
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mClient:Lcom/box/boxandroidlibv2/BoxAndroidClient;

    if-nez v0, :cond_e0

    .line 125
    const-string v0, "No client provided"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 126
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->finish()V

    goto/16 :goto_18

    .line 131
    :cond_e0
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->initializeReceiverFilters()Landroid/content/IntentFilter;

    move-result-object v7

    .line 132
    .local v7, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->initializeReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mControllerReceiver:Landroid/content/BroadcastReceiver;

    .line 133
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 134
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mControllerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 135
    new-instance v0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    invoke-direct {v0, p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;-><init>(Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;)V

    iput-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mController:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    .line 136
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;

    new-instance v1, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    iget-object v2, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mController:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v3, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->fetchFolder(Ljava/lang/String;)Ljava/util/concurrent/FutureTask;

    move-result-object v2

    const-string v3, "PickerActivity_FetchedFolder"

    invoke-direct {v1, v2, v3}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;-><init>(Ljava/util/concurrent/FutureTask;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->add(Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V

    .line 137
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mThumbnailManager:Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    invoke-virtual {v0}, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->deleteFilesInCacheDirectory()V

    goto/16 :goto_18
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 205
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 206
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    if-eqz v0, :cond_e

    .line 207
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mLocalBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mControllerReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    :cond_e
    return-void
.end method

.method protected onDownloadedThumbnail(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 321
    const-string v0, "PickerActivity_ArgSuccess"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 322
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;

    const-string v1, "PickerActivity_FileId"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->update(Ljava/lang/String;)V

    .line 324
    :cond_1a
    return-void
.end method

.method protected onFetchedFolder(Landroid/content/Intent;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 260
    const-string v3, "PickerActivity_ArgSuccess"

    invoke-virtual {p1, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 261
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/box/boxandroidlibv2/R$string;->boxandroidlibv2_Problem_fetching_folder:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 279
    :cond_1b
    :goto_1b
    return-void

    .line 265
    :cond_1c
    iget-object v3, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mCurrentFolderId:Ljava/lang/String;

    const-string v4, "PickerActivity_FolderId"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 267
    const-string v3, "PickerActivity_Folde"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    .line 268
    .local v1, "boxFolder":Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;
    invoke-virtual {v1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->getItemCollection()Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;

    move-result-object v2

    .line 270
    .local v2, "collection":Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;
    iget-object v3, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;

    .line 271
    .local v0, "adapter":Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->remove(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v2}, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;->getTotalCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_1b

    .line 274
    iget-object v3, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;

    new-instance v4, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    iget-object v5, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mController:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v6, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;->getEntries()Ljava/util/ArrayList;

    move-result-object v7

    .line 275
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 274
    invoke-virtual {v5, v6, v8, v7}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->fetchFolderItems(Ljava/lang/String;II)Ljava/util/concurrent/FutureTask;

    move-result-object v5

    const-string v6, "PickerActivity_FetchedFolderItems"

    invoke-direct {v4, v5, v6}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;-><init>(Ljava/util/concurrent/FutureTask;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->add(Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V

    goto :goto_1b
.end method

.method protected onFetchedFolderItems(Landroid/content/Intent;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, -0x1

    .line 292
    const-string v4, "PickerActivity_ArgSuccess"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 293
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/box/boxandroidlibv2/R$string;->boxandroidlibv2_Problem_fetching_folder:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 313
    :cond_1c
    :goto_1c
    return-void

    .line 297
    :cond_1d
    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mCurrentFolderId:Ljava/lang/String;

    const-string v5, "PickerActivity_FolderId"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 298
    const-string v4, "PickerActivity_Collection"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;

    .line 299
    .local v1, "collection":Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;
    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;

    .line 300
    .local v0, "adapter":Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;
    const-string v4, "PickerActivity_ArgOffset"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 301
    .local v3, "offset":I
    const-string v4, "PickerActivity_Limit"

    invoke-virtual {p1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 302
    .local v2, "limit":I
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->remove(Ljava/lang/String;)V

    .line 303
    invoke-virtual {v0, v1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->add(Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;)V

    .line 304
    invoke-virtual {v1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;->getEntries()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;->getTotalCount()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_1c

    .line 306
    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;

    new-instance v5, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    iget-object v6, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mController:Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;

    iget-object v7, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mCurrentFolderId:Ljava/lang/String;

    .line 307
    invoke-virtual {v1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;->getEntries()Ljava/util/ArrayList;

    move-result-object v8

    .line 308
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v8, v3

    .line 306
    invoke-virtual {v6, v7, v8, v2}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity$Controller;->fetchFolderItems(Ljava/lang/String;II)Ljava/util/concurrent/FutureTask;

    move-result-object v6

    const-string v7, "PickerActivity_FetchedFolderItems"

    invoke-direct {v5, v6, v7}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;-><init>(Ljava/util/concurrent/FutureTask;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->add(Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V

    goto :goto_1c
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 628
    .local p1, "listView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    .line 629
    .local v1, "listItem":Lcom/box/boxandroidlibv2/viewdata/BoxListItem;
    invoke-virtual {v1}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_13

    invoke-virtual {v1}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getType()I

    move-result v2

    if-nez v2, :cond_20

    .line 630
    :cond_13
    invoke-virtual {v1}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getBoxItem()Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v0

    .line 631
    .local v0, "item":Lcom/box/boxjavalibv2/dao/BoxItem;
    instance-of v2, v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    if-eqz v2, :cond_21

    .line 632
    check-cast v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    .end local v0    # "item":Lcom/box/boxjavalibv2/dao/BoxItem;
    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->handleFolderClick(Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;)V

    .line 644
    :cond_20
    :goto_20
    return-void

    .line 635
    .restart local v0    # "item":Lcom/box/boxjavalibv2/dao/BoxItem;
    :cond_21
    instance-of v2, v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;

    if-eqz v2, :cond_2b

    .line 636
    check-cast v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;

    .end local v0    # "item":Lcom/box/boxjavalibv2/dao/BoxItem;
    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->handleFileClick(Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;)V

    goto :goto_20

    .line 640
    .restart local v0    # "item":Lcom/box/boxjavalibv2/dao/BoxItem;
    :cond_2b
    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->handleOtherClick(Lcom/box/boxjavalibv2/dao/BoxItem;)V

    goto :goto_20
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 215
    const-string v0, "extraFolderId"

    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v0, "extraClientId"

    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->clientId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v0, "extraClientSecret"

    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->clientSecret:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :try_start_15
    const-string v1, "extraClient_oauth"

    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mClient:Lcom/box/boxandroidlibv2/BoxAndroidClient;

    invoke-virtual {v0}, Lcom/box/boxandroidlibv2/BoxAndroidClient;->getAuthData()Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_22
    .catch Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException; {:try_start_15 .. :try_end_22} :catch_2d

    .line 224
    :goto_22
    const-string v0, "nav"

    iget v1, p0, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->mNavNumber:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 226
    return-void

    .line 221
    :catch_2d
    move-exception v0

    goto :goto_22
.end method

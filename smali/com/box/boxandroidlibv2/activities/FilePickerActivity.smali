.class public Lcom/box/boxandroidlibv2/activities/FilePickerActivity;
.super Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;
.source "FilePickerActivity.java"


# static fields
.field public static final EXTRA_BOX_ANDROID_FILE:Ljava/lang/String; = "extraBoxAndroidFile"

.field protected static final EXTRA_BOX_ANDROID_FOLDER:Ljava/lang/String; = "extraBoxAndroidFile"

.field protected static final EXTRA_FOLDER_NAME:Ljava/lang/String; = "extraFolderName"


# instance fields
.field private final FILE_PICKER_REQUEST_CODE:I

.field protected mCurrentFolder:Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

.field protected mFolderName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mCurrentFolder:Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->FILE_PICKER_REQUEST_CODE:I

    return-void
.end method

.method static synthetic access$000(Lcom/box/boxandroidlibv2/activities/FilePickerActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/box/boxandroidlibv2/activities/FilePickerActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->openFolder(Ljava/lang/String;)V

    return-void
.end method

.method public static getLaunchIntent(Landroid/content/Context;Ljava/lang/String;Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderId"    # Ljava/lang/String;
    .param p2, "oauth"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;
    .param p3, "clientId"    # Ljava/lang/String;
    .param p4, "clientSecret"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-static {p0, p1, p2, p3, p4}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 201
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 202
    return-object v0
.end method

.method public static getLaunchIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "folderId"    # Ljava/lang/String;
    .param p3, "oauth"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;
    .param p4, "clientId"    # Ljava/lang/String;
    .param p5, "clientSecret"    # Ljava/lang/String;

    .prologue
    .line 225
    invoke-static {p0, p2, p3, p4, p5}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 226
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extraFolderName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    return-object v0
.end method

.method private openFolder(Ljava/lang/String;)V
    .registers 6
    .param p1, "folderId"    # Ljava/lang/String;

    .prologue
    .line 95
    if-eqz p1, :cond_12

    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mCurrentFolder:Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mCurrentFolder:Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    invoke-virtual {v1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 109
    :cond_12
    :goto_12
    return-void

    .line 99
    :cond_13
    :try_start_13
    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mClient:Lcom/box/boxandroidlibv2/BoxAndroidClient;

    invoke-virtual {v1}, Lcom/box/boxandroidlibv2/BoxAndroidClient;->getAuthData()Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    move-result-object v1

    check-cast v1, Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;

    iget-object v2, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->clientId:Ljava/lang/String;

    iget-object v3, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->clientSecret:Ljava/lang/String;

    invoke-static {p0, p1, v1, v2, v3}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 102
    const-string v1, "nav"

    iget v2, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mNavNumber:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_37
    .catch Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException; {:try_start_13 .. :try_end_37} :catch_38

    goto :goto_12

    .line 106
    .end local v0    # "intent":Landroid/content/Intent;
    :catch_38
    move-exception v1

    goto :goto_12
.end method

.method private openFolder(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "folderId"    # Ljava/lang/String;

    .prologue
    .line 120
    if-eqz p2, :cond_12

    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mCurrentFolder:Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mCurrentFolder:Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    invoke-virtual {v0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 134
    :cond_12
    :goto_12
    return-void

    .line 125
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mClient:Lcom/box/boxandroidlibv2/BoxAndroidClient;

    invoke-virtual {v0}, Lcom/box/boxandroidlibv2/BoxAndroidClient;->getAuthData()Lcom/box/boxjavalibv2/dao/BoxOAuthToken;

    move-result-object v3

    check-cast v3, Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;

    iget-object v4, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->clientId:Ljava/lang/String;

    iget-object v5, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->clientSecret:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 126
    .local v6, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v6, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 127
    const-string v0, "nav"

    iget v1, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mNavNumber:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 129
    const/4 v0, 0x4

    invoke-virtual {p0, v6, v0}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_3a
    .catch Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException; {:try_start_13 .. :try_end_3a} :catch_3b

    goto :goto_12

    .line 131
    .end local v6    # "intent":Landroid/content/Intent;
    :catch_3b
    move-exception v0

    goto :goto_12
.end method


# virtual methods
.method protected getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 155
    sget v0, Lcom/box/boxandroidlibv2/R$id;->PickerListView:I

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method protected getNavigationSpinner()Landroid/widget/Spinner;
    .registers 2

    .prologue
    .line 73
    sget v0, Lcom/box/boxandroidlibv2/R$id;->folderChooserSpinner:I

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    return-object v0
.end method

.method protected getSourceType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 286
    const-string v0, "file_picker"

    return-object v0
.end method

.method protected handleFileClick(Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;)V
    .registers 4
    .param p1, "file"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;

    .prologue
    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extraBoxAndroidFile"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 162
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 163
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->finish()V

    .line 164
    return-void
.end method

.method protected handleFolderClick(Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;)V
    .registers 4
    .param p1, "folder"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    .prologue
    .line 179
    invoke-virtual {p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->openFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method protected initializeViews()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 145
    sget v1, Lcom/box/boxandroidlibv2/R$layout;->boxandroidlibv2_layout_file_picker:I

    invoke-virtual {p0, v1}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->setContentView(I)V

    .line 146
    sget v1, Lcom/box/boxandroidlibv2/R$id;->customTitle:I

    invoke-virtual {p0, v1}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 147
    .local v0, "customTitle":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 151
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 78
    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    .line 79
    const/4 v0, -0x1

    if-ne p2, v0, :cond_c

    .line 81
    invoke-virtual {p0, p2, p3}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 82
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->finish()V

    .line 85
    :cond_c
    invoke-super {p0, p1, p2, p3}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 86
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 52
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extraFolderName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mFolderName:Ljava/lang/String;

    .line 54
    :cond_15
    if-eqz p1, :cond_29

    .line 55
    const-string v0, "extraBoxAndroidFile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    iput-object v0, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mCurrentFolder:Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    .line 56
    const-string v0, "extraFolderName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mFolderName:Ljava/lang/String;

    .line 58
    :cond_29
    return-void
.end method

.method protected onFetchedFolder(Landroid/content/Intent;)V
    .registers 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 168
    const-string v0, "PickerActivity_ArgSuccess"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 169
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mCurrentFolder:Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    if-nez v0, :cond_17

    .line 170
    const-string v0, "PickerActivity_Folde"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    iput-object v0, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mCurrentFolder:Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    .line 172
    :cond_17
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mCurrentFolder:Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->setNavigationSpinner(Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;)V

    .line 174
    :cond_1c
    invoke-super {p0, p1}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->onFetchedFolder(Landroid/content/Intent;)V

    .line 175
    return-void
.end method

.method protected onResume()V
    .registers 4

    .prologue
    .line 62
    invoke-super {p0}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->onResume()V

    .line 63
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mCurrentFolder:Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mFolderName:Ljava/lang/String;

    if-eqz v0, :cond_17

    .line 64
    new-instance v0, Lcom/box/boxandroidlibv2/viewdata/NavigationItem;

    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mFolderName:Ljava/lang/String;

    iget-object v2, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mCurrentFolderId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/box/boxandroidlibv2/viewdata/NavigationItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->setNavigationSpinner(Lcom/box/boxandroidlibv2/viewdata/NavigationItem;)V

    .line 66
    :cond_17
    iget-object v0, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mCurrentFolder:Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->setNavigationSpinner(Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;)V

    .line 67
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 138
    const-string v0, "extraBoxAndroidFile"

    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mCurrentFolder:Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    const-string v0, "extraFolderName"

    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->mFolderName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-super {p0, p1}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 141
    return-void
.end method

.method protected setNavigationSpinner(Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;)V
    .registers 9
    .param p1, "currentFolder"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    .prologue
    .line 255
    if-nez p1, :cond_3

    .line 282
    :goto_2
    return-void

    .line 259
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v2, "navigationFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/box/boxandroidlibv2/viewdata/NavigationItem;>;"
    new-instance v4, Lcom/box/boxandroidlibv2/viewdata/NavigationItem;

    invoke-virtual {p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/box/boxandroidlibv2/viewdata/NavigationItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual {p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->getPathCollection()Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;->getEntries()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, "i":I
    :goto_26
    if-ltz v0, :cond_49

    .line 262
    invoke-virtual {p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->getPathCollection()Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;->getEntries()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxjavalibv2/dao/BoxItem;

    .line 263
    .local v1, "item":Lcom/box/boxjavalibv2/dao/BoxItem;
    new-instance v4, Lcom/box/boxandroidlibv2/viewdata/NavigationItem;

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/box/boxjavalibv2/dao/BoxItem;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/box/boxandroidlibv2/viewdata/NavigationItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    .line 265
    .end local v1    # "item":Lcom/box/boxjavalibv2/dao/BoxItem;
    :cond_49
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->getNavigationSpinner()Landroid/widget/Spinner;

    move-result-object v3

    .line 266
    .local v3, "spinner":Landroid/widget/Spinner;
    new-instance v4, Lcom/box/boxandroidlibv2/adapters/NavigationListAdapter;

    invoke-direct {v4, p0, v2}, Lcom/box/boxandroidlibv2/adapters/NavigationListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 267
    new-instance v4, Lcom/box/boxandroidlibv2/activities/FilePickerActivity$1;

    invoke-direct {v4, p0}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity$1;-><init>(Lcom/box/boxandroidlibv2/activities/FilePickerActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_2
.end method

.method protected setNavigationSpinner(Lcom/box/boxandroidlibv2/viewdata/NavigationItem;)V
    .registers 5
    .param p1, "navigationItem"    # Lcom/box/boxandroidlibv2/viewdata/NavigationItem;

    .prologue
    .line 237
    if-nez p1, :cond_3

    .line 246
    :goto_2
    return-void

    .line 241
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    .local v0, "navigationFolders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/box/boxandroidlibv2/viewdata/NavigationItem;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->getNavigationSpinner()Landroid/widget/Spinner;

    move-result-object v1

    .line 244
    .local v1, "spinner":Landroid/widget/Spinner;
    new-instance v2, Lcom/box/boxandroidlibv2/adapters/NavigationListAdapter;

    invoke-direct {v2, p0, v0}, Lcom/box/boxandroidlibv2/adapters/NavigationListAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_2
.end method

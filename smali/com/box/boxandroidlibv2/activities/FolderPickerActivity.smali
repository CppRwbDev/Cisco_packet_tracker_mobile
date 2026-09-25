.class public Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;
.super Lcom/box/boxandroidlibv2/activities/FilePickerActivity;
.source "FolderPickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/box/boxandroidlibv2/activities/FolderPickerActivity$FolderPickerBoxListItemAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_BOX_ANDROID_FILE:Ljava/lang/String; = "extraBoxAndroidFile"

.field public static final EXTRA_BOX_ANDROID_FOLDER:Ljava/lang/String; = "extraBoxAndroidFile"


# instance fields
.field private final FOLDER_PICKER_REQUEST_CODE:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;-><init>()V

    .line 31
    const/16 v0, 0x8

    iput v0, p0, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;->FOLDER_PICKER_REQUEST_CODE:I

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
    .line 92
    invoke-static {p0, p1, p2, p3, p4}, Lcom/box/boxandroidlibv2/activities/FolderNavigationActivity;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 94
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
    .line 118
    invoke-static {p0, p2, p3, p4, p5}, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;->getLaunchIntent(Landroid/content/Context;Ljava/lang/String;Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 119
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extraFolderName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    return-object v0
.end method


# virtual methods
.method protected getListView()Landroid/widget/ListView;
    .registers 2

    .prologue
    .line 72
    sget v0, Lcom/box/boxandroidlibv2/R$id;->PickerListView:I

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    return-object v0
.end method

.method protected getSourceType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    const-string v0, "folder_chooser"

    return-object v0
.end method

.method protected initializeBoxListItemAdapter(Lcom/box/boxandroidlibv2/manager/ThumbnailManager;)Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;
    .registers 3
    .param p1, "thumbNailManager"    # Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    .prologue
    .line 67
    new-instance v0, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity$FolderPickerBoxListItemAdapter;

    invoke-direct {v0, p0, p0, p1}, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity$FolderPickerBoxListItemAdapter;-><init>(Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;Landroid/app/Activity;Lcom/box/boxandroidlibv2/manager/ThumbnailManager;)V

    return-object v0
.end method

.method protected initializeViews()V
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 47
    sget v1, Lcom/box/boxandroidlibv2/R$layout;->boxandroidlibv2_layout_folder_picker:I

    invoke-virtual {p0, v1}, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;->setContentView(I)V

    .line 48
    sget v1, Lcom/box/boxandroidlibv2/R$id;->customTitle:I

    invoke-virtual {p0, v1}, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 49
    .local v0, "customTitle":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setLayout(II)V

    .line 53
    sget v1, Lcom/box/boxandroidlibv2/R$id;->btnChoose:I

    invoke-virtual {p0, v1}, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity$1;

    invoke-direct {v2, p0}, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity$1;-><init>(Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 35
    const/16 v0, 0x8

    if-ne p1, v0, :cond_d

    .line 36
    const/4 v0, -0x1

    if-ne p2, v0, :cond_d

    .line 38
    invoke-virtual {p0, p2, p3}, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 39
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;->finish()V

    .line 42
    :cond_d
    invoke-super {p0, p1, p2, p3}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 43
    return-void
.end method

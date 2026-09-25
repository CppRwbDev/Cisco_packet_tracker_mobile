.class Lcom/box/boxandroidlibv2/activities/FolderPickerActivity$1;
.super Ljava/lang/Object;
.source "FolderPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;->initializeViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;


# direct methods
.method constructor <init>(Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity$1;->this$0:Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "extraBoxAndroidFile"

    iget-object v2, p0, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity$1;->this$0:Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;

    iget-object v2, v2, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;->mCurrentFolder:Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 59
    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity$1;->this$0:Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;->setResult(ILandroid/content/Intent;)V

    .line 60
    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity$1;->this$0:Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;

    invoke-virtual {v1}, Lcom/box/boxandroidlibv2/activities/FolderPickerActivity;->finish()V

    .line 61
    return-void
.end method

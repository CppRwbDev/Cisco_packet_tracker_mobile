.class Lcom/box/boxandroidlibv2/activities/FilePickerActivity$1;
.super Ljava/lang/Object;
.source "FilePickerActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->setNavigationSpinner(Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/box/boxandroidlibv2/activities/FilePickerActivity;


# direct methods
.method constructor <init>(Lcom/box/boxandroidlibv2/activities/FilePickerActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/box/boxandroidlibv2/activities/FilePickerActivity;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity$1;->this$0:Lcom/box/boxandroidlibv2/activities/FilePickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
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
    .line 271
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/viewdata/NavigationItem;

    .line 272
    .local v0, "item":Lcom/box/boxandroidlibv2/viewdata/NavigationItem;
    iget-object v1, p0, Lcom/box/boxandroidlibv2/activities/FilePickerActivity$1;->this$0:Lcom/box/boxandroidlibv2/activities/FilePickerActivity;

    invoke-virtual {v0}, Lcom/box/boxandroidlibv2/viewdata/NavigationItem;->getFolderId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/box/boxandroidlibv2/activities/FilePickerActivity;->access$000(Lcom/box/boxandroidlibv2/activities/FilePickerActivity;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

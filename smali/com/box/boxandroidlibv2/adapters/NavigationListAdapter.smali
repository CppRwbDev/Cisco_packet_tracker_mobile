.class public Lcom/box/boxandroidlibv2/adapters/NavigationListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NavigationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/box/boxandroidlibv2/viewdata/NavigationItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .registers 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/box/boxandroidlibv2/viewdata/NavigationItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "navigationItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/box/boxandroidlibv2/viewdata/NavigationItem;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 34
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/box/boxandroidlibv2/adapters/NavigationListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 35
    invoke-virtual {p0, p2}, Lcom/box/boxandroidlibv2/adapters/NavigationListAdapter;->setNavigationList(Ljava/util/ArrayList;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    iget-object v3, p0, Lcom/box/boxandroidlibv2/adapters/NavigationListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/box/boxandroidlibv2/R$layout;->boxandroidlibv2_navigation_dropdown_item_folder:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 77
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_d

    .line 78
    const/4 v2, 0x0

    .line 84
    .end local v2    # "v":Landroid/view/View;
    :goto_c
    return-object v2

    .line 81
    .restart local v2    # "v":Landroid/view/View;
    :cond_d
    sget v3, Lcom/box/boxandroidlibv2/R$id;->textView_navigationItem:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 82
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/box/boxandroidlibv2/adapters/NavigationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/viewdata/NavigationItem;

    .line 83
    .local v0, "item":Lcom/box/boxandroidlibv2/viewdata/NavigationItem;
    invoke-virtual {v0}, Lcom/box/boxandroidlibv2/viewdata/NavigationItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 62
    iget-object v3, p0, Lcom/box/boxandroidlibv2/adapters/NavigationListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v4, Lcom/box/boxandroidlibv2/R$layout;->boxandroidlibv2_navigation_item_folder:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 63
    .local v2, "v":Landroid/view/View;
    if-nez v2, :cond_d

    .line 64
    const/4 v2, 0x0

    .line 70
    .end local v2    # "v":Landroid/view/View;
    :goto_c
    return-object v2

    .line 67
    .restart local v2    # "v":Landroid/view/View;
    :cond_d
    sget v3, Lcom/box/boxandroidlibv2/R$id;->textView_navigationItem:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 68
    .local v1, "tv":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/box/boxandroidlibv2/adapters/NavigationListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/viewdata/NavigationItem;

    .line 69
    .local v0, "item":Lcom/box/boxandroidlibv2/viewdata/NavigationItem;
    invoke-virtual {v0}, Lcom/box/boxandroidlibv2/viewdata/NavigationItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public setNavigationList(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/box/boxandroidlibv2/viewdata/NavigationItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "navigationItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/box/boxandroidlibv2/viewdata/NavigationItem;>;"
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/adapters/NavigationListAdapter;->clear()V

    .line 46
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/box/boxandroidlibv2/adapters/NavigationListAdapter;->setNotifyOnChange(Z)V

    .line 47
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/viewdata/NavigationItem;

    .line 48
    .local v0, "treeItem":Lcom/box/boxandroidlibv2/viewdata/NavigationItem;
    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/adapters/NavigationListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_b

    .line 50
    .end local v0    # "treeItem":Lcom/box/boxandroidlibv2/viewdata/NavigationItem;
    :cond_1b
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/box/boxandroidlibv2/adapters/NavigationListAdapter;->setNotifyOnChange(Z)V

    .line 51
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/adapters/NavigationListAdapter;->notifyDataSetChanged()V

    .line 52
    return-void
.end method

.class public Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BoxListItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/box/boxandroidlibv2/viewdata/BoxListItem;",
        ">;"
    }
.end annotation


# instance fields
.field private mThumbnailManager:Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

.field private final positionInsertedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final viewHolderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/box/boxandroidlibv2/manager/ThumbnailManager;)V
    .registers 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "manager"    # Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->positionInsertedMap:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->viewHolderMap:Ljava/util/Map;

    .line 49
    iput-object p2, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->mThumbnailManager:Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    .line 50
    return-void
.end method

.method private static localFileSizeToDisplay(D)Ljava/lang/String;
    .registers 24
    .param p0, "numSize"    # D

    .prologue
    .line 138
    const/16 v4, 0x400

    .line 139
    .local v4, "constKB":I
    const/high16 v5, 0x100000

    .line 140
    .local v5, "constMB":I
    const/high16 v3, 0x40000000    # 2.0f

    .line 141
    .local v3, "constGB":I
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 142
    .local v8, "floatKB":D
    const-wide/high16 v10, 0x4130000000000000L    # 1048576.0

    .line 143
    .local v10, "floatMB":D
    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    .line 144
    .local v6, "floatGB":D
    const-string v2, "B"

    .line 145
    .local v2, "BYTES":Ljava/lang/String;
    const-string v15, "0 bytes"

    .line 146
    .local v15, "textSize":Ljava/lang/String;
    invoke-static/range {p0 .. p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v14

    .line 149
    .local v14, "strSize":Ljava/lang/String;
    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    cmpg-double v16, p0, v16

    if-gez v16, :cond_36

    .line 150
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "B"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 164
    :cond_35
    :goto_35
    return-object v15

    .line 152
    :cond_36
    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    cmpl-double v16, p0, v16

    if-ltz v16, :cond_5f

    const-wide/high16 v16, 0x4130000000000000L    # 1048576.0

    cmpg-double v16, p0, v16

    if-gez v16, :cond_5f

    .line 153
    const-wide/high16 v16, 0x4090000000000000L    # 1024.0

    div-double v12, p0, v16

    .line 154
    .local v12, "size":D
    sget-object v16, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v17, "%4.1f KB"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_35

    .line 156
    .end local v12    # "size":D
    :cond_5f
    const-wide/high16 v16, 0x4130000000000000L    # 1048576.0

    cmpl-double v16, p0, v16

    if-ltz v16, :cond_88

    const-wide/high16 v16, 0x41d0000000000000L    # 1.073741824E9

    cmpg-double v16, p0, v16

    if-gez v16, :cond_88

    .line 157
    const-wide/high16 v16, 0x4130000000000000L    # 1048576.0

    div-double v12, p0, v16

    .line 158
    .restart local v12    # "size":D
    sget-object v16, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v17, "%4.1f MB"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_35

    .line 160
    .end local v12    # "size":D
    :cond_88
    const-wide/high16 v16, 0x41d0000000000000L    # 1.073741824E9

    cmpl-double v16, p0, v16

    if-ltz v16, :cond_35

    .line 161
    const-wide/high16 v16, 0x41d0000000000000L    # 1.073741824E9

    div-double v12, p0, v16

    .line 162
    .restart local v12    # "size":D
    sget-object v16, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v17, "%4.1f GB"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v16 .. v18}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto :goto_35
.end method


# virtual methods
.method public add(Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;)V
    .registers 7
    .param p1, "collection"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;

    .prologue
    .line 174
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->setNotifyOnChange(Z)V

    .line 175
    invoke-virtual {p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;->getEntries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxTypedObject;

    .line 176
    .local v0, "o":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    instance-of v1, v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;

    if-eqz v1, :cond_2c

    .line 177
    new-instance v3, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    move-object v1, v0

    check-cast v1, Lcom/box/boxandroidlibv2/dao/BoxAndroidFile;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;-><init>(Lcom/box/boxjavalibv2/dao/BoxItem;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->add(Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V

    goto :goto_c

    .line 179
    :cond_2c
    instance-of v1, v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    if-eqz v1, :cond_c

    .line 180
    new-instance v3, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    move-object v1, v0

    check-cast v1, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;-><init>(Lcom/box/boxjavalibv2/dao/BoxItem;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->add(Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V

    goto :goto_c

    .line 183
    .end local v0    # "o":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    :cond_40
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->setNotifyOnChange(Z)V

    .line 185
    return-void
.end method

.method public declared-synchronized add(Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V
    .registers 5
    .param p1, "listItem"    # Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    .prologue
    .line 203
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->positionInsertedMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->positionInsertedMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    .line 205
    monitor-exit p0

    return-void

    .line 203
    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 33
    check-cast p1, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    invoke-virtual {p0, p1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->add(Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V

    return-void
.end method

.method public addAll(Ljava/util/Collection;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/box/boxandroidlibv2/viewdata/BoxListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/box/boxandroidlibv2/viewdata/BoxListItem;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    .line 197
    .local v0, "item":Lcom/box/boxandroidlibv2/viewdata/BoxListItem;
    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->add(Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V

    goto :goto_4

    .line 199
    .end local v0    # "item":Lcom/box/boxandroidlibv2/viewdata/BoxListItem;
    :cond_14
    return-void
.end method

.method public varargs addAll([Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V
    .registers 5
    .param p1, "items"    # [Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    .prologue
    .line 189
    array-length v2, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_c

    aget-object v0, p1, v1

    .line 190
    .local v0, "item":Lcom/box/boxandroidlibv2/viewdata/BoxListItem;
    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->add(Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 192
    .end local v0    # "item":Lcom/box/boxandroidlibv2/viewdata/BoxListItem;
    :cond_c
    return-void
.end method

.method public bridge synthetic addAll([Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 33
    check-cast p1, [Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    invoke-virtual {p0, p1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->addAll([Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V

    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->positionInsertedMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 258
    invoke-super {p0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 259
    return-void
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    invoke-virtual {v0}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getType()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 54
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->viewHolderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-virtual {p0, p1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    .line 59
    .local v1, "listItem":Lcom/box/boxandroidlibv2/viewdata/BoxListItem;
    if-nez p2, :cond_7e

    .line 60
    new-instance v0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;

    invoke-direct {v0}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;-><init>()V

    .line 63
    .local v0, "holder":Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->getItemViewType(I)I

    move-result v3

    if-nez v3, :cond_6e

    .line 64
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/box/boxandroidlibv2/R$layout;->boxandroidlibv2_box_folder_list_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 69
    .local v2, "row":Landroid/view/View;
    :goto_2c
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 70
    sget v3, Lcom/box/boxandroidlibv2/R$id;->icon:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->setIconView(Landroid/widget/ImageView;)V

    .line 71
    sget v3, Lcom/box/boxandroidlibv2/R$id;->name:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->setNameView(Landroid/widget/TextView;)V

    .line 72
    sget v3, Lcom/box/boxandroidlibv2/R$id;->metaline_description:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->setDescriptionView(Landroid/widget/TextView;)V

    .line 73
    sget v3, Lcom/box/boxandroidlibv2/R$id;->spinner:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->mSpinner:Landroid/widget/ProgressBar;

    .line 79
    :goto_5a
    invoke-virtual {v0}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->getIconView()Landroid/widget/ImageView;

    .line 80
    invoke-virtual {v0, v1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->setBoxItem(Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V

    .line 81
    invoke-virtual {p0, v0, v1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->update(Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V

    .line 82
    iget-object v3, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->viewHolderMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6c
    .catchall {:try_start_1 .. :try_end_6c} :catchall_86

    .line 83
    monitor-exit p0

    return-object v2

    .line 67
    .end local v2    # "row":Landroid/view/View;
    :cond_6e
    :try_start_6e
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/box/boxandroidlibv2/R$layout;->boxandroidlibv2_box_list_item:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .restart local v2    # "row":Landroid/view/View;
    goto :goto_2c

    .line 76
    .end local v0    # "holder":Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;
    .end local v2    # "row":Landroid/view/View;
    :cond_7e
    move-object v2, p2

    .line 77
    .restart local v2    # "row":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;
    :try_end_85
    .catchall {:try_start_6e .. :try_end_85} :catchall_86

    .restart local v0    # "holder":Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;
    goto :goto_5a

    .line 54
    .end local v0    # "holder":Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;
    .end local v1    # "listItem":Lcom/box/boxandroidlibv2/viewdata/BoxListItem;
    .end local v2    # "row":Landroid/view/View;
    :catchall_86
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 94
    const/4 v0, 0x3

    return v0
.end method

.method public declared-synchronized remove(Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V
    .registers 8
    .param p1, "listItem"    # Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    .prologue
    .line 209
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->positionInsertedMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 210
    .local v2, "removalPos":Ljava/lang/Integer;
    if-eqz v2, :cond_56

    .line 211
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->positionInsertedMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_56

    .line 212
    iget-object v3, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->positionInsertedMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_25
    :goto_25
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 213
    .local v0, "key":Ljava/lang/String;
    iget-object v4, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->positionInsertedMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 214
    .local v1, "potentiallyOutdatedPos":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_25

    .line 215
    iget-object v4, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->positionInsertedMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_53

    goto :goto_25

    .line 209
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "potentiallyOutdatedPos":Ljava/lang/Integer;
    .end local v2    # "removalPos":Ljava/lang/Integer;
    :catchall_53
    move-exception v3

    monitor-exit p0

    throw v3

    .line 220
    .restart local v2    # "removalPos":Ljava/lang/Integer;
    :cond_56
    :try_start_56
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_53

    .line 221
    monitor-exit p0

    return-void
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 33
    check-cast p1, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    invoke-virtual {p0, p1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->remove(Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 4
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v1, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->positionInsertedMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 249
    .local v0, "positionInserted":Ljava/lang/Integer;
    if-eqz v0, :cond_17

    .line 250
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    invoke-virtual {p0, v1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->remove(Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V

    .line 253
    :cond_17
    return-void
.end method

.method public set(Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;)V
    .registers 2
    .param p1, "collection"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->clear()V

    .line 169
    invoke-virtual {p0, p1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->add(Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;)V

    .line 171
    return-void
.end method

.method protected update(Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V
    .registers 8
    .param p1, "holder"    # Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;
    .param p2, "listItem"    # Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 106
    invoke-virtual {p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_36

    .line 107
    invoke-virtual {p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getTask()Ljava/util/concurrent/FutureTask;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->isDone()Z

    move-result v1

    if-nez v1, :cond_35

    .line 108
    iget-object v1, p1, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->mSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 109
    invoke-virtual {p1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->getIconView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    invoke-virtual {p1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->getNameView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/box/boxandroidlibv2/R$string;->boxandroidlibv2_Please_wait:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_35
    :goto_35
    return-void

    .line 114
    :cond_36
    invoke-virtual {p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_43

    invoke-virtual {p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getType()I

    move-result v1

    if-nez v1, :cond_35

    .line 115
    :cond_43
    iget-object v1, p1, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->mSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 116
    invoke-virtual {p1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->getIconView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    invoke-virtual {p2}, Lcom/box/boxandroidlibv2/viewdata/BoxListItem;->getBoxItem()Lcom/box/boxjavalibv2/dao/BoxItem;

    move-result-object v0

    .line 119
    .local v0, "boxItem":Lcom/box/boxjavalibv2/dao/BoxItem;
    iget-object v1, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->mThumbnailManager:Lcom/box/boxandroidlibv2/manager/ThumbnailManager;

    invoke-virtual {p1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->getIconView()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/box/boxandroidlibv2/manager/ThumbnailManager;->setThumbnailIntoView(Landroid/widget/ImageView;Lcom/box/boxjavalibv2/dao/BoxItem;)V

    .line 120
    invoke-virtual {p1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->getNameView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxItem;->getSize()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_35

    invoke-virtual {p1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->getDescriptionView()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 122
    invoke-virtual {p1}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->getDescriptionView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/box/boxjavalibv2/dao/BoxItem;->getSize()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->localFileSizeToDisplay(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_35
.end method

.method public declared-synchronized update(Ljava/lang/String;)V
    .registers 5
    .param p1, "identifier"    # Ljava/lang/String;

    .prologue
    .line 230
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->positionInsertedMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 231
    .local v1, "positionInserted":Ljava/lang/Integer;
    if-eqz v1, :cond_22

    .line 232
    iget-object v2, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->viewHolderMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;

    .line 233
    .local v0, "holder":Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;
    if-eqz v0, :cond_22

    invoke-static {v0}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->access$000(Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;)Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 234
    invoke-static {v0}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->access$000(Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;)Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;->update(Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    .line 239
    .end local v0    # "holder":Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;
    :cond_22
    monitor-exit p0

    return-void

    .line 230
    .end local v1    # "positionInserted":Ljava/lang/Integer;
    :catchall_24
    move-exception v2

    monitor-exit p0

    throw v2
.end method

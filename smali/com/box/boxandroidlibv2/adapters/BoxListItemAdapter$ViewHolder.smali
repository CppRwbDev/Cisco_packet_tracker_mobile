.class public Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "BoxListItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private description:Landroid/widget/TextView;

.field private icon:Landroid/widget/ImageView;

.field private mBoxListItem:Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

.field public mSpinner:Landroid/widget/ProgressBar;

.field private name:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    return-void
.end method

.method static synthetic access$000(Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;)Lcom/box/boxandroidlibv2/viewdata/BoxListItem;
    .registers 2
    .param p0, "x0"    # Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->mBoxListItem:Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    return-object v0
.end method


# virtual methods
.method public getBoxListItem()Lcom/box/boxandroidlibv2/viewdata/BoxListItem;
    .registers 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->mBoxListItem:Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    return-object v0
.end method

.method public getDescriptionView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->description:Landroid/widget/TextView;

    return-object v0
.end method

.method public getIconView()Landroid/widget/ImageView;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getNameView()Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->name:Landroid/widget/TextView;

    return-object v0
.end method

.method public setBoxItem(Lcom/box/boxandroidlibv2/viewdata/BoxListItem;)V
    .registers 2
    .param p1, "boxListItem"    # Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->mBoxListItem:Lcom/box/boxandroidlibv2/viewdata/BoxListItem;

    .line 291
    return-void
.end method

.method public setDescriptionView(Landroid/widget/TextView;)V
    .registers 2
    .param p1, "description"    # Landroid/widget/TextView;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->description:Landroid/widget/TextView;

    .line 336
    return-void
.end method

.method public setIconView(Landroid/widget/ImageView;)V
    .registers 2
    .param p1, "icon"    # Landroid/widget/ImageView;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 306
    return-void
.end method

.method public setNameView(Landroid/widget/TextView;)V
    .registers 2
    .param p1, "name"    # Landroid/widget/TextView;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/box/boxandroidlibv2/adapters/BoxListItemAdapter$ViewHolder;->name:Landroid/widget/TextView;

    .line 321
    return-void
.end method

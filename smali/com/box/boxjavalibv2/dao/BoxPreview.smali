.class public Lcom/box/boxjavalibv2/dao/BoxPreview;
.super Lcom/box/boxjavalibv2/dao/BoxBigPayloadObject;
.source "BoxPreview.java"


# static fields
.field public static final MAX_HEIGHT:Ljava/lang/String; = "max_height"

.field public static final MAX_WIDTH:Ljava/lang/String; = "max_width"

.field public static final MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field public static final MIN_WIDTH:Ljava/lang/String; = "min_width"

.field public static final PAGE:Ljava/lang/String; = "page"


# instance fields
.field private firstPage:I

.field private lastPage:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxBigPayloadObject;-><init>()V

    .line 14
    iput v0, p0, Lcom/box/boxjavalibv2/dao/BoxPreview;->firstPage:I

    .line 15
    iput v0, p0, Lcom/box/boxjavalibv2/dao/BoxPreview;->lastPage:I

    return-void
.end method


# virtual methods
.method public getFirstPage()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/box/boxjavalibv2/dao/BoxPreview;->firstPage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getLastPage()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/box/boxjavalibv2/dao/BoxPreview;->lastPage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getNumPages()Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxPreview;->getLastPage()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/box/boxjavalibv2/dao/BoxPreview;->getFirstPage()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setFirstPage(Ljava/lang/Integer;)V
    .registers 3
    .param p1, "firstPage"    # Ljava/lang/Integer;

    .prologue
    .line 22
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/box/boxjavalibv2/dao/BoxPreview;->firstPage:I

    .line 23
    return-void
.end method

.method public setLastPage(I)V
    .registers 2
    .param p1, "lastPage"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/box/boxjavalibv2/dao/BoxPreview;->lastPage:I

    .line 42
    return-void
.end method

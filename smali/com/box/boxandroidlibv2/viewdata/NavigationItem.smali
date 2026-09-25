.class public final Lcom/box/boxandroidlibv2/viewdata/NavigationItem;
.super Ljava/lang/Object;
.source "NavigationItem.java"


# instance fields
.field private mFolderId:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/box/boxandroidlibv2/viewdata/NavigationItem;->mName:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/box/boxandroidlibv2/viewdata/NavigationItem;->mFolderId:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public getFolderId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/box/boxandroidlibv2/viewdata/NavigationItem;->mFolderId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/box/boxandroidlibv2/viewdata/NavigationItem;->mName:Ljava/lang/String;

    return-object v0
.end method

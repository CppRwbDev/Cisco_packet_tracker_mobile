.class public Lcom/box/boxandroidlibv2/dao/BoxAndroidWebLink;
.super Lcom/box/boxjavalibv2/dao/BoxWebLink;
.source "BoxAndroidWebLink.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/box/boxandroidlibv2/dao/BoxAndroidWebLink;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    new-instance v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidWebLink$1;

    invoke-direct {v0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidWebLink$1;-><init>()V

    sput-object v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidWebLink;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxWebLink;-><init>()V

    .line 18
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 21
    new-instance v0, Lcom/box/boxandroidlibv2/dao/BoxParcel;

    invoke-direct {v0, p1}, Lcom/box/boxandroidlibv2/dao/BoxParcel;-><init>(Landroid/os/Parcel;)V

    invoke-direct {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxWebLink;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/box/boxandroidlibv2/dao/BoxAndroidWebLink$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidWebLink$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidWebLink;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/box/boxandroidlibv2/dao/BoxAndroidWebLink;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidWebLink;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxWebLink;-><init>(Lcom/box/boxjavalibv2/dao/BoxWebLink;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxWebLink;-><init>(Ljava/util/Map;)V

    .line 40
    return-void
.end method

.method private setParent(Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;)V
    .registers 3
    .param p1, "folder"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "parent"
    .end annotation

    .prologue
    .line 50
    const-string v0, "parent"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidWebLink;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    return-void
.end method

.method private setPathCollection(Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;)V
    .registers 3
    .param p1, "pathCollection"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "path_collection"
    .end annotation

    .prologue
    .line 72
    const-string v0, "path_collection"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidWebLink;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method private setSharedLink(Lcom/box/boxandroidlibv2/dao/BoxAndroidSharedLink;)V
    .registers 3
    .param p1, "sharedLink"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidSharedLink;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "shared_link"
    .end annotation

    .prologue
    .line 61
    const-string v0, "shared_link"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidWebLink;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getParent()Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "parent"
    .end annotation

    .prologue
    .line 45
    const-string v0, "parent"

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidWebLink;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    return-object v0
.end method

.method public bridge synthetic getParent()Lcom/box/boxjavalibv2/dao/BoxFolder;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "parent"
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidWebLink;->getParent()Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    move-result-object v0

    return-object v0
.end method

.method public getPathCollection()Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "path_collection"
    .end annotation

    .prologue
    .line 67
    const-string v0, "path_collection"

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidWebLink;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;

    return-object v0
.end method

.method public bridge synthetic getPathCollection()Lcom/box/boxjavalibv2/dao/BoxCollection;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "path_collection"
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidWebLink;->getPathCollection()Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;

    move-result-object v0

    return-object v0
.end method

.method public getSharedLink()Lcom/box/boxandroidlibv2/dao/BoxAndroidSharedLink;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "shared_link"
    .end annotation

    .prologue
    .line 56
    const-string v0, "shared_link"

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidWebLink;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidSharedLink;

    return-object v0
.end method

.method public bridge synthetic getSharedLink()Lcom/box/boxjavalibv2/dao/BoxSharedLink;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "shared_link"
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidWebLink;->getSharedLink()Lcom/box/boxandroidlibv2/dao/BoxAndroidSharedLink;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 82
    new-instance v0, Lcom/box/boxandroidlibv2/dao/BoxParcel;

    invoke-direct {v0, p1}, Lcom/box/boxandroidlibv2/dao/BoxParcel;-><init>(Landroid/os/Parcel;)V

    invoke-super {p0, v0, p2}, Lcom/box/boxjavalibv2/dao/BoxWebLink;->writeToParcel(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;I)V

    .line 83
    return-void
.end method

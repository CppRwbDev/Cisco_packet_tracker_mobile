.class public Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;
.super Lcom/box/boxjavalibv2/dao/BoxFolder;
.source "BoxAndroidFolder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 107
    new-instance v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder$1;

    invoke-direct {v0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder$1;-><init>()V

    sput-object v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/box/boxjavalibv2/dao/BoxFolder;-><init>()V

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

    invoke-direct {p0, v0}, Lcom/box/boxjavalibv2/dao/BoxFolder;-><init>(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;)V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder$1;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;)V
    .registers 2
    .param p1, "obj"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxFolder;-><init>(Lcom/box/boxjavalibv2/dao/BoxFolder;)V

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
    .line 94
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/box/boxjavalibv2/dao/BoxFolder;-><init>(Ljava/util/Map;)V

    .line 95
    return-void
.end method

.method private setParent(Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;)V
    .registers 3
    .param p1, "folder"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "parent"
    .end annotation

    .prologue
    .line 41
    const-string v0, "parent"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method private setPathCollection(Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;)V
    .registers 3
    .param p1, "pathCollection"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "path_collection"
    .end annotation

    .prologue
    .line 63
    const-string v0, "path_collection"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method private setPermissions(Lcom/box/boxandroidlibv2/dao/BoxAndroidItemPermissions;)V
    .registers 3
    .param p1, "permissions"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidItemPermissions;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "permissions"
    .end annotation

    .prologue
    .line 85
    const-string v0, "permissions"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    return-void
.end method

.method private setSharedLink(Lcom/box/boxandroidlibv2/dao/BoxAndroidSharedLink;)V
    .registers 3
    .param p1, "sharedLink"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidSharedLink;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "shared_link"
    .end annotation

    .prologue
    .line 74
    const-string v0, "shared_link"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getItemCollection()Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "item_collection"
    .end annotation

    .prologue
    .line 47
    const-string v0, "item_collection"

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;

    return-object v0
.end method

.method public bridge synthetic getItemCollection()Lcom/box/boxjavalibv2/dao/BoxCollection;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "item_collection"
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->getItemCollection()Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "parent"
    .end annotation

    .prologue
    .line 36
    const-string v0, "parent"

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->getValue(Ljava/lang/String;)Ljava/lang/Object;

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
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->getParent()Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    move-result-object v0

    return-object v0
.end method

.method public getPathCollection()Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "path_collection"
    .end annotation

    .prologue
    .line 58
    const-string v0, "path_collection"

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->getValue(Ljava/lang/String;)Ljava/lang/Object;

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
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->getPathCollection()Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;

    move-result-object v0

    return-object v0
.end method

.method public getPermissions()Lcom/box/boxandroidlibv2/dao/BoxAndroidItemPermissions;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "permissions"
    .end annotation

    .prologue
    .line 80
    const-string v0, "permissions"

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidItemPermissions;

    return-object v0
.end method

.method public bridge synthetic getPermissions()Lcom/box/boxjavalibv2/dao/BoxItemPermissions;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "permissions"
    .end annotation

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->getPermissions()Lcom/box/boxandroidlibv2/dao/BoxAndroidItemPermissions;

    move-result-object v0

    return-object v0
.end method

.method public getSharedLink()Lcom/box/boxandroidlibv2/dao/BoxAndroidSharedLink;
    .registers 2
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "shared_link"
    .end annotation

    .prologue
    .line 69
    const-string v0, "shared_link"

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->getValue(Ljava/lang/String;)Ljava/lang/Object;

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
    invoke-virtual {p0}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->getSharedLink()Lcom/box/boxandroidlibv2/dao/BoxAndroidSharedLink;

    move-result-object v0

    return-object v0
.end method

.method protected setItemCollection(Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;)V
    .registers 3
    .param p1, "itemCollection"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
        value = "item_collection"
    .end annotation

    .prologue
    .line 52
    const-string v0, "item_collection"

    invoke-virtual {p0, v0, p1}, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 104
    new-instance v0, Lcom/box/boxandroidlibv2/dao/BoxParcel;

    invoke-direct {v0, p1}, Lcom/box/boxandroidlibv2/dao/BoxParcel;-><init>(Landroid/os/Parcel;)V

    invoke-super {p0, v0, p2}, Lcom/box/boxjavalibv2/dao/BoxFolder;->writeToParcel(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;I)V

    .line 105
    return-void
.end method

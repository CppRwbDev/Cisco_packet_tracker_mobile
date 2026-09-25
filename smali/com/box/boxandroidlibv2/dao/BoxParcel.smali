.class public Lcom/box/boxandroidlibv2/dao/BoxParcel;
.super Ljava/lang/Object;
.source "BoxParcel.java"

# interfaces
.implements Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;


# instance fields
.field private final mParcel:Landroid/os/Parcel;


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/box/boxandroidlibv2/dao/BoxParcel;->mParcel:Landroid/os/Parcel;

    .line 23
    return-void
.end method


# virtual methods
.method public initParcel()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 112
    new-array v0, v2, [Z

    const/4 v1, 0x0

    aput-boolean v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/dao/BoxParcel;->writeBooleanArray([Z)V

    .line 113
    return-void
.end method

.method public isNull()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    new-array v0, v1, [Z

    .line 106
    .local v0, "isNotNull":[Z
    iget-object v3, p0, Lcom/box/boxandroidlibv2/dao/BoxParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 107
    aget-boolean v3, v0, v2

    if-nez v3, :cond_e

    :goto_d
    return v1

    :cond_e
    move v1, v2

    goto :goto_d
.end method

.method public readBooleanArray([Z)V
    .registers 3
    .param p1, "val"    # [Z

    .prologue
    .line 52
    iget-object v0, p0, Lcom/box/boxandroidlibv2/dao/BoxParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 53
    return-void
.end method

.method public readDouble()D
    .registers 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/box/boxandroidlibv2/dao/BoxParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readInt()I
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/box/boxandroidlibv2/dao/BoxParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/box/boxandroidlibv2/dao/BoxParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMap(Ljava/util/Map;)V
    .registers 4
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
    .line 100
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/box/boxandroidlibv2/dao/BoxParcel;->mParcel:Landroid/os/Parcel;

    const-class v1, Lcom/box/boxjavalibv2/dao/BoxBase;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 101
    return-void
.end method

.method public readString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/box/boxandroidlibv2/dao/BoxParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeBooleanArray([Z)V
    .registers 3
    .param p1, "val"    # [Z

    .prologue
    .line 47
    iget-object v0, p0, Lcom/box/boxandroidlibv2/dao/BoxParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 48
    return-void
.end method

.method public writeDouble(D)V
    .registers 4
    .param p1, "value"    # D

    .prologue
    .line 72
    iget-object v0, p0, Lcom/box/boxandroidlibv2/dao/BoxParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    .line 73
    return-void
.end method

.method public writeInt(I)V
    .registers 3
    .param p1, "val"    # I

    .prologue
    .line 57
    iget-object v0, p0, Lcom/box/boxandroidlibv2/dao/BoxParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    return-void
.end method

.method public writeLong(J)V
    .registers 4
    .param p1, "value"    # J

    .prologue
    .line 37
    iget-object v0, p0, Lcom/box/boxandroidlibv2/dao/BoxParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    .line 38
    return-void
.end method

.method public writeMap(Ljava/util/Map;)V
    .registers 7
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
    .line 87
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 88
    .local v1, "newMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_d
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 89
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 90
    .local v2, "value":Ljava/lang/Object;
    instance-of v4, v2, Lcom/box/boxjavalibv2/dao/BoxObject;

    if-eqz v4, :cond_25

    instance-of v4, v2, Landroid/os/Parcelable;

    if-eqz v4, :cond_d

    .line 92
    :cond_25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 95
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "value":Ljava/lang/Object;
    :cond_2d
    iget-object v3, p0, Lcom/box/boxandroidlibv2/dao/BoxParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v3, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 96
    return-void
.end method

.method public writeParcelable(Lcom/box/boxjavalibv2/dao/IBoxParcelable;I)V
    .registers 5
    .param p1, "val"    # Lcom/box/boxjavalibv2/dao/IBoxParcelable;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 77
    if-eqz p1, :cond_7

    .line 78
    invoke-interface {p1, p0, p2}, Lcom/box/boxjavalibv2/dao/IBoxParcelable;->writeToParcel(Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;I)V

    .line 83
    :goto_6
    return-void

    .line 81
    :cond_7
    const/4 v0, 0x1

    new-array v0, v0, [Z

    aput-boolean v1, v0, v1

    invoke-virtual {p0, v0}, Lcom/box/boxandroidlibv2/dao/BoxParcel;->writeBooleanArray([Z)V

    goto :goto_6
.end method

.method public writeString(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/box/boxandroidlibv2/dao/BoxParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 28
    return-void
.end method

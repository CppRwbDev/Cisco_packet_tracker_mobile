.class public interface abstract Lcom/box/boxjavalibv2/dao/IBoxParcelWrapper;
.super Ljava/lang/Object;
.source "IBoxParcelWrapper.java"


# virtual methods
.method public abstract initParcel()V
.end method

.method public abstract isNull()Z
.end method

.method public abstract readBooleanArray([Z)V
.end method

.method public abstract readDouble()D
.end method

.method public abstract readInt()I
.end method

.method public abstract readLong()J
.end method

.method public abstract readMap(Ljava/util/Map;)V
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
.end method

.method public abstract readString()Ljava/lang/String;
.end method

.method public abstract writeBooleanArray([Z)V
.end method

.method public abstract writeDouble(D)V
.end method

.method public abstract writeInt(I)V
.end method

.method public abstract writeLong(J)V
.end method

.method public abstract writeMap(Ljava/util/Map;)V
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
.end method

.method public abstract writeParcelable(Lcom/box/boxjavalibv2/dao/IBoxParcelable;I)V
.end method

.method public abstract writeString(Ljava/lang/String;)V
.end method

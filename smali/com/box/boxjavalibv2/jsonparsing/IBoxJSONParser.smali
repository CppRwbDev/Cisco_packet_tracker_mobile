.class public interface abstract Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
.super Ljava/lang/Object;
.source "IBoxJSONParser.java"


# virtual methods
.method public abstract convertBoxObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/BoxJSONException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract convertBoxObjectToJSONStringQuietly(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public abstract parseIntoBoxObject(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/BoxJSONException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract parseIntoBoxObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/boxjavalibv2/exceptions/BoxJSONException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract parseIntoBoxObjectQuietly(Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract parseIntoBoxObjectQuietly(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.class public interface abstract Lcom/box/restclientv2/IBoxRestVisitor;
.super Ljava/lang/Object;
.source "IBoxRestVisitor.java"


# virtual methods
.method public abstract visitException(Ljava/lang/Exception;I)V
.end method

.method public abstract visitRequestBeforeSend(Lorg/apache/http/HttpRequest;I)V
.end method

.method public abstract visitResponseUponReceiving(Lorg/apache/http/HttpResponse;I)V
.end method

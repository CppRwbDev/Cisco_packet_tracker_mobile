.class public interface abstract Lcom/box/restclientv2/requestsbase/IBoxRequest;
.super Ljava/lang/Object;
.source "IBoxRequest.java"


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract addQueryParam(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract getApiUrlPath()Ljava/lang/String;
.end method

.method public abstract getAuth()Lcom/box/restclientv2/authorization/IBoxRequestAuth;
.end method

.method public abstract getAuthority()Ljava/lang/String;
.end method

.method public abstract getCookie()Lcom/box/restclientv2/requestsbase/ICookie;
.end method

.method public abstract getExpectedResponseCode()I
.end method

.method public abstract getHttpParams()Lorg/apache/http/params/HttpParams;
.end method

.method public abstract getRequestEntity()Lorg/apache/http/HttpEntity;
.end method

.method public abstract getRestMethod()Lcom/box/restclientv2/RestMethod;
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public abstract prepareRequest()Lorg/apache/http/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/box/restclientv2/exceptions/BoxRestException;,
            Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
        }
    .end annotation
.end method

.method public abstract setAuth(Lcom/box/restclientv2/authorization/IBoxRequestAuth;)V
.end method

.method public abstract setCookie(Lcom/box/restclientv2/requestsbase/ICookie;)V
.end method

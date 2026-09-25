.class public interface abstract Lcom/box/boxjavalibv2/filetransfer/IFileTransferListener;
.super Ljava/lang/Object;
.source "IFileTransferListener.java"


# static fields
.field public static final STATUS_FAIL:Ljava/lang/String; = "fail"

.field public static final STATUS_PASS:Ljava/lang/String; = "pass"


# virtual methods
.method public abstract onCanceled()V
.end method

.method public abstract onComplete(Ljava/lang/String;)V
.end method

.method public abstract onIOException(Ljava/io/IOException;)V
.end method

.method public abstract onProgress(J)V
.end method

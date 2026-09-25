.class public Lcom/dropbox/client2/exception/DropboxProxyChangeException;
.super Lcom/dropbox/client2/exception/DropboxIOException;
.source "DropboxProxyChangeException.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 5
    const-string v0, "Proxy may have been updated, try request again."

    invoke-direct {p0, v0}, Lcom/dropbox/client2/exception/DropboxIOException;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method

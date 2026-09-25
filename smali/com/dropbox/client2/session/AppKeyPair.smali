.class public final Lcom/dropbox/client2/session/AppKeyPair;
.super Lcom/dropbox/client2/session/TokenPair;
.source "AppKeyPair.java"


# static fields
.field private static final serialVersionUID:J = -0x4cb2154426b79e43L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "secret"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/dropbox/client2/session/TokenPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void
.end method

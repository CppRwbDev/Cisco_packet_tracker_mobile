.class public Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener$InterruptedMultipartException;
.super Ljava/io/IOException;
.source "MultipartEntityWithProgressListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/box/boxjavalibv2/httpentities/MultipartEntityWithProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterruptedMultipartException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.class public final Lorg/jshybugger/le;
.super Ljava/lang/Object;
.source "JavaAdapter.java"


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1189
    const-string v0, "JavaAdapter"

    sput-object v0, Lorg/jshybugger/le;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

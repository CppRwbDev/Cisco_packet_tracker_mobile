.class public final Lorg/jshybugger/me;
.super Ljava/lang/Object;
.source "Undefined.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    new-instance v0, Lorg/jshybugger/me;

    invoke-direct {v0}, Lorg/jshybugger/me;-><init>()V

    sput-object v0, Lorg/jshybugger/me;->a:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

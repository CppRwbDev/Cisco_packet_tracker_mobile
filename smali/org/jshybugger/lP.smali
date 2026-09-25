.class public final Lorg/jshybugger/lp;
.super Lorg/jshybugger/kY;
.source "NativeCall.java"


# static fields
.field private static final d:Ljava/lang/Object;


# instance fields
.field a:Lorg/jshybugger/lr;

.field b:[Ljava/lang/Object;

.field transient c:Lorg/jshybugger/lp;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-string v0, "Call"

    sput-object v0, Lorg/jshybugger/lp;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 74
    const-string v0, "Call"

    return-object v0
.end method

.class public interface abstract Lorg/jshybugger/ed;
.super Ljava/lang/Object;
.source "LastHttpContent.java"

# interfaces
.implements Lorg/jshybugger/dw;


# static fields
.field public static final a:Lorg/jshybugger/ed;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Lorg/jshybugger/ee;

    invoke-direct {v0}, Lorg/jshybugger/ee;-><init>()V

    sput-object v0, Lorg/jshybugger/ed;->a:Lorg/jshybugger/ed;

    return-void
.end method


# virtual methods
.method public abstract b()Lorg/jshybugger/dJ;
.end method

.class public final Lorg/jshybugger/jf;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    sget-boolean v0, Lorg/jshybugger/jk;->a:Z

    sput-boolean v0, Lorg/jshybugger/jf;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 10
    sget-boolean v0, Lorg/jshybugger/jf;->a:Z

    if-eqz v0, :cond_8

    .line 11
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    :goto_7
    return-void

    .line 13
    :cond_8
    invoke-static {p0}, Lorg/jshybugger/nT;->a(Ljava/lang/String;)Lorg/jshybugger/nS;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jshybugger/nS;->d(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 19
    sget-boolean v0, Lorg/jshybugger/jf;->a:Z

    if-eqz v0, :cond_8

    .line 20
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    :goto_7
    return-void

    .line 22
    :cond_8
    invoke-static {p0}, Lorg/jshybugger/nT;->a(Ljava/lang/String;)Lorg/jshybugger/nS;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jshybugger/nS;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 27
    sget-boolean v0, Lorg/jshybugger/jf;->a:Z

    if-eqz v0, :cond_8

    .line 28
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :goto_7
    return-void

    .line 30
    :cond_8
    invoke-static {p0}, Lorg/jshybugger/nT;->a(Ljava/lang/String;)Lorg/jshybugger/nS;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jshybugger/nS;->b(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 43
    sget-boolean v0, Lorg/jshybugger/jf;->a:Z

    if-eqz v0, :cond_8

    .line 44
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :goto_7
    return-void

    .line 46
    :cond_8
    invoke-static {p0}, Lorg/jshybugger/nT;->a(Ljava/lang/String;)Lorg/jshybugger/nS;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jshybugger/nS;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 35
    sget-boolean v0, Lorg/jshybugger/jf;->a:Z

    if-eqz v0, :cond_8

    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_7
    return-void

    .line 38
    :cond_8
    invoke-static {p0}, Lorg/jshybugger/nT;->a(Ljava/lang/String;)Lorg/jshybugger/nS;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jshybugger/nS;->c(Ljava/lang/String;)V

    goto :goto_7
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    .prologue
    .line 59
    sget-boolean v0, Lorg/jshybugger/jf;->a:Z

    if-eqz v0, :cond_8

    .line 60
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :goto_7
    return-void

    .line 62
    :cond_8
    invoke-static {p0}, Lorg/jshybugger/nT;->a(Ljava/lang/String;)Lorg/jshybugger/nS;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jshybugger/nS;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 51
    sget-boolean v0, Lorg/jshybugger/jf;->a:Z

    if-eqz v0, :cond_8

    .line 52
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_7
    return-void

    .line 54
    :cond_8
    invoke-static {p0}, Lorg/jshybugger/nT;->a(Ljava/lang/String;)Lorg/jshybugger/nS;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jshybugger/nS;->a(Ljava/lang/String;)V

    goto :goto_7
.end method

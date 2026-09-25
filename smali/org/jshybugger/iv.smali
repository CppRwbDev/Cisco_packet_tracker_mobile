.class final Lorg/jshybugger/iV;
.super Ljava/lang/Object;
.source "PageMsgHandler.java"

# interfaces
.implements Lorg/jshybugger/ja;


# instance fields
.field private synthetic a:Lorg/jshybugger/jn;

.field private synthetic b:Lorg/jshybugger/iU;


# direct methods
.method constructor <init>(Lorg/jshybugger/iU;Lorg/jshybugger/jn;)V
    .registers 3

    .prologue
    .line 143
    iput-object p1, p0, Lorg/jshybugger/iV;->b:Lorg/jshybugger/iU;

    iput-object p2, p0, Lorg/jshybugger/iV;->a:Lorg/jshybugger/jn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/hQ;)V
    .registers 6

    .prologue
    .line 150
    const-string v0, "PageMsgHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startScreencast format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/jshybugger/iV;->b:Lorg/jshybugger/iU;

    invoke-static {v2}, Lorg/jshybugger/iU;->a(Lorg/jshybugger/iU;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jshybugger/iV;->b:Lorg/jshybugger/iU;

    invoke-static {v2}, Lorg/jshybugger/iU;->b(Lorg/jshybugger/iU;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxWidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jshybugger/iV;->b:Lorg/jshybugger/iU;

    invoke-static {v2}, Lorg/jshybugger/iU;->c(Lorg/jshybugger/iU;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxHeight: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jshybugger/iV;->b:Lorg/jshybugger/iU;

    invoke-static {v2}, Lorg/jshybugger/iU;->d(Lorg/jshybugger/iU;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/jshybugger/jf;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lorg/jshybugger/iV;->b:Lorg/jshybugger/iU;

    const-string v1, "deviceScaleFactor"

    invoke-virtual {p1, v1}, Lorg/jshybugger/hQ;->c(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/jshybugger/iU;->b:D

    .line 153
    iget-object v0, p0, Lorg/jshybugger/iV;->b:Lorg/jshybugger/iU;

    const-string v1, "pageScaleFactor"

    invoke-virtual {p1, v1}, Lorg/jshybugger/hQ;->c(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/jshybugger/iU;->c:D

    .line 154
    iget-object v0, p0, Lorg/jshybugger/iV;->b:Lorg/jshybugger/iU;

    const-string v1, "viewport"

    invoke-virtual {p1, v1}, Lorg/jshybugger/hQ;->f(Ljava/lang/String;)Lorg/jshybugger/hQ;

    move-result-object v1

    iput-object v1, v0, Lorg/jshybugger/iU;->d:Lorg/jshybugger/hQ;

    .line 155
    iget-object v0, p0, Lorg/jshybugger/iV;->b:Lorg/jshybugger/iU;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/jshybugger/iU;->a(Lorg/jshybugger/iU;Z)Z

    .line 157
    iget-object v0, p0, Lorg/jshybugger/iV;->b:Lorg/jshybugger/iU;

    iget-object v1, p0, Lorg/jshybugger/iV;->a:Lorg/jshybugger/jn;

    invoke-static {v0, v1, p1}, Lorg/jshybugger/iU;->a(Lorg/jshybugger/iU;Lorg/jshybugger/jn;Lorg/jshybugger/hQ;)V

    .line 158
    return-void
.end method

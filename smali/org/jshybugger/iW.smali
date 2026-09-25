.class final Lorg/jshybugger/iw;
.super Lorg/jshybugger/jm;
.source "DebugServer.java"


# instance fields
.field private b:Ljava/lang/Object;

.field private synthetic c:Lorg/jshybugger/iq;


# direct methods
.method constructor <init>(Lorg/jshybugger/iq;)V
    .registers 2

    .prologue
    .line 293
    iput-object p1, p0, Lorg/jshybugger/iw;->c:Lorg/jshybugger/iq;

    invoke-direct {p0}, Lorg/jshybugger/jm;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/jshybugger/dt;)Lorg/jshybugger/du;
    .registers 14

    .prologue
    const-wide/32 v10, 0xdbba00

    .line 307
    new-instance v2, Lorg/jshybugger/dh;

    sget-object v0, Lorg/jshybugger/ec;->b:Lorg/jshybugger/ec;

    sget-object v1, Lorg/jshybugger/ea;->b:Lorg/jshybugger/ea;

    invoke-direct {v2, v0, v1}, Lorg/jshybugger/dh;-><init>(Lorg/jshybugger/ec;Lorg/jshybugger/ea;)V

    .line 309
    iget-object v0, v2, Lorg/jshybugger/dm;->b:Lorg/jshybugger/dJ;

    const-string v1, "Cache-Control"

    const-string v3, "no-store, no-cache, must-revalidate, max-age=0"

    invoke-virtual {v0, v1, v3}, Lorg/jshybugger/dJ;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    .line 310
    sget-object v0, Lorg/jshybugger/dM;->d:Lorg/jshybugger/dM;

    invoke-interface {p1}, Lorg/jshybugger/dt;->e()Lorg/jshybugger/dM;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/dM;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_115

    invoke-interface {p1}, Lorg/jshybugger/dt;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/license/upload"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 312
    :try_start_2d
    invoke-interface {p1}, Lorg/jshybugger/dt;->a()Lorg/jshybugger/H;

    move-result-object v0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jshybugger/H;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    .line 313
    const-string v0, "<license"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 314
    const-string v0, "</license>"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jshybugger/iw;->b:Ljava/lang/Object;

    .line 317
    if-lez v4, :cond_fe

    if-lez v5, :cond_fe

    .line 318
    invoke-interface {p1}, Lorg/jshybugger/dt;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 319
    if-gtz v0, :cond_6e

    .line 320
    const-string v0, "License expired (1)"

    iput-object v0, p0, Lorg/jshybugger/iw;->b:Ljava/lang/Object;

    .line 321
    sget-object v0, Lorg/jshybugger/ea;->e:Lorg/jshybugger/ea;

    invoke-virtual {v2, v0}, Lorg/jshybugger/dh;->a(Lorg/jshybugger/ea;)Lorg/jshybugger/du;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/du;->f()Lorg/jshybugger/dJ;

    move-result-object v0

    const-string v1, "Location"

    const-string v3, "/"

    invoke-virtual {v0, v1, v3}, Lorg/jshybugger/dJ;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    .line 389
    :goto_6d
    return-object v2

    .line 323
    :cond_6e
    invoke-interface {p1}, Lorg/jshybugger/dt;->h()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 326
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_7b} :catch_bd

    move-result-object v7

    .line 329
    :try_start_7c
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7f
    .catch Ljava/lang/NumberFormatException; {:try_start_7c .. :try_end_7f} :catch_d4
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_bd

    move-result-wide v0

    .line 333
    :goto_80
    :try_start_80
    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v8, v10

    cmp-long v8, v0, v8

    if-ltz v8, :cond_9a

    invoke-virtual {v7}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    add-long/2addr v8, v10

    cmp-long v0, v0, v8

    if-lez v0, :cond_d8

    .line 336
    :cond_9a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "License expired (2) : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/iw;->b:Ljava/lang/Object;

    .line 337
    sget-object v0, Lorg/jshybugger/ea;->e:Lorg/jshybugger/ea;

    invoke-virtual {v2, v0}, Lorg/jshybugger/dh;->a(Lorg/jshybugger/ea;)Lorg/jshybugger/du;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/du;->f()Lorg/jshybugger/dJ;

    move-result-object v0

    const-string v1, "Location"

    const-string v3, "/"

    invoke-virtual {v0, v1, v3}, Lorg/jshybugger/dJ;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_bc} :catch_bd

    goto :goto_6d

    .line 354
    :catch_bd
    move-exception v0

    const-string v0, "File does not contain a valid license (2)"

    iput-object v0, p0, Lorg/jshybugger/iw;->b:Ljava/lang/Object;

    .line 355
    sget-object v0, Lorg/jshybugger/ea;->e:Lorg/jshybugger/ea;

    invoke-virtual {v2, v0}, Lorg/jshybugger/dh;->a(Lorg/jshybugger/ea;)Lorg/jshybugger/du;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/du;->f()Lorg/jshybugger/dJ;

    move-result-object v0

    const-string v1, "Location"

    const-string v3, "/"

    invoke-virtual {v0, v1, v3}, Lorg/jshybugger/dJ;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    goto :goto_6d

    .line 331
    :catch_d4
    move-exception v0

    const-wide/16 v0, 0x0

    goto :goto_80

    .line 340
    :cond_d8
    add-int/lit8 v0, v5, 0xa

    :try_start_da
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jshybugger/jk;->a(Ljava/lang/String;)V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_e1} :catch_bd

    .line 343
    :try_start_e1
    const-string v0, "jsHybugger"

    const-string v1, "4.5.6"

    invoke-static {v0, v1}, Lorg/jshybugger/jk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/iw;->b:Ljava/lang/Object;
    :try_end_eb
    .catch Lorg/jshybugger/je; {:try_start_e1 .. :try_end_eb} :catch_1f4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_eb} :catch_bd

    .line 346
    :goto_eb
    :try_start_eb
    sget-object v0, Lorg/jshybugger/ea;->e:Lorg/jshybugger/ea;

    invoke-virtual {v2, v0}, Lorg/jshybugger/dh;->a(Lorg/jshybugger/ea;)Lorg/jshybugger/du;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/du;->f()Lorg/jshybugger/dJ;

    move-result-object v0

    const-string v1, "Location"

    const-string v3, "/"

    invoke-virtual {v0, v1, v3}, Lorg/jshybugger/dJ;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;

    goto/16 :goto_6d

    .line 350
    :cond_fe
    const-string v0, "File does not contain a valid license (1)"

    iput-object v0, p0, Lorg/jshybugger/iw;->b:Ljava/lang/Object;

    .line 351
    sget-object v0, Lorg/jshybugger/ea;->e:Lorg/jshybugger/ea;

    invoke-virtual {v2, v0}, Lorg/jshybugger/dh;->a(Lorg/jshybugger/ea;)Lorg/jshybugger/du;

    move-result-object v0

    invoke-interface {v0}, Lorg/jshybugger/du;->f()Lorg/jshybugger/dJ;

    move-result-object v0

    const-string v1, "Location"

    const-string v3, "/"

    invoke-virtual {v0, v1, v3}, Lorg/jshybugger/dJ;->b(Ljava/lang/String;Ljava/lang/Object;)Lorg/jshybugger/dJ;
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_113} :catch_bd

    goto/16 :goto_6d

    .line 358
    :cond_115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    const-string v0, "<!DOCTYPE html><html><body style=\'font-family:verdana\'>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    :try_start_11f
    iget-object v0, p0, Lorg/jshybugger/iw;->b:Ljava/lang/Object;

    if-nez v0, :cond_12d

    .line 363
    const-string v0, "jsHybugger"

    const-string v3, "4.5.6"

    invoke-static {v0, v3}, Lorg/jshybugger/jk;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jshybugger/iw;->b:Ljava/lang/Object;

    .line 365
    :cond_12d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "<img src=\"https://www.jshybugger.com/assets/img/logo-315"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/jshybugger/jk;->c()Z

    move-result v0

    if-eqz v0, :cond_1c4

    const-string v0, ""

    :goto_13c
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".png\"><br /><h1>jsHybugger"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " 4.5.6"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</h1>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "<p>"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jshybugger/iw;->b:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "</p>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_173
    .catch Lorg/jshybugger/je; {:try_start_11f .. :try_end_173} :catch_1c8

    .line 374
    :goto_173
    const-string v0, "<script>document.write(\"<form enctype=\'multipart/form-data\' action=\'/license/upload/\" + new Date().getTime() + \"\' method=\'post\'>\");</script>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-static {}, Lorg/jshybugger/jk;->c()Z

    move-result v0

    if-nez v0, :cond_19f

    .line 376
    iget-object v0, p0, Lorg/jshybugger/iw;->c:Lorg/jshybugger/iq;

    invoke-virtual {v0}, Lorg/jshybugger/iq;->a()V

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "<p>If you have a license, please use the dialog below to upload it.<br />Otherwise, <a target=\'_blank\' href=\'https://www.jshybugger.com/#!/buy\'>visit our store</a> to purchase a license or <a href=\'/?id="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/jshybugger/iw;->c:Lorg/jshybugger/iq;

    iget-object v3, v3, Lorg/jshybugger/iq;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'>start a limited session</a> without a license.</p>"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_19f
    const-string v0, "Upload license: <input style=\'background-color:grey\' name=\'upload\' type=\'file\'/>&nbsp;"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    const-string v0, "<input type=\'submit\' value=\'Upload\'/></form>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v0, "</body></html>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 385
    array-length v1, v0

    int-to-long v4, v1

    invoke-static {v2, v4, v5}, Lorg/jshybugger/dJ;->b(Lorg/jshybugger/dL;J)V

    .line 386
    invoke-virtual {v2}, Lorg/jshybugger/dh;->a()Lorg/jshybugger/H;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jshybugger/H;->b([B)Lorg/jshybugger/H;

    goto/16 :goto_6d

    .line 365
    :cond_1c4
    :try_start_1c4
    const-string v0, "-nl"
    :try_end_1c6
    .catch Lorg/jshybugger/je; {:try_start_1c4 .. :try_end_1c6} :catch_1c8

    goto/16 :goto_13c

    .line 367
    :catch_1c8
    move-exception v0

    .line 368
    const-string v3, "<img src=\"https://www.jshybugger.com/assets/img/logo-315-nl.png\"><br /><h1>jsHybugger 4.5.6</h1>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<p style=\'color:red\'>"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jshybugger/je;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</p>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const-string v3, "DebugServer"

    invoke-virtual {v0}, Lorg/jshybugger/je;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lorg/jshybugger/jf;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_173

    :catch_1f4
    move-exception v0

    goto/16 :goto_eb
.end method

.method public final a(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 297
    instance-of v0, p1, Lorg/jshybugger/dt;

    if-eqz v0, :cond_1a

    .line 298
    new-instance v0, Lorg/jshybugger/ef;

    check-cast p1, Lorg/jshybugger/dt;

    invoke-interface {p1}, Lorg/jshybugger/dt;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jshybugger/ef;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jshybugger/ef;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/license"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 300
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

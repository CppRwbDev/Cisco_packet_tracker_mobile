.class Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;
.super Ljava/lang/Object;
.source "ExtractStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/qtproject/qt5/android/ExtractStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimpleJsonWriter"
.end annotation


# instance fields
.field private m_addComma:Z

.field private m_indentLevel:I

.field private m_writer:Ljava/io/OutputStreamWriter;

.field final synthetic this$0:Lorg/qtproject/qt5/android/ExtractStyle;


# direct methods
.method public constructor <init>(Lorg/qtproject/qt5/android/ExtractStyle;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 274
    iput-object p1, p0, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->this$0:Lorg/qtproject/qt5/android/ExtractStyle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-boolean v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->m_addComma:Z

    .line 272
    iput v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->m_indentLevel:I

    .line 275
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    .line 276
    return-void
.end method

.method private writeIndent()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    const-string v1, " "

    const/4 v2, 0x0

    iget v3, p0, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->m_indentLevel:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;II)V

    .line 286
    return-void
.end method


# virtual methods
.method beginObject()Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-direct {p0}, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->writeIndent()V

    .line 291
    iget-object v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    const-string v1, "{\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 292
    iget v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->m_indentLevel:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->m_indentLevel:I

    .line 293
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->m_addComma:Z

    .line 294
    return-object p0
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 280
    iget-object v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    .line 281
    return-void
.end method

.method endObject()Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 299
    iget-object v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 300
    invoke-direct {p0}, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->writeIndent()V

    .line 301
    iget-object v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    const-string v1, "}\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 302
    iget v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->m_indentLevel:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->m_indentLevel:I

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->m_addComma:Z

    .line 304
    return-object p0
.end method

.method name(Ljava/lang/String;)Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    iget-boolean v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->m_addComma:Z

    if-eqz v0, :cond_b

    .line 310
    iget-object v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    const-string v1, ",\n"

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 312
    :cond_b
    invoke-direct {p0}, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->writeIndent()V

    .line 313
    iget-object v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 314
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->m_addComma:Z

    .line 315
    return-object p0
.end method

.method value(Lorg/json/JSONObject;)Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lorg/qtproject/qt5/android/ExtractStyle$SimpleJsonWriter;->m_writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 321
    return-object p0
.end method

.class final Lorg/jshybugger/hf;
.super Ljava/io/OutputStream;
.source "Slf4JLoggerFactory.java"


# instance fields
.field private synthetic a:Ljava/lang/StringBuffer;


# direct methods
.method constructor <init>(Lorg/jshybugger/he;Ljava/lang/StringBuffer;)V
    .registers 3

    .prologue
    .line 43
    iput-object p2, p0, Lorg/jshybugger/hf;->a:Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final write(I)V
    .registers 4

    .prologue
    .line 46
    iget-object v0, p0, Lorg/jshybugger/hf;->a:Ljava/lang/StringBuffer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 47
    return-void
.end method

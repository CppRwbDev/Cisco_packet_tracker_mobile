.class Lorg/qtproject/qt5/android/bindings/EmailClient$1;
.super Ljava/lang/Object;
.source "EmailClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/EmailClient;->sendFile(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/EmailClient;

.field final synthetic val$filePathParam:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/EmailClient;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/EmailClient;

    .prologue
    .line 24
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/EmailClient$1;->this$0:Lorg/qtproject/qt5/android/bindings/EmailClient;

    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/EmailClient$1;->val$filePathParam:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 28
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    .local v1, "i":Landroid/content/Intent;
    const-string v3, "android.intent.extra.SUBJECT"

    const-string v4, "PT Mobile file"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string v3, "android.intent.extra.TEXT"

    const-string v4, "PT file sent from PT Mobile"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 31
    const-string v3, "vnd.android.cursor.dir/email"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 33
    const-string v3, "EMCL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/qtproject/qt5/android/bindings/EmailClient$1;->val$filePathParam:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/qtproject/qt5/android/bindings/EmailClient$1;->val$filePathParam:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 35
    .local v2, "uri":Landroid/net/Uri;
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 38
    :try_start_48
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v3

    const-string v4, "Send mail..."

    invoke-static {v1, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/qtproject/qt5/android/bindings/QtActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_55
    .catch Landroid/content/ActivityNotFoundException; {:try_start_48 .. :try_end_55} :catch_56

    .line 44
    :goto_55
    return-void

    .line 40
    :catch_56
    move-exception v0

    .line 41
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v3

    const-string v4, "There are no email clients installed."

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_55
.end method

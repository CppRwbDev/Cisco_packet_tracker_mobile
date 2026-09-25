.class Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2$1;
.super Ljava/lang/Object;
.source "LoginDialogNetspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$2"    # Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;

    .prologue
    .line 220
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2$1;->this$2:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;

    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2$1;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 222
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 223
    .local v4, "httpclient":Lorg/apache/http/client/HttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    const-string v11, "https://82252856.netacad.com/login/oauth2/token"

    invoke-direct {v5, v11}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 225
    .local v5, "httppost":Lorg/apache/http/client/methods/HttpPost;
    :try_start_c
    new-instance v8, Ljava/util/ArrayList;

    const/4 v11, 0x3

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    .local v8, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "client_id"

    const-string v13, "10000000000068"

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "client_secret"

    const-string v13, "M4dmryRGAVAL4GQd0YolKfoyKlg8r02fvNyYPrWQ2jDaF7MmCM2S1clpYcznLMCt"

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    const-string v12, "code"

    iget-object v13, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2$1;->val$code:Ljava/lang/String;

    invoke-direct {v11, v12, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    new-instance v11, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v11, v8}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-virtual {v5, v11}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 230
    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    .line 231
    .local v10, "response":Lorg/apache/http/HttpResponse;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/InputStreamReader;

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v12

    invoke-interface {v12}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-direct {v11, v12, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v9, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 232
    .local v9, "reader":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    .local v7, "line":Ljava/lang/String;
    :goto_5c
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_80

    .line 234
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_6b} :catch_6c

    goto :goto_5c

    .line 242
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .end local v10    # "response":Lorg/apache/http/HttpResponse;
    :catch_6c
    move-exception v2

    .line 243
    .local v2, "e":Ljava/lang/Exception;
    const-string v11, "LDNE"

    const-string v12, "Login error:"

    invoke-static {v11, v12, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    iget-object v11, p0, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2$1;->this$2:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;

    iget-object v11, v11, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2$2;->this$1:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;

    iget-object v11, v11, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace$2;->this$0:Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;

    iget-object v11, v11, Lorg/qtproject/qt5/android/bindings/LoginDialogNetspace;->alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v11}, Landroid/app/AlertDialog;->dismiss()V

    .line 246
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_7f
    return-void

    .line 236
    .restart local v1    # "builder":Ljava/lang/StringBuilder;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v10    # "response":Lorg/apache/http/HttpResponse;
    :cond_80
    :try_start_80
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 237
    .local v6, "jObject":Lorg/json/JSONObject;
    const-string v11, "access_token"

    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "at":Ljava/lang/String;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 239
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v11, "accesstoken"

    invoke-interface {v3, v11, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 240
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_a4} :catch_6c

    goto :goto_7f
.end method

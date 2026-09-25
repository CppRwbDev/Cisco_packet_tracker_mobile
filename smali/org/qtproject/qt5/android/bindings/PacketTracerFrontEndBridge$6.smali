.class Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$6;
.super Ljava/lang/Object;
.source "PacketTracerFrontEndBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->RESTCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

.field final synthetic val$callback:Ljava/lang/String;

.field final synthetic val$header:Ljava/lang/String;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$param:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "this$0"    # Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    .prologue
    .line 1176
    iput-object p1, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$6;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    iput-object p2, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$6;->val$method:Ljava/lang/String;

    iput-object p3, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$6;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$6;->val$header:Ljava/lang/String;

    iput-object p5, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$6;->val$param:Ljava/lang/String;

    iput-object p6, p0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$6;->val$callback:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 25

    .prologue
    .line 1179
    const/16 v18, 0x1f7

    .line 1180
    .local v18, "statusCode":I
    const-string v17, ""

    .line 1182
    .local v17, "resultData":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1183
    .local v16, "response":Lorg/apache/http/HttpResponse;
    :try_start_6
    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 1184
    .local v4, "httpParameters":Lorg/apache/http/params/HttpParams;
    const/16 v20, 0x1f4

    move/from16 v0, v20

    invoke-static {v4, v0}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 1185
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 1187
    .local v5, "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    const-string v20, "POST"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$6;->val$method:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_168

    .line 1188
    new-instance v7, Lorg/apache/http/client/methods/HttpPost;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$6;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 1189
    .local v7, "httppost":Lorg/apache/http/client/methods/HttpPost;
    const-string v20, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$6;->val$header:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_71

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$6;->val$header:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1191
    .local v12, "kvPairs":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_51
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_71

    aget-object v11, v12, v20

    .line 1192
    .local v11, "kvPair":Ljava/lang/String;
    const-string v22, "="

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1193
    .local v10, "kv":[Ljava/lang/String;
    const/16 v22, 0x0

    aget-object v9, v10, v22

    .line 1194
    .local v9, "key":Ljava/lang/String;
    const/16 v22, 0x1

    aget-object v19, v10, v22

    .line 1195
    .local v19, "value":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v7, v9, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    add-int/lit8 v20, v20, 0x1

    goto :goto_51

    .line 1198
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "kv":[Ljava/lang/String;
    .end local v11    # "kvPair":Ljava/lang/String;
    .end local v12    # "kvPairs":[Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_71
    const-string v20, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$6;->val$param:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_cf

    .line 1199
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$6;->val$param:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1200
    .restart local v12    # "kvPairs":[Ljava/lang/String;
    new-instance v14, Ljava/util/ArrayList;

    array-length v0, v12

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-direct {v14, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1201
    .local v14, "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    array-length v0, v12

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_9a
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_c3

    aget-object v11, v12, v20

    .line 1202
    .restart local v11    # "kvPair":Ljava/lang/String;
    const-string v22, "="

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1203
    .restart local v10    # "kv":[Ljava/lang/String;
    const/16 v22, 0x0

    aget-object v9, v10, v22

    .line 1204
    .restart local v9    # "key":Ljava/lang/String;
    const/16 v22, 0x1

    aget-object v19, v10, v22

    .line 1205
    .restart local v19    # "value":Ljava/lang/String;
    new-instance v22, Lorg/apache/http/message/BasicNameValuePair;

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-direct {v0, v9, v1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1201
    add-int/lit8 v20, v20, 0x1

    goto :goto_9a

    .line 1207
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "kv":[Ljava/lang/String;
    .end local v11    # "kvPair":Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_c3
    new-instance v20, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    move-object/from16 v0, v20

    invoke-direct {v0, v14}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1209
    .end local v12    # "kvPairs":[Ljava/lang/String;
    .end local v14    # "nameValuePairs":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    :cond_cf
    invoke-virtual {v5, v7}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    .line 1223
    .end local v7    # "httppost":Lorg/apache/http/client/methods/HttpPost;
    :goto_d3
    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v18

    .line 1224
    new-instance v15, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v21

    const-string v22, "UTF-8"

    invoke-direct/range {v20 .. v22}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-direct {v15, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1225
    .local v15, "reader":Ljava/io/BufferedReader;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1226
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .local v13, "line":Ljava/lang/String;
    :goto_f7
    invoke-virtual {v15}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_1ba

    .line 1227
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_100
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_6 .. :try_end_100} :catch_101
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_100} :catch_1c0

    goto :goto_f7

    .line 1231
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v5    # "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v13    # "line":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    :catch_101
    move-exception v3

    .line 1232
    .local v3, "e":Lorg/apache/http/client/HttpResponseException;
    const-string v20, "JPTFB"

    const-string v21, "REST call error:"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v3}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1233
    invoke-virtual {v3}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v18

    .line 1238
    .end local v3    # "e":Lorg/apache/http/client/HttpResponseException;
    :goto_111
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "javascript:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$6;->val$callback:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "(\"%s\", \"%s\");"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$6;->this$0:Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->access$900(Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    const/16 v22, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1239
    .local v8, "js_call_url":Ljava/lang/String;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getFrontEndBridge()Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge;->getWebView()Landroid/webkit/WebView;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1240
    return-void

    .line 1211
    .end local v8    # "js_call_url":Ljava/lang/String;
    .restart local v4    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .restart local v5    # "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    :cond_168
    :try_start_168
    new-instance v6, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$6;->val$url:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1212
    .local v6, "httpget":Lorg/apache/http/client/methods/HttpGet;
    const-string v20, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$6;->val$header:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1b4

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/qtproject/qt5/android/bindings/PacketTracerFrontEndBridge$6;->val$header:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, ";"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 1214
    .restart local v12    # "kvPairs":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_194
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_1b4

    aget-object v11, v12, v20

    .line 1215
    .restart local v11    # "kvPair":Ljava/lang/String;
    const-string v22, "="

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1216
    .restart local v10    # "kv":[Ljava/lang/String;
    const/16 v22, 0x0

    aget-object v9, v10, v22

    .line 1217
    .restart local v9    # "key":Ljava/lang/String;
    const/16 v22, 0x1

    aget-object v19, v10, v22

    .line 1218
    .restart local v19    # "value":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v6, v9, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    add-int/lit8 v20, v20, 0x1

    goto :goto_194

    .line 1221
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "kv":[Ljava/lang/String;
    .end local v11    # "kvPair":Ljava/lang/String;
    .end local v12    # "kvPairs":[Ljava/lang/String;
    .end local v19    # "value":Ljava/lang/String;
    :cond_1b4
    invoke-virtual {v5, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v16

    goto/16 :goto_d3

    .line 1229
    .end local v6    # "httpget":Lorg/apache/http/client/methods/HttpGet;
    .restart local v2    # "builder":Ljava/lang/StringBuilder;
    .restart local v13    # "line":Ljava/lang/String;
    .restart local v15    # "reader":Ljava/io/BufferedReader;
    :cond_1ba
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1bd
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_168 .. :try_end_1bd} :catch_101
    .catch Ljava/lang/Exception; {:try_start_168 .. :try_end_1bd} :catch_1c0

    move-result-object v17

    goto/16 :goto_111

    .line 1235
    .end local v2    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "httpParameters":Lorg/apache/http/params/HttpParams;
    .end local v5    # "httpclient":Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v13    # "line":Ljava/lang/String;
    .end local v15    # "reader":Ljava/io/BufferedReader;
    :catch_1c0
    move-exception v3

    .line 1236
    .local v3, "e":Ljava/lang/Exception;
    const-string v20, "JPTFB"

    const-string v21, "REST call error"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v3}, Lorg/qtproject/qt5/android/bindings/PTJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_111
.end method

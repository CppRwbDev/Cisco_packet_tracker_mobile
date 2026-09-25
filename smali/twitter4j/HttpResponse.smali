.class public abstract Ltwitter4j/HttpResponse;
.super Ljava/lang/Object;
.source "HttpResponse.java"


# static fields
.field private static final logger:Ltwitter4j/Logger;


# instance fields
.field protected final CONF:Ltwitter4j/HttpClientConfiguration;

.field protected is:Ljava/io/InputStream;

.field private json:Ltwitter4j/JSONObject;

.field private jsonArray:Ltwitter4j/JSONArray;

.field protected responseAsString:Ljava/lang/String;

.field protected statusCode:I

.field private streamConsumed:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const-class v0, Ltwitter4j/HttpResponseImpl;

    invoke-static {v0}, Ltwitter4j/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/HttpResponse;->streamConsumed:Z

    .line 120
    iput-object v1, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    .line 164
    iput-object v1, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    .line 35
    invoke-static {}, Ltwitter4j/conf/ConfigurationContext;->getInstance()Ltwitter4j/conf/Configuration;

    move-result-object v0

    invoke-interface {v0}, Ltwitter4j/conf/Configuration;->getHttpClientConfiguration()Ltwitter4j/HttpClientConfiguration;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/HttpResponse;->CONF:Ltwitter4j/HttpClientConfiguration;

    .line 36
    return-void
.end method

.method public constructor <init>(Ltwitter4j/HttpClientConfiguration;)V
    .registers 4
    .param p1, "conf"    # Ltwitter4j/HttpClientConfiguration;

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/HttpResponse;->streamConsumed:Z

    .line 120
    iput-object v1, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    .line 164
    iput-object v1, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    .line 39
    iput-object p1, p0, Ltwitter4j/HttpResponse;->CONF:Ltwitter4j/HttpClientConfiguration;

    .line 40
    return-void
.end method

.method private disconnectForcibly()V
    .registers 2

    .prologue
    .line 218
    :try_start_0
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 221
    :goto_3
    return-void

    .line 219
    :catch_4
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public asJSONArray()Ltwitter4j/JSONArray;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 174
    iget-object v2, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    if-nez v2, :cond_35

    .line 175
    const/4 v1, 0x0

    .line 177
    .local v1, "reader":Ljava/io/Reader;
    :try_start_5
    iget-object v2, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    if-nez v2, :cond_38

    .line 178
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asReader()Ljava/io/Reader;

    move-result-object v1

    .line 179
    new-instance v2, Ltwitter4j/JSONArray;

    new-instance v3, Ltwitter4j/JSONTokener;

    invoke-direct {v3, v1}, Ltwitter4j/JSONTokener;-><init>(Ljava/io/Reader;)V

    invoke-direct {v2, v3}, Ltwitter4j/JSONArray;-><init>(Ltwitter4j/JSONTokener;)V

    iput-object v2, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    .line 183
    :goto_19
    iget-object v2, p0, Ltwitter4j/HttpResponse;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_78

    .line 184
    sget-object v2, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    iget-object v3, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ltwitter4j/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_2d
    .catch Ltwitter4j/JSONException; {:try_start_5 .. :try_end_2d} :catch_42
    .catchall {:try_start_5 .. :try_end_2d} :catchall_6e

    .line 196
    :goto_2d
    if-eqz v1, :cond_32

    .line 198
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_95

    .line 202
    :cond_32
    :goto_32
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    .line 205
    .end local v1    # "reader":Ljava/io/Reader;
    :cond_35
    iget-object v2, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    return-object v2

    .line 181
    .restart local v1    # "reader":Ljava/io/Reader;
    :cond_38
    :try_start_38
    new-instance v2, Ltwitter4j/JSONArray;

    iget-object v3, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-direct {v2, v3}, Ltwitter4j/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;
    :try_end_41
    .catch Ltwitter4j/JSONException; {:try_start_38 .. :try_end_41} :catch_42
    .catchall {:try_start_38 .. :try_end_41} :catchall_6e

    goto :goto_19

    .line 189
    :catch_42
    move-exception v0

    .line 190
    .local v0, "jsone":Ltwitter4j/JSONException;
    :try_start_43
    sget-object v2, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    invoke-virtual {v2}, Ltwitter4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_8b

    .line 191
    new-instance v2, Ltwitter4j/TwitterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_6e
    .catchall {:try_start_43 .. :try_end_6e} :catchall_6e

    .line 196
    .end local v0    # "jsone":Ltwitter4j/JSONException;
    :catchall_6e
    move-exception v2

    if-eqz v1, :cond_74

    .line 198
    :try_start_71
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_97

    .line 202
    :cond_74
    :goto_74
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    throw v2

    .line 186
    :cond_78
    :try_start_78
    sget-object v3, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    iget-object v2, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    if-eqz v2, :cond_84

    iget-object v2, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    :goto_80
    invoke-virtual {v3, v2}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2d

    :cond_84
    iget-object v2, p0, Ltwitter4j/HttpResponse;->jsonArray:Ltwitter4j/JSONArray;

    .line 187
    invoke-virtual {v2}, Ltwitter4j/JSONArray;->toString()Ljava/lang/String;
    :try_end_89
    .catch Ltwitter4j/JSONException; {:try_start_78 .. :try_end_89} :catch_42
    .catchall {:try_start_78 .. :try_end_89} :catchall_6e

    move-result-object v2

    goto :goto_80

    .line 193
    .restart local v0    # "jsone":Ltwitter4j/JSONException;
    :cond_8b
    :try_start_8b
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-virtual {v0}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_95
    .catchall {:try_start_8b .. :try_end_95} :catchall_6e

    .line 199
    .end local v0    # "jsone":Ltwitter4j/JSONException;
    :catch_95
    move-exception v2

    goto :goto_32

    :catch_97
    move-exception v3

    goto :goto_74
.end method

.method public asJSONObject()Ltwitter4j/JSONObject;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 130
    iget-object v2, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    if-nez v2, :cond_35

    .line 131
    const/4 v1, 0x0

    .line 133
    .local v1, "reader":Ljava/io/Reader;
    :try_start_5
    iget-object v2, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    if-nez v2, :cond_38

    .line 134
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asReader()Ljava/io/Reader;

    move-result-object v1

    .line 135
    new-instance v2, Ltwitter4j/JSONObject;

    new-instance v3, Ltwitter4j/JSONTokener;

    invoke-direct {v3, v1}, Ltwitter4j/JSONTokener;-><init>(Ljava/io/Reader;)V

    invoke-direct {v2, v3}, Ltwitter4j/JSONObject;-><init>(Ltwitter4j/JSONTokener;)V

    iput-object v2, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    .line 139
    :goto_19
    iget-object v2, p0, Ltwitter4j/HttpResponse;->CONF:Ltwitter4j/HttpClientConfiguration;

    invoke-interface {v2}, Ltwitter4j/HttpClientConfiguration;->isPrettyDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 140
    sget-object v2, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    iget-object v3, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ltwitter4j/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_2d
    .catch Ltwitter4j/JSONException; {:try_start_5 .. :try_end_2d} :catch_42
    .catchall {:try_start_5 .. :try_end_2d} :catchall_51

    .line 152
    :goto_2d
    if-eqz v1, :cond_32

    .line 154
    :try_start_2f
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_91

    .line 158
    :cond_32
    :goto_32
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    .line 161
    .end local v1    # "reader":Ljava/io/Reader;
    :cond_35
    iget-object v2, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    return-object v2

    .line 137
    .restart local v1    # "reader":Ljava/io/Reader;
    :cond_38
    :try_start_38
    new-instance v2, Ltwitter4j/JSONObject;

    iget-object v3, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-direct {v2, v3}, Ltwitter4j/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;
    :try_end_41
    .catch Ltwitter4j/JSONException; {:try_start_38 .. :try_end_41} :catch_42
    .catchall {:try_start_38 .. :try_end_41} :catchall_51

    goto :goto_19

    .line 145
    :catch_42
    move-exception v0

    .line 146
    .local v0, "jsone":Ltwitter4j/JSONException;
    :try_start_43
    iget-object v2, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    if-nez v2, :cond_6e

    .line 147
    new-instance v2, Ltwitter4j/TwitterException;

    invoke-virtual {v0}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_51
    .catchall {:try_start_43 .. :try_end_51} :catchall_51

    .line 152
    .end local v0    # "jsone":Ltwitter4j/JSONException;
    :catchall_51
    move-exception v2

    if-eqz v1, :cond_57

    .line 154
    :try_start_54
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_93

    .line 158
    :cond_57
    :goto_57
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    throw v2

    .line 142
    :cond_5b
    :try_start_5b
    sget-object v3, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    iget-object v2, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    if-eqz v2, :cond_67

    iget-object v2, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    :goto_63
    invoke-virtual {v3, v2}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2d

    :cond_67
    iget-object v2, p0, Ltwitter4j/HttpResponse;->json:Ltwitter4j/JSONObject;

    .line 143
    invoke-virtual {v2}, Ltwitter4j/JSONObject;->toString()Ljava/lang/String;
    :try_end_6c
    .catch Ltwitter4j/JSONException; {:try_start_5b .. :try_end_6c} :catch_42
    .catchall {:try_start_5b .. :try_end_6c} :catchall_51

    move-result-object v2

    goto :goto_63

    .line 149
    .restart local v0    # "jsone":Ltwitter4j/JSONException;
    :cond_6e
    :try_start_6e
    new-instance v2, Ltwitter4j/TwitterException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ltwitter4j/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_91
    .catchall {:try_start_6e .. :try_end_91} :catchall_51

    .line 155
    .end local v0    # "jsone":Ltwitter4j/JSONException;
    :catch_91
    move-exception v2

    goto :goto_32

    :catch_93
    move-exception v3

    goto :goto_57
.end method

.method public asReader()Ljava/io/Reader;
    .registers 6

    .prologue
    .line 210
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    iget-object v3, p0, Ltwitter4j/HttpResponse;->is:Ljava/io/InputStream;

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_e} :catch_f

    .line 212
    :goto_e
    return-object v1

    .line 211
    :catch_f
    move-exception v0

    .line 212
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/io/InputStreamReader;

    iget-object v2, p0, Ltwitter4j/HttpResponse;->is:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_e
.end method

.method public asStream()Ljava/io/InputStream;
    .registers 3

    .prologue
    .line 67
    iget-boolean v0, p0, Ltwitter4j/HttpResponse;->streamConsumed:Z

    if-eqz v0, :cond_c

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stream has already been consumed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_c
    iget-object v0, p0, Ltwitter4j/HttpResponse;->is:Ljava/io/InputStream;

    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v6, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    if-nez v6, :cond_77

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 85
    .local v5, "stream":Ljava/io/InputStream;
    :try_start_6
    invoke-virtual {p0}, Ltwitter4j/HttpResponse;->asStream()Ljava/io/InputStream;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_9} :catch_89
    .catchall {:try_start_6 .. :try_end_9} :catchall_48

    move-result-object v5

    .line 86
    if-nez v5, :cond_1b

    .line 87
    const/4 v6, 0x0

    .line 102
    if-eqz v5, :cond_12

    .line 104
    :try_start_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_7a

    .line 108
    :cond_12
    :goto_12
    if-eqz v0, :cond_17

    .line 110
    :try_start_14
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_7c

    .line 114
    :cond_17
    :goto_17
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    .line 117
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "stream":Ljava/io/InputStream;
    :goto_1a
    return-object v6

    .line 89
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "stream":Ljava/io/InputStream;
    :cond_1b
    :try_start_1b
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v5, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_27} :catch_89
    .catchall {:try_start_1b .. :try_end_27} :catchall_48

    .line 90
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v2, "buf":Ljava/lang/StringBuilder;
    :goto_2c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_57

    .line 93
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_3b} :catch_3c
    .catchall {:try_start_27 .. :try_end_3b} :catchall_86

    goto :goto_2c

    .line 99
    .end local v2    # "buf":Ljava/lang/StringBuilder;
    .end local v4    # "line":Ljava/lang/String;
    :catch_3c
    move-exception v3

    move-object v0, v1

    .line 100
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v3, "ioe":Ljava/io/IOException;
    :goto_3e
    :try_start_3e
    new-instance v6, Ltwitter4j/TwitterException;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v3}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_48

    .line 102
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_48
    move-exception v6

    :goto_49
    if-eqz v5, :cond_4e

    .line 104
    :try_start_4b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_82

    .line 108
    :cond_4e
    :goto_4e
    if-eqz v0, :cond_53

    .line 110
    :try_start_50
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_84

    .line 114
    :cond_53
    :goto_53
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    throw v6

    .line 95
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/lang/StringBuilder;
    .restart local v4    # "line":Ljava/lang/String;
    :cond_57
    :try_start_57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    .line 96
    sget-object v6, Ltwitter4j/HttpResponse;->logger:Ltwitter4j/Logger;

    iget-object v7, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ltwitter4j/Logger;->debug(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 98
    const/4 v6, 0x1

    iput-boolean v6, p0, Ltwitter4j/HttpResponse;->streamConsumed:Z
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_6a} :catch_3c
    .catchall {:try_start_57 .. :try_end_6a} :catchall_86

    .line 102
    if-eqz v5, :cond_6f

    .line 104
    :try_start_6c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_6f
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6f} :catch_7e

    .line 108
    :cond_6f
    :goto_6f
    if-eqz v1, :cond_74

    .line 110
    :try_start_71
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_80

    .line 114
    :cond_74
    :goto_74
    invoke-direct {p0}, Ltwitter4j/HttpResponse;->disconnectForcibly()V

    .line 117
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "buf":Ljava/lang/StringBuilder;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "stream":Ljava/io/InputStream;
    :cond_77
    iget-object v6, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    goto :goto_1a

    .line 105
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "stream":Ljava/io/InputStream;
    :catch_7a
    move-exception v7

    goto :goto_12

    .line 111
    :catch_7c
    move-exception v7

    goto :goto_17

    .line 105
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/lang/StringBuilder;
    .restart local v4    # "line":Ljava/lang/String;
    :catch_7e
    move-exception v6

    goto :goto_6f

    .line 111
    :catch_80
    move-exception v6

    goto :goto_74

    .line 105
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "buf":Ljava/lang/StringBuilder;
    .end local v4    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_82
    move-exception v7

    goto :goto_4e

    .line 111
    :catch_84
    move-exception v7

    goto :goto_53

    .line 102
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_86
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_49

    .line 99
    :catch_89
    move-exception v3

    goto :goto_3e
.end method

.method public abstract disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getResponseHeaderFields()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public getStatusCode()I
    .registers 2

    .prologue
    .line 48
    iget v0, p0, Ltwitter4j/HttpResponse;->statusCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpResponse{statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/HttpResponse;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseAsString=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpResponse;->responseAsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", is="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/HttpResponse;->is:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", streamConsumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/HttpResponse;->streamConsumed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

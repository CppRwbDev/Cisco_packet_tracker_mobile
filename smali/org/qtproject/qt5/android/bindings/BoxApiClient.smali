.class public Lorg/qtproject/qt5/android/bindings/BoxApiClient;
.super Landroid/app/Activity;
.source "BoxApiClient.java"


# instance fields
.field private activity:Ljava/lang/String;

.field private m_webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/qtproject/qt5/android/bindings/BoxApiClient;Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;)V
    .registers 2
    .param p0, "x0"    # Lorg/qtproject/qt5/android/bindings/BoxApiClient;
    .param p1, "x1"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->saveAuth(Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;)V

    return-void
.end method

.method private authenticate(Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;)V
    .registers 9
    .param p1, "auth"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;

    .prologue
    const/4 v3, 0x0

    .line 188
    const-string v0, "tag"

    const-string v1, "authenticating"

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    new-instance v0, Lcom/box/boxandroidlibv2/BoxAndroidClient;

    const-string v1, "j77x7mbkzjug0i1oiz6s1z4rasvddo5w"

    const-string v2, "VIsFNi7jG2uLNTHY84PFgw06KEgoIWGi"

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/box/boxandroidlibv2/BoxAndroidClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;Lcom/box/boxjavalibv2/IBoxConfig;)V

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->setBoxClient(Lcom/box/boxandroidlibv2/BoxAndroidClient;)V

    .line 190
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getBoxClient()Lcom/box/boxandroidlibv2/BoxAndroidClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/box/boxandroidlibv2/BoxAndroidClient;->authenticate(Lcom/box/boxjavalibv2/dao/IAuthData;)V

    .line 192
    invoke-direct {p0, p1}, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->saveAuth(Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;)V

    .line 193
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getBoxClient()Lcom/box/boxandroidlibv2/BoxAndroidClient;

    move-result-object v0

    new-instance v1, Lorg/qtproject/qt5/android/bindings/BoxApiClient$1;

    invoke-direct {v1, p0}, Lorg/qtproject/qt5/android/bindings/BoxApiClient$1;-><init>(Lorg/qtproject/qt5/android/bindings/BoxApiClient;)V

    invoke-virtual {v0, v1}, Lcom/box/boxandroidlibv2/BoxAndroidClient;->addOAuthRefreshListener(Lcom/box/boxjavalibv2/authorization/OAuthRefreshListener;)V

    .line 201
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->activity:Ljava/lang/String;

    const-string v1, "listfiles"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 203
    new-instance v6, Lorg/qtproject/qt5/android/bindings/BoxFileListing;

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getBoxClient()Lcom/box/boxandroidlibv2/BoxAndroidClient;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/qtproject/qt5/android/bindings/BoxFileListing;-><init>(Lcom/box/boxandroidlibv2/BoxAndroidClient;)V

    .line 204
    .local v6, "list":Lorg/qtproject/qt5/android/bindings/BoxFileListing;
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v6, v0}, Lorg/qtproject/qt5/android/bindings/BoxFileListing;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 206
    .end local v6    # "list":Lorg/qtproject/qt5/android/bindings/BoxFileListing;
    :cond_45
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->finish()V

    .line 207
    return-void
.end method

.method private authenticateFromSavedAuth()Z
    .registers 4

    .prologue
    .line 143
    const-string v1, "tag"

    const-string v2, "authenticateFromSavedAuth"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-direct {p0}, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->loadSavedAuth()Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;

    move-result-object v0

    .line 145
    .local v0, "auth":Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;
    if-eqz v0, :cond_19

    .line 146
    const-string v1, "tag"

    const-string v2, "auth is not null"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, v0}, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->authenticate(Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;)V

    .line 148
    const/4 v1, 0x1

    .line 152
    :goto_18
    return v1

    .line 151
    :cond_19
    const-string v1, "tag"

    const-string v2, "auth is null"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v1, 0x0

    goto :goto_18
.end method

.method private authenticated()Z
    .registers 3

    .prologue
    .line 245
    const-string v0, "tag"

    const-string v1, "authenticated"

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getBoxClient()Lcom/box/boxandroidlibv2/BoxAndroidClient;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getBoxClient()Lcom/box/boxandroidlibv2/BoxAndroidClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/box/boxandroidlibv2/BoxAndroidClient;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method static getPTMobileFolderId(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 57
    const-string v5, "0"

    .line 59
    .local v5, "ptMobileId":Ljava/lang/String;
    :try_start_2
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getBoxClient()Lcom/box/boxandroidlibv2/BoxAndroidClient;

    move-result-object v8

    invoke-virtual {v8}, Lcom/box/boxandroidlibv2/BoxAndroidClient;->getFoldersManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxFoldersManager;

    move-result-object v8

    const-string v9, "0"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Lcom/box/boxjavalibv2/resourcemanagers/IBoxFoldersManager;->getFolderItems(Ljava/lang/String;Lcom/box/boxjavalibv2/requests/requestobjects/BoxPagingRequestObject;)Lcom/box/boxjavalibv2/dao/BoxCollection;

    move-result-object v7

    check-cast v7, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;

    .line 60
    .local v7, "rootDir":Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;
    invoke-virtual {v7}, Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;->getEntries()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1b
    :goto_1b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_54

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/box/boxjavalibv2/dao/BoxTypedObject;

    .line 62
    .local v2, "entry":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    move-object v0, v2

    check-cast v0, Lcom/box/boxjavalibv2/dao/BoxItem;

    move-object v4, v0

    .line 63
    .local v4, "item":Lcom/box/boxjavalibv2/dao/BoxItem;
    instance-of v9, v2, Lcom/box/boxandroidlibv2/dao/BoxAndroidFolder;

    if-eqz v9, :cond_1b

    .line 65
    invoke-virtual {v4}, Lcom/box/boxjavalibv2/dao/BoxItem;->getName()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, "folderName":Ljava/lang/String;
    const-string v9, "folder"

    invoke-static {v9, v3}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v9, "/"

    const-string v10, ""

    invoke-virtual {p0, v9, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 70
    invoke-virtual {v2}, Lcom/box/boxjavalibv2/dao/BoxTypedObject;->getId()Ljava/lang/String;

    move-result-object v5

    .line 71
    const-string v9, "folder is there"

    invoke-static {v9, v5}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catch Lcom/box/boxjavalibv2/exceptions/BoxServerException; {:try_start_2 .. :try_end_4f} :catch_50
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_2 .. :try_end_4f} :catch_5d
    .catch Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException; {:try_start_2 .. :try_end_4f} :catch_62

    goto :goto_1b

    .line 76
    .end local v2    # "entry":Lcom/box/boxjavalibv2/dao/BoxTypedObject;
    .end local v3    # "folderName":Ljava/lang/String;
    .end local v4    # "item":Lcom/box/boxjavalibv2/dao/BoxItem;
    .end local v7    # "rootDir":Lcom/box/boxandroidlibv2/dao/BoxAndroidCollection;
    :catch_50
    move-exception v1

    .line 78
    .local v1, "e":Lcom/box/boxjavalibv2/exceptions/BoxServerException;
    invoke-virtual {v1}, Lcom/box/boxjavalibv2/exceptions/BoxServerException;->printStackTrace()V

    .line 88
    .end local v1    # "e":Lcom/box/boxjavalibv2/exceptions/BoxServerException;
    :cond_54
    :goto_54
    const-string v8, "0"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_67

    .line 111
    .end local v5    # "ptMobileId":Ljava/lang/String;
    :goto_5c
    return-object v5

    .line 80
    .restart local v5    # "ptMobileId":Ljava/lang/String;
    :catch_5d
    move-exception v1

    .line 82
    .local v1, "e":Lcom/box/restclientv2/exceptions/BoxRestException;
    invoke-virtual {v1}, Lcom/box/restclientv2/exceptions/BoxRestException;->printStackTrace()V

    goto :goto_54

    .line 84
    .end local v1    # "e":Lcom/box/restclientv2/exceptions/BoxRestException;
    :catch_62
    move-exception v1

    .line 86
    .local v1, "e":Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
    invoke-virtual {v1}, Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;->printStackTrace()V

    goto :goto_54

    .line 94
    .end local v1    # "e":Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
    :cond_67
    :try_start_67
    const-string v8, "PT_Mobile"

    const-string v9, "0"

    invoke-static {v8, v9}, Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;->createFolderRequestObject(Ljava/lang/String;Ljava/lang/String;)Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;

    move-result-object v6

    .line 95
    .local v6, "request":Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getBoxClient()Lcom/box/boxandroidlibv2/BoxAndroidClient;

    move-result-object v8

    invoke-virtual {v8}, Lcom/box/boxandroidlibv2/BoxAndroidClient;->getFoldersManager()Lcom/box/boxjavalibv2/resourcemanagers/IBoxFoldersManager;

    move-result-object v8

    invoke-interface {v8, v6}, Lcom/box/boxjavalibv2/resourcemanagers/IBoxFoldersManager;->createFolder(Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;)Lcom/box/boxjavalibv2/dao/BoxFolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/box/boxjavalibv2/dao/BoxFolder;->getId()Ljava/lang/String;
    :try_end_7e
    .catch Lcom/box/boxjavalibv2/exceptions/BoxServerException; {:try_start_67 .. :try_end_7e} :catch_80
    .catch Lcom/box/restclientv2/exceptions/BoxRestException; {:try_start_67 .. :try_end_7e} :catch_8c
    .catch Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException; {:try_start_67 .. :try_end_7e} :catch_91

    move-result-object v5

    goto :goto_5c

    .line 97
    .end local v6    # "request":Lcom/box/boxjavalibv2/requests/requestobjects/BoxFolderRequestObject;
    :catch_80
    move-exception v1

    .line 99
    .local v1, "e":Lcom/box/boxjavalibv2/exceptions/BoxServerException;
    invoke-virtual {v1}, Lcom/box/boxjavalibv2/exceptions/BoxServerException;->printStackTrace()V

    .line 110
    .end local v1    # "e":Lcom/box/boxjavalibv2/exceptions/BoxServerException;
    :goto_84
    const-string v8, "getPTMobileFolderId"

    const-string v9, "Unable to create PT_Mobile folder"

    invoke-static {v8, v9}, Lorg/qtproject/qt5/android/bindings/PTJLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    .line 101
    :catch_8c
    move-exception v1

    .line 103
    .local v1, "e":Lcom/box/restclientv2/exceptions/BoxRestException;
    invoke-virtual {v1}, Lcom/box/restclientv2/exceptions/BoxRestException;->printStackTrace()V

    goto :goto_84

    .line 105
    .end local v1    # "e":Lcom/box/restclientv2/exceptions/BoxRestException;
    :catch_91
    move-exception v1

    .line 107
    .local v1, "e":Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;
    invoke-virtual {v1}, Lcom/box/boxjavalibv2/exceptions/AuthFatalFailureException;->printStackTrace()V

    goto :goto_84
.end method

.method private loadSavedAuth()Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;
    .registers 8

    .prologue
    .line 225
    const-string v4, "tag"

    const-string v5, "loadSavedAuth"

    invoke-static {v4, v5}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getBoxSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "authdatastring"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "authString":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/commons/lang/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 228
    const-string v4, "tag"

    const-string v5, "authString is not empty"

    invoke-static {v4, v5}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :try_start_20
    new-instance v3, Lcom/box/boxjavalibv2/jsonparsing/BoxJSONParser;

    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/box/boxjavalibv2/jsonparsing/BoxJSONParser;-><init>(Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;)V

    .line 231
    .local v3, "parser":Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    const-class v4, Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;

    invoke-interface {v3, v1, v4}, Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;->parseIntoBoxObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;

    .line 232
    .local v0, "auth":Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;
    const-string v4, "tag"

    const-string v5, "loadSavedAuth is done, return auth"

    invoke-static {v4, v5}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_38} :catch_39

    .line 241
    .end local v0    # "auth":Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;
    .end local v3    # "parser":Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    :goto_38
    return-object v0

    .line 235
    :catch_39
    move-exception v2

    .line 237
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 240
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3d
    const-string v4, "tag"

    const-string v5, "authString is empty"

    invoke-static {v4, v5}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const/4 v0, 0x0

    goto :goto_38
.end method

.method private onAuthenticated(ILandroid/content/Intent;)V
    .registers 6
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 176
    const-string v1, "tag"

    const-string v2, "onAuthenticated"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v1, -0x1

    if-eq v1, p1, :cond_2f

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "exception"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 179
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->finish()V

    .line 185
    :goto_2e
    return-void

    .line 182
    :cond_2f
    const-string v1, "boxAndroidClient_oauth"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;

    .line 183
    .local v0, "oauth":Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;
    invoke-direct {p0, v0}, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->authenticate(Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;)V

    goto :goto_2e
.end method

.method private saveAuth(Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;)V
    .registers 7
    .param p1, "auth"    # Lcom/box/boxandroidlibv2/dao/BoxAndroidOAuthData;

    .prologue
    .line 210
    const-string v3, "tag"

    const-string v4, "saveAuth"

    invoke-static {v3, v4}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :try_start_7
    new-instance v2, Lcom/box/boxjavalibv2/jsonparsing/BoxJSONParser;

    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/box/boxjavalibv2/jsonparsing/BoxJSONParser;-><init>(Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;)V

    .line 213
    .local v2, "parser":Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    invoke-interface {v2, p1}, Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;->convertBoxObjectToJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "authString":Ljava/lang/String;
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getBoxSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 216
    .local v1, "e":Landroid/content/SharedPreferences$Editor;
    const-string v3, "authdatastring"

    invoke-interface {v1, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_24} :catch_25

    .line 222
    .end local v0    # "authString":Ljava/lang/String;
    .end local v1    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "parser":Lcom/box/boxjavalibv2/jsonparsing/IBoxJSONParser;
    :goto_24
    return-void

    .line 219
    :catch_25
    move-exception v1

    .line 220
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method

.method private startAuthenticationFromUI()V
    .registers 6

    .prologue
    .line 169
    const-string v1, "tag"

    const-string v2, "startAuthenticationFromUI"

    invoke-static {v1, v2}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v1, "j77x7mbkzjug0i1oiz6s1z4rasvddo5w"

    const-string v2, "VIsFNi7jG2uLNTHY84PFgw06KEgoIWGi"

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {p0, v1, v2, v3, v4}, Lcom/box/boxandroidlibv2/activities/OAuthActivity;->createOAuthActivityIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 172
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->startActivityForResult(Landroid/content/Intent;I)V

    .line 173
    return-void
.end method


# virtual methods
.method public getResourceHub()Lcom/box/boxjavalibv2/jsonparsing/IBoxResourceHub;
    .registers 2

    .prologue
    .line 52
    new-instance v0, Lcom/box/boxandroidlibv2/jsonparsing/AndroidBoxResourceHub;

    invoke-direct {v0}, Lcom/box/boxandroidlibv2/jsonparsing/AndroidBoxResourceHub;-><init>()V

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 157
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 158
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 159
    if-nez p2, :cond_13

    .line 160
    iget-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->m_webView:Landroid/webkit/WebView;

    const-string v1, "javascript:failToAuthenticateWithBox();"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->finish()V

    .line 166
    :cond_12
    :goto_12
    return-void

    .line 163
    :cond_13
    invoke-direct {p0, p2, p3}, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->onAuthenticated(ILandroid/content/Intent;)V

    goto :goto_12
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 116
    const-string v0, "tag"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->setContentView(I)V

    .line 119
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->androidQtActivity()Lorg/qtproject/qt5/android/bindings/QtActivity;

    move-result-object v0

    const v1, 0x7f0a0038

    invoke-virtual {v0, v1}, Lorg/qtproject/qt5/android/bindings/QtActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->m_webView:Landroid/webkit/WebView;

    .line 120
    invoke-static {}, Lorg/qtproject/qt5/android/bindings/QtActivity;->getBoxSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_2f

    .line 122
    const-string v0, "boxAuth"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lorg/qtproject/qt5/android/bindings/QtActivity;->setBoxSharedPreferences(Landroid/content/SharedPreferences;)V

    .line 125
    :cond_2f
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACTIVITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->activity:Ljava/lang/String;

    .line 127
    invoke-direct {p0}, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->authenticateFromSavedAuth()Z

    move-result v0

    if-nez v0, :cond_45

    .line 129
    invoke-direct {p0}, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->startAuthenticationFromUI()V

    .line 139
    :goto_44
    return-void

    .line 134
    :cond_45
    const-string v0, "tag"

    const-string v1, "finish"

    invoke-static {v0, v1}, Lorg/qtproject/qt5/android/bindings/PTJLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lorg/qtproject/qt5/android/bindings/BoxApiClient;->finish()V

    goto :goto_44
.end method

.class public Lcom/dropbox/client2/android/AuthActivity;
.super Landroid/app/Activity;
.source "AuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/client2/android/AuthActivity$SecurityProvider;
    }
.end annotation


# static fields
.field public static final ACTION_AUTHENTICATE_V1:Ljava/lang/String; = "com.dropbox.android.AUTHENTICATE_V1"

.field public static final ACTION_AUTHENTICATE_V2:Ljava/lang/String; = "com.dropbox.android.AUTHENTICATE_V2"

.field public static final AUTH_PATH_CONNECT:Ljava/lang/String; = "/connect"

.field public static final AUTH_VERSION:I = 0x1

.field private static final DEFAULT_WEB_HOST:Ljava/lang/String; = "www.dropbox.com"

.field private static final DROPBOX_APP_SIGNATURES:[Ljava/lang/String;

.field public static final EXTRA_ACCESS_SECRET:Ljava/lang/String; = "ACCESS_SECRET"

.field public static final EXTRA_ACCESS_TOKEN:Ljava/lang/String; = "ACCESS_TOKEN"

.field public static final EXTRA_AUTH_STATE:Ljava/lang/String; = "AUTH_STATE"

.field public static final EXTRA_CALLING_CLASS:Ljava/lang/String; = "CALLING_CLASS"

.field public static final EXTRA_CALLING_PACKAGE:Ljava/lang/String; = "CALLING_PACKAGE"

.field public static final EXTRA_CONSUMER_KEY:Ljava/lang/String; = "CONSUMER_KEY"

.field public static final EXTRA_CONSUMER_SIG:Ljava/lang/String; = "CONSUMER_SIG"

.field static final EXTRA_INTERNAL_API_TYPE:Ljava/lang/String; = "EXTRA_INTERNAL_API_TYPE"

.field static final EXTRA_INTERNAL_APP_KEY:Ljava/lang/String; = "EXTRA_INTERNAL_APP_KEY"

.field static final EXTRA_INTERNAL_APP_SECRET:Ljava/lang/String; = "EXTRA_INTERNAL_APP_SECRET"

.field static final EXTRA_INTERNAL_WEB_HOST:Ljava/lang/String; = "EXTRA_INTERNAL_WEB_HOST"

.field public static final EXTRA_UID:Ljava/lang/String; = "UID"

.field private static final TAG:Ljava/lang/String;

.field public static result:Landroid/content/Intent;

.field private static sSecurityProvider:Lcom/dropbox/client2/android/AuthActivity$SecurityProvider;

.field private static final sSecurityProviderLock:Ljava/lang/Object;


# instance fields
.field private apiType:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private appSecret:Ljava/lang/String;

.field private authStateNonce:Ljava/lang/String;

.field private webHost:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 39
    const-class v0, Lcom/dropbox/client2/android/AuthActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/client2/android/AuthActivity;->TAG:Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/dropbox/client2/android/AuthActivity$1;

    invoke-direct {v0}, Lcom/dropbox/client2/android/AuthActivity$1;-><init>()V

    sput-object v0, Lcom/dropbox/client2/android/AuthActivity;->sSecurityProvider:Lcom/dropbox/client2/android/AuthActivity$SecurityProvider;

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/dropbox/client2/android/AuthActivity;->sSecurityProviderLock:Ljava/lang/Object;

    .line 144
    const/4 v0, 0x0

    sput-object v0, Lcom/dropbox/client2/android/AuthActivity;->result:Landroid/content/Intent;

    .line 512
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "308202223082018b02044bd207bd300d06092a864886f70d01010405003058310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f3110300e060355040a130744726f70626f783112301006035504031309546f6d204d65796572301e170d3130303432333230343930315a170d3430303431353230343930315a3058310b3009060355040613025553310b3009060355040813024341311630140603550407130d53616e204672616e636973636f3110300e060355040a130744726f70626f783112301006035504031309546f6d204d6579657230819f300d06092a864886f70d010101050003818d0030818902818100ac1595d0ab278a9577f0ca5a14144f96eccde75f5616f36172c562fab0e98c48ad7d64f1091c6cc11ce084a4313d522f899378d312e112a748827545146a779defa7c31d8c00c2ed73135802f6952f59798579859e0214d4e9c0554b53b26032a4d2dfc2f62540d776df2ea70e2a6152945fb53fef5bac5344251595b729d4810203010001300d06092a864886f70d01010405000381810055c425d94d036153203dc0bbeb3516f94563b102fff39c3d4ed91278db24fc4424a244c2e59f03bbfea59404512b8bf74662f2a32e37eafa2ac904c31f99cfc21c9ff375c977c432d3b6ec22776f28767d0f292144884538c3d5669b568e4254e4ed75d9054f75229ac9d4ccd0b7c3c74a34f07b7657083b2aa76225c0c56ffc"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "308201e53082014ea00302010202044e17e115300d06092a864886f70d01010505003037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f6964204465627567301e170d3131303730393035303331375a170d3431303730313035303331375a3037310b30090603550406130255533110300e060355040a1307416e64726f6964311630140603550403130d416e64726f696420446562756730819f300d06092a864886f70d010101050003818d003081890281810096759fe5abea6a0757039b92adc68d672efa84732c3f959408e12efa264545c61f23141026a6d01eceeeaa13ec7087087e5894a3363da8bf5c69ed93657a6890738a80998e4ca22dc94848f30e2d0e1890000ae2cddf543b20c0c3828deca6c7944b5ecd21a9d18c988b2b3e54517dafbc34b48e801bb1321e0fa49e4d575d7f0203010001300d06092a864886f70d0101050500038181002b6d4b65bcfa6ec7bac97ae6d878064d47b3f9f8da654995b8ef4c385bc4fbfbb7a987f60783ef0348760c0708acd4b7e63f0235c35a4fbcd5ec41b3b4cb295feaa7d5c27fa562a02562b7e1f4776b85147be3e295714986c4a9a07183f48ea09ae4d3ea31b88d0016c65b93526b9c45f2967c3d28dee1aff5a5b29b9c2c8639"

    aput-object v2, v0, v1

    sput-object v0, Lcom/dropbox/client2/android/AuthActivity;->DROPBOX_APP_SIGNATURES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/client2/android/AuthActivity;->authStateNonce:Ljava/lang/String;

    return-void
.end method

.method private authFinished(Landroid/content/Intent;)V
    .registers 3
    .param p1, "authResult"    # Landroid/content/Intent;

    .prologue
    .line 438
    sput-object p1, Lcom/dropbox/client2/android/AuthActivity;->result:Landroid/content/Intent;

    .line 439
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dropbox/client2/android/AuthActivity;->authStateNonce:Ljava/lang/String;

    .line 440
    invoke-virtual {p0}, Lcom/dropbox/client2/android/AuthActivity;->finish()V

    .line 441
    return-void
.end method

.method public static checkAppBeforeAuth(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "alertUser"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 217
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v5, "testIntent":Landroid/content/Intent;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "db-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, "scheme":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/connect"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 220
    .local v6, "uri":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 222
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 224
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_50

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_7f

    .line 225
    :cond_50
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "URI scheme in your app\'s manifest is not set up correctly. You should have a "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-class v9, Lcom/dropbox/client2/android/AuthActivity;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with the "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "scheme: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 229
    :cond_7f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v8, :cond_c9

    .line 230
    if-eqz p2, :cond_a4

    .line 231
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 232
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v8, "Security alert"

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 233
    const-string v8, "Another app on your phone may be trying to pose as the app you are currently using. The malicious app can\'t access your account, but linking to Dropbox has been disabled as a precaution. Please contact support@dropbox.com."

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 238
    const-string v8, "OK"

    new-instance v9, Lcom/dropbox/client2/android/AuthActivity$2;

    invoke-direct {v9}, Lcom/dropbox/client2/android/AuthActivity$2;-><init>()V

    invoke-virtual {v1, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 244
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 270
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :goto_a3
    return v7

    .line 246
    :cond_a4
    sget-object v8, Lcom/dropbox/client2/android/AuthActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "There are multiple apps registered for the AuthActivity URI scheme ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ").  Another app may be trying to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " impersonate this app, so authentication will be disabled."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 255
    :cond_c9
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 256
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_e3

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v7, :cond_e3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13c

    .line 258
    :cond_e3
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "There must be a "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-class v9, Lcom/dropbox/client2/android/AuthActivity;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " within your app\'s package "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "registered for your URI scheme ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "). However, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "it appears that an activity in a different package is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "registered for that scheme instead. If you have "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "multiple apps that all want to use the same access"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "token pair, designate one of them to do "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "authentication and have the other apps launch it "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "and then retrieve the token pair from it."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_13c
    move v7, v8

    .line 270
    goto/16 :goto_a3
.end method

.method private createStateNonce()Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v8, 0x10

    .line 547
    const/16 v0, 0x10

    .line 548
    .local v0, "NONCE_BYTES":I
    new-array v2, v8, [B

    .line 549
    .local v2, "randomBytes":[B
    invoke-static {}, Lcom/dropbox/client2/android/AuthActivity;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .local v3, "sb":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/dropbox/client2/android/AuthActivity;->appSecret:Ljava/lang/String;

    if-nez v4, :cond_1b

    .line 552
    const-string v4, "oauth2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    :cond_1b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    if-ge v1, v8, :cond_38

    .line 555
    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget-byte v7, v2, v1

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 557
    :cond_38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private getConsumerSig()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 444
    iget-object v4, p0, Lcom/dropbox/client2/android/AuthActivity;->appSecret:Ljava/lang/String;

    if-nez v4, :cond_9

    const-string v4, ""

    .line 455
    :goto_8
    return-object v4

    .line 448
    :cond_9
    :try_start_9
    const-string v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_e} :catch_38

    move-result-object v2

    .line 452
    .local v2, "m":Ljava/security/MessageDigest;
    iget-object v4, p0, Lcom/dropbox/client2/android/AuthActivity;->appSecret:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    iget-object v5, p0, Lcom/dropbox/client2/android/AuthActivity;->appSecret:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2, v4, v6, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 453
    new-instance v1, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-direct {v1, v7, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 454
    .local v1, "i":Ljava/math/BigInteger;
    const-string v4, "%1$040X"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 455
    .local v3, "s":Ljava/lang/String;
    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_8

    .line 449
    .end local v1    # "i":Ljava/math/BigInteger;
    .end local v2    # "m":Ljava/security/MessageDigest;
    .end local v3    # "s":Ljava/lang/String;
    :catch_38
    move-exception v0

    .line 450
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private static getSecureRandom()Ljava/security/SecureRandom;
    .registers 2

    .prologue
    .line 298
    invoke-static {}, Lcom/dropbox/client2/android/AuthActivity;->getSecurityProvider()Lcom/dropbox/client2/android/AuthActivity$SecurityProvider;

    move-result-object v0

    .line 299
    .local v0, "prov":Lcom/dropbox/client2/android/AuthActivity$SecurityProvider;
    if-eqz v0, :cond_b

    .line 300
    invoke-interface {v0}, Lcom/dropbox/client2/android/AuthActivity$SecurityProvider;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    .line 302
    :goto_a
    return-object v1

    :cond_b
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    goto :goto_a
.end method

.method private static getSecurityProvider()Lcom/dropbox/client2/android/AuthActivity$SecurityProvider;
    .registers 2

    .prologue
    .line 292
    sget-object v1, Lcom/dropbox/client2/android/AuthActivity;->sSecurityProviderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 293
    :try_start_3
    sget-object v0, Lcom/dropbox/client2/android/AuthActivity;->sSecurityProvider:Lcom/dropbox/client2/android/AuthActivity$SecurityProvider;

    monitor-exit v1

    return-object v0

    .line 294
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private hasDropboxApp(Landroid/content/Intent;)Z
    .registers 18
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/dropbox/client2/android/AuthActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 461
    .local v10, "manager":Landroid/content/pm/PackageManager;
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 462
    .local v7, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_14

    const/4 v14, 0x1

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-eq v14, v15, :cond_16

    .line 465
    :cond_14
    const/4 v14, 0x0

    .line 492
    :goto_15
    return v14

    .line 469
    :cond_16
    const/4 v14, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v14}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v12

    .line 470
    .local v12, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-nez v12, :cond_21

    .line 471
    const/4 v14, 0x0

    goto :goto_15

    .line 476
    :cond_21
    :try_start_21
    iget-object v14, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v15, 0x40

    invoke-virtual {v10, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_21 .. :try_end_2a} :catch_48

    move-result-object v11

    .line 483
    .local v11, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v1, "arr$":[Landroid/content/pm/Signature;
    array-length v8, v1

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    move v6, v5

    .end local v1    # "arr$":[Landroid/content/pm/Signature;
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .local v6, "i$":I
    :goto_30
    if-ge v6, v8, :cond_52

    aget-object v13, v1, v6

    .line 484
    .local v13, "signature":Landroid/content/pm/Signature;
    sget-object v2, Lcom/dropbox/client2/android/AuthActivity;->DROPBOX_APP_SIGNATURES:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v5, 0x0

    .end local v6    # "i$":I
    .restart local v5    # "i$":I
    :goto_38
    if-ge v5, v9, :cond_4e

    aget-object v3, v2, v5

    .line 485
    .local v3, "dbSignature":Ljava/lang/String;
    invoke-virtual {v13}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4b

    .line 486
    const/4 v14, 0x1

    goto :goto_15

    .line 479
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "dbSignature":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v13    # "signature":Landroid/content/pm/Signature;
    :catch_48
    move-exception v4

    .line 480
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v14, 0x0

    goto :goto_15

    .line 484
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v3    # "dbSignature":Ljava/lang/String;
    .restart local v5    # "i$":I
    .restart local v9    # "len$":I
    .restart local v11    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v13    # "signature":Landroid/content/pm/Signature;
    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_38

    .line 483
    .end local v3    # "dbSignature":Ljava/lang/String;
    :cond_4e
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    .end local v5    # "i$":I
    .restart local v6    # "i$":I
    goto :goto_30

    .line 492
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v9    # "len$":I
    .end local v13    # "signature":Landroid/content/pm/Signature;
    :cond_52
    const/4 v14, 0x0

    goto :goto_15
.end method

.method public static makeIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "appSecret"    # Ljava/lang/String;
    .param p3, "webHost"    # Ljava/lang/String;
    .param p4, "apiType"    # Ljava/lang/String;

    .prologue
    .line 171
    if-nez p1, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'appKey\' can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_a
    if-nez p2, :cond_14

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'appSecret\' can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 173
    :cond_14
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/client2/android/AuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 174
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_INTERNAL_APP_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string v1, "EXTRA_INTERNAL_APP_SECRET"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string v1, "EXTRA_INTERNAL_WEB_HOST"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v1, "EXTRA_INTERNAL_API_TYPE"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    return-object v0
.end method

.method public static makeOAuth2Intent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "webHost"    # Ljava/lang/String;
    .param p3, "apiType"    # Ljava/lang/String;

    .prologue
    .line 194
    if-nez p1, :cond_a

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'appKey\' can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 195
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/dropbox/client2/android/AuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 196
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_INTERNAL_APP_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v1, "EXTRA_INTERNAL_WEB_HOST"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v1, "EXTRA_INTERNAL_API_TYPE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    return-object v0
.end method

.method public static setSecurityProvider(Lcom/dropbox/client2/android/AuthActivity$SecurityProvider;)V
    .registers 3
    .param p0, "prov"    # Lcom/dropbox/client2/android/AuthActivity$SecurityProvider;

    .prologue
    .line 286
    sget-object v1, Lcom/dropbox/client2/android/AuthActivity;->sSecurityProviderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 287
    :try_start_3
    sput-object p0, Lcom/dropbox/client2/android/AuthActivity;->sSecurityProvider:Lcom/dropbox/client2/android/AuthActivity$SecurityProvider;

    .line 288
    monitor-exit v1

    .line 289
    return-void

    .line 288
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method private startWebAuth(Ljava/lang/String;)V
    .registers 10
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    .line 496
    const-string v3, "/connect"

    .line 497
    .local v3, "path":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 499
    .local v1, "locale":Ljava/util/Locale;
    const/16 v5, 0xa

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "locale"

    aput-object v6, v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v7

    const/4 v5, 0x2

    const-string v6, "k"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/dropbox/client2/android/AuthActivity;->appKey:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string v6, "s"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    const-string v6, ""

    aput-object v6, v2, v5

    const/4 v5, 0x6

    const-string v6, "api"

    aput-object v6, v2, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/dropbox/client2/android/AuthActivity;->apiType:Ljava/lang/String;

    aput-object v6, v2, v5

    const/16 v5, 0x8

    const-string v6, "state"

    aput-object v6, v2, v5

    const/16 v5, 0x9

    aput-object p1, v2, v5

    .line 506
    .local v2, "params":[Ljava/lang/String;
    iget-object v5, p0, Lcom/dropbox/client2/android/AuthActivity;->webHost:Ljava/lang/String;

    invoke-static {v5, v7, v3, v2}, Lcom/dropbox/client2/RESTUtility;->buildURL(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 508
    .local v4, "url":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 509
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/dropbox/client2/android/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 510
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 307
    if-nez p1, :cond_3d

    .line 308
    sput-object v1, Lcom/dropbox/client2/android/AuthActivity;->result:Landroid/content/Intent;

    .line 309
    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->authStateNonce:Ljava/lang/String;

    .line 314
    :goto_7
    invoke-virtual {p0}, Lcom/dropbox/client2/android/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 315
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_INTERNAL_APP_KEY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->appKey:Ljava/lang/String;

    .line 316
    const-string v1, "EXTRA_INTERNAL_APP_SECRET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->appSecret:Ljava/lang/String;

    .line 317
    const-string v1, "EXTRA_INTERNAL_WEB_HOST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->webHost:Ljava/lang/String;

    .line 318
    iget-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->webHost:Ljava/lang/String;

    if-nez v1, :cond_2b

    .line 319
    const-string v1, "www.dropbox.com"

    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->webHost:Ljava/lang/String;

    .line 321
    :cond_2b
    const-string v1, "EXTRA_INTERNAL_API_TYPE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->apiType:Ljava/lang/String;

    .line 323
    const v1, 0x1030010

    invoke-virtual {p0, v1}, Lcom/dropbox/client2/android/AuthActivity;->setTheme(I)V

    .line 325
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 326
    return-void

    .line 311
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3d
    const-string v1, "authStateNonce"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->authStateNonce:Ljava/lang/String;

    goto :goto_7
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .registers 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 383
    iget-object v7, p0, Lcom/dropbox/client2/android/AuthActivity;->authStateNonce:Ljava/lang/String;

    if-nez v7, :cond_9

    .line 384
    invoke-direct {p0, v8}, Lcom/dropbox/client2/android/AuthActivity;->authFinished(Landroid/content/Intent;)V

    .line 435
    :goto_8
    return-void

    .line 388
    :cond_9
    const/4 v4, 0x0

    .local v4, "token":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "secret":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "uid":Ljava/lang/String;
    const/4 v3, 0x0

    .line 390
    .local v3, "state":Ljava/lang/String;
    const-string v7, "ACCESS_TOKEN"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_61

    .line 392
    const-string v7, "ACCESS_TOKEN"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 393
    const-string v7, "ACCESS_SECRET"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 394
    const-string v7, "UID"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 395
    const-string v7, "AUTH_STATE"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 413
    :cond_2d
    :goto_2d
    if-eqz v4, :cond_a5

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a5

    if-eqz v2, :cond_41

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a5

    :cond_41
    if-eqz v5, :cond_a5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a5

    if-eqz v3, :cond_a5

    const-string v7, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a5

    .line 419
    iget-object v7, p0, Lcom/dropbox/client2/android/AuthActivity;->authStateNonce:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8c

    .line 420
    invoke-direct {p0, v8}, Lcom/dropbox/client2/android/AuthActivity;->authFinished(Landroid/content/Intent;)V

    goto :goto_8

    .line 398
    :cond_61
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 399
    .local v6, "uri":Landroid/net/Uri;
    if-eqz v6, :cond_2d

    .line 400
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "path":Ljava/lang/String;
    const-string v7, "/connect"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 403
    :try_start_73
    const-string v7, "oauth_token"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 404
    const-string v7, "oauth_token_secret"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 405
    const-string v7, "uid"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 406
    const-string v7, "state"

    invoke-virtual {v6, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_73 .. :try_end_8a} :catch_a7

    move-result-object v3

    goto :goto_2d

    .line 425
    .end local v1    # "path":Ljava/lang/String;
    .end local v6    # "uri":Landroid/net/Uri;
    :cond_8c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 426
    .local v0, "newResult":Landroid/content/Intent;
    const-string v7, "ACCESS_TOKEN"

    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 427
    const-string v7, "ACCESS_SECRET"

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string v7, "UID"

    invoke-virtual {v0, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    :goto_a0
    invoke-direct {p0, v0}, Lcom/dropbox/client2/android/AuthActivity;->authFinished(Landroid/content/Intent;)V

    goto/16 :goto_8

    .line 431
    .end local v0    # "newResult":Landroid/content/Intent;
    :cond_a5
    const/4 v0, 0x0

    .restart local v0    # "newResult":Landroid/content/Intent;
    goto :goto_a0

    .line 407
    .end local v0    # "newResult":Landroid/content/Intent;
    .restart local v1    # "path":Ljava/lang/String;
    .restart local v6    # "uri":Landroid/net/Uri;
    :catch_a7
    move-exception v7

    goto :goto_2d
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 336
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 338
    invoke-virtual {p0}, Lcom/dropbox/client2/android/AuthActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 378
    :goto_a
    return-void

    .line 342
    :cond_b
    iget-object v2, p0, Lcom/dropbox/client2/android/AuthActivity;->authStateNonce:Ljava/lang/String;

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/dropbox/client2/android/AuthActivity;->appKey:Ljava/lang/String;

    if-nez v2, :cond_17

    .line 347
    :cond_13
    invoke-direct {p0, v3}, Lcom/dropbox/client2/android/AuthActivity;->authFinished(Landroid/content/Intent;)V

    goto :goto_a

    .line 351
    :cond_17
    sput-object v3, Lcom/dropbox/client2/android/AuthActivity;->result:Landroid/content/Intent;

    .line 356
    invoke-direct {p0}, Lcom/dropbox/client2/android/AuthActivity;->createStateNonce()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "state":Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 360
    .local v0, "officialIntent":Landroid/content/Intent;
    const-string v2, "com.dropbox.android"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v2, "com.dropbox.android.AUTHENTICATE_V2"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v2, "CONSUMER_KEY"

    iget-object v3, p0, Lcom/dropbox/client2/android/AuthActivity;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v2, "CONSUMER_SIG"

    invoke-direct {p0}, Lcom/dropbox/client2/android/AuthActivity;->getConsumerSig()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v2, "CALLING_PACKAGE"

    invoke-virtual {p0}, Lcom/dropbox/client2/android/AuthActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    const-string v2, "CALLING_CLASS"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    const-string v2, "AUTH_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    invoke-direct {p0, v0}, Lcom/dropbox/client2/android/AuthActivity;->hasDropboxApp(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 370
    invoke-virtual {p0, v0}, Lcom/dropbox/client2/android/AuthActivity;->startActivity(Landroid/content/Intent;)V

    .line 377
    :goto_60
    iput-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->authStateNonce:Ljava/lang/String;

    goto :goto_a

    .line 372
    :cond_63
    invoke-direct {p0, v1}, Lcom/dropbox/client2/android/AuthActivity;->startWebAuth(Ljava/lang/String;)V

    goto :goto_60
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 330
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 331
    const-string v0, "authStateNonce"

    iget-object v1, p0, Lcom/dropbox/client2/android/AuthActivity;->authStateNonce:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    return-void
.end method

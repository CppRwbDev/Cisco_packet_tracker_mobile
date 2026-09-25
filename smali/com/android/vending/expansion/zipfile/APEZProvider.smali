.class public abstract Lcom/android/vending/expansion/zipfile/APEZProvider;
.super Landroid/content/ContentProvider;
.source "APEZProvider.java"


# static fields
.field public static final ALL_FIELDS:[Ljava/lang/String;

.field public static final ALL_FIELDS_INT:[I

.field public static final COMPLEN_IDX:I = 0x5

.field public static final COMPRESSEDLEN:Ljava/lang/String; = "ZCOL"

.field public static final COMPRESSIONTYPE:Ljava/lang/String; = "ZTYP"

.field public static final COMPTYPE_IDX:I = 0x7

.field public static final CRC32:Ljava/lang/String; = "ZCRC"

.field public static final CRC_IDX:I = 0x4

.field public static final FILEID:Ljava/lang/String; = "_id"

.field public static final FILEID_IDX:I = 0x0

.field public static final FILENAME:Ljava/lang/String; = "ZPFN"

.field public static final FILENAME_IDX:I = 0x1

.field public static final MODIFICATION:Ljava/lang/String; = "ZMOD"

.field public static final MOD_IDX:I = 0x3

.field public static final UNCOMPLEN_IDX:I = 0x6

.field public static final UNCOMPRESSEDLEN:Ljava/lang/String; = "ZUNL"

.field public static final ZIPFILE:Ljava/lang/String; = "ZFIL"

.field public static final ZIPFILE_IDX:I = 0x2


# instance fields
.field private mAPKExtensionFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

.field private mInit:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x8

    .line 68
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ZPFN"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ZFIL"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "ZMOD"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ZCRC"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ZCOL"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ZUNL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ZTYP"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vending/expansion/zipfile/APEZProvider;->ALL_FIELDS:[Ljava/lang/String;

    .line 88
    new-array v0, v3, [I

    fill-array-data v0, :array_36

    sput-object v0, Lcom/android/vending/expansion/zipfile/APEZProvider;->ALL_FIELDS_INT:[I

    return-void

    :array_36
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private initIfNecessary()Z
    .registers 13

    .prologue
    const/4 v9, 0x0

    .line 122
    iget-boolean v10, p0, Lcom/android/vending/expansion/zipfile/APEZProvider;->mInit:Z

    if-nez v10, :cond_3d

    .line 123
    invoke-virtual {p0}, Lcom/android/vending/expansion/zipfile/APEZProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 124
    .local v1, "ctx":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 125
    .local v8, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/vending/expansion/zipfile/APEZProvider;->getAuthority()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x80

    invoke-virtual {v8, v10, v11}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v7

    .line 128
    .local v7, "pi":Landroid/content/pm/ProviderInfo;
    :try_start_17
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_17 .. :try_end_1f} :catch_3e

    move-result-object v5

    .line 135
    .local v5, "packInfo":Landroid/content/pm/PackageInfo;
    iget v0, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 136
    .local v0, "appVersionCode":I
    iget-object v10, v7, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    if-eqz v10, :cond_43

    .line 137
    iget-object v10, v7, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    const-string v11, "mainVersion"

    invoke-virtual {v10, v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 138
    .local v4, "mainFileVersion":I
    iget-object v10, v7, Landroid/content/pm/ProviderInfo;->metaData:Landroid/os/Bundle;

    const-string v11, "patchVersion"

    invoke-virtual {v10, v11, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 143
    .local v6, "patchFileVersion":I
    :goto_36
    :try_start_36
    invoke-static {v1, v4, v6}, Lcom/android/vending/expansion/zipfile/APKExpansionSupport;->getAPKExpansionZipFile(Landroid/content/Context;II)Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    move-result-object v10

    iput-object v10, p0, Lcom/android/vending/expansion/zipfile/APEZProvider;->mAPKExtensionFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3c} :catch_46

    .line 144
    const/4 v9, 0x1

    .line 149
    .end local v0    # "appVersionCode":I
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v4    # "mainFileVersion":I
    .end local v5    # "packInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "patchFileVersion":I
    .end local v7    # "pi":Landroid/content/pm/ProviderInfo;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_3d
    :goto_3d
    return v9

    .line 129
    .restart local v1    # "ctx":Landroid/content/Context;
    .restart local v7    # "pi":Landroid/content/pm/ProviderInfo;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :catch_3e
    move-exception v3

    .line 130
    .local v3, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_3d

    .line 140
    .end local v3    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "appVersionCode":I
    .restart local v5    # "packInfo":Landroid/content/pm/PackageInfo;
    :cond_43
    move v6, v0

    .restart local v6    # "patchFileVersion":I
    move v4, v0

    .restart local v4    # "mainFileVersion":I
    goto :goto_36

    .line 145
    :catch_46
    move-exception v2

    .line 146
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3d
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-direct {p0}, Lcom/android/vending/expansion/zipfile/APEZProvider;->initIfNecessary()Z

    .line 173
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getAuthority()Ljava/lang/String;
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 112
    const-string v0, "vnd.android.cursor.item/asset"

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .registers 2

    .prologue
    .line 154
    const/4 v0, 0x1

    return v0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Lcom/android/vending/expansion/zipfile/APEZProvider;->initIfNecessary()Z

    .line 161
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "path":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 163
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 165
    :cond_14
    iget-object v1, p0, Lcom/android/vending/expansion/zipfile/APEZProvider;->mAPKExtensionFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    invoke-virtual {v1, v0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    return-object v1
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/android/vending/expansion/zipfile/APEZProvider;->initIfNecessary()Z

    .line 180
    invoke-virtual {p0, p1, p2}, Lcom/android/vending/expansion/zipfile/APEZProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 181
    .local v0, "af":Landroid/content/res/AssetFileDescriptor;
    if-eqz v0, :cond_e

    .line 182
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 184
    :goto_d
    return-object v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/android/vending/expansion/zipfile/APEZProvider;->initIfNecessary()Z

    .line 193
    iget-object v7, p0, Lcom/android/vending/expansion/zipfile/APEZProvider;->mAPKExtensionFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    if-nez v7, :cond_2c

    .line 194
    const/4 v7, 0x0

    new-array v6, v7, [Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    .line 199
    .local v6, "zipEntries":[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    :goto_a
    if-nez p2, :cond_33

    .line 200
    sget-object v1, Lcom/android/vending/expansion/zipfile/APEZProvider;->ALL_FIELDS_INT:[I

    .line 201
    .local v1, "intProjection":[I
    sget-object p2, Lcom/android/vending/expansion/zipfile/APEZProvider;->ALL_FIELDS:[Ljava/lang/String;

    .line 227
    :cond_10
    new-instance v3, Landroid/database/MatrixCursor;

    array-length v7, v6

    invoke-direct {v3, p2, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 228
    .local v3, "mc":Landroid/database/MatrixCursor;
    array-length v2, v1

    .line 229
    .local v2, "len":I
    array-length v8, v6

    const/4 v7, 0x0

    :goto_19
    if-ge v7, v8, :cond_105

    aget-object v5, v6, v7

    .line 230
    .local v5, "zer":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 231
    .local v4, "rb":Landroid/database/MatrixCursor$RowBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    if-ge v0, v2, :cond_101

    .line 232
    aget v9, v1, v0

    packed-switch v9, :pswitch_data_106

    .line 231
    :goto_29
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 196
    .end local v0    # "i":I
    .end local v1    # "intProjection":[I
    .end local v2    # "len":I
    .end local v3    # "mc":Landroid/database/MatrixCursor;
    .end local v4    # "rb":Landroid/database/MatrixCursor$RowBuilder;
    .end local v5    # "zer":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .end local v6    # "zipEntries":[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    :cond_2c
    iget-object v7, p0, Lcom/android/vending/expansion/zipfile/APEZProvider;->mAPKExtensionFile:Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    invoke-virtual {v7}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getAllEntries()[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    move-result-object v6

    .restart local v6    # "zipEntries":[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    goto :goto_a

    .line 203
    :cond_33
    array-length v2, p2

    .line 204
    .restart local v2    # "len":I
    new-array v1, v2, [I

    .line 205
    .restart local v1    # "intProjection":[I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_37
    if-ge v0, v2, :cond_10

    .line 206
    aget-object v7, p2, v0

    const-string v8, "_id"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 207
    const/4 v7, 0x0

    aput v7, v1, v0

    .line 205
    :goto_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 208
    :cond_49
    aget-object v7, p2, v0

    const-string v8, "ZPFN"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 209
    const/4 v7, 0x1

    aput v7, v1, v0

    goto :goto_46

    .line 210
    :cond_57
    aget-object v7, p2, v0

    const-string v8, "ZFIL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_65

    .line 211
    const/4 v7, 0x2

    aput v7, v1, v0

    goto :goto_46

    .line 212
    :cond_65
    aget-object v7, p2, v0

    const-string v8, "ZMOD"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_73

    .line 213
    const/4 v7, 0x3

    aput v7, v1, v0

    goto :goto_46

    .line 214
    :cond_73
    aget-object v7, p2, v0

    const-string v8, "ZCRC"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_81

    .line 215
    const/4 v7, 0x4

    aput v7, v1, v0

    goto :goto_46

    .line 216
    :cond_81
    aget-object v7, p2, v0

    const-string v8, "ZCOL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8f

    .line 217
    const/4 v7, 0x5

    aput v7, v1, v0

    goto :goto_46

    .line 218
    :cond_8f
    aget-object v7, p2, v0

    const-string v8, "ZUNL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 219
    const/4 v7, 0x6

    aput v7, v1, v0

    goto :goto_46

    .line 220
    :cond_9d
    aget-object v7, p2, v0

    const-string v8, "ZTYP"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ab

    .line 221
    const/4 v7, 0x7

    aput v7, v1, v0

    goto :goto_46

    .line 223
    :cond_ab
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    throw v7

    .line 234
    .restart local v3    # "mc":Landroid/database/MatrixCursor;
    .restart local v4    # "rb":Landroid/database/MatrixCursor$RowBuilder;
    .restart local v5    # "zer":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    :pswitch_b1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_29

    .line 237
    :pswitch_ba
    iget-object v9, v5, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_29

    .line 240
    :pswitch_c1
    invoke-virtual {v5}, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->getZipFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_29

    .line 243
    :pswitch_ca
    iget-wide v10, v5, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mWhenModified:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_29

    .line 246
    :pswitch_d5
    iget-wide v10, v5, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mCRC32:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_29

    .line 249
    :pswitch_e0
    iget-wide v10, v5, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mCompressedLength:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_29

    .line 252
    :pswitch_eb
    iget-wide v10, v5, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mUncompressedLength:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_29

    .line 255
    :pswitch_f6
    iget v9, v5, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mMethod:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto/16 :goto_29

    .line 229
    :cond_101
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_19

    .line 260
    .end local v0    # "i":I
    .end local v4    # "rb":Landroid/database/MatrixCursor$RowBuilder;
    .end local v5    # "zer":Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    :cond_105
    return-object v3

    .line 232
    :pswitch_data_106
    .packed-switch 0x0
        :pswitch_b1
        :pswitch_ba
        :pswitch_c1
        :pswitch_ca
        :pswitch_d5
        :pswitch_e0
        :pswitch_eb
        :pswitch_f6
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 267
    const/4 v0, 0x0

    return v0
.end method

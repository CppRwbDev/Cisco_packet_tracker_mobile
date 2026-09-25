.class public Lorg/apache/commons/lang/SerializationUtils;
.super Ljava/lang/Object;
.source "SerializationUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    return-void
.end method

.method public static clone(Ljava/io/Serializable;)Ljava/lang/Object;
    .registers 2
    .param p0, "object"    # Ljava/io/Serializable;

    .prologue
    .line 81
    invoke-static {p0}, Lorg/apache/commons/lang/SerializationUtils;->serialize(Ljava/io/Serializable;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang/SerializationUtils;->deserialize([B)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static deserialize(Ljava/io/InputStream;)Ljava/lang/Object;
    .registers 6
    .param p0, "inputStream"    # Ljava/io/InputStream;

    .prologue
    .line 156
    if-nez p0, :cond_a

    .line 157
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The InputStream must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 159
    :cond_a
    const/4 v1, 0x0

    .line 162
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_b
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, p0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_10} :catch_1a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_28
    .catchall {:try_start_b .. :try_end_10} :catchall_21

    .line 163
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_10
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_13} :catch_39
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_36
    .catchall {:try_start_10 .. :try_end_13} :catchall_33

    move-result-object v3

    .line 171
    if-eqz v2, :cond_19

    .line 172
    :try_start_16
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_2f

    .line 176
    :cond_19
    :goto_19
    return-object v3

    .line 165
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    :catch_1a
    move-exception v0

    .line 166
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    :goto_1b
    :try_start_1b
    new-instance v3, Lorg/apache/commons/lang/SerializationException;

    invoke-direct {v3, v0}, Lorg/apache/commons/lang/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_21

    .line 170
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    :catchall_21
    move-exception v3

    .line 171
    :goto_22
    if-eqz v1, :cond_27

    .line 172
    :try_start_24
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_27} :catch_31

    .line 176
    :cond_27
    :goto_27
    throw v3

    .line 167
    :catch_28
    move-exception v0

    .line 168
    .local v0, "ex":Ljava/io/IOException;
    :goto_29
    :try_start_29
    new-instance v3, Lorg/apache/commons/lang/SerializationException;

    invoke-direct {v3, v0}, Lorg/apache/commons/lang/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_21

    .line 174
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_2f
    move-exception v4

    goto :goto_19

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    :catch_31
    move-exception v4

    goto :goto_27

    .line 170
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catchall_33
    move-exception v3

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_22

    .line 167
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_36
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_29

    .line 165
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_39
    move-exception v0

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_1b
.end method

.method public static deserialize([B)Ljava/lang/Object;
    .registers 4
    .param p0, "objectData"    # [B

    .prologue
    .line 189
    if-nez p0, :cond_a

    .line 190
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The byte[] must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_a
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 193
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    invoke-static {v0}, Lorg/apache/commons/lang/SerializationUtils;->deserialize(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V
    .registers 7
    .param p0, "obj"    # Ljava/io/Serializable;
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .prologue
    .line 102
    if-nez p1, :cond_a

    .line 103
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The OutputStream must not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 105
    :cond_a
    const/4 v1, 0x0

    .line 108
    .local v1, "out":Ljava/io/ObjectOutputStream;
    :try_start_b
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_19
    .catchall {:try_start_b .. :try_end_10} :catchall_20

    .line 109
    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .local v2, "out":Ljava/io/ObjectOutputStream;
    :try_start_10
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_2e
    .catchall {:try_start_10 .. :try_end_13} :catchall_2b

    .line 115
    if-eqz v2, :cond_18

    .line 116
    :try_start_15
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_27

    .line 122
    :cond_18
    :goto_18
    return-void

    .line 111
    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    :catch_19
    move-exception v0

    .line 112
    .local v0, "ex":Ljava/io/IOException;
    :goto_1a
    :try_start_1a
    new-instance v3, Lorg/apache/commons/lang/SerializationException;

    invoke-direct {v3, v0}, Lorg/apache/commons/lang/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_20

    .line 114
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_20
    move-exception v3

    .line 115
    :goto_21
    if-eqz v1, :cond_26

    .line 116
    :try_start_23
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_29

    .line 120
    :cond_26
    :goto_26
    throw v3

    .line 118
    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "out":Ljava/io/ObjectOutputStream;
    :catch_27
    move-exception v3

    goto :goto_18

    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    :catch_29
    move-exception v4

    goto :goto_26

    .line 114
    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "out":Ljava/io/ObjectOutputStream;
    :catchall_2b
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_21

    .line 111
    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "out":Ljava/io/ObjectOutputStream;
    :catch_2e
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_1a
.end method

.method public static serialize(Ljava/io/Serializable;)[B
    .registers 3
    .param p0, "obj"    # Ljava/io/Serializable;

    .prologue
    .line 133
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 134
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {p0, v0}, Lorg/apache/commons/lang/SerializationUtils;->serialize(Ljava/io/Serializable;Ljava/io/OutputStream;)V

    .line 135
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

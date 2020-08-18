.class public Lcom/loc/m$a;
.super Ljava/lang/Object;
.source "SDKInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/m$a$b;,
        Lcom/loc/m$a$c;,
        Lcom/loc/m$a$d;,
        Lcom/loc/m$a$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Lorg/json/JSONObject;

.field public c:Lorg/json/JSONObject;

.field public d:Lorg/json/JSONObject;

.field public e:Lorg/json/JSONObject;

.field public f:Lorg/json/JSONObject;

.field public g:Lorg/json/JSONObject;

.field public h:Lorg/json/JSONObject;

.field public i:Lorg/json/JSONObject;

.field public j:Lorg/json/JSONObject;

.field public k:Lorg/json/JSONObject;

.field public l:Lorg/json/JSONObject;

.field public m:Lcom/loc/m$a$a;

.field public n:Lcom/loc/m$a$d;

.field public o:Lcom/loc/m$a$c;

.field public p:Lcom/loc/m$a$b;

.field public q:Lcom/loc/m$a$b;

.field public r:Lcom/loc/m$a$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/m$a;->a:I

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    const-string v0, "1"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_1
    const-string v2, "CInfo"

    const-string v3, "getTS"

    invoke-static {v1, v2, v3}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/loc/k;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/loc/m$a;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "CInfo"

    const-string v3, "Scode"

    invoke-static {v1, v2, v3}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x800

    new-array v3, v2, [B

    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v1}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    :try_start_2
    const-string v3, "MD5"

    const-string v4, "getMd5FromFile"

    invoke-static {v1, v3, v4}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "MD5"

    const-string v3, "getMd5FromFile"

    invoke-static {v1, v2, v3}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_4
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/loc/r;->d([B)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "MD5"

    const-string v3, "getMd5FromFile"

    invoke-static {v1, v2, v3}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    const-string v2, "MD5"

    const-string v3, "getMd5FromFile"

    invoke-static {v1, v2, v3}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_2
.end method

.method public static a([B)Ljava/lang/String;
    .locals 1

    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/loc/m$a;->a([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/r;->d([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/net/Proxy;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/net/URI;

    const-string v2, "http://restapi.amap.com"

    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/loc/m$a;->a(Landroid/content/Context;Ljava/net/URI;)Ljava/net/Proxy;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/loc/m$a;->b(Landroid/content/Context;)Ljava/net/Proxy;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "ProxyUtil"

    const-string v3, "getProxy"

    invoke-static {v1, v2, v3}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/net/URI;)Ljava/net/Proxy;
    .locals 4

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/loc/m$a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/Proxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_1

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "ProxyUtil"

    const-string v3, "getProxySelectorCfg"

    invoke-static {v0, v2, v3}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-static {p1}, Lcom/loc/r;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/loc/r;->a(Ljava/io/ByteArrayOutputStream;B[B)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    new-array v0, v1, [B

    invoke-static {p0, v1, v0}, Lcom/loc/r;->a(Ljava/io/ByteArrayOutputStream;B[B)V

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Lcom/loc/n;)[B
    .locals 8

    const/4 v1, 0x0

    const/16 v5, 0x75

    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p1, Lcom/loc/n;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m$a;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/n;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m$a;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/n;->c:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m$a;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/n;->d:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m$a;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/n;->e:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m$a;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/n;->f:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m$a;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/n;->g:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m$a;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/n;->h:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m$a;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/n;->i:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m$a;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/n;->j:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m$a;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/n;->k:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m$a;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/n;->l:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m$a;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/n;->m:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m$a;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/n;->n:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m$a;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/n;->o:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m$a;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/n;->p:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m$a;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/n;->q:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m$a;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/n;->r:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m$a;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/n;->s:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m$a;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/loc/n;->t:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/loc/m$a;->a(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/r;->b([B)[B

    move-result-object v3

    invoke-static {}, Lcom/loc/r;->b()Ljava/security/PublicKey;

    move-result-object v0

    array-length v4, v3

    if-le v4, v5, :cond_0

    const/16 v4, 0x75

    new-array v4, v4, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x75

    invoke-static {v3, v5, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v0}, Lcom/loc/p;->a([BLjava/security/Key;)[B

    move-result-object v4

    array-length v0, v3

    add-int/lit16 v0, v0, 0x80

    add-int/lit8 v0, v0, -0x75

    new-array v0, v0, [B

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x80

    invoke-static {v4, v5, v0, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x75

    const/16 v5, 0x80

    array-length v6, v3

    add-int/lit8 v6, v6, -0x75

    invoke-static {v3, v4, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return-object v0

    :cond_0
    :try_start_3
    invoke-static {v3, v0}, Lcom/loc/p;->a([BLjava/security/Key;)[B
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_2
    :try_start_4
    const-string v3, "CInfo"

    const-string v4, "InitXInfo"

    invoke-static {v0, v3, v4}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_1

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    :goto_3
    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;Z)[B
    .locals 3

    :try_start_0
    new-instance v1, Lcom/loc/n;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/loc/n;-><init>(B)V

    invoke-static {p0}, Lcom/loc/o;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/n;->a:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/o;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/n;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/o;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    iput-object v0, v1, Lcom/loc/n;->c:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/n;->d:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v1, Lcom/loc/n;->e:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, v1, Lcom/loc/n;->f:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, v1, Lcom/loc/n;->g:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/k;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/n;->h:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/n;->i:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/n;->j:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/o;->r(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/n;->k:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/o;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/n;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/loc/o;->m(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/n;->m:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/loc/o;->l(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/n;->n:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/o;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/n;->o:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/o;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/n;->p:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/o;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/n;->q:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/o;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/n;->r:Ljava/lang/String;

    invoke-static {p0}, Lcom/loc/o;->j(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, v1, Lcom/loc/n;->s:Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/loc/n;->t:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/loc/m$a;->a(Landroid/content/Context;Lcom/loc/n;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "CInfo"

    const-string v2, "getGZipXInfo"

    invoke-static {v0, v1, v2}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/lang/NullPointerException;,
            Ljava/io/IOException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-string v1, "AES"

    invoke-static {v1}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Ljavax/crypto/KeyGenerator;->init(I)V

    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v1

    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-static {}, Lcom/loc/r;->b()Ljava/security/PublicKey;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v1, v2}, Lcom/loc/p;->a([BLjava/security/Key;)[B

    move-result-object v2

    invoke-static {v1, p1}, Lcom/loc/p;->a([B[B)[B

    move-result-object v1

    array-length v0, v2

    array-length v3, v1

    add-int/2addr v0, v3

    new-array v0, v0, [B

    array-length v3, v2

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v2

    array-length v3, v1

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static a([BLjava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "MD5"

    const-string v3, "getMd5Bytes1"

    invoke-static {v1, v2, v3}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "null"

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "ProxyUtil"

    const-string v2, "getDefHost"

    invoke-static {v0, v1, v2}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p0, p1}, Lcom/loc/m$a;->c(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "CInfo"

    const-string v2, "AESData"

    invoke-static {v0, v1, v2}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/loc/m$a;->d(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/r;->d([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/net/Proxy;
    .locals 12

    const/16 v6, 0x50

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-static {p0}, Lcom/loc/m$a;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_13

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "apn"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_5

    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/loc/m$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/loc/m$a;->c()I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    :try_start_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, "null"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_8
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v1

    if-nez v1, :cond_14

    move v1, v9

    :goto_0
    if-nez v1, :cond_1

    :try_start_3
    const-string v1, "QMTAuMC4wLjIwMA=="

    invoke-static {v1}, Lcom/loc/r;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v3

    :cond_1
    if-ne v0, v8, :cond_2

    move v0, v6

    :cond_2
    move v1, v0

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    :goto_2
    if-eqz v3, :cond_c

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    if-eq v1, v8, :cond_c

    move v0, v9

    :goto_3
    if-eqz v0, :cond_d

    new-instance v0, Ljava/net/Proxy;

    sget-object v2, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-static {v3, v1}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_6

    :goto_4
    return-object v0

    :cond_5
    if-eqz v0, :cond_13

    :try_start_6
    const-string v1, "wap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {}, Lcom/loc/m$a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/loc/m$a;->c()I
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v1

    :try_start_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "null"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_a
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result v0

    if-nez v0, :cond_12

    move v0, v9

    :goto_5
    if-nez v0, :cond_6

    :try_start_8
    const-string v0, "QMTAuMC4wLjE3Mg=="

    invoke-static {v0}, Lcom/loc/r;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result-object v3

    :cond_6
    if-ne v1, v8, :cond_3

    move v1, v6

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "ProxyUtil"

    const-string v4, "getHostProxy2"

    invoke-static {v0, v2, v4}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v1, v7

    move v2, v8

    move-object v3, v7

    :goto_6
    :try_start_9
    const-string v4, "ProxyUtil"

    const-string v5, "getHostProxy"

    invoke-static {v0, v4, v5}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/loc/o;->o(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/loc/m$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/loc/m$a;->c()I

    move-result v0

    const-string v5, "ctwap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-eq v5, v8, :cond_9

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_10

    const-string v4, "null"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    move-object v3, v2

    move v2, v9

    :goto_7
    if-nez v2, :cond_7

    const-string v2, "QMTAuMC4wLjIwMA=="

    invoke-static {v2}, Lcom/loc/r;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-result-object v3

    :cond_7
    if-ne v0, v8, :cond_8

    move v0, v6

    :cond_8
    :goto_8
    if-eqz v1, :cond_e

    :try_start_a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2

    move v1, v0

    goto/16 :goto_2

    :cond_9
    :try_start_b
    const-string v5, "wap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v8, :cond_8

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    move-object v0, v2

    move v2, v9

    :goto_9
    if-nez v2, :cond_a

    const-string v0, "QMTAuMC4wLjE3Mg=="

    invoke-static {v0}, Lcom/loc/r;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result-object v0

    :cond_a
    move-object v3, v0

    move v0, v6

    goto :goto_8

    :catch_2
    move-exception v1

    const-string v2, "ProxyUtil"

    const-string v4, "getHostProxy2"

    invoke-static {v1, v2, v4}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move v1, v0

    goto/16 :goto_2

    :catch_3
    move-exception v0

    move-object v2, v7

    move v1, v8

    move-object v3, v7

    :goto_a
    :try_start_c
    const-string v4, "ProxyUtil"

    const-string v5, "getHostProxy1"

    invoke-static {v0, v4, v5}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v2, :cond_4

    :try_start_d
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v0

    const-string v2, "ProxyUtil"

    const-string v4, "getHostProxy2"

    invoke-static {v0, v2, v4}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v7

    :goto_b
    if-eqz v2, :cond_b

    :try_start_e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5

    :cond_b
    :goto_c
    throw v0

    :catch_5
    move-exception v1

    const-string v2, "ProxyUtil"

    const-string v3, "getHostProxy2"

    invoke-static {v1, v2, v3}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    :cond_c
    move v0, v10

    goto/16 :goto_3

    :catch_6
    move-exception v0

    const-string v1, "ProxyUtil"

    const-string v2, "getHostProxy2"

    invoke-static {v0, v1, v2}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_d
    move-object v0, v7

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_b

    :catch_7
    move-exception v0

    move v1, v8

    move-object v3, v7

    goto :goto_a

    :catch_8
    move-exception v1

    move-object v3, v7

    move v11, v0

    move-object v0, v1

    move v1, v11

    goto :goto_a

    :catch_9
    move-exception v1

    move-object v11, v1

    move v1, v0

    move-object v0, v11

    goto :goto_a

    :catch_a
    move-exception v0

    move-object v3, v7

    goto :goto_a

    :catch_b
    move-exception v0

    goto :goto_a

    :catch_c
    move-exception v0

    move-object v1, v2

    move-object v3, v7

    move v2, v8

    goto/16 :goto_6

    :catch_d
    move-exception v1

    move-object v3, v7

    move-object v11, v2

    move v2, v0

    move-object v0, v1

    move-object v1, v11

    goto/16 :goto_6

    :catch_e
    move-exception v1

    move-object v11, v1

    move-object v1, v2

    move v2, v0

    move-object v0, v11

    goto/16 :goto_6

    :catch_f
    move-exception v0

    move-object v3, v7

    move v11, v1

    move-object v1, v2

    move v2, v11

    goto/16 :goto_6

    :catch_10
    move-exception v0

    move-object v11, v2

    move v2, v1

    move-object v1, v11

    goto/16 :goto_6

    :cond_e
    move v1, v0

    goto/16 :goto_2

    :cond_f
    move v2, v10

    move-object v0, v3

    goto/16 :goto_9

    :cond_10
    move v2, v10

    goto/16 :goto_7

    :cond_11
    move v0, v2

    goto/16 :goto_8

    :cond_12
    move v0, v10

    move-object v3, v7

    goto/16 :goto_5

    :cond_13
    move v1, v8

    move-object v3, v7

    goto/16 :goto_1

    :cond_14
    move v1, v10

    move-object v3, v7

    goto/16 :goto_0
.end method

.method private static c()I
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "ProxyUtil"

    const-string v3, "getDefPort"

    invoke-static {v1, v2, v3}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static c(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/io/IOException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/loc/m$a;->a(Landroid/content/Context;[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/r;->b([B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/loc/p;->a([B)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/loc/m$a;->e(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/r;->e([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/loc/o;->m(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/content/Context;[B)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p0, p1}, Lcom/loc/m$a;->c(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)[B
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/loc/m$a;->f(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "MD5"

    const-string v2, "getMd5Bytes"

    invoke-static {v0, v1, v2}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/loc/m$a;->f(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {p0}, Lcom/loc/r;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    goto :goto_0
.end method

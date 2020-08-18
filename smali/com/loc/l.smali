.class public final Lcom/loc/l;
.super Ljava/lang/Object;
.source "AuthConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loc/l$a;,
        Lcom/loc/m$a;
    }
.end annotation


# static fields
.field private static a:I

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/loc/l;->a:I

    const-string v0, ""

    sput-object v0, Lcom/loc/l;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/loc/m;Ljava/lang/String;Ljava/util/Map;)Lcom/loc/m$a;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/loc/m;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/loc/m$a;"
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v3, 0x0

    new-instance v1, Lcom/loc/m$a;

    invoke-direct {v1}, Lcom/loc/m$a;-><init>()V

    :try_start_0
    new-instance v0, Lcom/loc/be;

    invoke-direct {v0}, Lcom/loc/be;-><init>()V
    :try_end_0
    .catch Lcom/loc/j; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    new-instance v2, Lcom/loc/l$a;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, p2, v4}, Lcom/loc/l$a;-><init>(Landroid/content/Context;Lcom/loc/m;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Lcom/loc/be;->a(Lcom/loc/bj;Z)Lcom/loc/bk;
    :try_end_1
    .catch Lcom/loc/j; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v2

    if-eqz v2, :cond_20

    :try_start_2
    iget-object v4, v2, Lcom/loc/bk;->a:[B
    :try_end_2
    .catch Lcom/loc/j; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_a

    :goto_0
    const/16 v0, 0x10

    :try_start_3
    new-array v0, v0, [B

    array-length v5, v4

    add-int/lit8 v5, v5, -0x10

    new-array v5, v5, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-static {v4, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v6, 0x10

    const/4 v7, 0x0

    array-length v8, v4

    add-int/lit8 v8, v8, -0x10

    invoke-static {v4, v6, v5, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "AES"

    invoke-direct {v6, v0, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v7, Ljavax/crypto/spec/IvParameterSpec;

    invoke-static {}, Lcom/loc/r;->a()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/4 v8, 0x2

    invoke-virtual {v0, v8, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/loc/r;->a([B)Ljava/lang/String;
    :try_end_3
    .catch Lcom/loc/j; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_3 .. :try_end_3} :catch_d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_b

    move-result-object v3

    move-object v0, v3

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    :goto_1
    if-nez v2, :cond_0

    move-object v0, v1

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catch Lcom/loc/j; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :catch_1
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_3
    invoke-virtual {v0}, Lcom/loc/j;->a()Ljava/lang/String;

    move-object v0, v3

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_5
    new-instance v0, Lcom/loc/j;

    const-string v2, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {v0, v2}, Lcom/loc/j;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catch Lcom/loc/j; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4

    :catch_3
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_4
    move-object v0, v3

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    goto :goto_1

    :catch_4
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_5
    const-string v5, "ConfigManager"

    const-string v6, "loadConfig"

    invoke-static {v0, v5, v6}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    goto :goto_1

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Lcom/loc/r;->a([B)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :try_start_6
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "status"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "status"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v9, :cond_1a

    const/4 v0, 0x1

    sput v0, Lcom/loc/l;->a:I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    :cond_2
    :try_start_7
    const-string v0, "ver"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ver"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/loc/m$a;->a:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5

    :cond_3
    :goto_6
    :try_start_8
    const-string v0, "result"

    invoke-static {v5, v0}, Lcom/loc/r;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Lcom/loc/m$a$a;

    invoke-direct {v0}, Lcom/loc/m$a$a;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/loc/m$a$a;->a:Z

    iput-object v0, v1, Lcom/loc/m$a;->m:Lcom/loc/m$a$a;

    const-string v2, "result"

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "11K"

    invoke-static {v2, v3}, Lcom/loc/r;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6

    move-result v3

    if-eqz v3, :cond_4

    :try_start_9
    const-string v3, "11K"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "able"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v0, Lcom/loc/m$a$a;->a:Z
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7

    :cond_4
    :goto_7
    :try_start_a
    const-string v0, "11B"

    invoke-static {v2, v0}, Lcom/loc/r;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "11B"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->c:Lorg/json/JSONObject;

    :cond_5
    const-string v0, "11C"

    invoke-static {v2, v0}, Lcom/loc/r;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "11C"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->f:Lorg/json/JSONObject;

    :cond_6
    const-string v0, "11I"

    invoke-static {v2, v0}, Lcom/loc/r;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "11I"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->g:Lorg/json/JSONObject;

    :cond_7
    const-string v0, "11H"

    invoke-static {v2, v0}, Lcom/loc/r;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "11H"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->h:Lorg/json/JSONObject;

    :cond_8
    const-string v0, "11E"

    invoke-static {v2, v0}, Lcom/loc/r;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "11E"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->i:Lorg/json/JSONObject;

    :cond_9
    const-string v0, "11F"

    invoke-static {v2, v0}, Lcom/loc/r;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "11F"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->j:Lorg/json/JSONObject;

    :cond_a
    const-string v0, "13A"

    invoke-static {v2, v0}, Lcom/loc/r;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "13A"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->l:Lorg/json/JSONObject;

    :cond_b
    const-string v0, "13J"

    invoke-static {v2, v0}, Lcom/loc/r;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "13J"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->d:Lorg/json/JSONObject;

    :cond_c
    const-string v0, "11G"

    invoke-static {v2, v0}, Lcom/loc/r;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "11G"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->k:Lorg/json/JSONObject;

    :cond_d
    const-string v0, "001"

    invoke-static {v2, v0}, Lcom/loc/r;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "001"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v3, Lcom/loc/m$a$d;

    invoke-direct {v3}, Lcom/loc/m$a$d;-><init>()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_6

    if-eqz v0, :cond_e

    :try_start_b
    const-string v4, "md5"

    invoke-static {v0, v4}, Lcom/loc/l;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "url"

    invoke-static {v0, v5}, Lcom/loc/l;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "sdkversion"

    invoke-static {v0, v6}, Lcom/loc/l;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8

    move-result v6

    if-eqz v6, :cond_1d

    :cond_e
    :goto_8
    :try_start_c
    iput-object v3, v1, Lcom/loc/m$a;->n:Lcom/loc/m$a$d;

    :cond_f
    const-string v0, "002"

    invoke-static {v2, v0}, Lcom/loc/r;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "002"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v3, Lcom/loc/m$a$c;

    invoke-direct {v3}, Lcom/loc/m$a$c;-><init>()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    if-eqz v0, :cond_10

    :try_start_d
    const-string v4, "md5"

    invoke-static {v0, v4}, Lcom/loc/l;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "url"

    invoke-static {v0, v5}, Lcom/loc/l;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v4, v3, Lcom/loc/m$a$c;->b:Ljava/lang/String;

    iput-object v0, v3, Lcom/loc/m$a$c;->a:Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9

    :cond_10
    :goto_9
    :try_start_e
    iput-object v3, v1, Lcom/loc/m$a;->o:Lcom/loc/m$a$c;

    :cond_11
    const-string v0, "006"

    invoke-static {v2, v0}, Lcom/loc/r;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    const-string v0, "006"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    :cond_12
    const-string v0, "010"

    invoke-static {v2, v0}, Lcom/loc/r;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const-string v0, "010"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    :cond_13
    const-string v0, "11Z"

    invoke-static {v2, v0}, Lcom/loc/r;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "11Z"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v3, Lcom/loc/m$a$b;

    invoke-direct {v3}, Lcom/loc/m$a$b;-><init>()V

    invoke-static {v0, v3}, Lcom/loc/l;->a(Lorg/json/JSONObject;Lcom/loc/m$a$b;)V

    iput-object v3, v1, Lcom/loc/m$a;->p:Lcom/loc/m$a$b;

    :cond_14
    const-string v0, "135"

    invoke-static {v2, v0}, Lcom/loc/r;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "135"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->e:Lorg/json/JSONObject;

    :cond_15
    const-string v0, "13S"

    invoke-static {v2, v0}, Lcom/loc/r;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "13S"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, v1, Lcom/loc/m$a;->b:Lorg/json/JSONObject;

    :cond_16
    const-string v0, "121"

    invoke-static {v2, v0}, Lcom/loc/r;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const-string v0, "121"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v3, Lcom/loc/m$a$b;

    invoke-direct {v3}, Lcom/loc/m$a$b;-><init>()V

    invoke-static {v0, v3}, Lcom/loc/l;->a(Lorg/json/JSONObject;Lcom/loc/m$a$b;)V

    iput-object v3, v1, Lcom/loc/m$a;->q:Lcom/loc/m$a$b;

    :cond_17
    const-string v0, "122"

    invoke-static {v2, v0}, Lcom/loc/r;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "122"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v3, Lcom/loc/m$a$b;

    invoke-direct {v3}, Lcom/loc/m$a$b;-><init>()V

    invoke-static {v0, v3}, Lcom/loc/l;->a(Lorg/json/JSONObject;Lcom/loc/m$a$b;)V

    iput-object v3, v1, Lcom/loc/m$a;->r:Lcom/loc/m$a$b;

    :cond_18
    const-string v0, "123"

    invoke-static {v2, v0}, Lcom/loc/r;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "123"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v2, Lcom/loc/m$a$b;

    invoke-direct {v2}, Lcom/loc/m$a$b;-><init>()V

    invoke-static {v0, v2}, Lcom/loc/l;->a(Lorg/json/JSONObject;Lcom/loc/m$a$b;)V

    :cond_19
    move-object v0, v1

    goto/16 :goto_2

    :cond_1a
    if-nez v0, :cond_2

    const-string v0, "authcsid"

    const-string v3, "authgsid"

    if-eqz v4, :cond_1f

    iget-object v2, v4, Lcom/loc/bk;->c:Ljava/lang/String;

    iget-object v0, v4, Lcom/loc/bk;->b:Ljava/util/Map;

    if-eqz v0, :cond_1e

    iget-object v0, v4, Lcom/loc/bk;->b:Ljava/util/Map;

    const-string v4, "gsid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1e

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    :goto_a
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v0, v2, v3}, Lcom/loc/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput v0, Lcom/loc/l;->a:I

    const-string v0, "info"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "info"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/loc/l;->b:Ljava/lang/String;

    :cond_1b
    sget v0, Lcom/loc/l;->a:I

    if-nez v0, :cond_2

    sget-object v0, Lcom/loc/l;->b:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_2

    :catch_5
    move-exception v0

    const-string v2, "AuthConfigManager"

    const-string v3, "loadConfigVer"

    invoke-static {v0, v2, v3}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6

    goto/16 :goto_6

    :catch_6
    move-exception v0

    const-string v2, "AuthConfigManager"

    const-string v3, "loadConfig"

    invoke-static {v0, v2, v3}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    move-object v0, v1

    goto/16 :goto_2

    :catch_7
    move-exception v0

    :try_start_f
    const-string v3, "AuthConfigManager"

    const-string v4, "loadException"

    invoke-static {v0, v3, v4}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_6

    goto/16 :goto_7

    :cond_1d
    :try_start_10
    iput-object v5, v3, Lcom/loc/m$a$d;->a:Ljava/lang/String;

    iput-object v4, v3, Lcom/loc/m$a$d;->b:Ljava/lang/String;

    iput-object v0, v3, Lcom/loc/m$a$d;->c:Ljava/lang/String;
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_8

    goto/16 :goto_8

    :catch_8
    move-exception v0

    :try_start_11
    const-string v4, "ConfigManager"

    const-string v5, "parseSDKUpdate"

    invoke-static {v0, v4, v5}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :catch_9
    move-exception v0

    const-string v4, "ConfigManager"

    const-string v5, "parseSDKCoordinate"

    invoke-static {v0, v4, v5}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_6

    goto/16 :goto_9

    :catch_a
    move-exception v0

    move-object v4, v3

    goto/16 :goto_5

    :catch_b
    move-exception v0

    goto/16 :goto_5

    :catch_c
    move-exception v0

    move-object v4, v3

    goto/16 :goto_4

    :catch_d
    move-exception v0

    goto/16 :goto_4

    :catch_e
    move-exception v0

    move-object v4, v3

    goto/16 :goto_3

    :catch_f
    move-exception v0

    goto/16 :goto_3

    :cond_1e
    move-object v0, v2

    move-object v2, v3

    goto :goto_a

    :cond_1f
    move-object v2, v3

    goto :goto_a

    :cond_20
    move-object v4, v3

    goto/16 :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/loc/k;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lcom/loc/m$a$b;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "m"

    invoke-static {p0, v0}, Lcom/loc/l;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "u"

    invoke-static {p0, v1}, Lcom/loc/l;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "v"

    invoke-static {p0, v2}, Lcom/loc/l;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "able"

    invoke-static {p0, v3}, Lcom/loc/l;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v0, p1, Lcom/loc/m$a$b;->c:Ljava/lang/String;

    iput-object v1, p1, Lcom/loc/m$a$b;->b:Ljava/lang/String;

    iput-object v2, p1, Lcom/loc/m$a$b;->d:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v3, v0}, Lcom/loc/l;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/loc/m$a$b;->a:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ConfigManager"

    const-string v2, "parsePluginEntity"

    invoke-static {v0, v1, v2}, Lcom/loc/t;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    rem-int/lit8 v1, v1, 0x2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, v0, :cond_0

    move p1, v0

    :goto_0
    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

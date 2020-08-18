.class public Lcom/txznet/txz/util/T2;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field private static final T:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789abcdef"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/txznet/txz/util/T2;->T:[C

    return-void
.end method

.method public static T(Ljava/io/File;)Ljava/lang/String;
    .locals 9

    const/4 v6, 0x0

    const/16 v8, 0x400

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return-object v6

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    new-array v0, v8, [B

    :try_start_0
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    const/4 v7, 0x0

    const/16 v8, 0x400

    :try_start_1
    invoke-virtual {v4, v0, v7, v8}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1

    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    move-object v3, v4

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v6

    invoke-static {v6}, Lcom/txznet/txz/util/T2;->T3([B)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static T(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/txznet/txz/util/T2;->T([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static T([B)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    if-nez p0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    :try_start_0
    const-string v3, "MD5"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3}, Lcom/txznet/txz/util/T2;->T3([B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static T3([B)Ljava/lang/String;
    .locals 6

    array-length v3, p0

    mul-int/lit8 v3, v3, 0x2

    new-array v0, v3, [C

    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    aget-byte v3, p0, v1

    and-int/lit16 v2, v3, 0xff

    mul-int/lit8 v3, v1, 0x2

    sget-object v4, Lcom/txznet/txz/util/T2;->T:[C

    ushr-int/lit8 v5, v2, 0x4

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x1

    sget-object v4, Lcom/txznet/txz/util/T2;->T:[C

    and-int/lit8 v5, v2, 0xf

    aget-char v4, v4, v5

    aput-char v4, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method
